<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
				style="background-image: url('https://cdn.pixabay.com/photo/2018/09/14/11/12/food-3676796_1280.jpg');">
				<div class="bg-overlay"></div>
				<div class="container">
					<div class="slide-captions text-center text-light">
						<!-- Captions -->
						<span class="strong"><a href="#" class="business"><span
								class="business">정육 계란</span></a> </span>
						<h1>넉넉하게 준비하세요</h1>
						<button type="button" class="btn index-button">
							<span class="btn-label"><i class="fa fa-check"></i></span><a class="" href="meat">더
							알아보기</a>
						</button>
						<button type="button" class="btn index-button"><a class="" href="meat">구매하기</a></button>
						<!-- end: Captions -->
					</div>
				</div>
			</div>
			<!-- end: Slide 1 -->

			<!-- Slide 2 -->
			<div class="slide background-image"
				style="background-image: url('https://cdn.pixabay.com/photo/2017/06/06/22/46/mediterranean-cuisine-2378758_1280.jpg');">
				<div class="bg-overlay"></div>
				<div class="container">
					<div class="slide-captions text-left text-light">
						<!-- Captions -->
						<span class="strong"><a href="#" class="business"><span
								class="business">신선한 야채</span></a> </span>
						<h1>하루 배송으로 신선한 야채를</h1>
						<button type="button" class="btn index-button">
							<span class="btn-label"><i class="fa fa-check"></i></span>
							<a class="" href="vegetable">더
							알아보기</a>
						</button>
						<button type="button" class="btn index-button"><a class="" href="vegetable">구매하기</a></button>
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
						<h2 class="mb-4">정육</h2>
						<div class="carousel" data-items="4">
							<c:forEach var="list1" items="${listmeat }" begin="8" end="14">
								<!-- porduct start -->
								<div class="product">
									<div class="product-image index_img">
										<a href="stockDetail?uid=${list1.pro_uid }">${list1.pro_img}</a>
									</div>
									<div class="product-description">

										<div class="product-title">
											<h3 style="height: 180px;">
												<a href="stockDetail?uid=${list1.pro_uid }">${list1.pro_name}</a>
											</h3>
										</div>
										<div class="product-price" style="">
											<ins>
												<fmt:formatNumber value="${list1.pro_price}" pattern="#,###" />
											</ins>
										</div>
									</div>
								</div>
								<!-- product:end -->
							</c:forEach>
						</div>
						<!--end: Shop products Carousel -->
					</div>
				</div>

			</div>
		</section>
		<!-- 	end:container -->

		<section>
			<!-- container -->
			<div class="container">
				<div class="row">
					<div class="content col-lg-12 p-b-50">
						<!--Shop products Carousel -->
						<h2 class="mb-4">채소</h2>
						<div class="carousel" data-items="4">
							<c:forEach var="list" items="${listvegetable }" begin="4" end="10">
								<!-- porduct start -->
								<div class="product">
									<div class="product-image index_img">
										<a href="stockDetail?uid=${list.pro_uid }">${list.pro_img}</a>
									</div>
									<div class="product-description">

										<div class="product-title">
											<h3 style="height: 180px;">
												<a href="stockDetail?uid=${list.pro_uid }">${list.pro_name}</a>
											</h3>
										</div>
										<div class="product-price" style="">
											<ins>
												<fmt:formatNumber value="${list.pro_price}" pattern="#,###" />
											</ins>
										</div>
									</div>
								</div>
								<!-- product:end -->
							</c:forEach>
						</div>
						<!--end: Shop products Carousel -->
					</div>
				</div>
			</div>
			<!-- 	end:container -->
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
					<div class="content col-lg-12 p-b-50">
						<!--Shop products Carousel -->
						<h2 class="mb-4">과일</h2>
						<div class="carousel" data-items="4">
							<c:forEach var="list1" items="${listfruit }" begin="8" end="14">
								<!-- porduct start -->
								<div class="product">
									<div class="product-image index_img">
										<a href="stockDetail?uid=${list1.pro_uid }">${list1.pro_img}</a>
									</div>
									<div class="product-description">

										<div class="product-title">
											<h3 style="height: 180px;">
												<a href="stockDetail?uid=${list1.pro_uid }">${list1.pro_name}</a>
											</h3>
										</div>
										<div class="product-price" style="">
											<ins>
												<fmt:formatNumber value="${list1.pro_price}" pattern="#,###" />
											</ins>
										</div>
									</div>
								</div>
								<!-- product:end -->
							</c:forEach>
						</div>
						<!--end: Shop products Carousel -->
					</div>
				</div>

			</div>
			<!-- 	end:container -->
		</section>
		<!-- end: container -->


		<section class="background-grey">
			<!-- container -->
			<div class="container">
				<div class="row">
					<div class="content col-lg-12 p-b-50">
						<!--Shop products Carousel -->
						<h2 class="mb-4">간식</h2>
						<div class="carousel" data-items="4">
							<c:forEach var="list1" items="${listsnack }" begin="8" end="14">
								<!-- porduct start -->
								<div class="product">
									<div class="product-image index_img">
										<a href="stockDetail?uid=${list1.pro_uid }">${list1.pro_img}</a>
									</div>
									<div class="product-description">

										<div class="product-title">
											<h3 style="height: 180px;">
												<a href="stockDetail?uid=${list1.pro_uid }">${list1.pro_name}</a>
											</h3>
										</div>
										<div class="product-price" style="">
											<ins>
												<fmt:formatNumber value="${list1.pro_price}" pattern="#,###" />
											</ins>
										</div>
									</div>
								</div>
								<!-- product:end -->
							</c:forEach>
						</div>
						<!--end: Shop products Carousel -->
					</div>
				</div>

			</div>
			<!-- 	end:container -->
		</section>
		<!-- end: container -->
		<section>
			<!-- container -->
			<div class="container">
				<div class="row">
					<div class="content col-lg-12 p-b-50">
						<!--Shop products Carousel -->
						<h2 class="mb-4">건강식품</h2>
						<div class="carousel" data-items="4">
							<c:forEach var="list1" items="${listhealth }" begin="8" end="14">
								<!-- porduct start -->
								<div class="product">
									<div class="product-image index_img">
										<a href="stockDetail?uid=${list1.pro_uid }">${list1.pro_img}</a>
									</div>
									<div class="product-description">

										<div class="product-title">
											<h3 style="height: 180px;">
												<a href="stockDetail?uid=${list1.pro_uid }">${list1.pro_name}</a>
											</h3>
										</div>
										<div class="product-price" style="">
											<ins>
												<fmt:formatNumber value="${list1.pro_price}" pattern="#,###" />
											</ins>
										</div>
									</div>
								</div>
								<!-- product:end -->
							</c:forEach>
						</div>
						<!--end: Shop products Carousel -->
					</div>
				</div>

			</div>
			<!-- 	end:container -->
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