@extends('layouts.auth')

@section('content')
<div class="container h-100">
    <div class="row h-100">
        <div class="col-12 col-md-4 offset-md-4 my-auto">
            <form method="POST" action="{{ route('login') }}">
                @csrf
                    <div class="form-group row">
                        <div class="col-12 text-center">
                            <img src="{{asset("images/logo.png")}}"/>
                        </div>
                    </div>

                <div class="form-group row">
                    <label for="email" class="col-12 col-form-label auth_label">{{ __('Correo electronico') }}</label>

                    <div class="col-12">
                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror auth_input form-control-lg" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

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
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror auth_input form-control-lg" name="password" required autocomplete="current-password">

                        @error('password')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-12 text-center">
                        @if (Route::has('password.request'))
                            <a class="auth_link" href="{{ route('password.request') }}">
                                {{ __('¿Olvidaste tu contraseña?') }}
                            </a>
                        @endif
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-12 col-md-6 offset-md-3">
                        <button type="submit" class="btn btn-block btn-primary btn-lg">
                            {{ __('INICIAR SESIÓN') }}
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
