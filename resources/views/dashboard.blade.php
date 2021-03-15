@extends('layouts.app')

@section('content')
    @push("scripts")
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
        <script>
            function grafica(){
                var datos =@json($grafricas);
    
                var ctx = document.getElementById('supplier_sales').getContext('2d');
                var chart = new Chart(ctx, {
                    // The type of chart we want to create
                    type: 'line',
    
                    // The data for our dataset
                    data: {
                        labels: datos.meses,
                        datasets: [{
                            label: datos.tienda,
                            backgroundColor: 'rgb(0, 0, 0, 0)',
                            borderColor: 'rgb(0,71,255)',
                            data: datos.totales
                        }]
                    },
    
                    // Configuration options go here
                    options: {}
                });
            }
        </script>
        <script src="{{asset("js/suppliers/dashboard.js")}}" defer></script>
    @endpush
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 col-md-2 offset-md-1">
                <div class="kt-portlet">
                    <div class="kt-portlet__body">
                        <p class="dashboard_card_title text-center"></p>
                        <p class="dashboard_card_subtitle text-center">{{__("Productos ingresados")}}</p>
                        <a href="{{route("products.index")}}"
                           class="dashboard_card_link text-center">{{__("Ver todos")}}</a>
                    </div>
                </div>
                <div class="kt-portlet">
                    <div class="kt-portlet__body">
                        <p class="dashboard_card_title text-center"></p>
                        <p class="dashboard_card_subtitle text-center">{{__("Categorías de productos")}}</p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-8">
                <div class="kt-portlet">
                    <div class="kt-portlet__head">
                        <div class="kt-portlet__head-label">
                            <b>{{__("Analiticas de ventas")}}</b>
                        </div>
                    </div>
                    <div class="kt-portlet__body">
                        <canvas class="my_datatable" id="supplier_sales"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>


    @endsection


