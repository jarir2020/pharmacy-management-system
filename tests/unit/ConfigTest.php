<?php

use CodeIgniter\Test\CIUnitTestCase;

class ConfigTest extends CIUnitTestCase
{
	public function testAppConfig()
	{
		$config = new \Config\App();
		$this->assertNotEmpty($config->baseURL);
	}

	public function testDatabaseConfig()
	{
		$config = new \Config\Database();
		$this->assertEquals('root', $config->default['username']);
		$this->assertEquals('pharmacy_db', $config->default['database']);
		$this->assertEquals('MySQLi', $config->default['DBDriver']);
		$this->assertEquals(3306, $config->default['port']);
	}

	public function testModulesConfig()
	{
		$config = new \Config\Modules();
		$this->assertTrue($config->enabled);
	}

	public function testAutoloadConfig()
	{
		$config = new \Config\Autoload();
		$this->assertIsArray($config->psr4);
		$this->assertArrayHasKey('App', $config->psr4);
	}

	public function testRoutesConfig()
	{
		$routes = \Config\Services::routes();
		$this->assertEquals('Dashboard', $routes->getDefaultController());
		$this->assertEquals('index', $routes->getDefaultMethod());
		$this->assertTrue($routes->shouldAutoRoute());
	}

	public function testExceptionsConfig()
	{
		$config = new \Config\Exceptions();
		$this->assertNotEmpty($config->errorViewPath);
	}

	public function testCacheConfig()
	{
		$config = new \Config\Cache();
		$this->assertNotEmpty($config->storePath);
	}

	public function testEmailConfig()
	{
		$config = new \Config\Email();
		$this->assertNotEmpty($config->protocol);
	}

	public function testLoggerConfig()
	{
		$config = new \Config\Logger();
		$this->assertNotEmpty($config->handlers);
	}
}
