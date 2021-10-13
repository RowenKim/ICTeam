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
					<c:forEach var="list" items="${listPay }">
						<%-- <c:forEach var="list1" items="${listShipping }"> --%>
						<div class="shop-cart">
							<h6>${list.p_date}</h6>
							<div class="">
								<table class="table table-bordered td-b-n">
									<thead>
										<tr>
											<th class="cart-product-name" colspan="3">${list.p_name}<a
												style="color: #5f0080"
												href="orderDetail?p_uid=${list.p_uid }"><i
													style="float: right;" class="m-t-5 fa fa-angle-right"></i></a>
											</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="sum" value="${(list.p_price * list.p_qty)}" />
										<tr>
											<!-- <td class="cart-product-remove"><a href="#"><i
												class="fa fa-times"></i></a></td> -->
											<td class="cart-product-thumbnail" style="width:20%;" rowspan="3">
											${list.p_img} "> </td>
											<td class="cart-product-description" style="width:20%;">
												<p>주문번호</p>
											</td>
											<td class="cart-product-price" style="width:60%;">${list.p_uid}</td>
										</tr>
										<tr>
											<td class="cart-product-description">
												<p>결제금액</p>
											</td>
											<td class="cart-product-price"><fmt:formatNumber
													value="${sum}" pattern="#,###" /></td>
										</tr>
										<tr>
											<td class="cart-product-description">
												<p>주문상태</p>
											</td>
											<td class="cart-product-price">${list.p_status }</td>
										</tr>
										<!-- <tr>
										<td class="cart-product-description">
											<p>배송상태</p>
										</td> -->
										<%-- 	<td class="cart-product-price">${list1.s_status }</td> --%>
										<!-- </tr> -->

									</tbody>
								</table>
							</div>
						</div>

						<!-- end: table -->
					</c:forEach>
					<%-- 	</c:forEach> --%>
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