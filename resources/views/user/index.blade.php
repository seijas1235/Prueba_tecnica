@extends('layouts.app')

@section('content')
    @push('scripts')
        <script src="{{asset("js/users/users.js")}}" defer></script>
    @endpush
    <section class="container-fluid">
        <section class="row">
            <div class="col-12">
                <div class="kt-portlet">
                    <div class="kt-portlet__head">
                        <div class="kt-portlet__head-label">
                            <b>{{__("Usuarios")}}</b>
                        </div>
                        <div class="kt-portlet__head-toolbar">
                            <div class="kt-portlet__head-wrapper">
                                @can('Crear usuarios')
                                <a href="{{route("users.create")}}" class="btn btn-primary btn-lg mr-2">
                                    {{__("Crear usuario")}}
                                </a>
                                @endcan
                            </div>
                        </div>
                    </div>

                    <div class="kt-portlet__body">
                        <div id="users_table"></div>
                    </div>
                </div>
            </div>
        </section>
    </section>
    @endsection
