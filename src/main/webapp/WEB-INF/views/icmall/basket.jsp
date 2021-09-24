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
<script src="https://kit.fontawesome.com/ccbdf9af0c.js" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<body>
<jsp:include page="header.jsp"/>
<!-- 장바구니 목록 -->
<section id="sectionTest" >
	<div class="basketTest">
			<div class="col-lg-18">
				<div class="basketTest" id="basketDiv">
					<hr>
					<table class="sep-60">
						<tr>
							<th><input type="checkbox" name="agree" class="basketChk"/></th>
							<td class="basketT"><img src="https://img-cf.kurly.com/shop/data/goods/1613956699720i0.jpg" class="basketImg"></th>
							<td class="basketT"><a class="basketSubName" href="#">상품이름(SELECT st_name WHERE st_uid)</a></td>
							<td class="basketT">
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
							<th><input type="checkbox" name="agree" class="basketChk"/></th>
							<td class="basketT"><img src="https://img-cf.kurly.com/shop/data/goods/1613956699720i0.jpg" class="basketImg"></th>
							<td class="basketT"><a class="basketSubName" href="#">상품이름(SELECT st_name WHERE st_uid)</a></td>
							<td class="basketT">
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
							<th><input type="checkbox" name="agree" class="basketChk"/></th>
							<td class="basketT"><img src="https://img-cf.kurly.com/shop/data/goods/1613956699720i0.jpg" class="basketImg"></th>
							<td class="basketT"><a class="basketSubName" href="#">상품이름(SELECT st_name WHERE st_uid)</a></td>
							<td class="basketT">
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
							<th><input type="checkbox" name="agree_all" id="agree_all" class="basketChk"/></th>
							<td class="basketT2">전체선택(3/3)</td>
							<td>|</td>
							<td class="basketT2"><div id="selectDelete">선택삭제</div></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	<!-- 배송지 및 상품금액 -->
	<div class="basketTest">
			<div id="adressDiv">
				<div class="col-lg-12">
					<h3><i class="fas fa-map-marker-alt"></i> 배송지</h3>
					<h4>서울특별시 강남구 역삼동 </h4>
					<br>
					<input type="button" class="adrBtn" value="배송지변경"/>	
				</div>
			<hr>
				<div id="paymentDiv">
					<table>
						<tr>
							<th>상품금액</th>
							<td>1000</td>
						</tr>
						<tr>
							<th>배송비</th>
							<td>3000</td>
						</tr>
					</table>		
					<hr>
					<table>
						<tr>
							<th>결제예정금액</th>
							<td>4000</td>
						</tr>
					</table>	
				</div>
				<br><br>
				<div id="orderBtn1">
					<p>상품을 선택해주세요</p>
				</div>
				<div>
					<input type="button" value="주문하기" id="orderBtn2"/>
				</div>
		</div>
	</div>
</section>
<!--  --------------------------------------------------------------------------- -->


<br><br><br><br><br>
<script src="${pageContext.request.contextPath }/JS/jaeuk.js"></script>
<script src="${pageContext.request.contextPath }/JS/won.js"></script>
<script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
<script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
<script src="${pageContext.request.contextPath }/JS/functions.js"></script>
<jsp:include page="footer.jsp" />
</body>
</html>