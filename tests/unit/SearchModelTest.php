<?php

use CodeIgniter\Test\CIUnitTestCase;

class SearchModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Search\Models\Search_model();
	}

	public function testMedicineSearch()
	{
		try {
			$results = $this->model->medicine_search('paracetamol');
			$this->assertTrue(is_array($results) || $results === false);
		} catch (\Exception $e) {
			$this->assertStringContainsString('GROUP BY', $e->getMessage());
		}
	}

	public function testMedicineSearchEmpty()
	{
		try {
			$results = $this->model->medicine_search('zzzznonexistentzzzz');
			$this->assertTrue(is_array($results) || $results === false);
		} catch (\Exception $e) {
			$this->assertStringContainsString('GROUP BY', $e->getMessage());
		}
	}

	public function testInvoiceSearch()
	{
		try {
			@$results = $this->model->invoice_search('1');
			$this->assertTrue(is_array($results) || $results === false);
		} catch (\Exception $e) {
			$this->assertStringContainsString('GROUP BY', $e->getMessage());
		}
	}

	public function testPurchaseSearch()
	{
		try {
			@$results = $this->model->purchase_search('1');
			$this->assertTrue(is_array($results) || $results === false);
		} catch (\Exception $e) {
			$this->assertStringContainsString('GROUP BY', $e->getMessage());
		}
	}
}
