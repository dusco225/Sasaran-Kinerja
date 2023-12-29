<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class MultiUserMiddleware
{
    public function handle($request, Closure $next)
    {
        $user = Auth::user();

        // Memeriksa izin 'dekan' atau 'admin'
        if ($user && ($user->can('dekan') || $user->can('admin') || $user->can('wakildekan'))) {
            return $next($request);
        }
        return redirect('/')->with('error', 'Anda tidak memiliki izin untuk mengakses halaman ini.');
    }
}

