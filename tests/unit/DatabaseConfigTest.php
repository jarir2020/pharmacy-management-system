<?php

use CodeIgniter\Test\CIUnitTestCase;

class DatabaseConfigTest extends CIUnitTestCase
{
	protected $db;

	public function setUp(): void
	{
		parent::setUp();
		$this->db = \Config\Database::connect('default');
	}

	public function testDatabaseConnection()
	{
		$this->assertNotNull($this->db->connID, 'Database connection failed');
	}

	public function testDatabaseName()
	{
		$this->assertEquals('pharmacy_db', $this->db->database);
	}

	public function testUserTableExists()
	{
		$this->assertTrue($this->db->tableExists('user'), 'user table does not exist');
	}

	public function testProductTableExists()
	{
		$this->assertTrue($this->db->tableExists('product_information'), 'product_information table does not exist');
	}

	public function testInvoiceTableExists()
	{
		$this->assertTrue($this->db->tableExists('invoice'), 'invoice table does not exist');
	}

	public function testPurchaseTableExists()
	{
		$this->assertTrue($this->db->tableExists('product_purchase'), 'product_purchase table does not exist');
	}

	public function testCustomerTableExists()
	{
		$this->assertTrue($this->db->tableExists('customer_information'), 'customer_information table does not exist');
	}

	public function testManufacturerTableExists()
	{
		$this->assertTrue($this->db->tableExists('manufacturer_information'), 'manufacturer_information table does not exist');
	}

	public function testCategoryTableExists()
	{
		$this->assertTrue($this->db->tableExists('product_category'), 'product_category table does not exist');
	}

	public function testEmployeeTableExists()
	{
		$this->assertTrue($this->db->tableExists('employee_information'), 'employee_information table does not exist');
	}

	public function testBankTableExists()
	{
		$this->assertTrue($this->db->tableExists('bank_information'), 'bank_information table does not exist');
	}

	public function testSettingTableExists()
	{
		$this->assertTrue($this->db->tableExists('setting'), 'setting table does not exist');
	}

	public function testCurrencyTableExists()
	{
		$this->assertTrue($this->db->tableExists('currency_tbl'), 'currency_tbl table does not exist');
	}

	public function testTaxTableExists()
	{
		$this->assertTrue($this->db->tableExists('tax_settings'), 'tax_settings table does not exist');
	}

	public function testRoleTableExists()
	{
		$this->assertTrue($this->db->tableExists('sec_role'), 'sec_role table does not exist');
	}

	public function testAccountTableExists()
	{
		$this->assertTrue($this->db->tableExists('acc_coa'), 'acc_coa table does not exist');
	}

	public function testUserCount()
	{
		$count = $this->db->table('user')->countAllResults();
		$this->assertIsNumeric($count);
	}

	public function testSettingCount()
	{
		$count = $this->db->table('setting')->countAllResults();
		$this->assertIsNumeric($count);
	}
}
