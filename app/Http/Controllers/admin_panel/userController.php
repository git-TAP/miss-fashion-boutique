<?php

namespace App\Http\Controllers\admin_panel;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;

class userController extends Controller
{

    public function viewUsers()
    {
        $users =  User::all();
        return view('admin_panel.users.indexUser')
            ->with('users', $users);
    }
}
