var datatable = $('#users_table').KTDatatable({
    data: {
        type: 'remote',
        source: {
            read: {
                url: '/users/data',
                method: "GET",
                map: function (raw) {
                    var dataSet = raw;
                    if (typeof raw.data !== 'undefined') {
                        dataSet = raw.data;
                    }
                    return dataSet;
                }
            }
        },
        pageSize: 10,
        
        serverPaging: false,
        serverFiltering: false,
        serverSorting: false,
    },

    layout: {
        scroll: false,
        footer: false,
    },

    // column sorting
    sortable: true,

    pagination: true,

    search: {
        input: $('#generalSearch'),
    },

    // columns definition
    columns: [
        {
            field: 'id',
            title: '#ID',
            sortable: 'asc',
            width: 40,
            type: 'number',
            selector: false,
            textAlign: 'center',
        }, {
            field: 'name',
            title: 'Nombre usuario',
            ordereable: true,
            template: function(row) {
                var lastname = (row.detail) ? row.detail.lastname : '';

                return row.name + ' ' + lastname
            }
        }, {
            field: 'email',
            title: 'Correo electrónico',
            ordereable: true,
        }, {
            field: '',
            title: 'Ver detalle',
            template: function(row) {
                return '<a href="/users/'+row.id+'/edit" class="text-center"><span class="fa fa-edit"></span></a>'
            }
        }
    ],
});

$('#clientState').on('change', function() {
    datatable.search($(this).val().toLowerCase(), 'user_status_id');
});

var datatable = $('#history_table').KTDatatable({
    data: {
        type: 'remote',
        source: {
            read: {
                url: '/clients/data',
                method: "GET",
                map: function (raw) {
                    var dataSet = raw;
                    if (typeof raw.data !== 'undefined') {
                        dataSet = raw.data;
                    }
                    return dataSet;
                }
            }
        },
        pageSize: 10,
        serverPaging: false,
        serverFiltering: false,
        serverSorting: false,
    },

    layout: {
        scroll: false,
        footer: false,
    },

    // column sorting
    sortable: true,

    pagination: true,

    search: {
        input: $('#generalSearch'),
    },

    // columns definition
    columns: [
        {
            field: 'id',
            title: '#ID',
            sortable: 'asc',
            width: 40,
            type: 'number',
            selector: false,
            textAlign: 'center',
        }, {
            field: '',
            title: 'Fecha',
            ordereable: true,
        }, {
            field: '',
            title: 'No. compra',
            ordereable: true,
        }, {
            field: '',
            title: 'Total',
            template: function() {
                return 0
            },
            ordereable: true,
        }, {
            field: '',
            title: 'Ubicación',
            ordereable: true,
        }, {
            field: '',
            title: 'Estado',
            ordereable: true,
        }, {
            field: '',
            title: 'Detalle',
            ordereable: true,
        }, /*{
            field: 'user_status_id',
            title: 'Estado',
            template: function(row) {
                var status = {
                    1: {'class': ' kt-badge--success', 'name': 'Activo'},
                    2: {'class': ' kt-badge--secondary', 'name': 'Inactivo'},
                    3: {'class': ' kt-badge--danger', 'name': 'Bloqueado'},
                };
                return '<span class="kt-badge ' + status[row.user_status_id].class + ' kt-badge--inline kt-badge--pill w-50 py-3">' + status[row.user_status_id].name + '</span>'
            }
        }, {
            field: '',
            title: 'Ver detalle',
            template: function(row) {
                return '<a href="/clients/detail/'+row.id+'"><span class="fa fa-file-alt"></span></a>'
            }
        }*/
    ],
});
