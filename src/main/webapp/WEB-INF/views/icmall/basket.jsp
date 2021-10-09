<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>function chkDelete(uid){
	// 삭제 여부, 다시 확인 하고 진행하기
	var r = confirm("삭제하시겠습니까?");
	
	if(r){
		location.href = 'deleteOk?uid=' + uid;
	}
} // chkDelete
</script>

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
						<% int i = 0; %>
							<table class="" style="width:100%; text-align:center;">
								<c:forEach var="list" items="${list }">
								<% i++; %>
								<tr>
								<form action="insertOrderOk" method="get">
									<th style="width:5%; text-align:center">
										<input onclick="" type="checkbox" name="agree" class="basketChk" /></th>
									<td style="width:10%;"><img
										src="${list.b_img }"
										class="basketImg"></td>
									<td style="width:30%; min-width:100px;" class="basketT"><a class="basketSubName" href="#">${list.b_proName }</a></td>
									<td style="width:30%; min-width:130px;">
										<div class="cart-product-quantity">
											<div class="quantity m-l-5 updown">
												<input type="button" name="minus" class="minus decreaseQuantity" value="-">
												<input type="text"
													class="qty productStock" name="o_qty" style="min-width:50px !important;" value="${list.b_qty }"> 
												<input
													type="button" name="plus" class="plus increasQuantity" value="+">
											</div>
											
										</div>
									</td>
									<td style="width:20%; min-width:60px;" class="basketT">${list.b_price } 원</td>
								
									<td>
									<input type="hidden" style="display:none;" name="o_price" value="${list.b_price }">
									<input type="hidden" style="display:none;" name="o_name" value="${list.b_proName }">
									<input type="hidden" style="display:none;" name="m_uid" value="${list.m_uid }">
									<input type="hidden" style="display:none;" name="b_uid" value="${list.b_uid }">
									<input style="display:none;" class="btn w-100" type="submit" id="insertOrder"/>
										<div id="deleteOk" onclick="chkDelete(${list.b_uid })"></div>
									</td>
									</form>
								</tr>
								</c:forEach>
							</table>
							<hr>
							<br>
							<table>
								<tr>
									<th><input type="checkbox" name="agree_all" id="agree_all"
										class="basketChk" /></th>
									<td class="basketT2">전체선택(3/3)</td>
									<td>|</td>
									<td class="basketT2"><div id="selectDelete" style="">선택삭제</div></td>
								</tr>
							</table>
						</div>
					</div>
					

					<!-- 배송지 및 상품금액 -->

					<div class="sidebar col-lg-3 m-t-30">
						<!-- <h3>
							<i class="fas fa-map-marker-alt"></i> 배송지
						</h3>
						<h4>서울특별시 강남구 역삼동</h4>
						<br> <input type="button" class="btn w-100" value="배송지변경" />
									<hr> -->
					<div id="">
						<table style="width:100%;">
						
							<tr>
								<th class="w-50">상품금액</th>
								<td class="w-50 text-right total_sum"><input name="total" value="0" style="border:none; text-align:right; width:60px; padding:0;"> 원</td>
							</tr>
							<tr>
								<th class="w-50">배송비</th>
								<td class="w-50 text-right">0 원</td>
							</tr>
						</table>
						<hr>
						<table style="width:100%;">
						
							<tr>
								<th class="w-50">결제예정금액</th>
								<td class="w-50 text-right">
								<input name="total" value="0" style="border:none; text-align:right; width:60px; padding:0;">
								
								원
								
								</td>
							</tr>
						</table>
					</div>
					<br> <br>
					<div id="orderBtn1">
						<p>상품을 선택해주세요</p>
					</div>
					<div>
						<input class="btn w-100"type="submit" value="주문하기" id="orderBtn2" />
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