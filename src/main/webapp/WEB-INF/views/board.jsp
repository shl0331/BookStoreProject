<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.shlee.webapp.dto.*" %>

<%	   
	UserDto userDto = (UserDto) session.getAttribute("userDto");
	String userName = "";
	
	if(userDto != null) {
		System.out.println(userDto.getUserSeq());
		userName = userDto.getUserName();
	}
%>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Pustok - Book Store HTML Template</title>
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
		<div class="site-header header-2 mb--20 d-none d-lg-block">
			<div class="header-middle pt--10 pb--10">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-3">
							<a href="/" class="site-brand">
								<img src="/resources/image/logo.png" alt="">
							</a>
						</div>
						<div class="col-lg-5">
							<div class="header-search-block">
								<input type="text" placeholder="찾을 제목을 입력하세요">
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
												<!-- £0.00 -->
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
																Astro Zoom AZ421 16 MP</a></h3>
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
								<!-- @include('menu.htm') -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="header-bottom bg-primary">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-3">
							<nav class="category-nav white-nav  ">
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
							</nav>
						</div>
						<div class="col-lg-3">
							<div class="header-phone color-white">
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
								<ul class="main-menu menu-right main-menu--white li-last-0">
									<li class="menu-item has-children">
										<a href="javascript:void(0)">Home <i
												class="fas fa-chevron-down dropdown-arrow"></i></a>
										<ul class="sub-menu">
											<li> <a href="/">Home One</a></li>
											<li> <a href="index-2.html">Home Two</a></li>
											<li> <a href="index-3.html">Home Three</a></li>
											<li> <a href="index-4.html">Home Four</a></li>
										</ul>
									</li>
									<!-- Shop -->
									<li class="menu-item has-children mega-menu">
										<a href="javascript:void(0)">shop <i
												class="fas fa-chevron-down dropdown-arrow"></i></a>
										<ul class="sub-menu four-column">
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
										</ul>
									</li>
									<!-- Pages -->
									<li class="menu-item has-children">
										<a href="javascript:void(0)">Pages <i
												class="fas fa-chevron-down dropdown-arrow"></i></a>
										<ul class="sub-menu">
											<li><a href="cart">Cart</a></li>
                                            <li><a href="checkout">Checkout</a></li>
                                            <li><a href="compare">Compare</a></li>
                                            <li><a href="wishlist">Wishlist</a></li>
                                            <li><a href="login">Login Register</a></li>
                                            <li><a href="account">My Account</a></li>
                                            <li><a href="order">Order Complete</a></li>
                                            <li><a href="faq">Faq</a></li>
                                            <li><a href="contact2">contact 02</a></li>
										</ul>
									</li>
									<!-- Blog -->
									<li class="menu-item has-children mega-menu">
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
													<!-- <li><a href="blog-list.html">Full Widh (Default)</a></li> -->
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
									</li>
									<li class="menu-item">
										<a href="contact.html">Contact</a>
									</li>
								</ul>
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
							<nav class="category-nav   ">
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
							</nav>
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
									<a href="#">Home</a>
									<ul class="sub-menu">
										<li> <a href="/">Home One</a></li>
										<li> <a href="index-2.html">Home Two</a></li>
										<li> <a href="index-3.html">Home Three</a></li>
										<li> <a href="index-4.html">Home Four</a></li>
									</ul>
								</li>
								<li class="menu-item-has-children">
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
								</li>
								<li class="menu-item-has-children">
									<a href="#">Shop</a>
									<ul class="sub-menu">
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
									</ul>
								</li>
								<li class="menu-item-has-children">
									<a href="#">Pages</a>
									<ul class="sub-menu">
										<li><a href="cart">Cart</a></li>
										<li><a href="checkout">Checkout</a></li>
										<li><a href="compare">Compare</a></li>
										<li><a href="wishlist">Wishlist</a></li>
										<li><a href="login">Login Register</a></li>
										<li><a href="account">My Account</a></li>
										<li><a href="order">Order Complete</a></li>
										<li><a href="faq">Faq</a></li>
										<li><a href="contact2">contact 02</a></li>
									</ul>
								</li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</nav>
						<!-- mobile menu navigation end -->
					</div>
					<!-- mobile menu end -->
					<nav class="off-canvas-nav">
						<ul class="mobile-menu menu-block-2">
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
						</ul>
					</nav>
					<div class="off-canvas-bottom">
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
					</div>
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
									<a href="javascript:void(0)">Home <i
											class="fas fa-chevron-down dropdown-arrow"></i></a>
									<ul class="sub-menu">
										<li> <a href="/">Home One</a></li>
										<li> <a href="index-2.html">Home Two</a></li>
										<li> <a href="index-3.html">Home Three</a></li>
										<li> <a href="index-4.html">Home Four</a></li>
									</ul>
								</li>
								<!-- Shop -->
								<li class="menu-item has-children mega-menu">
									<a href="javascript:void(0)">shop <i
											class="fas fa-chevron-down dropdown-arrow"></i></a>
									<ul class="sub-menu four-column">
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
									</ul>
								</li>
								<!-- Pages -->
								<li class="menu-item has-children">
									<a href="javascript:void(0)">Pages <i
											class="fas fa-chevron-down dropdown-arrow"></i></a>
									<ul class="sub-menu">
										<li><a href="cart">Cart</a></li>
										<li><a href="checkout">Checkout</a></li>
										<li><a href="compare">Compare</a></li>
										<li><a href="wishlist">Wishlist</a></li>
										<li><a href="login">Login Register</a></li>
										<li><a href="account">My Account</a></li>
										<li><a href="order">Order Complete</a></li>
										<li><a href="faq">Faq</a></li>
										<li><a href="contact2">contact 02</a></li>
									</ul>
								</li>
								<!-- Blog -->
								<li class="menu-item has-children mega-menu">
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
												<!-- <li><a href="blog-list.html">Full Widh (Default)</a></li> -->
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
								</li>
								<li class="menu-item">
									<a href="contact.html">Contact</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<section class="breadcrumb-section">
			<h2 class="sr-only">Site Breadcrumb</h2>
			<div class="container">
				<div class="breadcrumb-contents">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="/">Home</a></li>
							<li class="breadcrumb-item active">Order Complete</li>
						</ol>
					</nav>
				</div>
			</div>
		</section>

		<!-- faq Page Start -->
		<div class="faq-area inner-page-sec-padding-bottom">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="inner text-center">
							<h1>GENERAL QUESTION</h1>
						</div>
					</div>
				</div>
				<div class="row mbn-30">
					
					<div class="col-xl-12 form-group">
						<!--FAQ (Accordion) Start-->
						<div class="accordion" id="gq-faqs-1">
							<div class="col-xl-12 form-group">
							<div class="header-search-block">
								<input type="text"  id="inputSearchWord" placeholder="찾을 제목을 입력하세요.">
								<button id="btnSearchWord">Search</button>
							</div>
						</div>
							<table class="table table-hover">
								<thead>
									<tr>
										<th>#</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일시</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody id="boardTbody">
								<!-- <tr><td>John</td><td>Doe</td><td>john@example.com</td><td>aaa</td><td>aaa</td></tr> -->
								</tbody>

							</table>
							<br/>
						<div id="paginationWrapper"></div>
							<br/>
								<button type="button" id="btnBoardInsertForm" class="btn btn-primary"
									data-toggle="modal" data-target="#myModal">글쓰기
								</button>
	
								<!-- modal insert -->
								<div class="modal" id="myModal">
									<div class="modal-dialog">
										<div class="modal-content">

											<!-- Modal Header -->
											<div class="modal-header">
												<h4 class="modal-title">글 쓰기</h4>
												<button type="button" class="close" data-dismiss="modal">&times;</button>
											</div>

											<!-- Modal body -->
											<div class="modal-body">
												<div class="row">
													<div class="col-xl-12 form-group">
														<input id="titleInsert" type="text" class="form-control" name="title" placeholder="제목">
													</div>
													<div class="col-xl-12 form-group">
														<textarea id="contentInsert" class="form-control" rows="5" name="title" placeholder="내용"></textarea>
													</div>
													<div class="col-xl-12 form-group">
														<div class="custom-control custom-checkbox small">
															<input id="chkFileUploadInsert" type="checkbox" class="custom-control-input">
															<label class="custom-control-label" for="chkFileUploadInsert">파일추가
															</label>
														</div>
													</div>
													<div class="col-xl-12 form-group" style="display:none;" id="imgFileUploadInsertWrapper">
														<input id="inputFileUploadInsert" type="file" class="thumbnail-wrapper">
															<img id="imgFileUploadInsert">
													</div>
													<div class="col-md-12 float-right">
														<button id="btnBoardInsert" class="btn btn-sm btn-primary btn-outline" data-dismiss="modal" type="button">등록</button>
													</div>
												</div>
											</div>

											<!-- Modal footer -->
											<div class="modal-footer">
												<button type="button" class="btn btn-danger"
													data-dismiss="modal">Close</button>
											</div>	
										</div>
									</div>
								</div>
								<!-- modal Insert End -->
								
								
								<!-- modal Detail -->
								<div class="modal fade" id="boardDetailModal">
									<div class="modal-dialog">
										<div class="modal-content">

											<!-- Modal Header -->
											<div class="modal-header">
												<h4 class="modal-title">글 상세</h4>
												<button type="button" class="close" data-dismiss="modal">&times;</button>
											</div>

											<!-- Modal body -->
											<div class="modal-body">
												<div class="row">
													<table>
														 <tbody>
                       										<tr><td>글번호</td><td id="boardId">#</td></tr>
                        									<tr><td>제목</td><td id="titleDetail">#</td></tr>
                        									<tr><td>내용</td><td id="contentDetail">#</td></tr>
                        									<tr><td>작성자</td><td id="userNameDetail">#</td></tr>
                        									<tr><td>작성일시</td><td id="regDtDetail">#</td></tr>
                        									<tr><td>조회수</td><td id="readCountDetail">#</td></tr>
                        									<tr><td>첨부파일</td><td id="fileListDetail">#</td></tr>
                      									</tbody>
													</table>
												</div>
                        							<button id="btnBoardUpdateForm" class="btn btn-sm btn-primary btn-outline" data-dismiss="modal" type="button" data-target="boardUpdate">글 수정하기</button>
                       								<button id="btnBoardDeleteConfirm" class="btn btn-sm btn-warning btn-outline" data-dismiss="modal" type="button">글 삭제하기</button>
                        							<button id="btnBoardCommentForm" class="btn btn-sm btn-info" type="button">덧글 쓰기</button>
                     						</div>
											<!-- Modal footer -->
											<div class="modal-footer">
												<button type="button" class="btn btn-danger"
													data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- modal Detail End -->
								
								<!-- modal Update -->
								<div class="modal" id="boardUpdate">
									<div class="modal-dialog">
										<div class="modal-content">

											<!-- Modal Header -->
											<div class="modal-header">
												<h4 class="modal-title">Modal Update</h4>
												<button type="button" class="close" data-dismiss="modal">&times;</button>
											</div>

											<!-- Modal body -->
											<div class="modal-body">
												<div class="row">
													<div class="col-xl-12 form-group">
														<input id="titleUpdate" type="text" class="form-control" name="title" placeholder="제목">
													</div>
													<div class="col-xl-12 form-group">
														<textarea id="contentUpdate" class="form-control" rows="5" name="title" placeholder="제목"></textarea>
													</div>
													<div class="col-xl-12 form-group">첨부파일 : <span id="fileListUpdate"></span>
													</div>
														<div class="col-xl-12 form-group">
															<div class="checkbox-custom checkbox-primary">
                                            					<input type="checkbox" id="chkFileUploadUpdate" />
                                               						<label for="chkFileUploadUpdate">파일 변경</label>
                                       						</div>
                                  						</div>
                                  					<div class="col-xl-12 form-group" style="display:none;" id="imgFileUploadUpdateWrapper">
                                  						<input type="file" id="inputFileUploadUpdate" class="thumbnail-wrapper">
                                           					<img id="imgFileUploadUpdate">
                                             		</div>
												</div>
											</div>

											<!-- Modal footer -->
											<div class="modal-footer">
                     							<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    							<button id="btnBoardUpdate" class="btn btn-primary btn-outline" data-dismiss="modal" type="button">수정</button>
										</div>
									</div>
								</div>
	
						</div><!--FAQ (Accordion) End-->
					</div>
					
				</div>
			</div>
		</div>
		<!-- faq Page End -->
	</div>
	</div>
