@extends('layouts.auth')

@section('content')
<div class="container h-100">
    <div class="row h-100">
        <div class="col-12 col-md-4 offset-md-4 my-auto">
            @if (session('status'))
                <div class="alert alert-success" role="alert">
                    {{ session('status') }}
                </div>
            @endif

            <form method="POST" action="{{ url('/reset_password_without_token') }}">
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

                <div class="form-group row mb-0">
                    <div class="col-md-8 offset-md-2">
                        <button type="submit" class="btn btn-primary btn-lg">
                            {{ __('Enviar reinicio de contraseña') }}
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
