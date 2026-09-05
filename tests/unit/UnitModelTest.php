<?php

use CodeIgniter\Test\CIUnitTestCase;

class UnitModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Medicine\Models\UnitModel();
	}

	public function testFindAll()
	{
		$units = $this->model->findAll();
		$this->assertIsArray($units);
	}

	public function testUnitExists()
	{
		$units = $this->model->findAll();
		$this->assertNotEmpty($units, 'At least one unit should exist');
	}

	public function testSaveUnit()
	{
		$countBefore = count($this->model->findAll());
		$this->model->save_unit(['unit_name' => 'Test Unit ' . time()]);
		$countAfter = count($this->model->findAll());
		$this->assertGreaterThan($countBefore, $countAfter);
	}
}
