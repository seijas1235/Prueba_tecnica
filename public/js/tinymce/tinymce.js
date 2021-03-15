// Class definition
var demos = null;

var KTTinymce = function () {
    // Private functions
    demos = function () {
        tinymce.init({
            selector: '#instructions',
            statusbar: false,
            plugins: "lists advlist",
            toolbar: 'numlist bullist'
        });
    };

    return {
        // public functions
        init: function() {
            demos();
        }
    };
}();

// Initialization
jQuery(document).ready(function() {
    KTTinymce.init();
});
