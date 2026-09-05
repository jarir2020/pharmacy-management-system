<?php

use CodeIgniter\Test\CIUnitTestCase;

class CustomerModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Customer\Models\CustomerModel();
	}

	public function testFindAll()
	{
		$items = $this->model->findAll();
		$this->assertIsArray($items);
	}

	public function testCustomerList()
	{
		$list = $this->model->customer_list();
		$this->assertIsArray($list);
	}
}
