<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>주문하기</title>
<link href="${pageContext.request.contextPath }/CSS/won.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/seoha.css"
	type="text/css" rel="stylesheet">
</head>
<script src="https://kit.fontawesome.com/ccbdf9af0c.js"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function chkOrder() {
		// 삭제 여부, 다시 확인 하고 진행하기
		var r = confirm("주문하시겠습니까?");

		if (r) {

			return true;
		} else {
			return false;
		}
	} // chkDelete
</script>



<body>
	<jsp:include page="header.jsp" />
	<!-- Body Inner -->
	<div class="body-inner">
		<form name="frm1" action="insertCheckOutOk" method="get">

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
									<h5>${dto.m_name }</h5>
								</div>
								<div class="col-lg-3 form-group">
									<h5>휴대폰</h5>
								</div>
								<div class="col-lg-9 form-group">
									<h5>${dto.m_phone }</h5>
								</div>
								<div class="col-lg-3 form-group">
									<h5>이메일</h5>
								</div>
								<div class="col-lg-9 form-group">
									<h5>${dto.m_mail }</h5>
								</div>
								<div class="col-lg-12 form-group">
									<h6>이메일을 통해 주문처리과정을 보내드립니다. 정보 변경은 마이페이지 > 개인정보 수정메뉴에서
										가능합니다.</h6>
								</div>
							</div>
							<div class="space"></div>

							<div class="col-lg-12">
								<h4 class="upper">주문 정보</h4>
							</div>
							<hr>

							<c:forEach var="list" items="${listOrder }">
								<div class="row">
									<div class="col-lg-3 form-group">
										<h5>상품 이름</h5>
									</div>
									<div class="col-lg-9 form-group">
										<h5>${list.o_name }</h5>
									</div>
									<div class="col-lg-3 form-group">
										<h5>상품 이미지</h5>
									</div>
									<div class="col-lg-9 form-group img_height">${list.o_img }
									</div>
									<div class="col-lg-3 form-group">
										<h5>상품 가격</h5>
									</div>
									<div class="col-lg-9 form-group">
										<h5>
											<fmt:formatNumber value="${list.o_price }" pattern="#,###" />
										</h5>
									</div>
									<div class="col-lg-3 form-group">
										<h5>상품 수량</h5>
									</div>
									<div class="col-lg-9 form-group">
										<h5>${list.o_qty }</h5>
									</div>
								</div>
								<hr>
								<input type="hidden" style="display: none;" name="p_name"
									value="${list.o_name }">
								<input type="hidden" style="display: none;" name="p_qty"
									value="${list.o_qty }">
								<textarea style="display:none;" name="p_img">${list.o_img }</textarea>
								<input type="hidden" style="display: none;" name="p_price"
									value="${list.o_price }">
								<input type="hidden" style="display: none;" name="m_uid"
									value="${list.m_uid }">
								<input type="hidden" style="display: none;" name="o_uid"
									value="${list.o_uid }">

								<c:set var="sum" value="${sum + (list.o_price * list.o_qty)}" />

							</c:forEach>
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
									<a class="btn" data-target="#modal-3" data-toggle="modal"
										href="#">주소 검색</a> <input type="text" name="p_addr1"
										class="form-control addr1"> <input type="text"
										name="p_addr2" class="form-control addr2"
										placeholder="상세 주소를 입력해주세요" value="">
								</div>
								<div class="col-lg-3 form-group">
									<h5>휴대폰 번호</h5>
								</div>
								<div class="col-lg-9 form-group">


									<input type="text" name="p_phone" class="form-control phone"
										placeholder="" value="">

								</div>
								<div class="col-lg-3 form-group">
									<h5>배송 요청사항</h5>
								</div>
								<div class="col-lg-9 form-group">
									<input type="text" class="form-control shippingtext"
										name="p_message" placeholder="배송 요청사항을 적어주세요" value="">
								</div>
							</div>

							<div class="space"></div>
							<div class="col-lg-12">
								<h4 class="upper">결제 수단</h4>
							</div>
							<hr>
							<div class="row col-lg-12">
								<div class="col-lg-3 form-group">
									<h5>일반 결제</h5>
								</div>
								<div class="col-lg-9 form-group">
									<input onclick="" value="신용카드" type="radio" name="agree"
										class="basketChk" style="float: left; margin: 6px 5px 0 0;" />
									<h5>신용카드</h5>

								</div>
								<div class="col-lg-3 form-group">

									<h5>무통장 입금</h5>

								</div>
								<div class="col-lg-9 form-group">
									<input onclick="" value="무통장 입금" type="radio" name="agree"
										class="basketChk" style="float: left; margin: 6px 5px 0 0;" />
									<h5>계좌이체</h5>

								</div>

							</div>
							<input name="p_way" value="" style="display: none;" class="p_way" />
						</div>
						<div class="seperator">
							<i style="color: #5f0080;" class="fa fa-credit-card"></i>
						</div>
						<div class="row col-lg-12">
							<div class="col-lg-12">
								<div class="row">
									<div class="col-lg-3"></div>
									<div class="col-lg-6">
										<div class="table-responsive">
											<h4>결제 금액</h4>
											<table class="table">
												<tbody>
													<tr>
														<td class="cart-product-name"><strong>주문금액</strong></td>
														<td class="cart-product-name text-right"><fmt:formatNumber
																value="${sum }" pattern="#,###" /></td>
													</tr>
													<tr>
														<td class="cart-product-name"><strong>배송비</strong></td>
														<td class="cart-product-name  text-right"><span
															class="amount">무료 배송</span></td>
													</tr>
													<tr>
														<td class="cart-product-name"><strong>최종결제금액</strong></td>
														<td class="cart-product-name text-right"><span
															class="amount color lead"><fmt:formatNumber
																	value="${sum }" pattern="#,###" /></span></td>
													</tr>
												</tbody>
											</table>
											<div class="text-center">
												<input type="submit" class="btn" value="결제"
													onclick="javascript: form.action='/icmall/user/insertCheckOutOK';" />
												<input class="btn" type="submit" value="결제취소"
													onclick="javascript: form.action='/icmall/user/deleteOrderOk';" />
												<!-- <input type="submit" id="insertPay" onsubmit="btn_click(insertCheckOutOK)"  class="btn"
												value="결제"> -->

												<!-- onsubmit="btn_click(insertCheckOutOK)"  -->
												<!-- <input type="submit" id="deletePay" onsubmit="btn_click(deleteOrderOk)"  class="btn"
												value="결제취소"> -->
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-3"></div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- end: SHOP CHECKOUT -->
		</form>
	</div>
	<!-- end: Body Inner -->







	<script src="${pageContext.request.contextPath }/JS/seoha.js"></script>

	<script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/JS/functions.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>