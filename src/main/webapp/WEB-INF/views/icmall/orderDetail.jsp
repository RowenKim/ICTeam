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
<title>주문 내역 상세</title>
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

		<!-- Page title -->
		<section id="page-title">
			<div class="container">
				<div class="page-title">
					<h1>주문내역 상세 페이지</h1>
					<!--  <span>Shop 2 columns version</span> -->
				</div>
				<!--  <div class="breadcrumb">
                    <ul>
                        <li><a href="#">Home</a>
                        </li>
                        <li><a href="#">Shop</a>
                        </li>
                        <li class="active"><a href="#">2 columns version</a>
                        </li>
                    </ul>
                </div> -->
			</div>
		</section>
		<!-- end: Page title -->
		<!-- Shop products -->
		<section>
			<div class="container">
				<!--Product list-->
				<div class="shop">
					<h2>주문 내역 상세</h2>
					<h5>주문번호 161329394753</h5>

					<!-- table -->
					<div class="shop-cart">
						<div class="">
							<table class="table m-b-0" style="border-color: #fff !important;">
								<tbody>
									<tr>
										<!-- <td class="cart-product-remove"><a href="#"><i
												class="fa fa-times"></i></a></td> -->
										<td><input type="checkbox" name="agree" class="basketChk" /></td>
										<td class="cart-product-thumbnail" style="width: 10%;"><a
											href="#"> <img
												src="https://img-cf.kurly.com/shop/data/goods/1497429997949l0.jpg"
												alt="steak">
										</a></td>
										<td class="cart-product-description" style="width: 70%;">
											[KF365] 아보카도 1개<br> 4,000원 | 2개
										</td>
										<td class="cart-product-price text-center" style="min-width:100px;">배송완료</td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>

					<!-- end: table -->
					<!-- table -->
					<div class="shop-cart">
						<div class="">
							<table class="table m-b-0" style="border-color: #fff !important;">
								<tbody>
									<tr>
										<!-- <td class="cart-product-remove"><a href="#"><i
												class="fa fa-times"></i></a></td> -->
										<td><input type="checkbox" name="agree" class="basketChk" /></td>
										<td class="cart-product-thumbnail" style="width: 10%;"><a
											href="#"> <img
												src="https://img-cf.kurly.com/shop/data/goods/1497429997949l0.jpg"
												alt="steak">
										</a></td>
										<td class="cart-product-description" style="width: 70%;">
											[KF365] 아보카도 1개<br> 4,000원 | 2개
										</td>
										<td class="cart-product-price text-center" style="min-width:100px;">배송완료</td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>

					<!-- end: table -->
					<hr>
					<!-- end:icon2 -->
					<div class="row m-t-60">
						<div class="col-lg-12">
							<div class="form-group text-center">
								<button class="btn" type="submit">선택상품주문취소</button>
								<button class="btn" type="submit">전체상품주문취소</button>
							</div>
						</div>
					</div>
				</div>
				<!--end: container-->

			</div>

		</section>
		<!-- end: Shop products -->


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