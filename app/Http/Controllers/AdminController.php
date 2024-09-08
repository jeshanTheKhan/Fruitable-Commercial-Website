<?php

namespace App\Http\Controllers;
use App\Models\admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\View\View;
use App\Http\Requests\Auth\LoginRequest;
use Illuminate\Support\Facades\Auth;
class AdminController extends Controller
{
    //
    public function destroy(Request $request)
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
