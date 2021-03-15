@extends('layouts.app')
@section('content')


<div class="row">
  <div class="col-md-10 col-md-offset-1">
    <div class="panel panel-default">
      <div class="panel-heading">{{$product->nombre}}</div>
        <div class="panel-body">

            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="row">
                <div class="form-group col-sm-6 {{ $errors->has('nombre') ? 'has-error': '' }}">
                  <label for="nombre">Nombre</label>
                  <input type="text" name="nombre" disabled placeholder="Ingrese Nombre" value="{{$product->nombre}}" class="form-control">

                </div>
                <div class="form-group col-sm-6 {{ $errors->has('descripcion') ? 'has-error': '' }}">
                  <label for="descripcion">Descripción:</label>
                  <input type="text" name="descripcion" disabled placeholder="Ingrese Descripción" value="{{$product->descripcion}}"  class="form-control">

                </div>

              </div>
              <div class="row">
                <div class="form-group col-sm-6 {{ $errors->has('precio') ? 'has-error': '' }}">
                  <label for="precio">precio</label>
                  <input type="text" step="" name="precio" disabled placeholder="Ingrese precio" value="{{$product->precio}}"  class="form-control">

                </div>
                <div class="form-group col-sm-6 {{ $errors->has('fecha_expiracion') ? 'has-error': '' }}">
                  <label for="fecha_expiracion">Fecha de Expiracion:</label>
                  <input type="text" name="fecha_expiracion" disabled placeholder="Ingrese Fecha de Expiracion" value="{{$product->fecha_expiracion}}"  class="form-control">

                </div>

              </div>

            <div class="form-group">
                <img src="{{asset('storage/'.$product->imagen)}}" alt="" srcset="">

            </div>

            <div class="form-group">
              <div class="col-md-6 col-md-offset-4">
                <a href="{{ url('/') }}"><button  class="btn btn-primary">regresar</button></a>
              </div>
            </div>

        </div>
      </div>
    </div>
  </div>


@endsection
