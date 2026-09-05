<?php

use CodeIgniter\Test\CIUnitTestCase;

class DesignationModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Hrm\Models\DesignationModel();
	}

	public function testFindAll()
	{
		$designations = $this->model->findAll();
		$this->assertIsArray($designations);
	}

	public function testSaveDesignation()
	{
		$countBefore = count($this->model->findAll());
		$this->model->save_designation(['designation' => 'Test Designation', 'details' => 'Test']);
		$countAfter = count($this->model->findAll());
		$this->assertGreaterThan($countBefore, $countAfter);
	}
}
