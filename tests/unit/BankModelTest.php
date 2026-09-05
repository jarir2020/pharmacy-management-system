<?php

use CodeIgniter\Test\CIUnitTestCase;

class BankModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Bank\Models\BankModel();
	}

	public function testFindAll()
	{
		$items = $this->model->findAll();
		$this->assertIsArray($items);
	}

	public function testHeadcode()
	{
		$headcode = $this->model->headcode();
		$this->assertNotEmpty($headcode);
	}
}
