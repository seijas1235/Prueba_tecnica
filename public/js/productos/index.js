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
        "title": "Titulo",
        "data": "titulo",
        "width" : "10%",
        "responsivePriority": 2,
        "render": function( data, type, full, meta ) {
            return (data);},
    },


    {
        "title": "Acciones",
        "orderable": false,
        "width" : "20%",
        "render": function(data, type, full, meta) {

        return "<div id='" + full.id + "' class='text-center'>" +
        "<div class='float-left col-lg-6'>" +
        "<a href='#' class='edit-Producto' data-toggle='modal' data-target='#modalUpdateProducto' data-id='"+full.id+"' data-titulo='"+full.titulo+"' data-codigo='"+full.codigo+" 'data-id_marca='"+full.id_marca+"' data-id_proveedor='"+full.id_proveedor+"' data-precio_actual='"+full.precio_actual+"' data-precio_anterior='"+full.precio_anterior+"' data-costo_actual='"+full.costo_actual+"' data-costo_anterior='"+full.costo_anterior+"' data-nota='"+full.nota+"' data-stock_minimo='"+full.stock_minimo+"' data-stock_maximo='"+full.stock_maximo+"' data-id_categoria='"+full.id_categoria+"'  data-id_unidad_medida='"+full.id_unidad_medida+"' >" +
        "<i class='fa fa-btn fa-edit' title='Editar Producto'></i>" +
        "</a>" + "</div>" +
        "<div class='float-right col-lg-6'>" +
        "<a href='#' class='remove-Producto'"+ "data-method='delete'  data-toggle='modal' data-id='"+full.id+"' data-target='#modalConfirmarAccion' "+  ">" +
        "<i class='fa fa-thumbs-down' title='Desactivar Producto'></i>" +
        "</a>" + "</div>";

        },
        "responsivePriority": 5
    }]

});
//Confirmar Contraseña para borrar
$("#btnConfirmarAccion").click(function(event) {
    event.preventDefault();
	if ($('#ConfirmarAccionForm').valid()) {

		confirmarAccion();
	} else {
		validator.focusInvalid();
	}
});


function confirmarAccion(button) {

$('.loader').addClass('is-active');
    var formData = $("#ConfirmarAccionForm").serialize();
    var id = $("#idConfirmacion").val();
	$.ajax({
		type: "POST",
		headers: {'X-CSRF-TOKEN': $('#tokenReset').val()},
		url: APP_URL+"/producto/" + id + "/delete",
		data: formData,
		dataType: "json",
		success: function(data) {
			$('.loader').removeClass('is-active');
            BorrarFormularioConfirmar();
			$('#modalConfirmarAccion').modal("hide");
			producto_table.ajax.reload();
			alertify.set('notifier','position', 'top-center');
			alertify.success('El producto se Desactivó Correctamente!!');
		},
		error: function(errors) {
			$('.loader').removeClass('is-active');
            if(errors.responseText !=""){
                var errors = JSON.parse(errors.responseText);
                if (errors.password_actual != null) {
                    $("input[name='password_actual'] ").after("<label class='error' id='ErrorPassword_actual'>"+errors.password_actual+"</label>");
                }
                else{
                    $("#ErrorPassword_actual").remove();
                }
            }

		}

	});
}
