<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="INSPIRO" />
<meta name="description" content="Themeforest Template Polo">
<!-- Document title -->
<title>I.C Mall</title>
<!-- Stylesheets & Fonts -->
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/seoha.css"
	type="text/css" rel="stylesheet">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous">
</head>
<body>
	<jsp:include page="header.jsp" />
	<!-- Body Inner -->
	<div class="body-inner">
		<!-- Inspiro Slider -->
		<div id="slider"
			class="inspiro-slider slider-halfscreen dots-creative">

			<!-- Slide 1 -->
			<div class="slide background-image"
				style="background-image: url('homepages/corporate-v7/images/1.jpg');">
				<div class="bg-overlay"></div>
				<div class="container">
					<div class="slide-captions text-center text-light">
						<!-- Captions -->
						<span class="strong"><a href="#" class="business"><span
								class="business">정육 계란</span></a> </span>
						<h1>넉넉하게 준비하세요</h1>
						<button type="button" class="btn">
							<span class="btn-label"><i class="main-color fa fa-check"></i></span>더 알아보기
						</button>
						<button type="button" class="btn">구매하기</button>
						<!-- end: Captions -->
					</div>
				</div>
			</div>
			<!-- end: Slide 1 -->

			<!-- Slide 2 -->
			<div class="slide kenburns background-image"
				style="background-image: url('homepages/corporate-v7/images/2.jpg');">
				<div class="bg-overlay"></div>
				<div class="container">
					<div class="slide-captions text-left text-light">
						<!-- Captions -->
						<span class="strong"><a href="#" class="business"><span
								class="business">신선한 야채</span></a> </span>
						<h1>하루 배송으로 신선한 야채를</h1>
						<button type="button" class="btn">
							<span class="btn-label"><i class="main-color fa fa-check"></i></span>더 알아보기
						</button>
						<button type="button" class="btn">구매하기</button>
						<!-- end: Captions -->
					</div>
				</div>
			</div>
			<!-- end: Slide 2 -->
		</div>
		<!--end: Inspiro Slider -->
		<!-- Page Content -->
		<section>
			<!-- container -->
			<div class="container">
				<div class="row">
					<div class="content col-lg-12 p-b-50">
						<!--Shop products Carousel -->
						<h2 class="mb-4">채소</h2>
						<div class="carousel" data-items="3">
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<span class="product-new">NEW</span>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<span class="product-hot">HOT</span>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
						</div>
						<!--end: Shop products Carousel -->
					</div>
				</div>
			</div>
		</section>

		<!-- end: container -->
		<!-- container -->
		<!-- <div class="container">
			<div class="row">
				<div class="content col-lg-12 p-b-50"> -->
		<!--Shop products Carousel -->
		<section class="background-grey">
			<!-- container -->
			<div class="container">
				<div class="row">
					<div class="content col-lg-12">
						<!--Shop products Carousel -->
						<h2 class="mb-4">과일</h2>
						<div class="carousel" data-items="3">
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<span class="product-new">NEW</span>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<span class="product-hot">HOT</span>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
						</div>
						<!--end: Shop products Carousel -->
					</div>
				</div>
			</div>
		</section>
		<!-- end: container -->
		<section>
		<!-- container -->
		<div class="container p-t-30 p-b-50">
			<div class="row">
				<div class="content col-lg-12">
					<!--Shop products Carousel -->
					<h2 class="mb-4">정육</h2>
					<div class="carousel" data-items="3">
						<div class="product">
							<div class="product-image">
								<a href="#"><img alt="Shop product image!"
									src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
								<a href="#"><img alt="Shop product image!"
									src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
								<span class="product-new">NEW</span>
								<!-- <span class="product-wishlist">
										<a href="#"><i class="fa fa-heart"></i></a>
									</span> -->
								<div class="product-overlay">
									<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
										View</a>
								</div>
							</div>
							<div class="product-description">
								<div class="product-category">vegetables</div>
								<div class="product-title">
									<h3>
										<a href="#">[유기농]멜론 </a>
									</h3>
								</div>
								<div class="product-price">
									<ins>10,000</ins>
								</div>
								<!-- <div class="product-rate">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
									</div> -->
								<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
									</div> -->
							</div>
						</div>
						<div class="product">
							<div class="product-image">
								<a href="#"><img alt="Shop product image!"
									src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
								<a href="#"><img alt="Shop product image!"
									src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
								<!-- <span class="product-wishlist">
										<a href="#"><i class="fa fa-heart"></i></a>
									</span> -->
								<div class="product-overlay">
									<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
										View</a>
								</div>
							</div>
							<div class="product-description">
								<div class="product-category">vegetables</div>
								<div class="product-title">
									<h3>
										<a href="#">[유기농]멜론 </a>
									</h3>
								</div>
								<div class="product-price">
									<ins>10,000</ins>
								</div>
								<!-- <div class="product-rate">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
									</div> -->
								<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
									</div> -->
							</div>
						</div>
						<div class="product">
							<div class="product-image">
								<a href="#"><img alt="Shop product image!"
									src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
								<a href="#"><img alt="Shop product image!"
									src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
								<span class="product-hot">HOT</span>
								<!-- <span class="product-wishlist">
										<a href="#"><i class="fa fa-heart"></i></a>
									</span> -->
								<div class="product-overlay">
									<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
										View</a>
								</div>
							</div>
							<div class="product-description">
								<div class="product-category">vegetables</div>
								<div class="product-title">
									<h3>
										<a href="#">[유기농]멜론 </a>
									</h3>
								</div>
								<div class="product-price">
									<ins>10,000</ins>
								</div>
								<!-- <div class="product-rate">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
									</div> -->
								<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
									</div> -->
							</div>
						</div>
						<div class="product">
							<div class="product-image">
								<a href="#"><img alt="Shop product image!"
									src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
								<a href="#"><img alt="Shop product image!"
									src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
								<!-- <span class="product-wishlist">
										<a href="#"><i class="fa fa-heart"></i></a>
									</span> -->
								<div class="product-overlay">
									<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
										View</a>
								</div>
							</div>
							<div class="product-description">
								<div class="product-category">vegetables</div>
								<div class="product-title">
									<h3>
										<a href="#">[유기농]멜론 </a>
									</h3>
								</div>
								<div class="product-price">
									<ins>10,000</ins>
								</div>
								<!-- <div class="product-rate">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
									</div> -->
								<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
									</div> -->
							</div>
						</div>
						<div class="product">
							<div class="product-image">
								<a href="#"><img alt="Shop product image!"
									src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
								<a href="#"><img alt="Shop product image!"
									src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
								<!-- <span class="product-wishlist">
										<a href="#"><i class="fa fa-heart"></i></a>
									</span> -->
								<div class="product-overlay">
									<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
										View</a>
								</div>
							</div>
							<div class="product-description">
								<div class="product-category">vegetables</div>
								<div class="product-title">
									<h3>
										<a href="#">[유기농]멜론 </a>
									</h3>
								</div>
								<div class="product-price">
									<ins>10,000</ins>
								</div>
								<!-- <div class="product-rate">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
									</div> -->
								<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
									</div> -->
							</div>
						</div>
						<div class="product">
							<div class="product-image">
								<a href="#"><img alt="Shop product image!"
									src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
								<a href="#"><img alt="Shop product image!"
									src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
								<!-- <span class="product-wishlist">
										<a href="#"><i class="fa fa-heart"></i></a>
									</span> -->
								<div class="product-overlay">
									<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
										View</a>
								</div>
							</div>
							<div class="product-description">
								<div class="product-category">vegetables</div>
								<div class="product-title">
									<h3>
										<a href="#">[유기농]멜론 </a>
									</h3>
								</div>
								<div class="product-price">
									<ins>10,000</ins>
								</div>
								<!-- <div class="product-rate">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
									</div> -->
								<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
									</div> -->
							</div>
						</div>
					</div>
					<!--end: Shop products Carousel -->
				</div>
			</div>
		</div>
		</section>
		<!-- end: container -->

		<section class="background-grey">
			<!-- container -->
			<div class="container">
				<div class="row">
					<div class="content col-lg-12">
						<!--Shop products Carousel -->
						<h2 class="mb-4">간식</h2>
						<div class="carousel" data-items="3">
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<span class="product-new">NEW</span>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<span class="product-hot">HOT</span>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
									<a href="#"><i class="fa fa-heart"></i></a>
								</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-half-o"></i>
								</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
								</div> -->
								</div>
							</div>
						</div>
						<!--end: Shop products Carousel -->
					</div>
				</div>
			</div>
		</section>
			<!-- end: container -->
		<section>
			<!-- container -->
			<div class="container">
				<div class="row">
					<div class="content col-lg-12 p-t-30 p-b-50">
						<!--Shop products Carousel -->
						<h2 class="mb-4">채소</h2>
						<div class="carousel" data-items="3">
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<span class="product-new">NEW</span>
									<!-- <span class="product-wishlist">
										<a href="#"><i class="fa fa-heart"></i></a>
									</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
									</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
									</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
										<a href="#"><i class="fa fa-heart"></i></a>
									</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
									</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
									</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<span class="product-hot">HOT</span>
									<!-- <span class="product-wishlist">
										<a href="#"><i class="fa fa-heart"></i></a>
									</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
									</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
									</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
										<a href="#"><i class="fa fa-heart"></i></a>
									</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
									</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
									</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
										<a href="#"><i class="fa fa-heart"></i></a>
									</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
									</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
									</div> -->
								</div>
							</div>
							<div class="product">
								<div class="product-image">
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1598347035891l0.jpg"></a>
									<a href="#"><img alt="Shop product image!"
										src="https://img-cf.kurly.com/shop/data/goods/1631264944586l0.jpg"></a>
									<!-- <span class="product-wishlist">
										<a href="#"><i class="fa fa-heart"></i></a>
									</span> -->
									<div class="product-overlay">
										<a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick
											View</a>
									</div>
								</div>
								<div class="product-description">
									<div class="product-category">vegetables</div>
									<div class="product-title">
										<h3>
											<a href="#">[유기농]멜론 </a>
										</h3>
									</div>
									<div class="product-price">
										<ins>10,000</ins>
									</div>
									<!-- <div class="product-rate">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star-half-o"></i>
									</div> -->
									<!-- <div class="product-reviews"><a href="#">3 customer reviews</a>
									</div> -->
								</div>
							</div>
						</div>
						<!--end: Shop products Carousel -->
					</div>
				</div>
			</div>
			<!-- end: container -->
		</section>
		<!-- end: Page Content -->





	</div>
	<!-- end: Body Inner -->



	<jsp:include page="footer.jsp" />
	<!-- Scroll top -->
	<a id="scrollTop"><i class="icon-chevron-up"></i><i
		class="icon-chevron-up"></i></a>
	<!--Plugins-->
	<script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/JS/functions.js"></script>

</body>
</html>