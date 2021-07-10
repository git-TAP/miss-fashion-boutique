<?php

namespace App\Http\Controllers\admin_panel;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\sale;
use App\User;

class dashboardController extends Controller
{
    public function index(){
        $sales =  sale::all();
        return view('admin_panel.dashboard.index')
        ->with('sales',$sales);
    }

}
