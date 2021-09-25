<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link href="${pageContext.request.contextPath }/CSS/won.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
</head>
<script src="https://kit.fontawesome.com/ccbdf9af0c.js"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<body>
	<jsp:include page="header.jsp" />
	<!-- 장바구니 목록 -->
	<div class="body-inner">
	<!-- Page title -->
		<section id="page-title">
			<div class="container">
				<div class="page-title">
					<h1>장바구니</h1>
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
		<section id="page-content" class="sidebar-right">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 w-m-t-50">
						<div class="shopping-cart">
						<hr>
							<table class="" style="width:100%; text-align:center;">
								<tr>
									<th style="width:5%; text-align:center"><input type="checkbox" name="agree" class="basketChk" /></th>
									<td style="width:10%;"><img
										src="https://img-cf.kurly.com/shop/data/goods/1613956699720i0.jpg"
										class="basketImg"></td>
									<td style="width:40%; min-width:100px;" class="basketT"><a class="basketSubName" href="#">상품이름(SELECT
											st_name WHERE st_uid)</a></td>
									<td style="width:20%; min-width:130px;">
										<div class="cart-product-quantity">
											<div class="quantity m-l-5">
												<input type="button" class="minus" value="-"
													id="decreaseQuantity"> <input type="text"
													class="qty" value="1" id="productStock"> <input
													type="button" class="plus" value="+" id="increasQuantity">
											</div>
										</div>
									</td>
									<td style="width:20%; min-width:60px;" class="basketT">가격</td>
								</tr>
								<tr>
									<th><input type="checkbox" name="agree" class="basketChk" /></th>
									<td class=""><img
										src="https://img-cf.kurly.com/shop/data/goods/1613956699720i0.jpg"
										class="basketImg"></td>
									<td class="basketT"><a class="basketSubName" href="#">상품이름(SELECT
											st_name WHERE st_uid)</a></td>
									<td class="">
										<div class="cart-product-quantity">
											<div class="quantity m-l-5">
												<input type="button" class="minus" value="-"
													id="decreaseQuantity"> <input type="text"
													class="qty" value="1" id="productStock"> <input
													type="button" class="plus" value="+" id="increasQuantity">
											</div>
										</div>
									</td>
									<td class="basketT">가격</td>
								</tr>
								<tr>
									<th><input type="checkbox" name="agree" class="basketChk" /></th>
									<td class=""><img
										src="https://img-cf.kurly.com/shop/data/goods/1613956699720i0.jpg"
										class="basketImg"></td>
									<td class="basketT"><a class="basketSubName" href="#">상품이름(SELECT
											st_name WHERE st_uid)</a></td>
									<td class="">
										<div class="cart-product-quantity">
											<div class="quantity m-l-5">
												<input type="button" class="minus" value="-"
													id="decreaseQuantity"> <input type="text"
													class="qty" value="1" id="productStock"> <input
													type="button" class="plus" value="+" id="increasQuantity">
											</div>
										</div>
									</td>
									<td class="basketT">가격</td>
								</tr>
							</table>
							<hr>
							<br>
							<table>
								<tr>
									<th><input type="checkbox" name="agree_all" id="agree_all"
										class="basketChk" /></th>
									<td class="basketT2">전체선택(3/3)</td>
									<td>|</td>
									<td class="basketT2"><div id="selectDelete">선택삭제</div></td>
								</tr>
							</table>
						</div>
					</div>

					<!-- 배송지 및 상품금액 -->

					<div class="sidebar col-lg-3 m-t-30">
						<h3>
							<i class="fas fa-map-marker-alt"></i> 배송지
						</h3>
						<h4>서울특별시 강남구 역삼동</h4>
						<br> <input type="button" class="btn w-100" value="배송지변경" />
									<hr>
					<div id="">
						<table style="width:100%;">
							<tr>
								<th class="w-50">상품금액</th>
								<td class="w-50 text-right">1000 원</td>
							</tr>
							<tr>
								<th class="w-50">배송비</th>
								<td class="w-50 text-right">3000 원</td>
							</tr>
						</table>
						<hr>
						<table style="width:100%;">
							<tr>
								<th class="w-50">결제예정금액</th>
								<td class="w-50 text-right">4000 원</td>
							</tr>
						</table>
					</div>
					<br> <br>
					<div id="orderBtn1">
						<p>상품을 선택해주세요</p>
					</div>
					<div>
						<input class="btn w-100"type="button" value="주문하기" id="orderBtn2" />
					</div>
					</div>
				</div>
			</div>

		</section>
		
	</div>
	<!--  --------------------------------------------------------------------------- -->


	<script src="${pageContext.request.contextPath }/JS/jaeuk.js"></script>
	<script src="${pageContext.request.contextPath }/JS/won.js"></script>
	<script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/JS/functions.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>