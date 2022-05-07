<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
    <meta name="author" content="Ansonika">
    <title>MIOLA MOTEL</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="assets/img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="assets/img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="assets/img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="assets/img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Gochi+Hand|Montserrat:300,400,700" rel="stylesheet">

    <!-- COMMON CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/vendors.css" rel="stylesheet">
    <!-- SPECIFIC CSS -->
    <link href="assets/css/shop.css" rel="stylesheet">

    <!-- CUSTOM CSS -->
    <link href="assets/css/custom.css" rel="stylesheet">

</head>

<body>

<div id="preloader">
    <div class="sk-spinner sk-spinner-wave">
        <div class="sk-rect1"></div>
        <div class="sk-rect2"></div>
        <div class="sk-rect3"></div>
        <div class="sk-rect4"></div>
        <div class="sk-rect5"></div>
    </div>
</div>
<!-- End Preload -->

<div class="layer"></div>
<!-- Mobile menu overlay mask -->

<!-- Header================================================== -->
<header>
    <div id="top_line">
        <div class="container">
            <div class="row">
                <div class="col-6"><i class="icon-phone"></i><strong>0045 043204434</strong></div>
                <div class="col-6">
                    <ul id="top_links">
                        <c:if test="${ (loggedIn != null )}">
                            <li>Hello, ${loggedIn.getFirstName()}!</li>
                            <li><a href="client-logout.auth">Sign out</a></li>
                        </c:if>

                        <c:if test="${ (loggedIn == null )}">
                            <li><a href="#sign-in-dialog" id="access_link">Sign in</a></li>
                            <li><a href="register.jsp" >Create new account</a></li>
                        </c:if>

                    </ul>
                </div>
            </div><!-- End row -->
        </div><!-- End container-->
    </div><!-- End top line-->

    <div class="container">
        <div class="row">
            <div class="col-3">
                <div id="logo_home">
                    <h1><a href="index.jsp" title="City tours travel template">Miola Motel</a></h1>
                </div>
            </div>
            <nav class="col-9">
                <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
                <div class="main-menu">
                    <div id="header_menu">
                        <img src="assets/img/logo_sticky.png" width="160" height="34" alt="City tours" data-retina="true">
                    </div>
                    <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                    <ul style="text-align: center;margin-left: auto">
                        <li class="submenu">
                            <a href="index.jsp" class="show-submenu">Home</a>
                        </li>
                        <li class="submenu">
                            <a href="all-rooms-list.jsp" class="show-submenu">All Rooms</a>
                        </li>
                        <li class="submenu">
                            <a href="room-details.jsp" class="show-submenu">Room Details</a>
                        </li>
                        <li class="submenu">
                            <a href="checkout.jsp" class="show-submenu">Room Checkout</a>
                        </li>
                        <li class="submenu">
                            <a href="thanks.jsp" class="show-submenu">Thank you</a>
                        </li>
                    </ul>
                </div><!-- End main-menu -->
                <ul id="top_tools">
                    <li>
                        <a href="javascript:void(0);" class="search-overlay-menu-btn"><i class="icon_search"></i></a>
                    </li>
                    <li>
                        <div class="dropdown dropdown-cart">
                            <a href="#" data-toggle="dropdown" class="cart_bt"><i class="icon_bag_alt"></i><strong>3</strong></a>
                            <ul class="dropdown-menu" id="cart_items">
                                <li>
                                    <div class="image"><img src="assets/img/thumb_cart_1.jpg" alt="image"></div>
                                    <strong><a href="#">Louvre museum</a>1x $36.00 </strong>
                                    <a href="#" class="action"><i class="icon-trash"></i></a>
                                </li>
                                <li>
                                    <div class="image"><img src="assets/img/thumb_cart_2.jpg" alt="image"></div>
                                    <strong><a href="#">Versailles tour</a>2x $36.00 </strong>
                                    <a href="#" class="action"><i class="icon-trash"></i></a>
                                </li>
                                <li>
                                    <div class="image"><img src="assets/img/thumb_cart_3.jpg" alt="image"></div>
                                    <strong><a href="#">Versailles tour</a>1x $36.00 </strong>
                                    <a href="#" class="action"><i class="icon-trash"></i></a>
                                </li>
                                <li>
                                    <div>Total: <span>$120.00</span></div>
                                    <a href="cart.html" class="button_drop">Go to cart</a>
                                    <a href="payment.html" class="button_drop outline">Check out</a>
                                </li>
                            </ul>
                        </div><!-- End dropdown-cart-->
                    </li>
                </ul>
            </nav>
        </div>
    </div><!-- container -->
</header><!-- End Header -->