<?php

use CodeIgniter\Test\CIUnitTestCase;

class CurrencyModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Dashboard\Models\Currency_model();
	}

	public function testFindAll()
	{
		$items = $this->model->findAll();
		$this->assertIsArray($items);
	}

	public function testCurrencyExists()
	{
		$items = $this->model->findAll();
		$this->assertNotEmpty($items, 'At least one currency should exist');
	}
}
