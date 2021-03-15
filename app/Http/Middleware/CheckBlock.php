<?php

namespace App\Http\Middleware;

use Closure;

class CheckBlock
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if ($request->user()->user_status_id == 3) {
            return redirect('block');
        }

        return $next($request);
    }
}
