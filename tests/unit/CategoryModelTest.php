<?php

use CodeIgniter\Test\CIUnitTestCase;

class CategoryModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Medicine\Models\CategoryModel();
	}

	public function testFindAll()
	{
		$categories = $this->model->findAll();
		$this->assertIsArray($categories);
	}

	public function testSaveCategory()
	{
		$countBefore = count($this->model->findAll());
		$data = ['category_name' => 'Test Category ' . time(), 'status' => 1];
		$this->model->save_category($data);
		$countAfter = count($this->model->findAll());
		$this->assertGreaterThan($countBefore, $countAfter, 'Category count should increase after save');
	}

	public function testCategoryExists()
	{
		$categories = $this->model->findAll();
		$this->assertNotEmpty($categories);
	}
}
