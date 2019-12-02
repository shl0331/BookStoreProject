<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ tablib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%@ page import = "com.shlee.webapp.dto.*" %>
<%
	UserDto userDto = (UserDto) session.getAttribute("userDto");
	if(userDto != null) {
		System.out.println(userDto.getUserSeq());
	}
%>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>BookStore</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Use Minified Plugins Version For Fast Page Load -->
	<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/plugins.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="/resources/css/main.css" />
	<link rel="shortcut icon" type="/resources/image/x-icon" href="/resources/image/favicon.ico">
	
	<!-- JQuery -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <!-- Alertify -->
   <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>
   
   <link rel="stylesheet" href="/resources/css/common.css"/>
	
</head>

<body>
    <div class="site-wrapper" id="top">
        <div class="site-header d-none d-lg-block">
            <div class="header-middle pt--10 pb--10">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 ">
                            <a href="/" class="site-brand">
                                <img src="/resources/image/logo.png" alt="">
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <div class="header-phone ">
                                <div class="icon">
                                    <i class="fas fa-headphones-alt"></i>
                                </div>
                                <div class="text">
                                    <p>Free Support 24/7</p>
                                    <p class="font-weight-bold number">010-7799-7187</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="main-navigation flex-lg-right">
                                <ul class="main-menu menu-right ">
                                    <li class="menu-item has-children">
                                        <a href="/">Home</a>
                                    </li>
                                    <!-- Shop -->
                                    <li class="menu-item has-children mega-menu">
                                        <a href="shop">shop </a>
                                       <!--  <i class="fas fa-chevron-down dropdown-arrow"></i></a> -->
                                        <!-- <ul class="sub-menu four-column">
                                            <li class="cus-col-25">
                                                <h3 class="menu-title"><a href="javascript:void(0)">Shop Grid </a></h3>
                                                <ul class="mega-single-block">
                                                    <li><a href="shop-grid.html">Fullwidth</a></li>
                                                    <li><a href="shop-grid-left-sidebar.html">left Sidebar</a></li>
                                                    <li><a href="shop-grid-right-sidebar.html">Right Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li class="cus-col-25">
                                                <h3 class="menu-title"> <a href="javascript:void(0)">Shop List</a></h3>
                                                <ul class="mega-single-block">
                                                    <li><a href="shop-list.html">Fullwidth</a></li>
                                                    <li><a href="shop-list-left-sidebar.html">left Sidebar</a></li>
                                                    <li><a href="shop-list-right-sidebar.html">Right Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li class="cus-col-25">
                                                <h3 class="menu-title"> <a href="javascript:void(0)">Product Details
                                                        1</a></h3>
                                                <ul class="mega-single-block">
                                                    <li><a href="product-details.html">Product Details Page</a></li>
                                                    <li><a href="product-details-affiliate.html">Product Details
                                                            Affiliate</a></li>
                                                    <li><a href="product-details-group.html">Product Details Group</a>
                                                    </li>
                                                    <li><a href="product-details-variable.html">Product Details
                                                            Variables</a></li>
                                                </ul>
                                            </li>
                                            <li class="cus-col-25">
                                                <h3 class="menu-title"><a href="javascript:void(0)">Product Details
                                                        2</a></h3>
                                                <ul class="mega-single-block">
                                                    <li><a href="product-details-left-thumbnail.html">left Thumbnail</a>
                                                    </li>
                                                    <li><a href="product-details-right-thumbnail.html">Right
                                                            Thumbnail</a></li>
                                                    <li><a href="product-details-left-gallery.html">Left Gallery</a>
                                                    </li>
                                                    <li><a href="product-details-right-gallery.html">Right Gallery</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul> -->
                                    </li>
                                    <!-- Pages -->
                                    <li class="menu-item has-children">
                                        <a href="javascript:void(0)">Pages <i
                                                class="fas fa-chevron-down dropdown-arrow"></i></a>
                                        <ul class="sub-menu">
                                            <li><a href="cart">Cart</a></li>
                                            <!-- <li><a href="checkout">Checkout</a></li>
                                            <li><a href="compare">Compare</a></li>
                                            <li><a href="wishlist">Wishlist</a></li> -->
                                            <li><a href="login">Login Register</a></li>
                                          <!--   <li><a href="account">My Account</a></li> -->
                                            <li><a href="order">Order Complete</a></li>
                                           <!--  <li><a href="faq">Faq</a></li> -->
                                            <li><a href="board">Board</a></li>
                                        </ul>
                                    </li>
                                    <!-- Blog -->
                                  <!-- <li class="menu-item has-children mega-menu">
                                        <a href="javascript:void(0)">Blog <i
                                                class="fas fa-chevron-down dropdown-arrow"></i></a>
                                        <ul class="sub-menu three-column">
                                            <li class="cus-col-33">
                                                <h3 class="menu-title"><a href="javascript:void(0)">Blog Grid</a></h3>
                                                <ul class="mega-single-block">
                                                    <li><a href="blog.html">Full Widh (Default)</a></li>
                                                    <li><a href="blog-left-sidebar.html">left Sidebar</a></li>
                                                    <li><a href="blog-right-sidebar.html">Right Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li class="cus-col-33">
                                                <h3 class="menu-title"><a href="javascript:void(0)">Blog List </a></h3>
                                                <ul class="mega-single-block">
                                                    <li><a href="blog-list.html">Full Widh (Default)</a></li>
                                                    <li><a href="blog-list-left-sidebar.html">left Sidebar</a></li>
                                                    <li><a href="blog-list-right-sidebar.html">Right Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li class="cus-col-33">
                                                <h3 class="menu-title"><a href="javascript:void(0)">Blog Details</a>
                                                </h3>
                                                <ul class="mega-single-block">
                                                    <li><a href="blog-details.html">Image Format (Default)</a></li>
                                                    <li><a href="blog-details-gallery.html">Gallery Format</a></li>
                                                    <li><a href="blog-details-audio.html">Audio Format</a></li>
                                                    <li><a href="blog-details-video.html">Video Format</a></li>
                                                    <li><a href="blog-details-left-sidebar.html">left Sidebar</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li> -->
                                    <li class="menu-item">
                                        <a href="contact">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom pb--10">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3">
                           <nav class="category-nav">
                                <div>
                                    <a href="javascript:void(0)" class="category-trigger"><i
                                            class="fa fa-bars"></i>Browse
                                        categories</a>
                                    <ul class="category-menu">
                                        <li class="cat-item has-children">
                                            <a href="#">Arts & Photography</a>
                                            <ul class="sub-menu">
                                                <li><a href="#">Bags & Cases</a></li>
                                                <li><a href="#">Binoculars & Scopes</a></li>
                                                <li><a href="#">Digital Cameras</a></li>
                                                <li><a href="#">Film Photography</a></li>
                                                <li><a href="#">Lighting & Studio</a></li>
                                            </ul>
                                        </li>
                                        <li class="cat-item has-children mega-menu"><a href="#">Biographies</a>
                                            <ul class="sub-menu">
                                                <li class="single-block">
                                                    <h3 class="title">WHEEL SIMULATORS</h3>
                                                    <ul>
                                                        <li><a href="#">Bags & Cases</a></li>
                                                        <li><a href="#">Binoculars & Scopes</a></li>
                                                        <li><a href="#">Digital Cameras</a></li>
                                                        <li><a href="#">Film Photography</a></li>
                                                        <li><a href="#">Lighting & Studio</a></li>
                                                    </ul>
                                                </li>
                                                <li class="single-block">
                                                    <h3 class="title">WHEEL SIMULATORS</h3>
                                                    <ul>
                                                        <li><a href="#">Bags & Cases</a></li>
                                                        <li><a href="#">Binoculars & Scopes</a></li>
                                                        <li><a href="#">Digital Cameras</a></li>
                                                        <li><a href="#">Film Photography</a></li>
                                                        <li><a href="#">Lighting & Studio</a></li>
                                                    </ul>
                                                </li>
                                                <li class="single-block">
                                                    <h3 class="title">WHEEL SIMULATORS</h3>
                                                    <ul>
                                                        <li><a href="#">Bags & Cases</a></li>
                                                        <li><a href="#">Binoculars & Scopes</a></li>
                                                        <li><a href="#">최윤동 왔다감</a></li>
                                                        <li><a href="#">Digital Cameras</a></li>
                                                        <li><a href="#">Film Photography</a></li>
                                                        <li><a href="#">Lighting & Studio</a></li>
                                                    </ul>
                                                </li>
                                                <li class="single-block">
                                                    <h3 class="title">WHEEL SIMULATORS</h3>
                                                    <ul>
                                                        <li><a href="#">Bags & Cases</a></li>
                                                        <li><a href="#">Binoculars & Scopes</a></li>
                                                        <li><a href="#">Digital Cameras</a></li>
                                                        <li><a href="#">Film Photography</a></li>
                                                        <li><a href="#">Lighting & Studio</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="cat-item has-children"><a href="#">Business & Money</a>
                                            <ul class="sub-menu">
                                                <li><a href="">Brake Tools</a></li>
                                                <li><a href="">Driveshafts</a></li>
                                                <li><a href="">Emergency Brake</a></li>
                                                <li><a href="">Spools</a></li>
                                            </ul>
                                        </li>
                                        <li class="cat-item has-children"><a href="#">Calendars</a>
                                            <ul class="sub-menu">
                                                <li><a href="">Brake Tools</a></li>
                                                <li><a href="">Driveshafts</a></li>
                                                <li><a href="">Emergency Brake</a></li>
                                                <li><a href="">Spools</a></li>
                                            </ul>
                                        </li>
                                        <li class="cat-item has-children"><a href="#">Children's Books</a>
                                            <ul class="sub-menu">
                                                <li><a href="">Brake Tools</a></li>
                                                <li><a href="">Driveshafts</a></li>
                                                <li><a href="">Emergency Brake</a></li>
                                                <li><a href="">Spools</a></li>
                                            </ul>
                                        </li>
                                        <li class="cat-item has-children"><a href="#">Comics</a>
                                            <ul class="sub-menu">
                                                <li><a href="">Brake Tools</a></li>
                                                <li><a href="">Driveshafts</a></li>
                                                <li><a href="">Emergency Brake</a></li>
                                                <li><a href="">Spools</a></li>
                                            </ul>
                                        </li>
                                        <li class="cat-item"><a href="#">Perfomance Filters</a></li>
                                        <li class="cat-item has-children"><a href="#">Cookbooks</a>
                                            <ul class="sub-menu">
                                                <li><a href="">Brake Tools</a></li>
                                                <li><a href="">Driveshafts</a></li>
                                                <li><a href="">Emergency Brake</a></li>
                                                <li><a href="">Spools</a></li>
                                            </ul>
                                        </li>
                                        <li class="cat-item "><a href="#">Accessories</a></li>
                                        <li class="cat-item "><a href="#">Education</a></li>
                                        <li class="cat-item hidden-menu-item"><a href="#">Indoor Living</a></li>
                                        <li class="cat-item"><a href="#" class="js-expand-hidden-menu">More
                                                Categories</a></li>
                                    </ul>
                                </div>		
                            </nav>
                        </div>
                        <div class="col-lg-5">
                            <div class="header-search-block">
                                <input type="text" placeholder="Search entire store here">
                                <button>Search</button>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="main-navigation flex-lg-right">
                                <div class="cart-widget">
                                    <div class="login-block">
                                        <a href="login" class="font-weight-bold">Login</a> <br>
                                        <span>or</span><a href="login">Register</a>
                                    </div>
                                    <div class="cart-block">
                                        <div class="cart-total">
                                            <!-- <span class="text-number">
                                                1
                                            </span> -->
                                            <span class="text-item">
                                                Shopping Cart
                                            </span>
                                            <span class="price">
                                            <!--   <!--  \0.00 -->
                                                <i class="fas fa-chevron-down"></i>
                                            </span>
                                        </div>
                                        <div class="cart-dropdown-block">
                                            <div class=" single-cart-block ">
                                                <div class="cart-product">
                                                    <a href="product-details.html" class="image">
                                                        <img src="/resources/image/products/cart-product-1.jpg" alt="">
                                                    </a>
                                                    <div class="content">
                                                        <h3 class="title"><a href="product-details.html">Kodak PIXPRO
                                                                Astro Zoom AZ421 16 MP</a>
                                                        </h3>
                                                        <p class="price"><span class="qty">1 ×</span> £87.34</p>
                                                        <button class="cross-btn"><i class="fas fa-times"></i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class=" single-cart-block ">
                                                <div class="btn-block">
                                                    <a href="cart" class="btn">View Cart <i
                                                            class="fas fa-chevron-right"></i></a>
                                                    <a href="checkout" class="btn btn--primary">Check Out <i
                                                            class="fas fa-chevron-right"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="site-mobile-menu">
            <header class="mobile-header d-block d-lg-none pt--10 pb-md--10">
                <div class="container">
                    <div class="row align-items-sm-end align-items-center">
                        <div class="col-md-4 col-7">
                            <a href="/" class="site-brand">
                                <img src="/resources/image/logo.png" alt="">
                            </a>
                        </div>
                        <div class="col-md-5 order-3 order-md-2">
                            <!-- <nav class="category-nav   ">
                                <div>
                                    <a href="javascript:void(0)" class="category-trigger"><i
                                            class="fa fa-bars"></i>Browse
                                        categories</a>
                                    <ul class="category-menu">
                                        <li class="cat-item has-children">
                                            <a href="#">Arts & Photography</a>
                                            <ul class="sub-menu">
                                                <li><a href="#">Bags & Cases</a></li>
                                                <li><a href="#">Binoculars & Scopes</a></li>
                                                <li><a href="#">Digital Cameras</a></li>
                                                <li><a href="#">Film Photography</a></li>
                                                <li><a href="#">Lighting & Studio</a></li>
                                            </ul>
                                        </li>
                                        <li class="cat-item has-children mega-menu"><a href="#">Biographies</a>
                                            <ul class="sub-menu">
                                                <li class="single-block">
                                                    <h3 class="title">WHEEL SIMULATORS</h3>
                                                    <ul>
                                                        <li><a href="#">Bags & Cases</a></li>
                                                        <li><a href="#">Binoculars & Scopes</a></li>
                                                        <li><a href="#">Digital Cameras</a></li>
                                                        <li><a href="#">Film Photography</a></li>
                                                        <li><a href="#">Lighting & Studio</a></li>
                                                    </ul>
                                                </li>
                                                <li class="single-block">
                                                    <h3 class="title">WHEEL SIMULATORS</h3>
                                                    <ul>
                                                        <li><a href="#">Bags & Cases</a></li>
                                                        <li><a href="#">Binoculars & Scopes</a></li>
                                                        <li><a href="#">Digital Cameras</a></li>
                                                        <li><a href="#">Film Photography</a></li>
                                                        <li><a href="#">Lighting & Studio</a></li>
                                                    </ul>
                                                </li>
                                                <li class="single-block">
                                                    <h3 class="title">WHEEL SIMULATORS</h3>
                                                    <ul>
                                                        <li><a href="#">Bags & Cases</a></li>
                                                        <li><a href="#">Binoculars & Scopes</a></li>
                                                        <li><a href="#">Digital Cameras</a></li>
                                                        <li><a href="#">Film Photography</a></li>
                                                        <li><a href="#">Lighting & Studio</a></li>
                                                    </ul>
                                                </li>
                                                <li class="single-block">
                                                    <h3 class="title">WHEEL SIMULATORS</h3>
                                                    <ul>
                                                        <li><a href="#">Bags & Cases</a></li>
                                                        <li><a href="#">Binoculars & Scopes</a></li>
                                                        <li><a href="#">Digital Cameras</a></li>
                                                        <li><a href="#">Film Photography</a></li>
                                                        <li><a href="#">Lighting & Studio</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="cat-item has-children"><a href="#">Business & Money</a>
                                            <ul class="sub-menu">
                                                <li><a href="">Brake Tools</a></li>
                                                <li><a href="">Driveshafts</a></li>
                                                <li><a href="">Emergency Brake</a></li>
                                                <li><a href="">Spools</a></li>
                                            </ul>
                                        </li>
                                        <li class="cat-item has-children"><a href="#">Calendars</a>
                                            <ul class="sub-menu">
                                                <li><a href="">Brake Tools</a></li>
                                                <li><a href="">Driveshafts</a></li>
                                                <li><a href="">Emergency Brake</a></li>
                                                <li><a href="">Spools</a></li>
                                            </ul>
                                        </li>
                                        <li class="cat-item has-children"><a href="#">Children's Books</a>
                                            <ul class="sub-menu">
                                                <li><a href="">Brake Tools</a></li>
                                                <li><a href="">Driveshafts</a></li>
                                                <li><a href="">Emergency Brake</a></li>
                                                <li><a href="">Spools</a></li>
                                            </ul>
                                        </li>
                                        <li class="cat-item has-children"><a href="#">Comics</a>
                                            <ul class="sub-menu">
                                                <li><a href="">Brake Tools</a></li>
                                                <li><a href="">Driveshafts</a></li>
                                                <li><a href="">Emergency Brake</a></li>
                                                <li><a href="">Spools</a></li>
                                            </ul>
                                        </li>
                                        <li class="cat-item"><a href="#">Perfomance Filters</a></li>
                                        <li class="cat-item has-children"><a href="#">Cookbooks</a>
                                            <ul class="sub-menu">
                                                <li><a href="">Brake Tools</a></li>
                                                <li><a href="">Driveshafts</a></li>
                                                <li><a href="">Emergency Brake</a></li>
                                                <li><a href="">Spools</a></li>
                                            </ul>
                                        </li>
                                        <li class="cat-item "><a href="#">Accessories</a></li>
                                        <li class="cat-item "><a href="#">Education</a></li>
                                        <li class="cat-item hidden-menu-item"><a href="#">Indoor Living</a></li>
                                        <li class="cat-item"><a href="#" class="js-expand-hidden-menu">More
                                                Categories</a></li>
                                    </ul>
                                </div>
                            </nav> -->
                        </div>
                        <div class="col-md-3 col-5  order-md-3 text-right">
                            <div class="mobile-header-btns header-top-widget">
                                <ul class="header-links">
                                    <li class="sin-link">
                                        <a href="cart" class="cart-link link-icon"><i class="ion-bag"></i></a>
                                    </li>
                                    <li class="sin-link">
                                        <a href="javascript:" class="link-icon hamburgur-icon off-canvas-btn"><i
                                                class="ion-navicon"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!--Off Canvas Navigation Start-->
            <aside class="off-canvas-wrapper">
                <div class="btn-close-off-canvas">
                    <i class="ion-android-close"></i>
                </div>
                <div class="off-canvas-inner">
                    <!-- search box start -->
                    <div class="search-box offcanvas">
                        <form>
                            <input type="text" placeholder="Search Here">
                            <button class="search-btn"><i class="ion-ios-search-strong"></i></button>
                        </form>
                    </div>
                    <!-- search box end -->
                    <!-- mobile menu start -->
                    <div class="mobile-navigation">
                        <!-- mobile menu navigation start -->
                        <nav class="off-canvas-nav">
                            <ul class="mobile-menu main-mobile-menu">
                                <li class="menu-item-has-children">
                                    <a href="/">Home</a>
                                </li>
                                <!-- <li class="menu-item-has-children">
                                    <a href="#">Blog</a>
                                    <ul class="sub-menu">
                                        <li class="menu-item-has-children">
                                            <a href="#">Blog Grid</a>
                                            <ul class="sub-menu">
                                                <li><a href="blog.html">Full Widh (Default)</a></li>
                                                <li><a href="blog-left-sidebar.html">left Sidebar</a></li>
                                                <li><a href="blog-right-sidebar.html">Right Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children">
                                            <a href="#">Blog List</a>
                                            <ul class="sub-menu">
                                                <li><a href="blog-list.html">Full Widh (Default)</a></li>
                                                <li><a href="blog-list-left-sidebar.html">left Sidebar</a></li>
                                                <li><a href="blog-list-right-sidebar.html">Right Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children">
                                            <a href="#">Blog Details</a>
                                            <ul class="sub-menu">
                                                <li><a href="blog-details.html">Image Format (Default)</a></li>
                                                <li><a href="blog-details-gallery.html">Gallery Format</a></li>
                                                <li><a href="blog-details-audio.html">Audio Format</a></li>
                                                <li><a href="blog-details-video.html">Video Format</a></li>
                                                <li><a href="blog-details-left-sidebar.html">left Sidebar</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li> -->
                                <li class="menu-item-has-children">
                                    <a href="#">Shop</a>
                                    <!-- <ul class="sub-menu">
                                        <li class="menu-item-has-children">
                                            <a href="#">Shop Grid</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop-grid.html">Fullwidth</a></li>
                                                <li><a href="shop-grid-left-sidebar.html">left Sidebar</a></li>
                                                <li><a href="shop-grid-right-sidebar.html">Right Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children">
                                            <a href="#">Shop List</a>
                                            <ul class="sub-menu">
                                                <li><a href="shop-list.html">Fullwidth</a></li>
                                                <li><a href="shop-list-left-sidebar.html">left Sidebar</a></li>
                                                <li><a href="shop-list-right-sidebar.html">Right Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children">
                                            <a href="#">Product Details 1</a>
                                            <ul class="sub-menu">
                                                <li><a href="product-details.html">Product Details Page</a></li>
                                                <li><a href="product-details-affiliate.html">Product Details
                                                        Affiliate</a></li>
                                                <li><a href="product-details-group.html">Product Details Group</a></li>
                                                <li><a href="product-details-variable.html">Product Details
                                                        Variables</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children">
                                            <a href="#">Product Details 2</a>
                                            <ul class="sub-menu">
                                                <li><a href="product-details-left-thumbnail.html">left Thumbnail</a>
                                                </li>
                                                <li><a href="product-details-right-thumbnail.html">Right Thumbnail</a>
                                                </li>
                                                <li><a href="product-details-left-gallery.html">Left Gallery</a></li>
                                                <li><a href="product-details-right-gallery.html">Right Gallery</a></li>
                                            </ul>
                                        </li>
                                    </ul> -->
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Pages</a>
                                    <ul class="sub-menu">
                                        <li><a href="cart">Cart</a></li>
                                        <!-- <li><a href="checkout">Checkout</a></li>
                                        <li><a href="compare">Compare</a></li>
                                        <li><a href="wishlist">Wishlist</a></li> -->
                                        <li><a href="login">Login Register</a></li>
                                        <!-- <li><a href="account">My Account</a></li> -->
                                        <li><a href="order">Order Complete</a></li>
                                       <!--  <li><a href="faq">Faq</a></li> -->
                                        <li><a href="board">Board</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact">Contact</a></li>
                            </ul>
                        </nav>
                        <!-- mobile menu navigation end -->
                    </div>
                    <!-- mobile menu end -->
                    <nav class="off-canvas-nav">
                        <!-- <ul class="mobile-menu menu-block-2">
                            <li class="menu-item-has-children">
                                <a href="#">Currency - USD $ <i class="fas fa-angle-down"></i></a>
                                <ul class="sub-menu">
                                    <li> <a href="cart">USD $</a></li>
                                    <li> <a href="checkout">EUR €</a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="#">Lang - Eng<i class="fas fa-angle-down"></i></a>
                                <ul class="sub-menu">
                                    <li>Eng</li>
                                    <li>Ban</li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="#">My Account <i class="fas fa-angle-down"></i></a>
                                <ul class="sub-menu">
                                    <li><a href="">My Account</a></li>
                                    <li><a href="">Order History</a></li>
                                    <li><a href="">Transactions</a></li>
                                    <li><a href="">Downloads</a></li>
                                </ul>
                            </li>
                        </ul> -->
                    </nav>
                    <!-- <div class="off-canvas-bottom">
                        <div class="contact-list mb--10">
                            <a href="" class="sin-contact"><i class="fas fa-mobile-alt"></i>(12345) 78790220</a>
                            <a href="" class="sin-contact"><i class="fas fa-envelope"></i>examle@handart.com</a>
                        </div>
                        <div class="off-canvas-social">
                            <a href="#" class="single-icon"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="single-icon"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="single-icon"><i class="fas fa-rss"></i></a>
                            <a href="#" class="single-icon"><i class="fab fa-youtube"></i></a>
                            <a href="#" class="single-icon"><i class="fab fa-google-plus-g"></i></a>
                            <a href="#" class="single-icon"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div> -->
                </div>
            </aside>
            <!--Off Canvas Navigation End-->
        </div>
        <div class="sticky-init fixed-header common-sticky">
            <div class="container d-none d-lg-block">
                <div class="row align-items-center">
                    <div class="col-lg-4">
                        <a href="/" class="site-brand">
                            <img src="/resources/image/logo.png" alt="">
                        </a>
                    </div>
                    <div class="col-lg-8">
                        <div class="main-navigation flex-lg-right">
                            <ul class="main-menu menu-right ">
                                <li class="menu-item has-children">
                                    <a href="/">Home</a>
                                </li>
                                <!-- Shop -->
                                <li class="menu-item has-children mega-menu">
                                    <a href="javascript:void(0)">shop</a> 
                                 <!--    <i class="fas fa-chevron-down dropdown-arrow"></i></a> -->
                                    <!-- <ul class="sub-menu four-column">
                                        <li class="cus-col-25">
                                            <h3 class="menu-title"><a href="javascript:void(0)">Shop Grid </a></h3>
                                            <ul class="mega-single-block">
                                                <li><a href="shop-grid.html">Fullwidth</a></li>
                                                <li><a href="shop-grid-left-sidebar.html">left Sidebar</a></li>
                                                <li><a href="shop-grid-right-sidebar.html">Right Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li class="cus-col-25">
                                            <h3 class="menu-title"> <a href="javascript:void(0)">Shop List</a></h3>
                                            <ul class="mega-single-block">
                                                <li><a href="shop-list.html">Fullwidth</a></li>
                                                <li><a href="shop-list-left-sidebar.html">left Sidebar</a></li>
                                                <li><a href="shop-list-right-sidebar.html">Right Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li class="cus-col-25">
                                            <h3 class="menu-title"> <a href="javascript:void(0)">Product Details 1</a>
                                            </h3>
                                            <ul class="mega-single-block">
                                                <li><a href="product-details.html">Product Details Page</a></li>
                                                <li><a href="product-details-affiliate.html">Product Details
                                                        Affiliate</a></li>
                                                <li><a href="product-details-group.html">Product Details Group</a></li>
                                                <li><a href="product-details-variable.html">Product Details
                                                        Variables</a></li>
                                            </ul>
                                        </li>
                                        <li class="cus-col-25">
                                            <h3 class="menu-title"><a href="javascript:void(0)">Product Details 2</a>
                                            </h3>
                                            <ul class="mega-single-block">
                                                <li><a href="product-details-left-thumbnail.html">left Thumbnail</a>
                                                </li>
                                                <li><a href="product-details-right-thumbnail.html">Right Thumbnail</a>
                                                </li>
                                                <li><a href="product-details-left-gallery.html">Left Gallery</a></li>
                                                <li><a href="product-details-right-gallery.html">Right Gallery</a></li>
                                            </ul>
                                        </li>
                                    </ul> -->
                                </li>
                                <!-- Pages -->
                                <li class="menu-item has-children">
                                    <a href="javascript:void(0)">Pages <i
                                            class="fas fa-chevron-down dropdown-arrow"></i></a>
                                    <ul class="sub-menu">
                                        <li><a href="cart">Cart</a></li>
                                        <!-- <li><a href="checkout">Checkout</a></li>
                                        <li><a href="compare">Compare</a></li>
                                        <li><a href="wishlist">Wishlist</a></li> -->
                                        <li><a href="login">Login Register</a></li>
                                       <!--  <li><a href="account">My Account</a></li> -->
                                        <li><a href="order">Order Complete</a></li>
                                       <!--  <li><a href="faq">Faq</a></li> -->
                                        <li><a href="board">Board</a></li>
                                    </ul>
                                </li>
                                <!-- Blog -->
                                <!-- <li class="menu-item has-children mega-menu">
                                    <a href="javascript:void(0)">Blog <i
                                            class="fas fa-chevron-down dropdown-arrow"></i></a>
                                    <ul class="sub-menu three-column">
                                        <li class="cus-col-33">
                                            <h3 class="menu-title"><a href="javascript:void(0)">Blog Grid</a></h3>
                                            <ul class="mega-single-block">
                                                <li><a href="blog.html">Full Widh (Default)</a></li>
                                                <li><a href="blog-left-sidebar.html">left Sidebar</a></li>
                                                <li><a href="blog-right-sidebar.html">Right Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li class="cus-col-33">
                                            <h3 class="menu-title"><a href="javascript:void(0)">Blog List </a></h3>
                                            <ul class="mega-single-block">
                                                <li><a href="blog-list.html">Full Widh (Default)</a></li>
                                                <li><a href="blog-list-left-sidebar.html">left Sidebar</a></li>
                                                <li><a href="blog-list-right-sidebar.html">Right Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li class="cus-col-33">
                                            <h3 class="menu-title"><a href="javascript:void(0)">Blog Details</a></h3>
                                            <ul class="mega-single-block">
                                                <li><a href="blog-details.html">Image Format (Default)</a></li>
                                                <li><a href="blog-details-gallery.html">Gallery Format</a></li>
                                                <li><a href="blog-details-audio.html">Audio Format</a></li>
                                                <li><a href="blog-details-video.html">Video Format</a></li>
                                                <li><a href="blog-details-left-sidebar.html">left Sidebar</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li> -->
                                <li class="menu-item">
                                    <a href="contact">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--=================================
        Hero Area
        ===================================== -->
        <!-- <section class="hero-area hero-slider-1">
            <div class="sb-slick-slider" data-slick-setting='{
                            "autoplay": true,
                            "fade": true,
                            "autoplaySpeed": 3000,
                            "speed": 3000,
                            "slidesToShow": 1,
                            "dots":true
                            }'>
                <div class="single-slide bg-shade-whisper  ">
                    <div class="container">
                        <div class="home-content text-center text-sm-left position-relative">
                            <div class="hero-partial-image image-right">
                                <img src="/resources/image/bg-images/home-slider-2-ai.png" alt="">
                            </div>
                            <div class="row no-gutters ">
                                <div class="col-xl-6 col-md-6 col-sm-7">
                                    <div class="home-content-inner content-left-side">
                                        <h1>H.G. Wells<br>
                                            De Vengeance</h1>
                                        <h2>Cover Up Front Of Books and Leave Summary</h2>
                                        <a href="shop-grid.html" class="btn btn-outlined--primary">
                                            $78.09 - Order Now!
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-slide bg-ghost-white">
                    <div class="container">
                        <div class="home-content text-center text-sm-left position-relative">
                            <div class="hero-partial-image image-left">
                                <img src="/resources/image/bg-images/home-slider-1-ai.png" alt="">
                            </div>
                            <div class="row align-items-center justify-content-start justify-content-md-end">
                                <div class="col-lg-6 col-xl-7 col-md-6 col-sm-7">
                                    <div class="home-content-inner content-right-side">
                                        <h1>J.D. Kurtness <br>
                                            De Vengeance</h1>
                                        <h2>Cover Up Front Of Books and Leave Summary</h2>
                                        <a href="shop-grid.html" class="btn btn-outlined--primary">
                                            $78.09 - Learn More
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        <!--=================================
        Home Features Section
        ===================================== -->
        <section class="mb--30">
            <div class="container">
                <!-- <div class="row">
                    <div class="col-xl-3 col-md-6 mt--30">
                        <div class="feature-box h-100">
                            <div class="icon">
                                <i class="fas fa-shipping-fast"></i>
                            </div>
                            <div class="text">
                                <h5>Free Shipping Item</h5>
                                <p> Orders over $500</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mt--30">
                        <div class="feature-box h-100">
                            <div class="icon">
                                <i class="fas fa-redo-alt"></i>
                            </div>
                            <div class="text">
                                <h5>Money Back Guarantee</h5>
                                <p>100% money back</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mt--30">
                        <div class="feature-box h-100">
                            <div class="icon">
                                <i class="fas fa-piggy-bank"></i>
                            </div>
                            <div class="text">
                                <h5>Cash On Delivery</h5>
                                <p>Lorem ipsum dolor amet</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mt--30">
                        <div class="feature-box h-100">
                            <div class="icon">
                                <i class="fas fa-life-ring"></i>
                            </div>
                            <div class="text">
                                <h5>Help & Support</h5>
                                <p>Call us : + 0123.4567.89</p>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
        </section>
        <!--=================================
        Promotion Section One
        ===================================== -->
        <section class="section-margin">
           <!--  <h2 class="sr-only">Promotion Section</h2>
            <div class="container">
                <div class="row space-db--30">
                    <div class="col-lg-6 col-md-6 mb--30">
                        <a href="" class="promo-image promo-overlay">
                            <img src="/resources/image/bg-images/promo-banner-with-text.jpg" alt="">
                        </a>
                    </div>
                    <div class="col-lg-6 col-md-6 mb--30">
                        <a href="" class="promo-image promo-overlay">
                            <img src="/resources/image/bg-images/promo-banner-with-text-2.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div> -->
        </section>
        <!--=================================
        Home Slider Tab
        ===================================== -->
        <!-- <section class="section-padding">
            <h2 class="sr-only">Home Tab Slider Section</h2>
            <div class="container">
                <div class="sb-custom-tab">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="shop-tab" data-toggle="tab" href="#shop" role="tab"
                                aria-controls="shop" aria-selected="true">
                                Featured Products
                            </a>
                            <span class="arrow-icon"></span>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="men-tab" data-toggle="tab" href="#men" role="tab"
                                aria-controls="men" aria-selected="true">
                                New Arrivals
                            </a>
                            <span class="arrow-icon"></span>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="woman-tab" data-toggle="tab" href="#woman" role="tab"
                                aria-controls="woman" aria-selected="false">
                                Most view products
                            </a>
                            <span class="arrow-icon"></span>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane show active" id="shop" role="tabpanel" aria-labelledby="shop-tab">
                            <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                                data-slick-setting='{
                            "autoplay": true,
                            "autoplaySpeed": 8000,
                            "slidesToShow": 5,
                            "rows":2,
                            "dots":true
                        }' data-slick-responsive='[
                            {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                            {"breakpoint":768, "settings": {"slidesToShow": 2} },
                            {"breakpoint":480, "settings": {"slidesToShow": 1} },
                            {"breakpoint":320, "settings": {"slidesToShow": 1} }
                        ]'>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                jpple
                                            </a>
                                            <h3><a href="product-details.html">Rpple iPad with Retina Display
                                                    MD510LL/A</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-1.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-1.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Bpple
                                            </a>
                                            <h3><a href="product-details.html">Koss KPH7 Lightweight Portable
                                                    Headphone</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-2.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-3.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Cpple
                                            </a>
                                            <h3><a href="product-details.html">Beats EP Wired On-Ear Headphone-Black</a>
                                            </h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-3.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-2.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Dpple
                                            </a>
                                            <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                                    Headphone</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-4.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-5.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Lpple
                                            </a>
                                            <h3><a href="product-details.html">Beats Solo3 Wireless On-Ear Headphones
                                                    2</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-5.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-4.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Fpple
                                            </a>
                                            <h3><a href="product-details.html">3 Ways To Have (A) More Appealing
                                                    BOOK</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-6.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-7.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Epple
                                            </a>
                                            <h3><a href="product-details.html">In 10 Minutes, I'll Give You The Truth
                                                    About</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-7.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-6.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Fpple
                                            </a>
                                            <h3><a href="product-details.html">5 Ways To Get Through To Your BOOK</a>
                                            </h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-8.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-9.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Gpple
                                            </a>
                                            <h3><a href="product-details.html">What Can You Do To Save Your BOOK</a>
                                            </h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-9.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-8.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="#" class="author">
                                                Hpple
                                            </a>
                                            <h3><a href="product-details.html">From Destruction By Social Media?</a>
                                            </h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-10.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-11.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Gpple
                                            </a>
                                            <h3><a href="product-details.html">Find Out More About BOOK By Social
                                                    Media?</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-11.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-10.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Vpple
                                            </a>
                                            <h3><a href="product-details.html">Read This Controversial BOOK By
                                                    Social Media?</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-12.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-11.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="men" role="tabpanel" aria-labelledby="men-tab">
                            <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                                data-slick-setting='{
                                        "autoplay": true,
                                        "autoplaySpeed": 8000,
                                        "slidesToShow": 5,
                                        "rows":2,
                                        "dots":true
                                    }' data-slick-responsive='[
                                        {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                                        {"breakpoint":768, "settings": {"slidesToShow": 2} },
                                        {"breakpoint":480, "settings": {"slidesToShow": 1} },
                                        {"breakpoint":320, "settings": {"slidesToShow": 1} }
                                    ]'>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                jpple
                                            </a>
                                                <h3><a href="product-details.html">Bpple iPad with Retina Display
                                                        MD510LL/A</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-3.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-1.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Bpple
                                            </a>
                                            <h3><a href="product-details.html">Koss KPH7 Lightweight Portable
                                                    Headphone</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-2.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-3.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Cpple
                                            </a>
                                            <h3><a href="product-details.html">Beats EP Wired On-Ear
                                                    Headphone-Black</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-1.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-2.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Dpple
                                            </a>
                                            <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                                    Headphone</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-4.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-5.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Lpple
                                            </a>
                                            <h3><a href="product-details.html">Beats Solo3 Wireless On-Ear
                                                    Headphones 2</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-7.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-4.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Fpple
                                            </a>
                                            <h3><a href="product-details.html">3 Ways To Have (A) More Appealing
                                                    BOOK</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-6.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-7.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Epple
                                            </a>
                                            <h3><a href="product-details.html">In 10 Minutes, I'll Give You The
                                                    Truth About</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-5.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-6.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Fpple
                                            </a>
                                            <h3><a href="product-details.html">5 Ways To Get Through To Your
                                                    BOOK</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-8.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-9.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Gpple
                                            </a>
                                            <h3><a href="product-details.html">What Can You Do To Save Your BOOK</a>
                                            </h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-3.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-8.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Hpple
                                            </a>
                                            <h3><a href="product-details.html">From Destruction By Social Media?</a>
                                            </h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-9.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-11.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Gpple
                                            </a>
                                            <h3><a href="product-details.html">Find Out More About BOOK By Social
                                                    Media?</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-10.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-10.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Apple
                                            </a>
                                            <h3><a href="product-details.html">Read This Controversial BOOK By
                                                    Social Media?</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-9.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-11.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="woman" role="tabpanel" aria-labelledby="woman-tab">
                            <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider"
                                data-slick-setting='{
                                        "autoplay": true,
                                        "autoplaySpeed": 8000,
                                        "slidesToShow": 5,
                                        "rows":2,
                                        "dots":true
                                    }' data-slick-responsive='[
                                        {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                                        {"breakpoint":768, "settings": {"slidesToShow": 2} },
                                        {"breakpoint":480, "settings": {"slidesToShow": 1} },
                                        {"breakpoint":320, "settings": {"slidesToShow": 1} }
                                    ]'>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                jpple
                                                </a>
                                                <h3><a href="product-details.html">Zpple fPad with Retina Display
                                                        MD510LL/A</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-1.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-1.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Bpple
                                            </a>
                                            <h3><a href="product-details.html">Koss KPH7 Lightweight Portable
                                                    Headphone</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-4.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-3.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Cpple
                                            </a>
                                            <h3><a href="product-details.html">Beats EP Wired On-Ear
                                                    Headphone-Black</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-3.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-2.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Dpple
                                            </a>
                                            <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                                    Headphone</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-1.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-5.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Lpple
                                            </a>
                                            <h3><a href="product-details.html">Beats Solo3 Wireless On-Ear
                                                    Headphones 2</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-11.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-4.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Fpple
                                            </a>
                                            <h3><a href="product-details.html">3 Ways To Have (A) More Appealing
                                                    BOOK</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-10.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-7.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Epple
                                            </a>
                                            <h3><a href="product-details.html">In 10 Minutes, I'll Give You The
                                                    Truth About</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-9.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-6.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Fpple
                                            </a>
                                            <h3><a href="product-details.html">5 Ways To Get Through To Your
                                                    BOOK</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-8.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-9.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Gpple
                                            </a>
                                            <h3><a href="product-details.html">What Can You Do To Save Your BOOK</a>
                                            </h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-5.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-8.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Hpple
                                            </a>
                                            <h3><a href="product-details.html">From Destruction By Social Media?</a>
                                            </h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-3.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-11.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Gpple
                                            </a>
                                            <h3><a href="product-details.html">Find Out More About BOOK By Social
                                                    Media?</a></h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-11.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-10.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card">
                                        <div class="product-header">
                                            <a href="" class="author">
                                                Apple
                                            </a>
                                            <h3><a href="product-details.html">Read This Controversial BOOK By
                                                    Social Media? Out More</a>
                                            </h3>
                                        </div>
                                        <div class="product-card--body">
                                            <div class="card-image">
                                                <img src="/resources/image/products/product-12.jpg" alt="">
                                                <div class="hover-contents">
                                                    <a href="product-details.html" class="hover-image">
                                                        <img src="/resources/image/products/product-11.jpg" alt="">
                                                    </a>
                                                    <div class="hover-btns">
                                                        <a href="cart" class="single-btn">
                                                            <i class="fas fa-shopping-basket"></i>
                                                        </a>
                                                        <a href="wishlist" class="single-btn">
                                                            <i class="fas fa-heart"></i>
                                                        </a>
                                                        <a href="compare" class="single-btn">
                                                            <i class="fas fa-random"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#quickModal"
                                                            class="single-btn">
                                                            <i class="fas fa-eye"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        <!--=================================
        Deal of the day 
        ===================================== -->
       <!--  <section class="section-margin">
            <div class="container-fluid">
                <div class="promo-section-heading">
                    <h2>Deal of the day up to 20% off Special offer</h2>
                </div>
                <div class="product-slider with-countdown  slider-border-single-row sb-slick-slider" data-slick-setting='{
                "autoplay": true,
                "autoplaySpeed": 8000,
                "slidesToShow": 6,
                "dots":true
            }' data-slick-responsive='[
                {"breakpoint":1400, "settings": {"slidesToShow": 4} },
                {"breakpoint":992, "settings": {"slidesToShow": 3} },
                {"breakpoint":768, "settings": {"slidesToShow": 2} },
                {"breakpoint":575, "settings": {"slidesToShow": 2} },
                {"breakpoint":490, "settings": {"slidesToShow": 1} }
            ]'>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="" class="author">
                                    Ypple
                                </a>
                                <h3><a href="product-details.html">Do You Really Need It? This Will Help You
                                  </a>
                                </h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-2.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-1.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                                <div class="count-down-block">
                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="#" class="author">
                                    Upple
                                </a>
                                <h3><a href="product-details.html">Here Is A Quick Cure For Book</a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-1.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-1.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                                <div class="count-down-block">
                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="#" class="author">
                                    Ypple
                                </a>
                                <h3><a href="product-details.html">a Half Very Simple Things You To Save</a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-3.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-2.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                                <div class="count-down-block">
                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="#" class="author">
                                    Epple
                                </a>
                                <h3><a href="product-details.html">What You Can Learn From Bill Gates</a>
                                </h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-5.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-4.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                                <div class="count-down-block">
                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="#" class="author">
                                    Rpple
                                </a>
                                <h3><a href="product-details.html">Create Better BOOK With The Help Of Your</a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-6.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-4.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                                <div class="count-down-block">
                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="#" class="author">
                                    Tpple
                                </a>
                                <h3><a href="product-details.html">Turn Your BOOK Into High Machine</a>
                                </h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-8.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-7.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                                <div class="count-down-block">
                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="#" class="author">
                                    Mpple
                                </a>
                                <h3><a href="product-details.html">Revolutionize Your BOOK With These Easy
                                  </a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-13.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-11.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                                <div class="count-down-block">
                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--=================================
        Best Seller Product
        ===================================== -->
         <!-- <section class="section-margin bg-image section-padding-top section-padding"
            data-bg="/resources/image/bg-images/best-seller-bg.jpg">
            <div class="container">
                <div class="section-title section-title--bordered mb-0">
                    <h2>Best BEST SELLER BOOKS</h2>
                </div>
                <div class="best-seller-block">
                    <div class="row align-items-center">
                        <div class="col-lg-5 col-md-6">
                            <div class="author-image">
                                <img src="/resources/image/others/best-seller-author.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-6">
                            <div class="sb-slick-slider product-slider product-list-slider multiple-row slider-border-multiple-row"
                                data-slick-setting='{
                                    "autoplay": false,
                                    "autoplaySpeed": 8000,
                                    "slidesToShow":2,
                                    "rows":2,
                                    "dots":true
                                }' data-slick-responsive='[
                                    {"breakpoint":1200, "settings": {"slidesToShow": 1} },
                                    {"breakpoint":992, "settings": {"slidesToShow": 1} },
                                    {"breakpoint":768, "settings": {"slidesToShow": 1} },
                                    {"breakpoint":575, "settings": {"slidesToShow": 1} },
                                    {"breakpoint":490, "settings": {"slidesToShow": 1} }
                                ]'>
                                <div class="single-slide">
                                    <div class="product-card card-style-list">
                                        <div class="card-image">
                                            <img src="/resources/image/products/product-6.jpg" alt="">
                                        </div>
                                        <div class="product-card--body">
                                            <div class="product-header">
                                                <a href="#" class="author">
                                                    Rpple
                                                </a>
                                                <h3><a href="product-details.html">Do You Really Need It? This
                                                        Will Help You
                                  </a></h3>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card card-style-list">
                                        <div class="card-image">
                                            <img src="/resources/image/products/product-1.jpg" alt="">
                                        </div>
                                        <div class="product-card--body">
                                            <div class="product-header">
                                                <a href="#" class="author">
                                                    Epple
                                                </a>
                                                <h3><a href="product-details.html">Here Is Quick Cure BOOK This
                                                        Will Help
                                                       
                                  </a></h3>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card card-style-list">
                                        <div class="card-image">
                                            <img src="/resources/image/products/product-2.jpg" alt="">
                                        </div>
                                        <div class="product-card--body">
                                            <div class="product-header">
                                                <a href="#" class="author">
                                                    Wpple
                                                </a>
                                                <h3><a href="product-details.html">Do You Really Need It? This
                                                        Will Help You
                                                       
                                  </a></h3>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card card-style-list">
                                        <div class="card-image">
                                            <img src="/resources/image/products/product-3.jpg" alt="">
                                        </div>
                                        <div class="product-card--body">
                                            <div class="product-header">
                                                <a href="#" class="author">
                                                    Ypple
                                                </a>
                                                <h3><a href="product-details.html">Very Simple Things You
                                                        Can Save BOOK
                                                       
                                  
                                                       
                                  </a>
                                                </h3>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card card-style-list">
                                        <div class="card-image">
                                            <img src="/resources/image/products/product-5.jpg" alt="">
                                        </div>
                                        <div class="product-card--body">
                                            <div class="product-header">
                                                <a href="#" class="author">
                                                    Mople
                                                </a>
                                                <h3><a href="product-details.html">What You Can Learn From Bill Gates
                                                       
                                  </a></h3>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card card-style-list">
                                        <div class="card-image">
                                            <img src="/resources/image/products/product-4.jpg" alt="">
                                        </div>
                                        <div class="product-card--body">
                                            <div class="product-header">
                                                <a href="#" class="author">
                                                    Cpple
                                                </a>
                                                <h3><a href="product-details.html">3 Ways Create Better BOOK With
                                                        Help
                                                       
                                  </a></h3>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        <!--=================================
        BOOKS  // CHILDREN’S BOOKS 
        ===================================== -->
        <section class="section-margin">
            <div class="container">
                <div class="section-title section-title--bordered">
                    <!-- <h2>CHILDREN’S BOOKS</h2> -->
                     <h2>BOOKS</h2>
                </div>
                <div id="mainBody" class="product-list-slider slider-two-column product-slider multiple-row sb-slick-slider slider-border-multiple-row">
                    <!-- <div class="single-slide">
                        <div class="product-card card-style-list">
                            <div class="card-image">
                                <img src="/resources/image/products/product-2.jpg" alt="">
                            </div>
                            <div class="product-card--body">
                                <div class="product-header">
                                    <a href="#" class="author">
                                        Rpple
                                    </a>
                                    <h3><a href="product-details.html">Revolutionize Your BOOK With</a></h3>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card card-style-list">
                            <div class="card-image">
                                <img src="/resources/image/products/product-1.jpg" alt="">
                            </div>
                            <div class="product-card--body">
                                <div class="product-header">
                                    <a href="#" class="author">
                                        Dpple
                                    </a>
                                    <h3><a href="product-details.html">Turn Your BOOK Into High Machine</a>
                                    </h3>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card card-style-list">
                            <div class="card-image">
                                <img src="/resources/image/products/product-3.jpg" alt="">
                            </div>
                            <div class="product-card--body">
                                <div class="product-header">
                                    <a href="#" class="author">
                                        Epple
                                    </a>
                                    <h3><a href="product-details.html">BOOK: Do You Really Need It? This </a></h3>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card card-style-list">
                            <div class="card-image">
                                <img src="/resources/image/products/product-4.jpg" alt="">
                            </div>
                            <div class="product-card--body">
                                <div class="product-header">
                                    <a href="#" class="author">
                                        Ppple
                                    </a>
                                    <h3><a href="product-details.html">Here Is A Quick Cure For Book</a>
                                    </h3>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card card-style-list">
                            <div class="card-image">
                                <img src="/resources/image/products/product-5.jpg" alt="">
                            </div>
                            <div class="product-card--body">
                                <div class="product-header">
                                    <a href="#" class="author">
                                        Ypple
                                    </a>
                                    <h3><a href="product-details.html">What You Can Learn From Bill Gates</a>
                                    </h3>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card card-style-list">
                            <div class="card-image">
                                <img src="/resources/image/products/product-6.jpg" alt="">
                            </div>
                            <div class="product-card--body">
                                <div class="product-header">
                                    <a href="#" class="author">
                                        Wpple
                                    </a>
                                    <h3><a href="product-details.html">3 Ways Create Better BOOK With</a></h3>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div> -->
