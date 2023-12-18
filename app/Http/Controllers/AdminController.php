<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function halamanadmin(){
        return view("admin.admin1");
    }
}
