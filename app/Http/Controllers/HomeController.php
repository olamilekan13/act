<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

use App\Models\User;

class HomeController extends Controller
{
    public function redirect()
    {
        //to check if there is any user trying to log in
        // if (Auth::id())
        
            //to check the usertype of the user

            if (Auth::user()->usertype=='1')
        {
            return view('admin.home');
        }

        if (Auth::user()->usertype=='0')
        {
            return view('dashboard');
        }

        

        else 
        {
            return index()->back();
        }
    }

    public function index()
    {
        return view('welcome');
    }
}
