<?php

use CodeIgniter\Test\CIUnitTestCase;

class ManufacturerModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Manufacturer\Models\ManufacturerModel();
	}

	public function testFindAll()
	{
		$items = $this->model->findAll();
		$this->assertIsArray($items);
	}

	public function testManufacturerList()
	{
		$list = $this->model->manufacturer_list();
		$this->assertIsArray($list);
	}

	public function testCountAll()
	{
		$count = $this->model->countallmanufacturer();
		$this->assertIsNumeric($count);
	}
}
