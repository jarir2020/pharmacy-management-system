<?php namespace Config;

class Commands
{
	protected $commands = [
		'Database\Import' => \App\Commands\Database\Import::class,
	];
}
