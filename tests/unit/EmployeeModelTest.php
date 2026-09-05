<?php

use CodeIgniter\Test\CIUnitTestCase;

class EmployeeModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Hrm\Models\EmployeeModel();
	}

	public function testFindAll()
	{
		$items = $this->model->findAll();
		$this->assertIsArray($items);
	}

	public function testDesignationList()
	{
		$list = $this->model->designation_list();
		$this->assertIsArray($list);
	}
}
