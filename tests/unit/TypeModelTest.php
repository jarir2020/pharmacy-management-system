<?php

use CodeIgniter\Test\CIUnitTestCase;

class TypeModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Medicine\Models\TypeModel();
	}

	public function testFindAll()
	{
		$types = $this->model->findAll();
		$this->assertIsArray($types);
	}

	public function testTypeExists()
	{
		$types = $this->model->findAll();
		$this->assertNotEmpty($types, 'At least one type should exist');
	}

	public function testSaveType()
	{
		$countBefore = count($this->model->findAll());
		$this->model->save_type(['type_name' => 'Test Type ' . time()]);
		$countAfter = count($this->model->findAll());
		$this->assertGreaterThan($countBefore, $countAfter);
	}
}
