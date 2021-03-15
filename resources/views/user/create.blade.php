@extends('layouts.app')

@section('content')
    <form class="container-fluid" action="{{route("users.store")}}" method="POST" autocomplete="off">
        @csrf
        <section class="row">
            <div class="col-12">
                <div class="kt-portlet">
                    <div class="kt-portlet__head">
                        <div class="kt-portlet__head-label">
                            <b>{{__("Crear Usuario")}}</b>
                        </div>
                    </div>
                    <div class="kt-portlet__body">
                        <section class="row justify-content-center">
                            <div class="col-12 col-md-5">
                                <div class="form-group">
                                    <label for="name" class="auth_label">Nombre</label>
                                    <input type="text" name="name" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-12 col-md-5">
                                <div class="form-group">
                                    <label for="lastname" class="auth_label">Apellido</label>
                                    <input type="text" name="lastname" class="form-control" required>
                                </div>
                            </div>
                        </section>
                        <section class="row justify-content-center">
                            <div class="col-12 col-md-5">
                                <div class="form-group">
                                    <label for="email" class="auth_label">Correo electrónico</label>
                                    <input type="email" name="email" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-12 col-md-5">
                                <div class="form-group">
                                    <label for="role" class="auth_label">Role</label>
                                    <select name="role" id="role" class="form-control">
                                        <option value="">- Seleccionar rol</option>
                                        @foreach($roles as $role)
                                            <option value="{{$role->id}}">{{$role->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-5">
                                <div class="form-group">
                                    <label for="password" class="auth_label">Contraseña</label>
                                    <input type="password" name="password" class="form-control" required>
                                </div>
                            </div> -->
                        </section>
                        <section class="row justify-content-center">
                            <div class="col-12 col-md-5">
                                <div class="form-group">
                                    <label for="password" class="auth_label">Contraseña</label>
                                    <input type="password" name="password" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-12 col-md-5">
                                <div class="form-group">
                                    <label for="password_confirmation" class="auth_label">Confirmar contraseña</label>
                                    <input type="password" name="password_confirmation" class="form-control" required>
                                </div>
                            </div>
                        </section>
                        <!-- <section class="row justify-content-center">
                            <div class="col-12 col-md-10">
                                <div class="row">
                                    <div class="col-12 col-md-6">
                                        <div class="form-group">
                                            <label for="role" class="auth_label">Role</label>
                                            <select name="role" id="role" class="form-control">
                                                <option value="">- Seleccionar rol</option>
                                                @foreach($roles as $role)
                                                    <option value="{{$role->id}}">{{$role->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section> -->
                    </div>
                </div>
            </div>
        </section>
        <section class="row justify-content-end">
            <div class="col-12 col-md-3 text-right">
                <a class="btn btn-info" href="{{route("users.index")}}" style="width:100px;">CANCELAR</a>
                <button class="btn btn-primary" type="submit" style="width:100px;">CREAR</button>
            </div>
        </section>
    </form>
@endsection