<!--                      <div class="single-slide" id = mainBody> -->
<!--                      <br> -->
                    
<!--                      <br> -->
                        <!-- <div class="product-card card-style-list">
                            <div class="card-image">
                                <img src="/resources/image/products/product-2.jpg" alt="">
                            </div>
                            <div class="product-card--body">
                                <div class="product-header">
                                    <a href="#" class="name">
                                        Rpple
                                    </a>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div> -->
<!--                     </div>  -->
                     <div id="paginationWrapper"></div>
                </div>
            </div>
            
            
		</section>
        
        <BR>
<script src="/resources/js/bookUtil.js"></script>       
<script>
var LIST_ROW_COUNT = 10;   //limit
var OFFSET = 0;
var PAGE_COUNT_PER_BLOCK = 10;   // pagination link 갯수
var TOTAL_LIST_ITEM_COUNT = 0;
var CURRENT_PAGE_INDEX = 1;

var SEARCH_WORD = "";

	$(document).ready(function() {
    	  console.log("ready");

		bookList();
         

	});
     
	function bookList() {
	   console.log("boardList()들엉옴");
	   $.ajax(
			{	
			    	type : 'get',
			        url : '/book/list',
			        dataType : 'json',
			        data : {
				        limit: LIST_ROW_COUNT,
				        offset: OFFSET,
				        searchWord: SEARCH_WORD
				      },
			        beforeSend : function(xhr){
			        	//xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
			            xhr.setRequestHeader("AJAX", true);
			      },
			        success : function(data, status, xhr) { // alertify or another welcome page 이동
			        	
			            makeListHtml(data);
			        	console.log("data", data);

			      },
			     
			        error: function(jqXHR, textStatus, errorThrown) 
			        { 
		        		if(jqXHR.responseText == "timeout") {
			            	  window.location.href = "/login"
			            }else {
			              	alertify.notify(
			                 'Opps!! 글 상세 조회 과정에 문제가 생겼습니다.', 
			                 'error', //'error','warning','message'
			                 3, //-1
			                 function(){
			                   /*  console.log(jqXHR.responseText);  */
			                 }
			              );
				       }
		           
		           
		   			 }
			});
		}        
        
        
	function makeListHtml(list) {
	   console.log("makeListHtml(list)");
	   console.log("list", list);
	   $("#mainBody").html(""); // 리스트를 새로 만들 때는 이전것을 없앰
	   console.log("mainBody 들어옴"); 
	   for(var i=0;i<list.length;i++) {
		   var bookId = list[i].bookId;
		   var fileUrl = list[i].fileUrl;
		   var bookName = list[i].bookName;
	       var bookPrice = list[i].bookPrice;
	       console.log(bookName, bookPrice); 
		   
	         var listHtml =
	        	 
	        	 '<div class="single-slide" data-bookId="' + bookId + '" style="border: 1px solid lightgrey; padding-top: 5px;">' +
		         '    <div class="product-card card-style-list">' +
		         '        <div class="card-image">' +
		         '            <img src="' + fileUrl + '" alt="">' +
		         '        </div>' +
		         '        <div class="product-card--body">' +
		         '            <div class="product-header">' +
		         '                <a href="#" class="author">' + bookName +  '</a>' +
		         '                <h3><a href="product-details.html"></a></h3>' +
		         '            </div>' +
		         '            <div class="price-block">' +
		         '                <span class="price">'+ bookPrice +'</span>' +
/* 		         '                <del class="price-old">£51.20</del>' +
		         '                <span class="price-discount">20%</span>' + */
		         '            </div>' +
		         '        </div>' +
		         '    </div>' +
		         '</div>';
         
// 	             '<div class="product-card card-style-list" >' +
// 	             '<div class="card-image"><img src="' + bookProfileImageUrl + '" alt=""></div>' +
// 	             '<div class="product-card--body">' +
// 	             '	<div class="product-header"><a href="shop" class="author">'+ bookName +'</a></div>' +
// 	             '	<div class="price-block"><span class="price">'+ bookPrice +'</span></div>' +
// 	             '</div>' +
// 	             '</div>';
			console.log(listHtml);
	          $("#mainBody").append(listHtml);
	       }
	   		boardListTotalCnt();
	}
	
	function boardListTotalCnt(){
		   console.log("bookListTotalCnt()");
		      $.ajax(
		      {
		           type : 'get',
		           url : '/book/list/totalCnt',
		           dataType : 'json',
		           data :
		        	{
		        	   searchWord: SEARCH_WORD
		        	},
		           beforeSend : function(xhr){
		               //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
		               xhr.setRequestHeader("AJAX", true);
		           },
		           success : function(data, status, xhr) {
		              
		        	  ROTAL_LIST_ITEM_COUNT = data;
		              addPagination();
		              
		              modalDetail();
		              		              
		           }, 
		           error: function(jqXHR, textStatus, errorThrown) 
		           { 
		              if( jqXHR.responseText == "timeout" ){
		                 window.location.href = "/login"
		                 
		                 
		              }else{
		                 alertify.notify(
		                     'Opps!! 글 전체 갯수 조회 과정에 문제가 생겼습니다.', 
		                     'error', //'error','warning','message'
		                     3, //-1
		                     function(){
		                        console.log(jqXHR.responseText); 
		                     }
		                  );
		              }
		           }
		       });
		   }
	
	function addPagination(){

	      makePaginationHtml(LIST_ROW_COUNT, PAGE_COUNT_PER_BLOCK, CURRENT_PAGE_INDEX, TOTAL_LIST_ITEM_COUNT, "paginationWrapper", bookList );
	}
 
 	function movePage(pageIndex){
	      OFFSET = (pageIndex - 1) * LIST_ROW_COUNT;
	      CURRENT_PAGE_INDEX = pageIndex;
	      boardList();
	}
 	
 	
 	function modalDetail() {
 		$(".card-image").click(function() {
 			//alert( $(this).parents(".product-card").find(".author"));
 			var imgSrc = $(this).find("img").attr("src");
 			var bookId = $("#bookIdModal").attr("data-bookId", bookId);
 			var bookName = $(this).parents(".product-card").find(".author").html();
 			var bookGenre = $("#bookGenreModal").attr("");
 			var bookAuthor = $("#bookAuthorModal").attr("bookAuthor");
 			var bookPublisher = $("#bookPublisherModal").attr("#bookPublisher");
 			var bookQuantity = $("#bookQuantityModal").attr("#bookQuantity")	;
 			var bookPrice = $("#bookPriceModal").attr("#bookPrice");
 			console.log(bookId);
 			
 			//image <- src=??? <- 
 					
 			$(".single-slide").find("img").attr("src", imgSrc);
 			$("#bookIdModal").html(bookId);
 			$("#bookNameModal").html(bookName);
 			$("#bookGenreModal").html(bookGenre);
 			$("#bookAuthorModal").html(bookAuthor);
 			$("#bookPublisherModal").html(bookPublisher);
 			$("#bookQuantityModal").html(bookQuantity);
 			$("#bookPriceModal").html(bookPrice);
 			$("#quickModal").modal("show");
 		});
 	}
