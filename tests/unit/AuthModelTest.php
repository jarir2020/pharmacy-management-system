<?php

use CodeIgniter\Test\CIUnitTestCase;

class AuthModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Dashboard\Models\AuthModel();
	}

	public function testModelInstantiation()
	{
		$this->assertInstanceOf(\App\Modules\Dashboard\Models\AuthModel::class, $this->model);
	}

	public function testGetUsers()
	{
		$users = $this->model->getUsers();
		$this->assertIsArray($users);
		$this->assertGreaterThan(0, count($users), 'No users found');
	}

	public function testCheckUserWithValidCredentials()
	{
		$data = [
			'email'    => 'admin@gmail.com',
			'password' => '123456',
		];
		$result = $this->model->checkUser($data);
		$this->assertNotEmpty($result);
	}

	public function testUserPermissionAdmin()
	{
		$permission = $this->model->userPermissionadmin(1);
		$this->assertNotNull($permission, 'Admin permissions should exist for user ID 1');
	}

	public function testUserPermission()
	{
		$permission = $this->model->userPermission(1);
		$this->assertNotNull($permission, 'User permissions should exist for user ID 1');
	}

	public function testSettingData()
	{
		$settings = $this->model->setting_data();
		$this->assertNotNull($settings, 'Settings data should exist');
	}
}
