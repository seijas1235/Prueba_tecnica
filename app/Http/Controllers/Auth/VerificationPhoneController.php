<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
 
class VerificationPhoneController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     /*
        public function __construct()
        {
            $this->middleware('auth');
        }
    */
    /**
     * Show form to verify code.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        if ($request->user()->hasVerifiedPhone()) {
            return redirect()->route('home');
        }
 
        return view('auth/verify_phone');
    }
 
    /**
     * Mark the authenticated user's phone as verified.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function verify(Request $request)
    {
        $user=User::where('phone',$request->phone)->first();
        if ($user->hasVerifiedPhone()) {
            return response()->json([
                "status" => "success",
                "code" => "208",
            ], 208);
        }
 
        $request->validate(['code' => ['required', 'string', 'min:6', 'max:6', 'regex:/([0-9]{6,6})/'],]);
         
        if ($user->verification_code !== $request->code)
        {
            return response()->json([
                "status" => "error",
                "code" => "201",
                "msj" => "el codigo es invalido",
            ]);
        }
         
        $user->markPhoneAsVerified();
        return response()->json([
            "status" => "success",
            "code" => "200",
        ]);
    }
     
    /**
     * Resend the phone code.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function resend( Request $request)
    {
       
        $user=User::where('phone',$request->phone)->first();
        if ($user->hasVerifiedPhone()) {
            return response()->json([
                "status" => "success",
                "code" => "200",
            ], 200);
        }
       
        $user->sendPhoneVerificationNotification();
 
        return response()->json([
            "status" => "success",
            "code" => "200",
        ], 200);
    }
}