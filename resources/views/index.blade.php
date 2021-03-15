<!DOCTYPE html>
<html lang="en">

<!-- begin::Head -->
<head>
    <base href="">
    <meta charset="utf-8"/>
    <title>{{ config('app.name') }}</title>
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('js/KTAppOptions.js') }}"></script>

    <!--begin::Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!--end::Fonts -->

    <link href="{{ asset('css/app.css') }}" rel="stylesheet" type="text/css">

    <!--end::Layout Skins -->
    <link rel="shortcut icon" href="assets/media/logos/favicon.ico"/>

</head>
<!-- end::Head -->

<!-- begin::Body -->
<body
    class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--enabled kt-subheader--transparent kt-aside--enabled kt-aside--fixed kt-page--loading">

<div id="app">


    <!-- begin:: Header Mobile -->
    <div id="kt_header_mobile" class="kt-header-mobile  kt-header-mobile--fixed ">
        <div class="kt-header-mobile__logo">
            <a href="index.html">
                <img alt="Logo" src="assets/media/logos/logo-6.png"/>
            </a>
        </div>
        <div class="kt-header-mobile__toolbar">
            <button class="kt-header-mobile__toolbar-toggler kt-header-mobile__toolbar-toggler--left"
                    id="kt_aside_mobile_toggler"><span></span></button>
            <button class="kt-header-mobile__toolbar-toggler" id="kt_header_mobile_toggler"><span></span></button>
            <button class="kt-header-mobile__toolbar-topbar-toggler" id="kt_header_mobile_topbar_toggler"><i
                    class="flaticon-more"></i></button>
        </div>
    </div>

    <!-- end:: Header Mobile -->

    <!-- begin:: Root -->
    <div class="kt-grid kt-grid--hor kt-grid--root">

        <!-- begin:: Page -->
        <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">

            @include('layouts.sidebar')

            <!-- begin:: Wrapper -->
            <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">

                <!-- begin:: Header -->
                <div id="kt_header" class="kt-header kt-grid__item  kt-header--fixed ">

                    <!-- begin:: Header Menu -->
                    <button class="kt-header-menu-wrapper-close" id="kt_header_menu_mobile_close_btn"><i
                            class="la la-close"></i></button>
                    <div class="kt-header-menu-wrapper" id="kt_header_menu_wrapper">
                        <div id="kt_header_menu" class="kt-header-menu kt-header-menu-mobile  kt-header-menu--layout- ">
                            <ul class="kt-menu__nav ">

                            </ul>
                        </div>
                    </div>

                    <!-- end:: Header Menu -->

                    <!-- begin:: Header Topbar -->
                    <div class="kt-header__topbar">

                        <!--begin: Search -->
                        <div class="kt-header__topbar-item kt-header__topbar-item--search dropdown">
                            <div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="10px,0px">
                                <span class="kt-header__topbar-icon"><i class="flaticon2-search-1"></i></span>
                            </div>
                            <div
                                class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-top-unround dropdown-menu-anim dropdown-menu-lg">
                                <div class="kt-quick-search kt-quick-search--dropdown kt-quick-search--result-compact"
                                     id="kt_quick_search_dropdown">
                                    <form method="get" class="kt-quick-search__form">
                                        <div class="input-group">
                                            <div class="input-group-prepend"><span class="input-group-text"><i
                                                        class="flaticon2-search-1"></i></span></div>
                                            <input type="text" class="form-control kt-quick-search__input"
                                                   placeholder="Search...">
                                            <div class="input-group-append"><span class="input-group-text"><i
                                                        class="la la-close kt-quick-search__close"></i></span></div>
                                        </div>
                                    </form>
                                    <div class="kt-quick-search__wrapper kt-scroll" data-scroll="true" data-height="325"
                                         data-mobile-height="200">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--end: Search -->

                        <!--begin: Notifications -->
                        <div class="kt-header__topbar-item dropdown">
                            <div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="30px,0px">
									<span class="kt-header__topbar-icon">
										<i class="flaticon2-bell-alarm-symbol"></i>
										<span
                                            class="kt-badge kt-badge--dot kt-badge--notify kt-badge--sm kt-badge--brand"></span>
									</span>
                            </div>
                            <div
                                class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround dropdown-menu-lg">
                                <form>
                                    <div class="kt-head"
                                         style="background-image: url(assets/media/misc/head_bg_sm.jpg)">
                                        <h3 class="kt-head__title">User Notifications</h3>
                                        <div class="kt-head__sub"><span
                                                class="kt-head__desc">23 new notifications</span></div>
                                    </div>
                                    <div class="kt-notification kt-margin-t-30 kt-margin-b-20 kt-scroll"
                                         data-scroll="true" data-height="270" data-mobile-height="220">
                                        <a href="#" class="kt-notification__item">
                                            <div class="kt-notification__item-icon">
                                                <i class="flaticon2-line-chart kt-font-success"></i>
                                            </div>
                                            <div class="kt-notification__item-details">
                                                <div class="kt-notification__item-title">
                                                    New order has been received
                                                </div>
                                                <div class="kt-notification__item-time">
                                                    2 hrs ago
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="kt-notification__item">
                                            <div class="kt-notification__item-icon">
                                                <i class="flaticon2-box-1 kt-font-brand"></i>
                                            </div>
                                            <div class="kt-notification__item-details">
                                                <div class="kt-notification__item-title">
                                                    New customer is registered
                                                </div>
                                                <div class="kt-notification__item-time">
                                                    3 hrs ago
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="kt-notification__item">
                                            <div class="kt-notification__item-icon">
                                                <i class="flaticon2-chart2 kt-font-danger"></i>
                                            </div>
                                            <div class="kt-notification__item-details">
                                                <div class="kt-notification__item-title">
                                                    Application has been approved
                                                </div>
                                                <div class="kt-notification__item-time">
                                                    3 hrs ago
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="kt-notification__item">
                                            <div class="kt-notification__item-icon">
                                                <i class="flaticon2-image-file kt-font-warning"></i>
                                            </div>
                                            <div class="kt-notification__item-details">
                                                <div class="kt-notification__item-title">
                                                    New file has been uploaded
                                                </div>
                                                <div class="kt-notification__item-time">
                                                    5 hrs ago
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="kt-notification__item">
                                            <div class="kt-notification__item-icon">
                                                <i class="flaticon2-user kt-font-info"></i>
                                            </div>
                                            <div class="kt-notification__item-details">
                                                <div class="kt-notification__item-title">
                                                    New user feedback received
                                                </div>
                                                <div class="kt-notification__item-time">
                                                    8 hrs ago
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="kt-notification__item">
                                            <div class="kt-notification__item-icon">
                                                <i class="flaticon2-pie-chart-2 kt-font-success"></i>
                                            </div>
                                            <div class="kt-notification__item-details">
                                                <div class="kt-notification__item-title">
                                                    System reboot has been successfully completed
                                                </div>
                                                <div class="kt-notification__item-time">
                                                    12 hrs ago
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="kt-notification__item">
                                            <div class="kt-notification__item-icon">
                                                <i class="flaticon2-favourite kt-font-focus"></i>
                                            </div>
                                            <div class="kt-notification__item-details">
                                                <div class="kt-notification__item-title">
                                                    New order has been placed
                                                </div>
                                                <div class="kt-notification__item-time">
                                                    15 hrs ago
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="kt-notification__item kt-notification__item--read">
                                            <div class="kt-notification__item-icon">
                                                <i class="flaticon2-safe kt-font-primary"></i>
                                            </div>
                                            <div class="kt-notification__item-details">
                                                <div class="kt-notification__item-title">
                                                    Company meeting canceled
                                                </div>
                                                <div class="kt-notification__item-time">
                                                    19 hrs ago
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="kt-notification__item">
                                            <div class="kt-notification__item-icon">
                                                <i class="flaticon2-psd kt-font-success"></i>
                                            </div>
                                            <div class="kt-notification__item-details">
                                                <div class="kt-notification__item-title">
                                                    New report has been received
                                                </div>
                                                <div class="kt-notification__item-time">
                                                    23 hrs ago
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="kt-notification__item">
                                            <div class="kt-notification__item-icon">
                                                <i class="flaticon-download-1 kt-font-danger"></i>
                                            </div>
                                            <div class="kt-notification__item-details">
                                                <div class="kt-notification__item-title">
                                                    Finance report has been generated
                                                </div>
                                                <div class="kt-notification__item-time">
                                                    25 hrs ago
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="kt-notification__item">
                                            <div class="kt-notification__item-icon">
                                                <i class="flaticon-security kt-font-warning"></i>
                                            </div>
                                            <div class="kt-notification__item-details">
                                                <div class="kt-notification__item-title">
                                                    New customer comment recieved
                                                </div>
                                                <div class="kt-notification__item-time">
                                                    2 days ago
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="kt-notification__item">
                                            <div class="kt-notification__item-icon">
                                                <i class="flaticon2-pie-chart kt-font-focus"></i>
                                            </div>
                                            <div class="kt-notification__item-details">
                                                <div class="kt-notification__item-title">
                                                    New customer is registered
                                                </div>
                                                <div class="kt-notification__item-time">
                                                    3 days ago
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <!--end: Notifications -->

                        <!--begin: Quick Actions -->
                        <div class="kt-header__topbar-item">
                            <div class="kt-header__topbar-wrapper" id="kt_offcanvas_toolbar_quick_actions_toggler_btn">
                                <span class="kt-header__topbar-icon"><i class="flaticon2-gear"></i></span>
                            </div>
                        </div>

                        <!--end: Quick Actions -->

                        <!--begin: User Bar -->
                        <div class="kt-header__topbar-item kt-header__topbar-item--user">
                            <div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="0px,0px">

                                <!--use "kt-rounded" class for rounded avatar style-->
                                <div class="kt-header__topbar-user kt-rounded-">
                                    <span class="kt-header__topbar-welcome kt-hidden-mobile">Hi,</span>
                                    <span class="kt-header__topbar-username kt-hidden-mobile">Sean</span>
                                    <img alt="Pic" src="assets/media/users/300_25.jpg" class="kt-rounded-"/>

                                    <!--use below badge element instead the user avatar to display username's first letter(remove kt-hidden class to display it) -->
                                    <span
                                        class="kt-badge kt-badge--username kt-badge--lg kt-badge--brand kt-hidden kt-badge--bold">S</span>
                                </div>
                            </div>
                            <div
                                class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround dropdown-menu-sm">
                                <div class="kt-user-card kt-margin-b-40 kt-margin-b-30-tablet-and-mobile"
                                     style="background-image: url(assets/media/misc/head_bg_sm.jpg)">
                                    <div class="kt-user-card__wrapper">
                                        <div class="kt-user-card__pic">

                                            <!--use "kt-rounded" class for rounded avatar style-->
                                            <img alt="Pic" src="assets/media/users/300_21.jpg" class="kt-rounded-"/>
                                        </div>
                                        <div class="kt-user-card__details">
                                            <div class="kt-user-card__name">Alex Stone</div>
                                            <div class="kt-user-card__position">CTO, Loop Inc.</div>
                                        </div>
                                    </div>
                                </div>
                                <ul class="kt-nav kt-margin-b-10">
                                    <li class="kt-nav__item">
                                        <a href="custom/profile/personal-information.html" class="kt-nav__link">
                                            <span class="kt-nav__link-icon"><i class="flaticon2-calendar-3"></i></span>
                                            <span class="kt-nav__link-text">My Profile</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="custom/profile/overview-1.html" class="kt-nav__link">
                                            <span class="kt-nav__link-icon"><i class="flaticon2-browser-2"></i></span>
                                            <span class="kt-nav__link-text">My Tasks</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="custom/profile/overview-2.html" class="kt-nav__link">
                                            <span class="kt-nav__link-icon"><i class="flaticon2-mail"></i></span>
                                            <span class="kt-nav__link-text">Messages</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__item">
                                        <a href="custom/profile/account-settings.html" class="kt-nav__link">
                                            <span class="kt-nav__link-icon"><i class="flaticon2-gear"></i></span>
                                            <span class="kt-nav__link-text">Settings</span>
                                        </a>
                                    </li>
                                    <li class="kt-nav__separator kt-nav__separator--fit"></li>
                                    <li class="kt-nav__custom kt-space-between">
                                        <a href="custom/login/login-v1.html" target="_blank"
                                           class="btn btn-label-brand btn-upper btn-sm btn-bold">Sign Out</a>
                                        <i class="flaticon2-information kt-label-font-color-2" data-toggle="kt-tooltip"
                                           data-placement="right" title=""
                                           data-original-title="Click to learn more..."></i>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <!--end: User Bar -->

                    </div>

                    <!-- end:: Header Topbar -->
                </div>

                <!-- end:: Header -->
                <div class="kt-content  kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">



                    <!-- begin:: Content -->
                    <div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">

                        @yield('content')
                    </div>

                    <!-- end:: Content -->
                </div>
            </div>

            <!-- end:: Wrapper -->
        </div>

        <!-- end:: Page -->
    </div>

    <!-- end:: Root -->

    <!-- begin:: Topbar Offcanvas Panels -->

    <!-- begin::Offcanvas Toolbar Quick Actions -->
    <div id="kt_offcanvas_toolbar_quick_actions" class="kt-offcanvas-panel">
        <div class="kt-offcanvas-panel__head">
            <h3 class="kt-offcanvas-panel__title">
                Quick Actions
            </h3>
            <a href="#" class="kt-offcanvas-panel__close" id="kt_offcanvas_toolbar_quick_actions_close"><i
                    class="flaticon2-delete"></i></a>
        </div>
        <div class="kt-offcanvas-panel__body">
            <div class="kt-grid-nav-v2">
                <a href="#" class="kt-grid-nav-v2__item">
                    <div class="kt-grid-nav-v2__item-icon"><i class="flaticon2-box"></i></div>
                    <div class="kt-grid-nav-v2__item-title">Orders</div>
                </a>
                <a href="#" class="kt-grid-nav-v2__item">
                    <div class="kt-grid-nav-v2__item-icon"><i class="flaticon-download-1"></i></div>
                    <div class="kt-grid-nav-v2__item-title">Uploades</div>
                </a>
                <a href="#" class="kt-grid-nav-v2__item">
                    <div class="kt-grid-nav-v2__item-icon"><i class="flaticon2-supermarket"></i></div>
                    <div class="kt-grid-nav-v2__item-title">Products</div>
                </a>
                <a href="#" class="kt-grid-nav-v2__item">
                    <div class="kt-grid-nav-v2__item-icon"><i class="flaticon2-avatar"></i></div>
                    <div class="kt-grid-nav-v2__item-title">Customers</div>
                </a>
                <a href="#" class="kt-grid-nav-v2__item">
                    <div class="kt-grid-nav-v2__item-icon"><i class="flaticon2-list"></i></div>
                    <div class="kt-grid-nav-v2__item-title">Blog Posts</div>
                </a>
                <a href="#" class="kt-grid-nav-v2__item">
                    <div class="kt-grid-nav-v2__item-icon"><i class="flaticon2-settings"></i></div>
                    <div class="kt-grid-nav-v2__item-title">Settings</div>
                </a>
            </div>
        </div>
    </div>

    <!-- end::Offcanvas Toolbar Quick Actions -->

    <!-- end:: Topbar Offcanvas Panels -->

    <!-- begin:: Quick Panel -->
    <div id="kt_quick_panel" class="kt-offcanvas-panel">
        <div class="kt-offcanvas-panel__nav">
            <ul class="nav nav-pills" role="tablist">
                <li class="nav-item active">
                    <a class="nav-link active" data-toggle="tab" href="#kt_quick_panel_tab_notifications" role="tab">Notifications</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#kt_quick_panel_tab_actions" role="tab">Actions</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#kt_quick_panel_tab_settings" role="tab">Settings</a>
                </li>
            </ul>
            <button class="kt-offcanvas-panel__close" id="kt_quick_panel_close_btn"><i class="flaticon2-delete"></i>
            </button>
        </div>
        <div class="kt-offcanvas-panel__body">
            <div class="tab-content">
                <div class="tab-pane fade show kt-offcanvas-panel__content kt-scroll active"
                     id="kt_quick_panel_tab_notifications" role="tabpanel">

                    <!--Begin::Timeline -->
                    <div class="kt-timeline">

                        <!--Begin::Item -->
                        <div class="kt-timeline__item kt-timeline__item--success">
                            <div class="kt-timeline__item-section">
                                <div class="kt-timeline__item-section-border">
                                    <div class="kt-timeline__item-section-icon">
                                        <i class="flaticon-feed kt-font-success"></i>
                                    </div>
                                </div>
                                <span class="kt-timeline__item-datetime">02:30 PM</span>
                            </div>
                            <a href="" class="kt-timeline__item-text">
                                KeenThemes created new layout whith tens of new options for Keen Admin panel
                            </a>
                            <div class="kt-timeline__item-info">
                                HTML,CSS,VueJS
                            </div>
                        </div>

                        <!--End::Item -->

                        <!--Begin::Item -->
                        <div class="kt-timeline__item kt-timeline__item--danger">
                            <div class="kt-timeline__item-section">
                                <div class="kt-timeline__item-section-border">
                                    <div class="kt-timeline__item-section-icon">
                                        <i class="flaticon-safe-shield-protection kt-font-danger"></i>
                                    </div>
                                </div>
                                <span class="kt-timeline__item-datetime">01:20 AM</span>
                            </div>
                            <a href="" class="kt-timeline__item-text">
                                New secyrity alert by Firewall & order to take aktion on User Preferences
                            </a>
                            <div class="kt-timeline__item-info">
                                Security, Fieewall
                            </div>
                        </div>

                        <!--End::Item -->

                        <!--Begin::Item -->
                        <div class="kt-timeline__item kt-timeline__item--brand">
                            <div class="kt-timeline__item-section">
                                <div class="kt-timeline__item-section-border">
                                    <div class="kt-timeline__item-section-icon">
                                        <i class="flaticon2-box kt-font-brand"></i>
                                    </div>
                                </div>
                                <span class="kt-timeline__item-datetime">Yestardey</span>
                            </div>
                            <a href="" class="kt-timeline__item-text">
                                FlyMore design mock-ups been uploadet by designers Bob, Naomi, Richard
                            </a>
                            <div class="kt-timeline__item-info">
                                PSD, Sketch, AJ
                            </div>
                        </div>

                        <!--End::Item -->

                        <!--Begin::Item -->
                        <div class="kt-timeline__item kt-timeline__item--warning">
                            <div class="kt-timeline__item-section">
                                <div class="kt-timeline__item-section-border">
                                    <div class="kt-timeline__item-section-icon">
                                        <i class="flaticon-pie-chart-1 kt-font-warning"></i>
                                    </div>
                                </div>
                                <span class="kt-timeline__item-datetime">Aug 13,2018</span>
                            </div>
                            <a href="" class="kt-timeline__item-text">
                                Meeting with Ken Digital Corp ot Unit14, 3 Edigor Buildings, George Street, Loondon<br>
                                England, BA12FJ
                            </a>
                            <div class="kt-timeline__item-info">
                                Meeting, Customer
                            </div>
                        </div>

                        <!--End::Item -->

                        <!--Begin::Item -->
                        <div class="kt-timeline__item kt-timeline__item--info">
                            <div class="kt-timeline__item-section">
                                <div class="kt-timeline__item-section-border">
                                    <div class="kt-timeline__item-section-icon">
                                        <i class="flaticon-notepad kt-font-info"></i>
                                    </div>
                                </div>
                                <span class="kt-timeline__item-datetime">May 09, 2018</span>
                            </div>
                            <a href="" class="kt-timeline__item-text">
                                KeenThemes created new layout whith tens of new options for Keen Admin panel
                            </a>
                            <div class="kt-timeline__item-info">
                                HTML,CSS,VueJS
                            </div>
                        </div>

                        <!--End::Item -->

                        <!--Begin::Item -->
                        <div class="kt-timeline__item kt-timeline__item--accent">
                            <div class="kt-timeline__item-section">
                                <div class="kt-timeline__item-section-border">
                                    <div class="kt-timeline__item-section-icon">
                                        <i class="flaticon-bell kt-font-success"></i>
                                    </div>
                                </div>
                                <span class="kt-timeline__item-datetime">01:20 AM</span>
                            </div>
                            <a href="" class="kt-timeline__item-text">
                                New secyrity alert by Firewall & order to take aktion on User Preferences
                            </a>
                            <div class="kt-timeline__item-info">
                                Security, Fieewall
                            </div>
                        </div>

                        <!--End::Item -->
                    </div>

                    <!--End::Timeline -->
                </div>
                <div class="tab-pane fade kt-offcanvas-panel__content kt-scroll" id="kt_quick_panel_tab_actions"
                     role="tabpanel">

                    <!--begin::Portlet-->
                    <div class="kt-portlet kt-portlet--solid-success">
                        <div class="kt-portlet__head">
                            <div class="kt-portlet__head-label">
                                <span class="kt-portlet__head-icon kt-hide"><i class="flaticon-stopwatch"></i></span>
                                <h3 class="kt-portlet__head-title">Recent Bills</h3>
                            </div>
                            <div class="kt-portlet__head-toolbar">
                                <div class="kt-portlet__head-group">
                                    <div class="dropdown dropdown-inline">
                                        <button type="button"
                                                class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                            <i class="flaticon-more"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="kt-portlet__body">
                            <div class="kt-portlet__content">
                                Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of
                                the printing industry.
                            </div>
                        </div>
                        <div class="kt-portlet__foot kt-portlet__foot--sm kt-align-right">
                            <a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
                            <a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
                        </div>
                    </div>

                    <!--end::Portlet-->

                    <!--begin::Portlet-->
                    <div class="kt-portlet kt-portlet--solid-focus">
                        <div class="kt-portlet__head">
                            <div class="kt-portlet__head-label">
                                <span class="kt-portlet__head-icon kt-hide"><i class="flaticon-stopwatch"></i></span>
                                <h3 class="kt-portlet__head-title">Latest Orders</h3>
                            </div>
                            <div class="kt-portlet__head-toolbar">
                                <div class="kt-portlet__head-group">
                                    <div class="dropdown dropdown-inline">
                                        <button type="button"
                                                class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                            <i class="flaticon-more"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="kt-portlet__body">
                            <div class="kt-portlet__content">
                                Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of
                                the printing industry.
                            </div>
                        </div>
                        <div class="kt-portlet__foot kt-portlet__foot--sm kt-align-right">
                            <a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
                            <a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
                        </div>
                    </div>

                    <!--end::Portlet-->

                    <!--begin::Portlet-->
                    <div class="kt-portlet kt-portlet--solid-info">
                        <div class="kt-portlet__head">
                            <div class="kt-portlet__head-label">
                                <h3 class="kt-portlet__head-title">Latest Invoices</h3>
                            </div>
                            <div class="kt-portlet__head-toolbar">
                                <div class="kt-portlet__head-group">
                                    <div class="dropdown dropdown-inline">
                                        <button type="button"
                                                class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                            <i class="flaticon-more"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="kt-portlet__body">
                            <div class="kt-portlet__content">
                                Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of
                                the printing industry.
                            </div>
                        </div>
                        <div class="kt-portlet__foot kt-portlet__foot--sm kt-align-right">
                            <a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
                            <a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
                        </div>
                    </div>

                    <!--end::Portlet-->

                    <!--begin::Portlet-->
                    <div class="kt-portlet kt-portlet--solid-warning">
                        <div class="kt-portlet__head">
                            <div class="kt-portlet__head-label">
                                <h3 class="kt-portlet__head-title">New Comments</h3>
                            </div>
                            <div class="kt-portlet__head-toolbar">
                                <div class="kt-portlet__head-group">
                                    <div class="dropdown dropdown-inline">
                                        <button type="button"
                                                class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                            <i class="flaticon-more"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="kt-portlet__body">
                            <div class="kt-portlet__content">
                                Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of
                                the printing industry.
                            </div>
                        </div>
                        <div class="kt-portlet__foot kt-portlet__foot--sm kt-align-right">
                            <a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
                            <a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
                        </div>
                    </div>

                    <!--end::Portlet-->

                    <!--begin::Portlet-->
                    <div class="kt-portlet kt-portlet--solid-brand">
                        <div class="kt-portlet__head">
                            <div class="kt-portlet__head-label">
                                <h3 class="kt-portlet__head-title">Recent Posts</h3>
                            </div>
                            <div class="kt-portlet__head-toolbar">
                                <div class="kt-portlet__head-group">
                                    <div class="dropdown dropdown-inline">
                                        <button type="button"
                                                class="btn btn-sm btn-font-light btn-outline-hover-light btn-circle btn-icon"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                            <i class="flaticon-more"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="kt-portlet__body">
                            <div class="kt-portlet__content">
                                Lorem Ipsum is simply dummy text of the printing and typesetting simply dummy text of
                                the printing industry.
                            </div>
                        </div>
                        <div class="kt-portlet__foot kt-portlet__foot--sm kt-align-right">
                            <a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">Dismiss</a>
                            <a href="#" class="btn btn-bold btn-upper btn-sm btn-font-light btn-outline-hover-light">View</a>
                        </div>
                    </div>

                    <!--end::Portlet-->
                </div>
                <div class="tab-pane fade kt-offcanvas-panel__content kt-scroll" id="kt_quick_panel_tab_settings"
                     role="tabpanel">
                    <form class="kt-form">
                        <div class="kt-heading kt-heading--space-sm">Notifications</div>
                        <div class="form-group form-group-xs row">
                            <label class="col-8 col-form-label">Enable notifications:</label>
                            <div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_1">
											<span></span>
										</label>
									</span>
                            </div>
                        </div>
                        <div class="form-group form-group-xs row">
                            <label class="col-8 col-form-label">Enable audit log:</label>
                            <div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm">
										<label>
											<input type="checkbox" name="quick_panel_notifications_2">
											<span></span>
										</label>
									</span>
                            </div>
                        </div>
                        <div class="form-group form-group-last form-group-xs row">
                            <label class="col-8 col-form-label">Notify on new orders:</label>
                            <div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_2">
											<span></span>
										</label>
									</span>
                            </div>
                        </div>
                        <div class="kt-separator kt-separator--space-md kt-separator--border-dashed"></div>
                        <div class="kt-heading kt-heading--space-sm">Orders</div>
                        <div class="form-group form-group-xs row">
                            <label class="col-8 col-form-label">Enable order tracking:</label>
                            <div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm kt-switch--danger">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_3">
											<span></span>
										</label>
									</span>
                            </div>
                        </div>
                        <div class="form-group form-group-xs row">
                            <label class="col-8 col-form-label">Enable orders reports:</label>
                            <div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm kt-switch--danger">
										<label>
											<input type="checkbox" name="quick_panel_notifications_3">
											<span></span>
										</label>
									</span>
                            </div>
                        </div>
                        <div class="form-group form-group-last form-group-xs row">
                            <label class="col-8 col-form-label">Allow order status auto update:</label>
                            <div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm kt-switch--danger">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_4">
											<span></span>
										</label>
									</span>
                            </div>
                        </div>
                        <div class="kt-separator kt-separator--space-md kt-separator--border-dashed"></div>
                        <div class="kt-heading kt-heading--space-sm">Customers</div>
                        <div class="form-group form-group-xs row">
                            <label class="col-8 col-form-label">Enable customer singup:</label>
                            <div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm kt-switch--success">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_5">
											<span></span>
										</label>
									</span>
                            </div>
                        </div>
                        <div class="form-group form-group-xs row">
                            <label class="col-8 col-form-label">Enable customers reporting:</label>
                            <div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm kt-switch--success">
										<label>
											<input type="checkbox" name="quick_panel_notifications_5">
											<span></span>
										</label>
									</span>
                            </div>
                        </div>
                        <div class="form-group form-group-last form-group-xs row">
                            <label class="col-8 col-form-label">Notifiy on new customer registration:</label>
                            <div class="col-4 kt-align-right">
									<span class="kt-switch kt-switch--sm kt-switch--success">
										<label>
											<input type="checkbox" checked="checked" name="quick_panel_notifications_6">
											<span></span>
										</label>
									</span>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- end:: Quick Panel -->

    <!-- begin::Scrolltop -->
    <div id="kt_scrolltop" class="kt-scrolltop">
        <i class="fa fa-arrow-up"></i>
    </div>

    <!-- end::Scrolltop -->

</div>

</body>
<!-- end::Body -->
</html>
