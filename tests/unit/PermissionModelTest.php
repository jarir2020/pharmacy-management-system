<?php

use CodeIgniter\Test\CIUnitTestCase;

class PermissionModelTest extends CIUnitTestCase
{
	protected $model;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Dashboard\Models\Permission_model();
	}

	public function testPermissionList()
	{
		$list = $this->model->permission_list();
		$this->assertIsArray($list);
	}

	public function testRoleList()
	{
		$list = $this->model->role_list();
		$this->assertIsArray($list);
	}

	public function testUserCount()
	{
		$count = $this->model->user_count();
		$this->assertIsNumeric($count);
	}

	public function testUser()
	{
		$users = $this->model->user();
		$this->assertIsArray($users);
	}

	public function testModule()
	{
		$modules = $this->model->module();
		$this->assertIsArray($modules);
	}

	public function testModuleList()
	{
		$list = $this->model->module_list();
		$this->assertIsArray($list);
	}
}
