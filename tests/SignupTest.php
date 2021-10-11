<?php

use CodeIgniter\Test\CIUnitTestCase;
use CodeIgniter\Test\DatabaseTestTrait;
use CodeIgniter\Test\FeatureTestTrait;

class SignupTest extends CIUnitTestCase
{
    use DatabaseTestTrait, FeatureTestTrait;

    public function testSignup()
    {
        $result = $this->call('post', 'SignupController/store', [
            'f_name' => 'Test',
            'l_name' => 'Test',
            'email' => $this->generateRandomString(4) . '@test.com',
            'password' => 'P@ssw0rd'
        ]);

        $result->assertRedirectTo('signin');
    }

    function generateRandomString($length = 10)
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, strlen($characters) - 1)];
        }
        return $randomString;
    }
}
