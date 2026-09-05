<?php

use CodeIgniter\Test\CIUnitTestCase;

class PermissionLibTest extends CIUnitTestCase
{
	protected $lib;

	public function setUp(): void
	{
		parent::setUp();
		$this->lib = new \App\Libraries\Permission();
	}

	public function testInstantiation()
	{
		$this->assertInstanceOf(\App\Libraries\Permission::class, $this->lib);
	}
}
