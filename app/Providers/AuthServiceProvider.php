<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Laravel\Passport\Passport;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::before(function ($user, $ability) {
            return $user->hasRole('super administrador') ? true : null;
        });

        Passport::routes();

        Passport::personalAccessClientId(
            config('personal_access_client_id')
        );

        Passport::personalAccessClientSecret(
            config('personal_access_client_secret')
        );

        Passport::tokensExpireIn(now()->addYear(1));
        Passport::personalAccessTokensExpireIn(now()->addYears(10));
    }
}
