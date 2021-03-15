<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;
// use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;
use App\Http\Controllers\Twilio;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use Notifiable, SoftDeletes, HasApiTokens, HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'phone_verified_at' => 'datetime',
    ];
  
    public function supplier(){
        return $this->belongsTo("App\Supplier");
    }
    /**detalles de usuarios */
    public function detail()
    {
        return $this->hasOne("App\UserDetail");
    }

     /**
     * Determine if the user has verified their phone.
     *
     * @return bool
     */
    /*funcion para com´probar su el usuario ya esta verificado*/
    public function hasVerifiedPhone()
    {
        return ! is_null($this->phone_verified_at);
    }
 
    /**
     * Mark the given user's phone as verified.
     *
     * @return bool
     */
    /**marca usuario numero de telefono como verificado  y agrega fecha de verificacion
     * retorna funcion en base de datos
     */
    public function markPhoneAsVerified()
    {
       
        return $this->forceFill(['verification_code' => $this->null, 'phone_verified_at' => $this->freshTimestamp(),])->save();
    }
     
    /**
     * Send the sms verification code.
     *
     * @return void
     */
    /**funcio para enviar mensajes de verificacion por twilio
     * recibe usuario y envia segun parametros en archivo env
     *envia mensaje y escribe en base de datos el codigo 
     * */
    public function sendPhoneVerificationNotification()
    {
       
        $verification_code = rand(100000,999999);
        Twilio::sendMessage($verification_code, $this->phone);
        return $this->forceFill(['verification_code' => $verification_code, 'phone_verified_at' => $this->null,])->save();
    }
}
