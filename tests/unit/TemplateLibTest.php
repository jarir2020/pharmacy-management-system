<?php

use CodeIgniter\Test\CIUnitTestCase;

class TemplateLibTest extends CIUnitTestCase
{
	protected $lib;

	public function setUp(): void
	{
		parent::setUp();
		$this->lib = new \App\Libraries\Template();
	}

	public function testInstantiation()
	{
		$this->assertInstanceOf(\App\Libraries\Template::class, $this->lib);
	}
}
