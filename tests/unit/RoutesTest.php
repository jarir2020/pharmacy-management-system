<?php

use CodeIgniter\Test\CIUnitTestCase;

/**
 * Test that all defined routes resolve correctly
 */
class RoutesTest extends CIUnitTestCase
{
	protected $routes;

	public function setUp(): void
	{
		parent::setUp();
		$this->routes = \Config\Services::routes();
	}

	public function testRootRoute()
	{
		$routes = $this->routes->getRoutes('get');
		$this->assertArrayHasKey('/', $routes, 'Root route / not defined');
	}

	public function testLoginRoute()
	{
		$routes = $this->routes->getRoutes('get');
		$this->assertArrayHasKey('login', $routes, 'Login route not defined');
	}

	public function testLogoutRoute()
	{
		$routes = $this->routes->getRoutes('get');
		$this->assertArrayHasKey('logout', $routes, 'Logout route not defined');
	}

	public function testRecoveryMailRoute()
	{
		$routes = $this->routes->getRoutes('*');
		$this->assertArrayHasKey('recovery_mail', $routes, 'Recovery mail route not defined');
	}

	public function testRecoveryFormRoute()
	{
		$routes = $this->routes->getRoutes('*');
		$this->assertArrayHasKey('recovery_form', $routes, 'Recovery form route not defined');
	}

	public function testChangeRecoveryRoute()
	{
		$routes = $this->routes->getRoutes('*');
		$this->assertArrayHasKey('change_recovery', $routes, 'Change recovery route not defined');
	}

	public function testDefaultControllerIsDashboard()
	{
		$this->assertEquals('Dashboard', $this->routes->getDefaultController());
	}

	public function testDefaultMethodIsIndex()
	{
		$this->assertEquals('index', $this->routes->getDefaultMethod());
	}

	public function testAutoRouteEnabled()
	{
		$this->assertTrue($this->routes->shouldAutoRoute(), 'Auto routing is not enabled');
	}
}
