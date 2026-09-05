<?php

use CodeIgniter\Test\CIUnitTestCase;

class MedicineModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Medicine\Models\MedicineModel();
	}

	public function testFindAll()
	{
		$items = $this->model->findAll();
		$this->assertIsArray($items);
	}

	public function testCategoryList()
	{
		$list = $this->model->category_list();
		$this->assertIsArray($list);
	}

	public function testUnitList()
	{
		$list = $this->model->unit_list();
		$this->assertIsArray($list);
	}

	public function testTypeList()
	{
		$list = $this->model->type_list();
		$this->assertIsArray($list);
	}

	public function testManufacturerList()
	{
		$list = $this->model->manufacturer_list();
		$this->assertIsArray($list);
	}

	public function testTaxFields()
	{
		$fields = $this->model->tax_fields();
		$this->assertIsArray($fields);
	}

	public function testLeafSettingList()
	{
		$list = $this->model->leaf_setting_list();
		$this->assertIsArray($list);
	}
}
