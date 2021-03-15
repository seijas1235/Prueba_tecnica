var datatable = $('#recipes_table').KTDatatable({
    // datasource definition
    data: {
        type: 'remote',
        source: {
            read: {
                url: '/recipes/data',
                method: "GET",
                map: function (raw) {
                    // sample data mapping
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
            field: 'id',
            width: 65,
            title: 'ID'
        },
        {
            field: 'name',
            width: 100,
            title: 'Nombre'
        },
        {
            field: 'recipe_category.name',
            width: 100,
            title: 'Categoría'
        },
        {
            field: "products_count",
            width: 65,
            title: 'Cantidad de productos'
        },
        {
            field: "",
            width: 65,
            title: 'Vendidos'
        }, {
            field: 'recipe_status.name',
            width: 85,
            title: 'Estado',
            template: function (row) {
                var status = {
                    1: {'class': ' kt-badge--success'},
                    2: {'class': ' kt-badge--metal'},
                    3: {'class': ' kt-badge--warning'},
                };
                return '<span class="kt-badge ' + status[row.recipe_status.id].class + ' kt-badge--inline kt-badge--pill">' + row.recipe_status.name + '</span>';
            }
        }, {
            field: 'Ver detalle',
            width: 65,
            title: 'Ver detalle',
            template: function (row, index, datatable) {
                return '<a href="/recipes/' + row.id + '" class="btn btn-icon btn-pill" >\
                        <img src="/images/save.png">\
                    </a>';
            },
        }
    ],
});

$('#recipeCategory').on('change', function () {
    datatable.search($(this).val(), 'recipe_category.name');
});


