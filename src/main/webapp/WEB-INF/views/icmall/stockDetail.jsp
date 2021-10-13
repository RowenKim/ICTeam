<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%-- Core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>상품상세보기</title>
<link href="${pageContext.request.contextPath }/CSS/won.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
</head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

	function chkSubmit(r_uid){

		if (confirm("정말 삭제하시겠습니까?") == true){    //확인
				
			location.href='reviewDeleteOk?uid=' + r_uid
	
		}else{   //취소

		    return;

		}
		
	}
	
</script>
<body>
	<jsp:include page="header.jsp" />
	<hr>

	<section id="product-page" class="product-page p-b-0">
		<div class="container">
		<form action="putBasket" method="get" >
			<div class="product">
				<div class="row m-b-40">
					<div class="col-lg-5">
						<div class="product-image" id="product-image-test">
							<!-- 이미지파일 -->
							${list[0].pro_img }
						</div>
					</div>
					<div class="col-lg-7">
						<div class="product-description">
							<div class="product-title text-left">
								<h3>${list[0].pro_name }</h3>
							</div>
							<br> <br>
							<div>
								<h3 class="price">${list[0].pro_price }</h3>
							</div>
							<br>
							<!-- st_price 값을 가져오기 -->
							<hr>
							<br>
							<table>
								<tr>
									<th><h4>구매수량:</h4></th>
									<td class="sd_td">
										<div class="cart-product-quantity">
											<div class="quantity m-l-5">
											<input type="hidden" name="b_proName" value="${list[0].pro_name }"/>
											<input type="hidden" name="b_img" value='${list[0].pro_img }'/>
											<input type="hidden" name="b_price" value="${list[0].pro_price }"/>
											<input type="hidden" name="m_uid" value="${memList[0].m_uid }"/>
											<input type="hidden" name="pro_uid" value="${list[0].pro_uid }"/>
												<input type="button" class="minus" value="-"
													id="prodecreaseQuantity" > <input type="text"
													class="qty" value="1" id="productStock" name="b_qty"> <input
													type="button" class="plus" value="+" id="proincreasQuantity">
											</div>
										</div>
									</td>
								</tr>
							</table>
							<br>
							<hr>
						</div>
						<div id="sd_secPrice">
							<span>총 상품금액</span>:
							<div id="totalAccount">${list[0].pro_price }
							</div>
						</div>
						<!-- st_price와 productStock 곱하기 -->
						<br> <br> <br>
						<div class="col-lg-12">
							<button type="submit" style="width:100%;" class="btn" >
								<span><b>장바구니 담기</b></span>
							</button>
						</div>
					</div>
				</div>
			</div>
			</form>
			<br> <br> <br> <br>
			<!-- Product additional tabs -->
			<div id="info-nav-3items" class="row m-b-40">
				<div id="info-nav">
					<div>
						<a class="nav-info-mellon" href="#" id="info-explain">상품설명</a>
					</div>
					<div>
						<a class="nav-info-mellon" href="#" id="review-product">상품후기</a>
					</div>
					<div>
						<a class="nav-info-mellon" href="#" id="question-product">상품Q&A</a>
					</div>
				</div>
			</div>
			<br> <br>
			<div id="proInfoImg">
				<div class="product-image">
					<!-- 이미지파일 -->
					<iframe src="${list[0].pro_content }" style="height:1500px;"></iframe>
				<br>
				<br>
				<br>
				<br>
				<br>
				<div class="review">
					<!-- 후기 -->
					<div class="content">
						<h3>
							<b>PRODUCT REVIEW</b>
						</h3>
						<h4>
							상품에 대한 후기를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당
									게시판으로 이동될 수 있습니다.
						</h4>
						<table class="table">
							<tbody id="sc_table">
								<tr class="text-center">
									<th class="sep-10">번호</th>
									<th class="sep-15">작성자</th>
									<th class="sep-55">제목</th>
									<th class="sep-15">작성날짜</th>
								</tr>
							</tbody>
						</table>
						<c:forEach var="dto" items="${proqReviweList }" >	
						<div class="change1">
							<table class="table">
								<tbody>
									<tr style="text-align:center;">
										<th class="sep-10">${dto.r_uid } </th>
										<td class="sep-15">${memList[dto.m_uid - 1].m_name } </td>
										<td class="sep-55"><div class="text-left">${dto.r_title } </div></td>
										<td class="sep-15">${dto.r_date } </td>
									</tr>
								</tbody>
							</table>
								<div class="reviewContent" style="display:none;">
									<div>
										<b>${list[0].pro_name }</b>
									</div>
									${dto.r_content }
									<div class="form-group text-center">
					                  <button class="btn" type="submit" onClick="location.href='reviewUpdate?pro_uid=${list[0].pro_uid }&r_uid=${dto.r_uid }'">수정하기</button>
					                  <button class="btn" type="submit" onClick="chkSubmit(${dto.r_uid})">삭제하기</button>
					        		</div>	
								</div>
						</div>
						</c:forEach>
						 <!-- Pagination -->
		                <ul class="pagination">
		                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a></li>
		                    <li class="page-item"><a class="page-link" href="#">1</a></li>
		                    <li class="page-item"><a class="page-link" href="#">2</a></li>
		                    <li class="page-item active"><a class="page-link" href="#">3</a></li>
		                    <li class="page-item"><a class="page-link" href="#">4</a></li>
		                    <li class="page-item"><a class="page-link" href="#">5</a></li>
		                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
		                </ul>
		                <!-- end: Pagination -->
					</div>
				</div>
				<div class="form-group text-center">
                  <button class="btn" type="submit" onClick="location.href='stockReview?uid=${list[0].pro_uid }'">후기작성</button>
        		</div>	
				<br>
				<br>
				<br>

				<!-- 상품문의 -->
				<div id="question">
					<div class="content">
						<h3>
							<b>PRODUCT Q&A</b>
						</h3>
						<h4>
							상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당
									게시판으로 이동될 수 있습니다
						</h4>
							<table class="table">
								<tbody id="sc_table">
									<tr class="text-center">
										<th class="sep-55">제목</th>
										<th class="sep-15">작성자</th>
										<th class="sep-15">작성일</th>
										<th class="sep-15">답변상태</th>
										<th class="sep-15">조회</th>
									</tr>
								</tbody>
							</table>
					<c:forEach var="dto" items="${proqList }" >				
							<table class="table">
								<tbody>
									<tr style="text-align:center;">
										<th class="sep-55"><div class="text-left"><a href="questionInfo?uid=${dto.proq_uid }">${dto.proq_title }</a></div></th>
										<td class="sep-15">${memList[dto.m_uid - 1].m_name } </td>
										<td class="sep-15">${dto.proq_questionDate }</td>
										<td class="sep-15">${dto.proq_status }</td>
										<td class="sep-15">${dto.proq_viewCnt }</td>
									</tr>
								</tbody>
							</table>
						</c:forEach>
						<br>
						<br>
						
						<div class="form-group text-center">
		                  <button class="btn" type="submit" onClick="location.href='question?uid=${list[0].pro_uid }'">문의하기</button>
               			</div>
						
					</div>
				</div>
			</div>
		</div>

	</section>


	<br>
	<br>
	<script src="${pageContext.request.contextPath }/JS/won.js"></script>
	<script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/JS/functions.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>