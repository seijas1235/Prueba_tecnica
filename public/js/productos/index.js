var producto_table = $('#producto-table').DataTable({
    "ajax": APP_URL+"/producto/getJson",
    "responsive": true,
    "processing": true,
    "info": true,
    "showNEntries": true,
    "dom": 'Bfrtip',

    lengthMenu: [
        [ 10, 25, 50, -1 ],
        [ '10 filas', '25 filas', '50 filas', 'Mostrar todo' ]
    ],

    "buttons": [
    'pageLength',
    'excelHtml5',
    'csvHtml5'
    ],

    "paging": true,
    "language": {
        "sdecimal":        ".",
        "sthousands":      ",",
        "sProcessing":     "Procesando...",
        "sLengthMenu":     "Mostrar _MENU_ registros",
        "sZeroRecords":    "No se encontraron resultados",
        "sEmptyTable":     "Ningún dato disponible en esta tabla",
        "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
        "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
        "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
        "sInfoPostFix":    "",
        "sSearch":         "Buscar:",
        "sUrl":            "",
        "sInfoThousands":  ",",
        "sLoadingRecords": "Cargando...",
        "oPaginate": {
            "sFirst":    "Primero",
            "sLast":     "Último",
            "sNext":     "Siguiente",
            "sPrevious": "Anterior"
        },
        "oAria": {
            "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
        },
    },
    "order": [0, 'desc'],

    "columns": [ {
        "title": "No.",
        "data": "id",
        "width" : "5%",
        "responsivePriority": 1,
        "render": function( data, type, full, meta ) {
            return (data);},
    },

    {
        "title": "Nombre",
        "data": "nombre",
        "width" : "10%",
        "responsivePriority": 2,
        "render": function( data, type, full, meta ) {
            return ("<a href='/producto/show/"+ full.id +"' class='ver-producto'>"
            +data +
            "</a>");},
    },


    {
        "title": "Acciones",
        "orderable": false,
        "width" : "20%",
        "render": function(data, type, full, meta) {

        return   "<div id='" + full.id + "' class='text-center'>" +
        "<div class='float-left col-lg-6'>" +
        "<a href='/producto/edit/"+ full.id +"' class='edit-producto'>" +
        "<i class='fa fa-btn fa-edit' title='Editar Producto'></i>" +
        "</a>" + "</div>" +
        "<div class='float-right col-lg-6'>" +
        "<a href='#' class='remove-producto' onclick='confirmacion("+ full.id +")'>"  +
        "<i class='fa fa-btn fa-trash' title='Eliminar Producto'></i>" +
        "</a>" + "</div>";

        },
        "responsivePriority": 5
    }]

});
function confirmacion(id) {
    if (window.confirm("Eliminar el producto")) {
        window.CSRF_TOKEN = '{{ csrf_token() }}';
    var url = "/productos/delete/"+id;

    $.ajax({
        method: "DELETE",
        url: url,
        headers: {'X-CSRF-TOKEN': window.CSRF_TOKEN },
        data: {
            "_token": "{{ csrf_token() }}",
            "id": id
            },
        contentType: "application/json",
    }).done(function (data){
      alert("Producto eliminado exitosamente!");
        location.reload();
    }).fail(function(errors) {
        var errors = JSON.parse(errors.responseText);
        console.log(errors);

    });
    return false;

    }
}

