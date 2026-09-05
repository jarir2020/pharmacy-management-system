<?php

use CodeIgniter\Test\CIUnitTestCase;

class LeafModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Medicine\Models\LeafModel();
	}

	public function testFindAll()
	{
		$leaves = $this->model->findAll();
		$this->assertIsArray($leaves);
	}

	public function testSaveLeaf()
	{
		$countBefore = count($this->model->findAll());
		$this->model->save_leaf(['leaf_type' => 'Test Leaf', 'total_number' => 5]);
		$countAfter = count($this->model->findAll());
		$this->assertGreaterThan($countBefore, $countAfter);
	}
}
