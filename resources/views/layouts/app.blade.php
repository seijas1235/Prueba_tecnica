<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Gustavo Seijas</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="{{asset('css/styles.css" rel="stylesheet') }}" />
        <link rel="stylesheet" href="{{asset('css/dataTables.bootstrap.min.css') }}">
        <link rel="stylesheet" href="{{asset('css/responsive.bootstrap.min.css') }}">
        <link rel="stylesheet" href="{{asset('css/jquery.dataTables.min.css') }}">
        <link rel="stylesheet" href="{{asset('css/buttons.dataTables.min.css') }}">

    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Prueba Tecnica Gustavo Seijas</a>
                <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">

                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">

                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead bg-primary text-white text-center">
            <div class="container d-flex align-items-center flex-column">
                @yield('content')
            </div>
        </header>
        <!-- Portfolio Section-->

        <!-- Copyright Section-->
        <div class="copyright py-4 text-center text-white">
            <div class="container"><small>Copyright © Gustavo Seijas 2021</small></div>
        </div>
        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
        <div class="scroll-to-top d-lg-none position-fixed">
            <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top"><i class="fa fa-chevron-up"></i></a>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <script src="{{asset('js/datatable/jquery.dataTables.min.js') }}"></script>
        <script src="{{asset('js/datatable/dataTables.bootstrap.min.js') }}"></script>
        <script src="{{asset('js/datatable/dataTables.buttons.min.js') }}"></script>
        <script src="{{asset('js/datatable/dataTables.responsive.min.js') }}"></script>
        <script src="{{asset('js/datatable/buttons.html5.min.js') }}"></script>
        <script src="{{asset('js/datatable/jszip.min.js') }}"></script>
        <script src="{{asset('js/datatable/pdfmake.min.js') }}"></script>
        <!-- Core theme JS-->
        <script src="{{asset('js/scripts.js') }}"></script>
        <script type="text/javascript">
            var APP_URL = {!! json_encode(url('/')) !!}
        </script>
        @stack('scripts')
    </body>
</html>
