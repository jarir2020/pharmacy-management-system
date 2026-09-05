<?php

use CodeIgniter\Test\CIUnitTestCase;

class DashboardModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Dashboard\Models\Dashboard_model();
	}

	public function testTotalCustomer()
	{
		$count = $this->model->total_customer();
		$this->assertIsNumeric($count);
	}

	public function testTotalMedicine()
	{
		$count = $this->model->total_medicine();
		$this->assertIsNumeric($count);
	}

	public function testPieTotalSaleAmount()
	{
		$amount = $this->model->pie_total_saleamount();
		$this->assertIsNumeric($amount);
	}

	public function testPieTotalPurchaseAmount()
	{
		$amount = $this->model->pie_total_purchaseamount();
		$this->assertIsNumeric($amount);
	}

	public function testPieTotalServiceAmount()
	{
		$amount = $this->model->pie_total_serviceamount();
		$this->assertIsNumeric($amount);
	}

	public function testPieTotalSalaryAmount()
	{
		$amount = $this->model->pie_total_salaryamount();
		$this->assertIsNumeric($amount);
	}

	public function testPieTotalExpenseAmount()
	{
		$amount = $this->model->pie_total_expenseamount();
		$this->assertIsNumeric($amount);
	}

	public function testDatewiseTotalSale()
	{
		$sale = $this->model->datewise_total_sale(date('Y-m-d'));
		$this->assertIsNumeric($sale);
	}

	public function testDatewiseTotalPurchase()
	{
		$purchase = $this->model->datewise_total_purchase(date('Y-m-d'));
		$this->assertIsNumeric($purchase);
	}
}
