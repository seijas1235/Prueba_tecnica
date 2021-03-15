@extends('layouts.auth')

@section('content')
<div class="container h-100">
    <div class="row h-100">
        <div class="col-12 col-md-4 offset-md-4 my-auto">
            <form method="POST" action="{{ url('/reset_password_with_token') }}">
                @csrf
                <div class="form-group row">
                    <div class="col-12 text-center">
                        <img src="{{asset("images/logo.png")}}"/>
                    </div>
                </div>
                <input type="hidden" name="token" value="{{ $token }}">

                <div class="form-group row">
                    <label for="email" class="col-12 col-form-label auth_label">{{ __('Correo electrónico') }}</label>

                    <div class="col-md-12">
                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror auth_input form-control-lg" name="email" value="{{ $email ?? old('email') }}" required autocomplete="email" autofocus>

                        @error('email')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                </div>

                <div class="form-group row">
                    <label for="password" class="col-12 col-form-label auth_label">{{ __('Contraseña') }}</label>

                    <div class="col-12">
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror auth_input form-control-lg" name="password" required autocomplete="new-password">

                        @error('password')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                </div>

                <div class="form-group row">
                    <label for="password-confirm" class="col-12 col-form-label auth_label">{{ __('Confirmar contraseña') }}</label>

                    <div class="col-12">
                        <input id="password-confirm" type="password" class="form-control auth_input form-control-lg" name="password_confirmation" required autocomplete="new-password">
                    </div>
                </div>

                <div class="form-group row mb-0">
                    <div class="col-md-6 offset-md-4">
                        <button type="submit" class="btn btn-primary">
                            {{ __('Reset Password') }}
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
