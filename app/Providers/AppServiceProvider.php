<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\User;
use Illuminate\Support\Facades\Gate;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Gate::define('admin', function(User $user){
            return $user->role === 'admin';
        });
        Gate::define('operator', function(User $user){
            return $user->role === 'operator';
        });
        Gate::define('dekan', function(User $user){
            return $user->role === 'dekan';
        });
    }
}
