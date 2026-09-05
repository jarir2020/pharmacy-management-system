<?php

use CodeIgniter\Test\CIUnitTestCase;

class SettingModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Dashboard\Models\SettingModel();
	}

	public function testLanguageList()
	{
		$list = $this->model->languageList();
		$this->assertTrue(is_array($list) || $list === false, 'Language list should be array or false');
	}

	public function testSettingsData()
	{
		$data = $this->model->settings_data();
		$this->assertNotNull($data);
	}

	public function testCurrencyList()
	{
		$list = $this->model->currency_list();
		$this->assertIsArray($list);
	}
}