<script src="/resources/js/util.js"></script>

<script>
var LIST_ROW_COUNT = 10;   //limit
var OFFSET = 0;
var PAGE_COUNT_PER_BLOCK = 10;   // pagination link 갯수
var TOTAL_LIST_ITEM_COUNT = 0;
var CURRENT_PAGE_INDEX = 1;

var SEARCH_WORD = "";

      $(document).ready(function() {
    	  console.log("ready");

		boardList();
         

         $("#btnBoardInsert").click(function(){
        	 console.log("insert");
            if( validate() ){
            	console.log("validate");
               boardInsert();
               boardList();
            }
         });
         
         $("#btnBoardInsertForm").click(function(){
             $("#titleInsert").val("");
             $("#contentInsert").val("");
             $("#chkFileUploadInsert").prop("checked", false);
             $("#inputFileUploadInsert").val("");
             $("#imgFileUploadInsert").removeAttr("src");
             //$("#imgFileUploadInsert").attr("src", "");
             $("#imgFileUploadInsertWrapper").hide();
             
             $("#boardInsertModal").modal("show");
          });
         
         

		
         $("#btnBoardUpdateForm").click(function() {
        	 console.log("btnBoardUpdateForm");
        	 
        	var boardId = $("#boardDetailModal").attr("data-boardId");
        	$("#boardUpdate").attr("data-boardId", boardId);
        	
        	$("#titleUpdate").val($("#titleDetail").html());
        	$("#contentUpdate").val($("#contentDetail").html());
        	
        	var fileName = $("#fileListDetail").find(".fileName").html();
            $("#fileListUpdate").html( '<span class="fileName">' + fileName + '</span>');
           
            $("#chkFileUploadUpdate").prop("checked", false);
            $("#inputFileUploadUpdate").val("");
            $("#imgFileUploadUpdate").attr("src", "");
          //$("#imgFileUploadUpdate").removeAttr("src");
            $("#imgFileUploadUpdateWrapper").hide();
        	
        	$("#boardDetailModal").modal("hide");
        	$("#boardUpdate").modal("show");
        	
         });
         
         $("#btnBoardUpdate").click(function() {
        	 console.log("유효성 검사");
        	 if(validateUpdate()) {
        		 console.log("validateUpdate 유효성 검사");
        		 boardUpdate();
        		 boardList();
        	 }
         });
         
 		$("#btnBoardDeleteConfirm").click(function() {
 			console.log("btnBoardDeleteConfirm");
        	alertify.confirm(
        		'shlee',
        		'이 글을 삭제하시겠습니까?',
        		function() {
        			boardDelete();
        		},
        		function() {
        			console.log('cancel');
        		});
        		boardList();
         });
         
 		 $("#chkFileUploadInsert").change(function(){
 	           console.log("항목변경");
 	            if( $(this).prop("checked")){
 	               $("#imgFileUploadInsertWrapper").show();
 	            }else{
 	               $("#inputFileUploadInsert").val("");
 	               $("#imgFileUploadInsert").attr("src", "");
 	               $("#imgFileUploadInsertWrapper").hide();
 	            }
 	         });   
 	     
 	     $("#inputFileUploadInsert").change(function(e){

 	            if( this.files && this.files[0] ){
 	               var reader = new FileReader();
 	               reader.onload = function(e){
 	                  $("#imgFileUploadInsert").attr("src", e.target.result);
 	               }
 	               reader.readAsDataURL(this.files[0]);
 	            }
 	         });
 	     
 	   //Update
 	      $("#chkFileUploadUpdate").change(function(){
 	         if( $(this).prop("checked")){
 	            $("#imgFileUploadUpdateWrapper").show();
 	         }else{
 	            $("#inputFileUploadUpdate").val("");
 	            $("#imgFileUploadUpdate").attr("src", "");
 	            $("#imgFileUploadUpdateWrapper").hide();
 	         }
 	      });
 	      
 	      $("#inputFileUploadUpdate").change(function(e){

 	         if( this.files && this.files[0] ){
 	            var reader = new FileReader();
 	            reader.onload = function(e){
 	               $("#imgFileUploadUpdate").attr("src", e.target.result);
 	            }
 	            reader.readAsDataURL(this.files[0]);
 	         }
 	      });
 	      
 	   //Search
 	      $("#btnSearchWord").click(function(e){
 	         var searchWord = $("#inputSearchWord").val();
 	         
 	         if( searchWord != "" ){
 	            SEARCH_WORD = searchWord;
 	         }else{
 	            SEARCH_WORD = "";
 	         }
 	         
 	         boardList();
 	      });
 	      
         
      });
   
   function validate(){
	   console.log("validate2");
      var isTitleInsertValid = false;
      var isContentInsertValid = false;
      
   
      var userTitleInsertValid = $("#titleInsert").val();
      var userTitleInsertLength = userTitleInsertValid.length;
      
      if( userTitleInsertLength > 0 ){
         isTitleInsertValid = true;
      }
      
      var userContentInsertValid = $("#contentInsert").val();
      var userContentInsertLength = userContentInsertValid.length;
      
      if( userContentInsertLength > 0 ){
         isContentInsertValid = true;
      }
      
      if( isTitleInsertValid ){
    	  $("#titleInsert").removeClass("is-invalid");
      }else{
          $("#titleInsert").addClass("is-invalid");
      }
      
      if( isContentInsertValid ){
    	  $("#contentInsert").removeClass("is-invalid");
      }else{
          $("#contentInsert").addClass("is-invalid");
      }

      if(   isTitleInsertValid && isContentInsertValid ){
         return true;
      }else{
         return false;
      }
   }
   
   function validateUpdate(){
	   console.log("validateUpdate2");
	      var isTitleUpdateValid = false;
	      var isContentUpdateValid = false;
	      
	   
	      var userTitleUpdateValid = $("#titleUpdate").val();
	      var userTitleUpdateLength = userTitleUpdateValid.length;
	      
	      if( userTitleUpdateLength > 0 ){
	         isTitleUpdateValid = true;
	      }
	      
	      var userContentUpdateValid = $("#contentUpdate").val();
	      var userContentUpdateLength = userContentUpdateValid.length;
	      
	      if( userContentUpdateLength > 0 ){
	         isContentUpdateValid = true;
	      }

	      if( isTitleUpdateValid ){
	    	  $("#titleUpdate").removeClass("is-invalid");
	      }else{
	          $("#titleUpdate").addClass("is-invalid");
	      }
	      
	      if( isContentUpdateValid ){
	    	  $("#contentUpdate").removeClass("is-invalid");
	      }else{
	          $("#contentUpdate").addClass("is-invalid");
	      }
	      
	      if( isTitleUpdateValid &&  isContentUpdateValid ){
	    	  return true;
		  }else{
		      return false;
		  }
	   }
   
   
   
   function boardInsert(){
	   console.log("boardInsert()");
	   var formData = new FormData();
	   formData.append("userSeq", '<%=userDto.getUserSeq()%>');
	   formData.append("title", $("#titleInsert").val());
	   formData.append("content", $("#contentInsert").val());
	   formData.append("file", $("#inputFileUploadInsert")[0].files[0]);
	   
      $.ajax(
      {
    	  type : 'post',
          url : '/board/insertFile',
          dataType : 'json',
          data : formData,
          contentType: false,   // forcing jQuery not to add a Content-Type header for you, otherwise, the boundary string will be missing from it
          processData: false, // otherwise, jQuery will try to convert your FormData into a string, which will fail.
          beforeSend : function(xhr){
              //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
              xhr.setRequestHeader("AJAX", true);
          },
           success : function(data, status, xhr) { // alertify or another welcome page 이동
              console.log(data);
              console.log(status);
              
              if(data) {
              	alertify.success('글이 등록되었습니다.');
              	boardList();
              }
           },
     
           error: function(jqXHR, textStatus, errorThrown) 
          { 
		        		if(jqXHR.responseText == "timeout") {
			            	  window.location.href = "/login"
			            }else {
			              	alertify.notify(
			                 'Opps!! 글 등록 과정에 문제가 생겼습니다.', 
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
   
   function boardList() {
	   console.log("boardList()");
	   $.ajax(
			{	
			    	type : 'get',
			        url : '/board/list',
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
	   
	   $("#boardTbody").html(""); // 리스트를 새로 만들 때는 이전것을 없앰
	   
	   for(var i=0;i<list.length;i++) {
		   
		   var boardId= list[i].boardId;
	        var userName= list[i].userName;
	        var title = list[i].title;
	        var content = list[i].content;
	        var regDt = list[i].regDt;
	        var readCount = list[i].readCount;
		   
	         var listHtml =
	             '<tr style="cursor:pointer" data-boardId=' + boardId +'><td>' + boardId + '</td><td>' + title + '</td><td>' + userName + '</td><td>' + regDt + '</td><td>' + readCount + '</td></tr>';

	          $("#boardTbody").append(listHtml);
	       }
	       
	       makeListHtmlEventHandler(); // 클릭하면 상세화
	       
	       boardListTotalCnt();
	}
   
   function boardListTotalCnt(){
	   console.log("boardListTotalCnt()");
	      $.ajax(
	      {
	           type : 'get',
	           url : '/board/list/totalCnt',
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
	              TOTAL_LIST_ITEM_COUNT = data;
	              addPagination();
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

	      makePaginationHtml(LIST_ROW_COUNT, PAGE_COUNT_PER_BLOCK, CURRENT_PAGE_INDEX, TOTAL_LIST_ITEM_COUNT, "paginationWrapper", boardList );
	}

function movePage(pageIndex){
	      OFFSET = (pageIndex - 1) * LIST_ROW_COUNT;
	      CURRENT_PAGE_INDEX = pageIndex;
	      boardList();
	}
   
   
   function makeListHtmlEventHandler() {
		console.log("makeListHtmlEventHandler()");
		$("#boardTbody tr").click(function() {
			var boardId = $(this).attr("data-boardId") // this는 tr
			boardDetail(boardId);
			//alert(boardId);
		});
	}
   
   
   function boardDetail(boardId){
	   //   $("#boardDetailModal").modal("show")
	     $.ajax({
	        type: 'get',
	        url: '/board/detail',
	        dataType: 'json',
	        data:{
	           boardId: boardId
	        },
	        beforeSend : function(xhr){
	            console.log(boardId);
	           xhr.setRequestHeader("AJAX",true);
	           
	        },
	        success: function(data, status, xhr){
	           console.log('success조회시작')
	           console.log(boardId+"success");
	           makeDetailHtml(data);
	        },
	        error : function(jqXHR, textStatus, errorThrown){
	            if(jqXHR.responseText == "timeout"){
	               window.location.href = "/login"
	               
	            }else{
	               alertify.notify(
	                      'Opps!! 글조회 과정에서 문제가 생겼어요.', 
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
   
  function makeDetailHtml(detail) {
		 console.log("makeDetailHtml");
	   var boardId = detail.boardId;
	   var userSeq = detail.userSeq;	
	   var userName = detail.userName;
	   var title = detail.title;
	   var content = detail.content;
	   var regDt = detail.regDt;
	   var readCount = detail.readCount;
	   var fileList = detail.fileList;
     console.log(fileList);
	   
	   $("#boardDetailModal").attr("data-boardId", boardId); 
	   $("#titleDetail").html(title);
	   $("#contentDetail").html(content);
	   $("#userNameDetail").html(userName);
	   $("#regDtDetail").html(regDt);
	   $("#readCountDetail").html(readCount);
	   
	   //FileList
     $("#fileListDetail").html("");
	   
     if( fileList.length > 0 ){
  	   console.log("fileList");
         for(var i=0; i<fileList.length; i++){
            var fileId = fileList[i].fileId;
            var fileName = fileList[i].fileName;
            var fileUrl = fileList[i].fileUrl;
            
            $("#fileListDetail").append(
                  '<span class="fileName">' + fileName + '</span>');
            $("#fileListDetail").append(
                  '&nbsp;&nbsp;<a type="button" class="btn btn-outline btn-default btn-xs" ' +
                  'data-fileId="' + fileId + '" ' +
                  'href="' + fileUrl + '" ' +
                  'download="' + fileName + '">내려받기</a>');
         }
      }
	   
	   if(userSeq != '<%=userDto.getUserSeq()%>') {
		   $("btnBoardUpdateForm").hide();
		   $("btnBoardDeleteConfirm").hide();
	   }else {
		   $("btnBoardUpdateForm").show();
		   $("btnBoardDeleteConfirm").show();
	   }
	   
	   $("#boardDetailModal").modal("show");
	}

   function boardUpdate() {
	   console.log("boardUpdate()");
	   
	    var formData = new FormData();
	    formData.append("boardId", $("#boardUpdate").attr("data-boardId"));
	    formData.append("userSeq", '<%=userDto.getUserSeq()%>');
	    formData.append("title", $("#titleUpdate").val());
	    formData.append("content", $("#contentUpdate").val());
	    formData.append("file", $("#inputFileUploadUpdate")[0].files[0]);
	   console.log($("#boardUpdate").attr("data-boardId"));
	    $.ajax(
	    {
	    		type : 'post',
	            url : '/board/updateFile',
	            dataType : 'json',
	            data : formData,
	            contentType: false,   // forcing jQuery not to add a Content-Type header for you, otherwise, the boundary string will be missing from it
	            processData: false, // otherwise, jQuery will try to convert your FormData into a string, which will fail.
	            beforeSend : function(xhr){
	                //xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
	                xhr.setRequestHeader("AJAX", true);
	            },
	            success : function(data, status, xhr) {  // alertify or another welcome page 이동
			        	
			        	console.log("수정 완료?");
			        	if(data) {
			        		console.log("data가 참");
			              	alertify.success('글이 수정되었습니다.');
			              	boardList();
			        	}

			      },
			     
			      error: function(jqXHR, textStatus, errorThrown) 
		        	{ 
		        		if(jqXHR.responseText == "timeout") {
			            	  window.location.href = "/login"
			            }else {
			              	alertify.notify(
			                 'Opps!! 글 수정 과정에 문제가 생겼습니다.', 
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
   
   function boardDelete() {
	   console.log("boardDelete");
	   $.ajax(
			{	
			    	type : 'post',
			        url : '/board/delete',
			        dataType : 'json',
			        data : {
				        boardId: $("#boardDetailModal").attr("data-boardId")
			      },
			        beforeSend : function(xhr){
			        	//xhr.setRequestHeader("ApiKey", "asdfasxdfasdfasdf");
			            xhr.setRequestHeader("AJAX", true);
			      },
			        success : function(data, status, xhr) { // alertify or another welcome page 이동
			        	
			        	console.log(boardId+ "삭제 완료");
			        	if(data) {
			              	alertify.success('글이 삭제되었습니다.');
			              	boardList();
			        	}

			      }

			});
		}
	

   
</script>
	<!--=================================
  Brands Slider
===================================== -->
	<section class="section-margin">
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
	</section>
	<!--=================================
    Footer Area
===================================== -->
	<footer class="site-footer">
		<div class="container">
			<div class="row justify-content-between  section-padding">
				<div class=" col-xl-3 col-lg-4 col-sm-6">
					<div class="single-footer pb--40">
						<div class="brand-footer footer-title">
							<img src="/resources/image/logo--footer.png" alt="">
						</div>
						<div class="footer-contact">
							<p><span class="label">Address:</span><span class="text">Example Street 98, HH2 BacHa, New
									York, USA</span></p>
							<p><span class="label">Phone:</span><span class="text">+18088 234 5678</span></p>
							<p><span class="label">Email:</span><span class="text">suport@hastech.com</span></p>
						</div>
					</div>
				</div>
				<div class=" col-xl-3 col-lg-2 col-sm-6">
					<div class="single-footer pb--40">
						<div class="footer-title">
							<h3>Information</h3>
						</div>
						<ul class="footer-list normal-list">
							<li><a href="">Prices drop</a></li>
							<li><a href="">New products</a></li>
							<li><a href="">Best sales</a></li>
							<li><a href="">Contact us</a></li>
							<li><a href="">Sitemap</a></li>
						</ul>
					</div>
				</div>
				<div class=" col-xl-3 col-lg-2 col-sm-6">
					<div class="single-footer pb--40">
						<div class="footer-title">
							<h3>Extras</h3>
						</div>
						<ul class="footer-list normal-list">
							<li><a href="">Delivery</a></li>
							<li><a href="">About Us</a></li>
							<li><a href="">Stores</a></li>
							<li><a href="">Contact us</a></li>
							<li><a href="">Sitemap</a></li>
						</ul>
					</div>
				</div>
				<div class=" col-xl-3 col-lg-4 col-sm-6">
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
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<p class="copyright-heading">Suspendisse in auctor augue. Cras fermentum est ac fermentum tempor. Etiam
					vel magna volutpat, posuere eros</p>
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
	<script src="js/plugins.js"></script>
	<script src="js/ajax-mail.js"></script>
	<script src="js/custom.js"></script>
</body>

</html>