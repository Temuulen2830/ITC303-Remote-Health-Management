<?php

namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\UserModel;

class SignupController extends Controller
{
    public function index()
    {
        helper(['form']);
        $data = [];
        echo view('signup', $data);
    }

    public function store()
    {
        helper(['form']);
        $rules = [
            'f_name'            => 'required|min_length[2]|max_length[50]',
            'l_name'            => 'required|min_length[2]|max_length[50]',
            'email'             => 'required|min_length[4]|max_length[100]|valid_email|is_unique[account.email]',
            'password'          => 'required|min_length[4]|max_length[50]',
        ];

        if($this->validate($rules)){
            $userModel = new UserModel();

            $data = [
                'f_name'   => $this->request->getVar('f_name'),
                'l_name'   => $this->request->getVar('l_name'),
                'username'    => $this->request->getVar('email'),
                'email'    => $this->request->getVar('email'),
                'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT)
            ];

            $userModel->save($data);

            return redirect()->to('/signin');
        }else{
            $data['validation'] = $this->validator;
            echo view('signup', $data);
        }

    }

}
