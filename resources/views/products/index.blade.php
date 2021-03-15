@extends('layouts.app')
@section('content')
<h3 class="box-title">Listado de Productos</h3>

<button class="btn btn-primary pull-right" data-toggle="modal" data-target="#modalProducto">
  <i class="fa fa-plus"></i>Agregar Producto
</button>

  <table id="producto-table" class="table table-striped table-bordered no-margin-bottom dt-responsive nowrap" ellspacing="0" width="100%">
  </table>
@endsection
@push('scripts')
<script src="{{asset('js/productos/index.js')}}"></script>
@endpush
