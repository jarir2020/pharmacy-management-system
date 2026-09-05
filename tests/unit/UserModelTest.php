<?php

use CodeIgniter\Test\CIUnitTestCase;

class UserModelTest extends CIUnitTestCase
{
	protected $model;
	protected $testId;

	public function setUp(): void
	{
		parent::setUp();
		$this->model = new \App\Modules\Dashboard\Models\UserModel();
	}

	public function testFindAll()
	{
		$users = $this->model->findAll();
		$this->assertIsArray($users);
		$this->assertGreaterThan(0, count($users));
	}

	public function testSingledata()
	{
		$user = $this->model->singledata(1);
		$this->assertNotNull($user);
	}

	public function testGetCompanyInfo()
	{
		$info = $this->model->get_company_info();
		$this->assertNotNull($info);
	}

	public function testSaveUser()
	{
		$data = [
			'firstname' => 'Test',
			'lastname'  => 'User',
			'email'     => 'testuser_' . time() . '@test.com',
			'password'  => md5('password123'),
			'is_admin'  => 0,
			'status'    => 1,
		];
		$id = $this->model->save_user($data);
		$this->assertNotFalse($id);
		$this->testId = $id;
	}

	/** @depends testSaveUser */
	public function testCheckEmail()
	{
		$result = $this->model->check_email('testuser_' . time() . '@test.com');
		$this->assertNotNull($result);
	}

	/** @depends testSaveUser */
	public function testDeleteUser()
	{
		$result = $this->model->delete_user($this->testId);
		$this->assertNotFalse($result);
	}

	public function testTokenSet()
	{
		$token = $this->model->token_set('admin@gmail.com', 'testtoken123');
		$this->assertNotFalse($token);
	}

	public function testCheckToken()
	{
		$result = $this->model->check_token('admin@gmail.com', 'testtoken123');
		$this->assertNotNull($result);
	}
}
