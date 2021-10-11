<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        $session = session();

        $data = array('isLoggedIn' => $session->get('isLoggedIn'),
            'f_name' => $session->get('f_name'), 'l_name' => $session->get('l_name'));
        return view('welcome_message', $data);
    }
}
