var datatable = $('#products_table').KTDatatable({
    // datasource definition
    data: {
        type: 'remote',
        source: {
            read: {
                url: '/products/json_list1',
                method: "GET",
                map: function (raw) {
                    // sample data mapping
                    var dataSet = raw;
                    if (typeof raw.data !== 'undefined') {
                        dataSet = raw.data;
                    }
                    return dataSet;
                },
            },
        },
        pageSize: 2,
        serverPaging: true,
        serverFiltering: true,
        serverSorting: true,
    },

    // layout definition
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
            field: 'number_id',
            title: '#ID',
            sortable: 'asc',
            width: 40,
            type: 'number',
            selector: false,
            textAlign: 'center',
        }, {
            field: 'name',
            title: 'Nombre general',
            ordereable: true,
        }, {
            field: 'display_name',
            title: 'Nombre en APP',
        }, {
            field: 'brand.name',
            title: 'Marca',
        }, {
            field: 'category.name',
            title: 'Categoría',
        }, {
            field: 'product_status.name',
            title: 'Estado'
        }, {
            field: '',
            title: 'Acciones',
            render: function() {
                return '<a href="#" class="btn btn-sm btn-clean btn-icon btn-icon-md" title="View">\
                          <i class="la la-edit"></i>\
                        </a>';
            },
        }
    ],
});
