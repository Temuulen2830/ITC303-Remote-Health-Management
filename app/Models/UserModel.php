<?php

namespace App\Models;
use CodeIgniter\Model;


class UserModel extends Model{

    protected $table = 'account';
    protected $primaryKey = 'account_id';

    protected $allowedFields = [
        'account_id',
        'username',
        'password',
        'f_name',
        'l_name',
        'email',
        'address',
        'postcode',
        'phone_number',
        'gender',
        'created_at',
        'updated_at'
    ];

}

