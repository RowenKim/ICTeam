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
<title>주문내역페이지</title>
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
					<h1>주문내역 페이지</h1>
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
					<h2>주문 내역</h2>
					<hr>
					<!-- table -->
					<div class="shop-cart">
						<h6>2021.02.18(23시 52분)</h6>
						<div class="">
							<table class="table table-bordered td-b-n">
								<thead>
									<tr>
										<th class="cart-product-name" colspan="3">[KF365]아보카도 1개
											외 2건 <a style="color: #5f0080" href="#"><i
												style="float: right;" class="m-t-5 fa fa-angle-right"></i></a>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<!-- <td class="cart-product-remove"><a href="#"><i
												class="fa fa-times"></i></a></td> -->
										<td class="cart-product-thumbnail" style="width: 10%;"
											rowspan="3"><a href="#"> <img
												src="https://img-cf.kurly.com/shop/data/goods/1497429997949l0.jpg"
												alt="steak">
										</a></td>
										<td class="cart-product-description" style="width: 10%;">
											<p>주문번호</p>
										</td>
										<td class="cart-product-price">16135456788532</td>
									</tr>
									<tr>
										<td class="cart-product-description">
											<p>결제금액</p>
										</td>
										<td class="cart-product-price">5,925원</td>
									</tr>
									<tr>
										<td class="cart-product-description">
											<p>주문상태</p>
										</td>
										<td class="cart-product-price">배송완료</td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>

					<!-- end: table -->
						<!-- table -->
					<div class="shop-cart">
						<h6>2021.02.18(23시 52분)</h6>
						<div class="">
							<table class="table table-bordered td-b-n">
								<thead>
									<tr>
										<th class="cart-product-name" colspan="3">[KF365]아보카도 1개
											외 2건 <a style="color: #5f0080" href="#"><i
												style="float: right;" class="m-t-5 fa fa-angle-right"></i></a>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<!-- <td class="cart-product-remove"><a href="#"><i
												class="fa fa-times"></i></a></td> -->
										<td class="cart-product-thumbnail" style="width: 10%;"
											rowspan="3"><a href="#"> <img
												src="https://img-cf.kurly.com/shop/data/goods/1497429997949l0.jpg"
												alt="steak">
										</a></td>
										<td class="cart-product-description" style="width: 10%;">
											<p>주문번호</p>
										</td>
										<td class="cart-product-price">16135456788532</td>
									</tr>
									<tr>
										<td class="cart-product-description">
											<p>결제금액</p>
										</td>
										<td class="cart-product-price">5,925원</td>
									</tr>
									<tr>
										<td class="cart-product-description">
											<p>주문상태</p>
										</td>
										<td class="cart-product-price">배송완료</td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>

					<!-- end: table -->
					<hr>
					<!-- Pagination -->
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#"><i
								class="fa fa-angle-left"></i></a></li>
						<li class="page-item active"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#"><i
								class="fa fa-angle-right"></i></a></li>
					</ul>
					<!-- end: Pagination -->
				</div>
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