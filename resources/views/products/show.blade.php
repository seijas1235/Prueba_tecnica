@extends('layouts.app')
@section('content')


<div class="row">
  <div class="col-md-10 col-md-offset-1">
    <div class="panel panel-default">
      <div class="panel-heading">Agregar archivos</div>
        <div class="panel-body">
          <form method="POST" action="{{ url('productos/save') }}" accept-charset="UTF-8" enctype="multipart/form-data">

            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="row">
                <div class="form-group col-sm-6 {{ $errors->has('nombre') ? 'has-error': '' }}">
                  <label for="nombre">Nombre</label>
                  <input type="text" name="nombre" required placeholder="Ingrese Nombre" class="form-control">

                </div>
                <div class="form-group col-sm-6 {{ $errors->has('descripcion') ? 'has-error': '' }}">
                  <label for="descripcion">Descripción:</label>
                  <input type="text" name="descripcion" required placeholder="Ingrese Descripción" class="form-control">

                </div>

              </div>
              <div class="row">
                <div class="form-group col-sm-6 {{ $errors->has('precio') ? 'has-error': '' }}">
                  <label for="precio">precio</label>
                  <input type="number" step=".01" name="precio" required placeholder="Ingrese precio" class="form-control">

                </div>
                <div class="form-group col-sm-6 {{ $errors->has('fecha_expiracion') ? 'has-error': '' }}">
                  <label for="fecha_expiracion">Fecha de Expiracion:</label>
                  <input type="date" name="fecha_expiracion" required placeholder="Ingrese Fecha de Expiracion" class="form-control">

                </div>

              </div>

            <div class="form-group">
              <label class="col-md-4 control-label">Nuevo Archivo</label>
              <div class="col-md-6">
                <input type="file" class="form-control" name="file" >
              </div>
            </div>

            <div class="form-group">
              <div class="col-md-6 col-md-offset-4">
                <button type="submit" class="btn btn-primary">Enviar</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>


@endsection