</script>

  <!--=================================
        Footer
        ===================================== -->
        <!-- Modal -->
       <div class="modal fade modal-quick-view" id="quickModal" tabindex="-1" role="dialog"
            aria-labelledby="quickModal" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <button type="button" class="close modal-close-btn ml-auto" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="product-details-modal">
                        <div class="row">
                            <div class="col-lg-5">
                                <div class="product-details-slider sb-slick-slider arrow-type-two">
									<div class="single-slide">
                                        <img src="/resources/image/products/product-details-4.jpg" alt="">
                                    </div>
                                </div>
                             
                                <!-- <div class="mt--30 product-slider-nav sb-slick-slider arrow-type-two"
                                    data-slick-setting='{
            "infinite":true,
              "autoplay": true,
              "autoplaySpeed": 8000,
              "slidesToShow": 4,
              "arrows": true,
              "prevArrow":{"buttonClass": "slick-prev","iconClass":"fa fa-chevron-left"},
              "nextArrow":{"buttonClass": "slick-next","iconClass":"fa fa-chevron-right"},
              "asNavFor": ".product-details-slider",
              "focusOnSelect": true
              }'>
                                    <div class="single-slide">
                                        <img src="/resources/image/products/product-details-1.jpg" alt="">
                                    </div>
                                    <div class="single-slide">
                                        <img src="/resources/image/products/product-details-2.jpg" alt="">
                                    </div>
                                    <div class="single-slide">
                                        <img src="/resources/image/products/product-details-3.jpg" alt="">
                                    </div>
                                    <div class="single-slide">
                                        <img src="/resources/image/products/product-details-4.jpg" alt="">
                                    </div>
                                    <div class="single-slide">
                                        <img src="/resources/image/products/product-details-5.jpg" alt="">
                                    </div>
                                </div> -->
                            </div>
                            <div class="col-lg-7 mt--30 mt-lg--30">
                                <div class="product-details-info pl-lg--30 ">
                                    <!-- <p class="tag-block">Tags: <a href="#">Movado</a>, <a href="#">Omega</a></p> -->
                                 <!--    <h3 class="product-title" id="titleModal">Beats EP Wired On-Ear Headphone-Black</h3> -->
                                    <ul class="list-unstyled">
                                        <li>Name: <a href="#" class="list-value font-weight-bold" id="bookNameModal">자바의 정석</a></li>
                                        <li>Genre: <a href="#" class="list-value font-weight-bold" id="bookGenreModal">IT</a></li>
                                        <li>Author: <a href="#" class="list-value font-weight-bold" id="bookAuthorModal">남궁성</a></li>
                                        <li>Publisher: <a href="#" class="list-value font-weight-bold" id="bookPublisherModal">10</a></li>
                                        <li>Quantity: <span class="list-value"id="bookQuantityModal">#</span></li>  
                        
                                    </ul>
                                    <div class="price-block">
                                        <span class="price-new" id = "bookPriceModal">30000</span>
                                   
                                    </div>
                                    <div class="rating-widget">
                                        <div class="rating-block">
                                            <span class="fas fa-star star_on"></span>
                                            <span class="fas fa-star star_on"></span>
                                            <span class="fas fa-star star_on"></span>
                                            <span class="fas fa-star star_on"></span>
                                            <span class="fas fa-star "></span>
                                        </div>
                                        <div class="review-widget">
                                            <a href="">(1 Reviews)</a> <span>|</span>
                                            <a href="">Write a review</a>
                                        </div>
                                    </div>
                                    <article class="product-details-article">
                                        <h4 class="sr-only">Product Summery</h4>
                                        <p>Long printed dress with thin adjustable straps. V-neckline and wiring under
                                            the Dust with ruffles
                                            at the bottom
                                            of the
                                            dress.</p>
                                    </article>
                                    <div class="add-to-cart-row">
                                        <div class="count-input-block">
                                            <span class="widget-label">Qty</span>
                                            <input type="number" class="form-control text-center" value="1">
                                        </div>
                                        <div class="add-cart-btn">
                                            <a href="" class="btn btn-outlined--primary"><span
                                                    class="plus-icon">+</span>Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="compare-wishlist-row">
                                        <a href="" class="add-link"><i class="fas fa-heart"></i>Add to Wish List</a>
                                        <a href="" class="add-link"><i class="fas fa-random"></i>Add to Compare</a>
                                    </div>
                                </div>
                            </div>
                            
                            
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="widget-social-share">
                            <span class="widget-label">Share:</span>
                            <div class="modal-social-share">
                                <a href="#" class="single-icon"><i class="fab fa-facebook-f"></i></a>
                                <a href="#" class="single-icon"><i class="fab fa-twitter"></i></a>
                                <a href="#" class="single-icon"><i class="fab fa-youtube"></i></a>
                                <a href="#" class="single-icon"><i class="fab fa-google-plus-g"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <!--=================================
        Promotion Section Two
        ===================================== -->
  <!--       <div class="section-margin">
            <div class="container">
                <div class="row space-db--30">
                    <div class="col-lg-8 mb--30">
                        <div class="promo-wrapper promo-type-one">
                            <a href="#" class="promo-image  promo-overlay bg-image"
                                data-bg="/resources/image/bg-images/promo-banner-mid.jpg">
                                <img src="/resources/image/bg-images/promo-banner-mid.jpg" alt="">
                            </a>
                            <div class="promo-text">
                                <div class="promo-text-inner">
                                    <h2>Buy 3. Get Free 1.</h2>
                                    <h3>50% off for selected products in Pustok.</h3>
                                    <a href="#" class="btn btn-outlined--red-faded">See More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mb--30">
                        <div class="promo-wrapper promo-type-two ">
                            <a href="#" class="promo-image promo-overlay bg-image"
                                data-bg="/resources/image/bg-images/promo-banner-small.jpg">
                                <img src="/resourcesimage/bg-images/promo-banner-small.jpg" alt="">
                            </a>
                            <div class="promo-text">
                                <div class="promo-text-inner">
                                    <span class="d-block price">$26.00</span>
                                    <h2>Praise for <br>
                                        The Night Child</h2>
                                    <a href="#" class="btn btn-outlined--primary">Buy Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        <!--=================================
        ARTS & PHOTOGRAPHY BOOKS
        ===================================== -->
        <!-- <section class="section-margin">
            <div class="container">
                <div class="section-title section-title--bordered">
                    <h2>ARTS & PHOTOGRAPHY BOOKS</h2>
                </div>
                <div class="product-slider sb-slick-slider slider-border-single-row" data-slick-setting='{
                "autoplay": true,
                "autoplaySpeed": 8000,
                "slidesToShow": 5,
                "dots":true
            }' data-slick-responsive='[
                {"breakpoint":1500, "settings": {"slidesToShow": 4} },
                {"breakpoint":992, "settings": {"slidesToShow": 3} },
                {"breakpoint":768, "settings": {"slidesToShow": 2} },
                {"breakpoint":480, "settings": {"slidesToShow": 1} },
                {"breakpoint":320, "settings": {"slidesToShow": 1} }
            ]'>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="#" class="author">
                                    Lpple
                                </a>
                                <h3><a href="product-details.html">Revolutionize Your BOOK With These Easy
                                  </a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-2.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-1.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="" class="author">
                                    Jpple
                                </a>
                                <h3><a href="product-details.html">Turn Your BOOK Into High Machine</a>
                                </h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-2.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-1.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="" class="author">
                                    Wpple
                                </a>
                                <h3><a href="product-details.html">Create Better BOOK With The Help Of Your</a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-3.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-2.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="" class="author">
                                    Epple
                                </a>
                                <h3><a href="product-details.html">What You Can Learn From Bill Gates</a>
                                </h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-5.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-4.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="" class="author">
                                    Hpple
                                </a>
                                <h3><a href="product-details.html">a Half Very Simple Things You To Save</a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-6.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-4.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="#" class="author">
                                    Bpple
                                </a>
                                <h3><a href="product-details.html">Here Is A Quick Cure For Book</a></h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-8.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-7.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="product-card">
                            <div class="product-header">
                                <a href="#" class="author">
                                    zpple
                                </a>
                                <h3><a href="product-details.html">Do You Really Need It? This Will Help You
                                  </a>
                                </h3>
                            </div>
                            <div class="product-card--body">
                                <div class="card-image">
                                    <img src="/resources/image/products/product-13.jpg" alt="">
                                    <div class="hover-contents">
                                        <a href="product-details.html" class="hover-image">
                                            <img src="/resources/image/products/product-11.jpg" alt="">
                                        </a>
                                        <div class="hover-btns">
                                            <a href="cart" class="single-btn">
                                                <i class="fas fa-shopping-basket"></i>
                                            </a>
                                            <a href="wishlist" class="single-btn">
                                                <i class="fas fa-heart"></i>
                                            </a>
                                            <a href="compare" class="single-btn">
                                                <i class="fas fa-random"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#quickModal"
                                                class="single-btn">
                                                <i class="fas fa-eye"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="price-block">
                                    <span class="price">£51.20</span>
                                    <del class="price-old">£51.20</del>
                                    <span class="price-discount">20%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        <!--=================================
            Promotion Section Three
        ===================================== -->
        <!-- <section class="section-margin">
            <div class="promo-wrapper promo-type-three">
                <a href="#" class="promo-image promo-overlay bg-image" data-bg="/resources/image/bg-images/promo-banner-full.jpg">
                </a>
                <div class="promo-text w-100 ml-0">
                    <div class="container">
                        <div class="row w-100">
                            <div class="col-lg-7">
                                <h2>I Love This Idea!</h2>
                                <h3>Cover up front of book and
                                    leave summary</h3>
                                <a href="#" class="btn btn--yellow">$78.09 - Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        <!--=================================
        Best Seller Product
        ===================================== -->
        <!--  <section class="section-margin bg-image section-padding-top section-padding"
            data-bg="/resources/image/bg-images/best-seller-bg.jpg">
            <div class="container">
                <div class="section-title section-title--bordered mb-0">
                    <h2>Best BEST SELLER BOOKS</h2>
                </div>
                <div class="best-seller-block">
                    <div class="row align-items-center">
                        <div class="col-lg-5 col-md-6">
                            <div class="author-image">
                                <img src="/resources/image/others/best-seller-author.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-6">
                            <div class="sb-slick-slider product-slider product-list-slider multiple-row slider-border-multiple-row"
                                data-slick-setting='{
                                    "autoplay": false,
                                    "autoplaySpeed": 8000,
                                    "slidesToShow":2,
                                    "rows":2,
                                    "dots":true
                                }' data-slick-responsive='[
                                    {"breakpoint":1200, "settings": {"slidesToShow": 1} },
                                    {"breakpoint":992, "settings": {"slidesToShow": 1} },
                                    {"breakpoint":768, "settings": {"slidesToShow": 1} },
                                    {"breakpoint":575, "settings": {"slidesToShow": 1} },
                                    {"breakpoint":490, "settings": {"slidesToShow": 1} }
                                ]'>
                                <div class="single-slide">
                                    <div class="product-card card-style-list">
                                        <div class="card-image">
                                            <img src="/resources/image/products/product-6.jpg" alt="">
                                        </div>
                                        <div class="product-card--body">
                                            <div class="product-header">
                                                <a href="#" class="author">
                                                    Rpple
                                                </a>
                                                <h3><a href="product-details.html">Do You Really Need It? This
                                                        Will Help You
                                  </a></h3>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card card-style-list">
                                        <div class="card-image">
                                            <img src="/resources/image/products/product-1.jpg" alt="">
                                        </div>
                                        <div class="product-card--body">
                                            <div class="product-header">
                                                <a href="#" class="author">
                                                    Epple
                                                </a>
                                                <h3><a href="product-details.html">Here Is Quick Cure BOOK This
                                                        Will Help
                                                       
                                  </a></h3>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card card-style-list">
                                        <div class="card-image">
                                            <img src="/resources/image/products/product-2.jpg" alt="">
                                        </div>
                                        <div class="product-card--body">
                                            <div class="product-header">
                                                <a href="#" class="author">
                                                    Wpple
                                                </a>
                                                <h3><a href="product-details.html">Do You Really Need It? This
                                                        Will Help You
                                                       
                                  </a></h3>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card card-style-list">
                                        <div class="card-image">
                                            <img src="/resources/image/products/product-3.jpg" alt="">
                                        </div>
                                        <div class="product-card--body">
                                            <div class="product-header">
                                                <a href="#" class="author">
                                                    Ypple
                                                </a>
                                                <h3><a href="product-details.html">Very Simple Things You
                                                        Can Save BOOK
                                                       
                                  
                                                       
                                  </a>
                                                </h3>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card card-style-list">
                                        <div class="card-image">
                                            <img src="/resources/image/products/product-5.jpg" alt="">
                                        </div>
                                        <div class="product-card--body">
                                            <div class="product-header">
                                                <a href="#" class="author">
                                                    Mople
                                                </a>
                                                <h3><a href="product-details.html">What You Can Learn From Bill Gates
                                                       
                                  </a></h3>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide">
                                    <div class="product-card card-style-list">
                                        <div class="card-image">
                                            <img src="/resources/image/products/product-4.jpg" alt="">
                                        </div>
                                        <div class="product-card--body">
                                            <div class="product-header">
                                                <a href="#" class="author">
                                                    Cpple
                                                </a>
                                                <h3><a href="product-details.html">3 Ways Create Better BOOK With
                                                        Help
                                                       
                                  </a></h3>
                                            </div>
                                            <div class="price-block">
                                                <span class="price">£51.20</span>
                                                <del class="price-old">£51.20</del>
                                                <span class="price-discount">20%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        
        
        
        <!--=================================
        Home Blog Slider
        ===================================== -->
        <!--=================================
        Home Blog
        ===================================== -->
        <section class="section-margin">
           <!--  <div class="container">
                <div class="section-title">
                    <h2>LATEST BLOGS</h2>
                </div>
                <div class="blog-slider sb-slick-slider" data-slick-setting='{
                "autoplay": true,
                "autoplaySpeed": 8000,
                "slidesToShow": 2,
                "dots": true
            }' data-slick-responsive='[
                {"breakpoint":1200, "settings": {"slidesToShow": 1} }
            ]'>
                    <div class="single-slide">
                        <div class="blog-card">
                            <div class="image">
                                <img src="/resources/image/others/blog-grid-1.jpg" alt="">
                            </div>
                            <div class="content">
                                <div class="content-header">
                                    <div class="date-badge">
                                        <span class="date">
                                            13
                                        </span>
                                        <span class="month">
                                            Aug
                                        </span>
                                    </div>
                                    <h3 class="title"><a href="blog-details.html">How to Water and Care for Mounted</a>
                                    </h3>
                                </div>
                                <p class="meta-para"><i class="fas fa-user-edit"></i>Post by <a href="#">Hastech</a></p>
                                <article class="blog-paragraph">
                                    <h2 class="sr-only">blog-paragraph</h2>
                                    <p>Virtual reality and 3-D technology are already well-established in the
                                        entertainment...</p>
                                </article>
                                <a href="blog-details.html" class="card-link">Read More <i
                                        class="fas fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="blog-card">
                            <div class="image">
                                <img src="/resources/image/others/blog-grid-2.jpg" alt="">
                            </div>
                            <div class="content">
                                <div class="content-header">
                                    <div class="date-badge">
                                        <span class="date">
                                            19
                                        </span>
                                        <span class="month">
                                            Jan
                                        </span>
                                    </div>
                                    <h3 class="title"><a href="blog-details.html">Why You Never See BLOG TITLE That </a>
                                    </h3>
                                </div>
                                <p class="meta-para"><i class="fas fa-user-edit"></i>Post by <a href="#">Hastech</a></p>
                                <article class="blog-paragraph">
                                    <h2 class="sr-only">blog-paragraph</h2>
                                    <p>Virtual reality and 3-D technology are already well-established in the
                                        entertainment...</p>
                                </article>
                                <a href="blog-details.html" class="card-link">Read More <i
                                        class="fas fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="single-slide">
                        <div class="blog-card">
                            <div class="image">
                                <img src="/resources/image/others/blog-grid-3.jpg" alt="">
                            </div>
                            <div class="content">
                                <div class="content-header">
                                    <div class="date-badge">
                                        <span class="date">
                                            31
                                        </span>
                                        <span class="month">
                                            Aug
                                        </span>
                                    </div>
                                    <h3 class="title"><a href="blog-details.html">What Everyone Must Know About </a>
                                    </h3>
                                </div>
                                <p class="meta-para"><i class="fas fa-user-edit"></i>Post by <a href="#">Hastech</a></p>
                                <article class="blog-paragraph">
                                    <h2 class="sr-only">blog-paragraph</h2>
                                    <p>Virtual reality and 3-D technology are already well-established in the
                                        entertainment...</p>
                                </article>
                                <a href="blog-details.html" class="card-link">Read More <i
                                        class="fas fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
        </section>
      
    <!--=================================
    Brands Slider
    ===================================== -->
    <!-- <section class="section-margin">
        <h2 class="sr-only">Brand Slider</h2>
        <div class="container">
            <div class="brand-slider sb-slick-slider border-top border-bottom" data-slick-setting='{
                                            "autoplay": true,
                                            "autoplaySpeed": 8000,
                                            "slidesToShow": 6
                                            }' data-slick-responsive='[
                {"breakpoint":992, "settings": {"slidesToShow": 4} },
                {"breakpoint":768, "settings": {"slidesToShow": 3} },
                {"breakpoint":575, "settings": {"slidesToShow": 3} },
                {"breakpoint":480, "settings": {"slidesToShow": 2} },
                {"breakpoint":320, "settings": {"slidesToShow": 1} }
            ]'>
                <div class="single-slide">
                    <img src="/resources/image/others/brand-1.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="/resources/image/others/brand-2.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="/resources/image/others/brand-3.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="/resources/image/others/brand-4.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="/resources/image/others/brand-5.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="/resources/image/others/brand-6.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="/resources/image/others/brand-1.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="/resources/image/others/brand-2.jpg" alt="">
                </div>
            </div>
        </div>
    </section> -->
    <!--=================================
    Footer Area
    ===================================== -->
    <footer class="site-footer">
        <div class="container">
            <div class="row justify-content-between  section-padding">
                <div class=" col-xl-3 col-lg-2 col-sm-6">
                    <div class="single-footer pb--40">
                        <div class="brand-footer footer-title">
                            <img src="/resources/image/logo--footer.png" alt="">
                        </div>
                        <div class="footer-contact">
                            <p><span class="label">Address:</span><span class="text">서울특별시 성북구 삼선교로 16길 116</span></p>
                            <p><span class="label">Phone:</span><span class="text">82+010-7799-7187</span></p>
                            <p><span class="label">Email:</span><span class="text">shl0331@naver.com</span></p>
                        </div>
                    </div>
                </div>
                <div class=" col-xl-3 col-lg-2 col-sm-6">
                    <div class="single-footer pb--40">
                        <div class="footer-title">
                            <h3>Information1</h3>
                        </div>
                        <ul class="footer-list normal-list">
                        	 <li><a href="">Home</a></li>
                        	 <li><a href="">Shop</a></li>
                        	 <li><a href="">Contact Us</a></li>
                        	
                            <!-- <li><a href="">Prices drop</a></li>
                            <li><a href="">New products</a></li>
                            <li><a href="">Best sales</a></li>
                            <li><a href="">Contact us</a></li>
                            <li><a href="">Sitemap</a></li> -->
                        </ul>
                    </div>
                </div>
                <div class=" col-xl-3 col-lg-2 col-sm-6">
                    <div class="single-footer pb--40">
                        <div class="footer-title">
                            <!-- <h3>Extras</h3> -->
                            <h3>Information2</h3>
                        </div>
                        <ul class="footer-list normal-list">
                        	<li><a href="">Cart</a></li>
                        	<li><a href="">Login-Register</a></li>
                        	<li><a href="">Order Complete</a></li>
                        	<li><a href="">Board</a></li>
                      
                        	
                            <!-- <li><a href="">Delivery</a></li>
                            <li><a href="">About Us</a></li>
                            <li><a href="">Stores</a></li>
                            <li><a href="">Contact us</a></li>
                            <li><a href="">Sitemap</a></li> -->
                        </ul>
                    </div>
                </div>
                
                
                <!-- <div class=" col-xl-3 col-lg-4 col-sm-6">
                    <div class="footer-title">
                        <h3>Newsletter Subscribe</h3>
                    </div>
                    <div class="newsletter-form mb--30">
                        <form action="./php/mail.php">
                            <input type="email" class="form-control" placeholder="Enter Your Email Address Here...">
                            <button class="btn btn--primary w-100">Subscribe</button>
                        </form>
                    </div>
                    <div class="social-block">
                        <h3 class="title">STAY CONNECTED</h3>
                        <ul class="social-list list-inline">
                            <li class="single-social facebook"><a href=""><i class="ion ion-social-facebook"></i></a>
                            </li>
                            <li class="single-social twitter"><a href=""><i class="ion ion-social-twitter"></i></a></li>
                            <li class="single-social google"><a href=""><i
                                        class="ion ion-social-googleplus-outline"></i></a></li>
                            <li class="single-social youtube"><a href=""><i class="ion ion-social-youtube"></i></a></li>
                        </ul>
                    </div> -->
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <p class="copyright-heading">Suspendisse in auctor augue. Cras fermentum est ac fermentum tempor. Etiam
                    vel
                    magna volutpat, posuere eros</p>
                <a href="#" class="payment-block">
                    <img src="/resources/image/icon/payment.png" alt="">
                </a>
                <p class="copyright-text">Copyright © 2019 <a href="#" class="author">Pustok</a>. All Right Reserved.
                    <br>
                    Design By Pustok</p>
            </div>
        </div>
    </footer>
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <script src="/resources/js/plugins.js"></script>
    <script src="/resources/js/ajax-mail.js"></script>
    <script src="/resources/js/custom.js"></script>
</body>

</html>