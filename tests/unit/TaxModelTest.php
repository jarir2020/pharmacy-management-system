<?php

use CodeIgniter\Test\CIUnitTestCase;

class TaxModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Tax\Models\TaxModel();
	}

	public function testTaxSettingInfo()
	{
		$info = $this->model->tax_setting_info();
		$this->assertNotNull($info);
	}

	public function testViewTaxsetup()
	{
		$setup = $this->model->viewTaxsetup();
		$this->assertIsArray($setup);
	}
}
