<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
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
<script>
function chkSubmit(){
	

	alert("결제 취소하시겠습니까?")
	/*
    if (subject == "") {
        alert("제목은 반드시 작성해야 합니다");
        frm["subject"].focus();
        return false;
    }
	*/
    return true;
} // end chkSubmit()
</script>

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
					<h5>주문번호 ${listPay[0].p_uid }</h5>
					<input style="display:none;" name="p_uid" value="${listPay[0].p_uid }"/>

					<!-- table -->
					<div class="shop-cart">
						<div class="">
							<table class="table m-b-0" style="border-color: #fff !important;">
								<tbody>
									<tr>
										<!-- <td class="cart-product-remove"><a href="#"><i
												class="fa fa-times"></i></a></td> -->
										<!-- <td><input type="checkbox" name="agree" class="basketChk" /></td> -->
										<td rowspan="3" class="cart-product-thumbnail" style="width: 10%;"> ${listPay[0].p_img }
										</td>
										<td class="cart-product-description" style="width: 70%; padding-bottom:0 !important;">
											${listPay[0].p_name }
										</td>
										<td rowspan="3" class="cart-product-price text-center" style="min-width:100px;"> <input style="border:none;" value=${listPay[0].p_status }></td>
									</tr>
									<tr>
									<td class="cart-product-description" style="width: 70%; border-top:none; padding-top:0 !important; padding-bottom:0 !important;">
											<fmt:formatNumber value="${listPay[0].p_price }" pattern="#,###"/> 원 
										</td>
									</tr>
									<tr>
									<td class="cart-product-description" style="width: 70%; border-top:none; padding-top:0 !important">
											${listPay[0].p_qty } 개
										</td>
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
							<button class="btn white"><a style="color:#5f0080;" class="white" href="http://localhost:8080/icmall/user/orderList">주문내역 리스트</a></button>
							 <c:if test="${listPay[0].p_status eq '결제완료' }">
								<button onClick="location.href='updatePay?p_uid=${listPay[0].p_uid }'" type="submit" class="btn">상품주문취소</button>
							</c:if>	
							
						</div>
						</div>
					</div>
				</div>
				<!--end: container-->
				</form>

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
	<script src="${pageContext.request.contextPath }/JS/jaeuk.js"></script>

</body>
</html>