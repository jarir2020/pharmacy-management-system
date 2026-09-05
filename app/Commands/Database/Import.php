<?php

namespace App\Commands\Database;

use CodeIgniter\CLI\BaseCommand;
use CodeIgniter\CLI\CLI;

class Import extends BaseCommand
{
	protected $group       = 'Database';
	protected $name        = 'database:import';
	protected $description = 'Import the pharmacy SQL dump into the configured database';
	protected $usage       = 'database:import [--force]';
	protected $options     = [
		'--force' => 'Skip confirmation prompt',
	];

	public function run(array $params)
	{
		$db = \Config\Database::connect();

		$sqlPath = ROOTPATH . 'database/pharmacy.sql';

		if (! file_exists($sqlPath))
		{
			CLI::error("SQL file not found at: {$sqlPath}");
			return;
		}

		// Check if tables already exist
		$tables = $db->listTables();
		if (! empty($tables) && ! isset($params['force']))
		{
			CLI::write("Database already has " . count($tables) . " tables.", 'yellow');
			CLI::write("Existing tables: " . implode(', ', array_slice($tables, 0, 5)) . (count($tables) > 5 ? '...' : ''));
			CLI::newLine();

			if (! CLI::prompt('Do you want to DROP all tables and re-import?', ['n', 'y']))
			{
				CLI::write('Import cancelled.');
				return;
			}

			CLI::write('Dropping all tables...', 'yellow');
			$db->query('SET FOREIGN_KEY_CHECKS = 0');
			foreach ($tables as $table)
			{
				$db->query("DROP TABLE IF EXISTS `{$table}`");
			}
			$db->query('SET FOREIGN_KEY_CHECKS = 1');
		}

		CLI::write('Importing pharmacy.sql ...');
		CLI::write("File: {$sqlPath}");
		CLI::write("Size: " . number_format(filesize($sqlPath) / 1024, 1) . " KB");
		CLI::newLine();

		$sql = file_get_contents($sqlPath);

		// Remove BOM if present
		$sql = preg_replace('/^\x{FEFF}/u', '', $sql);

		// Remove MySQL comments and directives
		$sql = preg_replace('/\/\*![0-9]+\s+.*?\*\//s', '', $sql);
		$sql = preg_replace('/^--.*$/m', '', $sql);
		$sql = preg_replace('/^\/\*.*?\*\//ms', '', $sql);
		$sql = preg_replace('/^SET\s+.*/m', '', $sql);
		$sql = preg_replace('/^START TRANSACTION;/m', '', $sql);
		$sql = preg_replace('/^COMMIT;/m', '', $sql);
		$sql = preg_replace('/^UNLOCK TABLES;/m', '', $sql);
		$sql = preg_replace('/^LOCK TABLES\s+.*?;/m', '', $sql);
		$sql = preg_replace('/^\/$/m', '', $sql);

		// Split by semicolons that are NOT inside quotes
		$statements = $this->splitSql($sql);

		$success = 0;
		$failed  = 0;

		foreach ($statements as $i => $statement)
		{
			$clean = trim($statement);
			if (empty($clean))
			{
				continue;
			}

			try
			{
				$db->query($clean);
				$success++;
			}
			catch (\Exception $e)
			{
				$failed++;
				CLI::error("  Statement #" . ($i + 1) . " failed: " . substr($e->getMessage(), 0, 120));
			}
		}

		CLI::newLine();
		CLI::write("Import complete!", 'green');
		CLI::write("  {$success} statements executed successfully", 'green');
		if ($failed > 0)
		{
			CLI::write("  {$failed} statements failed", 'red');
		}

		// List final tables
		$tables = $db->listTables();
		CLI::newLine();
		CLI::write("Tables in database (" . count($tables) . "):");
		foreach ($tables as $table)
		{
			$count = $db->table($table)->countAllResults();
			CLI::write("  - {$table} ({$count} rows)");
		}
	}

	/**
	 * Split SQL by semicolons, respecting quoted strings
	 */
	private function splitSql(string $sql): array
	{
		$statements = [];
		$current    = '';
		$inSingle   = false;
		$inDouble   = false;
		$escaped    = false;
		$len        = strlen($sql);

		for ($i = 0; $i < $len; $i++)
		{
			$char = $sql[$i];

			if ($escaped)
			{
				$current .= $char;
				$escaped = false;
				continue;
			}

			if ($char === '\\' && ($inSingle || $inDouble))
			{
				$current .= $char;
				$escaped = true;
				continue;
			}

			if ($char === "'" && ! $inDouble)
			{
				$inSingle = ! $inSingle;
				$current .= $char;
				continue;
			}

			if ($char === '"' && ! $inSingle)
			{
				$inDouble = ! $inDouble;
				$current .= $char;
				continue;
			}

			if ($char === ';' && ! $inSingle && ! $inDouble)
			{
				$trimmed = trim($current);
				if (! empty($trimmed))
				{
					$statements[] = $trimmed;
				}
				$current = '';
				continue;
			}

			$current .= $char;
		}

		$trimmed = trim($current);
		if (! empty($trimmed))
		{
			$statements[] = $trimmed;
		}

		return $statements;
	}
}
