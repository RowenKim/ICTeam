<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<body>
	<jsp:include page="header.jsp" />
	<!-- Body Inner -->
	<div class="body-inner">

		<!-- Page title -->
		<section id="page-title">
			<div class="container">
				<div class="page-title">
					<h1>주문하기</h1>

				</div>

			</div>
		</section>
		<!-- end: Page title -->
		<!-- SHOP CHECKOUT -->
		<section id="shop-checkout">
			<div class="container">
				<div class="shop-cart">
					<form method="post" class="sep-top-md">
						<div class="col-lg-12 no-padding">
							<div class="col-lg-12">
								<h4 class="upper">주문자 정보</h4>
							</div>
							<hr>
							<div class="row">
								<div class="col-lg-3 form-group">
									<h5>보내는 분</h5>
								</div>
								<div class="col-lg-9 form-group">
									<h5>김종원</h5>
								</div>
								<div class="col-lg-3 form-group">
									<h5>휴대폰</h5>
								</div>
								<div class="col-lg-9 form-group">
									<h5>010-1234-3234</h5>
								</div>
								<div class="col-lg-3 form-group">
									<h5>이메일</h5>
								</div>
								<div class="col-lg-9 form-group">
									<h5>bha@naver.com</h5>
								</div>
								<div class="col-lg-12 form-group">
									<h6>이메일을 통해 주문처리과정을 보내드립니다. 정보 변경은 마이페이지 > 개인정보 수정메뉴에서
										가능합니다.</h6>
								</div>
							</div>
							<div class="space"></div>
							<div class="col-lg-12">
								<h4 class="upper">배송 정보</h4>
								<h6>배송 휴무일: 택배배송(일요일)</h6>
							</div>
							<hr>

							<div class="row">
								<div class="col-lg-3 form-group">
									<h5>배송지</h5>
								</div>
								<div class="col-lg-9 form-group">
									<button class="btn">주소 검색</button>
									<input type="text" class="form-control" placeholder="" value="">
									<input type="text" class="form-control"
										placeholder="상세 주소를 입력해주세요" value="">
								</div>
								<div class="col-lg-3 form-group">
									<h5>배송 요청사항</h5>
								</div>
								<div class="col-lg-9 form-group">
									<input type="text" class="form-control"
										placeholder="Company Name" value="">
								</div>
							</div>

							<div class="space"></div>
							<div class="col-lg-12">
								<h4 class="upper">결제 수단</h4>
							</div>
							<hr>
							<div class="row">
								<div class="col-lg-3 form-group">
									<h5>일반 결제</h5>
								</div>
								<div class="col-lg-9 form-group">
									<h5>신용카드</h5>
								</div>
								<div class="col-lg-3 form-group">
									<h5>무통장 입금</h5>
								</div>
								<div class="col-lg-9 form-group">
									<h5>010-1234-3234</h5>
								</div>
								
							</div>
							
						</div>
					</form>
					<div class="seperator">
						<i style="color:#5f0080;" class="fa fa-credit-card"></i>
					</div>
					<div class="row">				
						<div class="col-lg-12">
							<div class="row">
							<div class="col-lg-3">
							</div>
								<div class="col-lg-6">
									<div class="table-responsive">
										<h4>결제 금액</h4>
										<table class="table">
											<tbody>
												<tr>
													<td class="cart-product-name"><strong>주문금액</strong></td>
													<td class="cart-product-name text-right"><span
														class="amount">$125.96</span></td>
												</tr>
												<tr>
													<td class="cart-product-name"><strong>배송비</strong>
													</td>
													<td class="cart-product-name  text-right"><span
														class="amount">무료 배송</span></td>
												</tr>
												<tr>
													<td class="cart-product-name"><strong>최종결제금액</strong></td>
													<td class="cart-product-name text-right"><span
														class="amount color lead"><strong>$100.76</strong></span>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- end: SHOP CHECKOUT -->
	
	</div>
	<!-- end: Body Inner -->







	<script src="${pageContext.request.contextPath }/JS/jaeuk.js"></script>
	<script src="${pageContext.request.contextPath }/JS/won.js"></script>
	<script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/JS/functions.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>