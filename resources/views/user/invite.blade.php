@component('mail::message')

    Haz recibido una invitacion para el App De Paso

    Ingresa para configurar tu cuenta

@component('mail::button', ['url' => 'password.reset', "token" => $token])
Aceptar invitación
@endcomponent

Saludos,<br>
{{ config('app.name') }}
@endcomponent
