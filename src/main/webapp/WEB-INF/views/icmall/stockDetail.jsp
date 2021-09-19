<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<body>
	<jsp:include page="header.jsp"/>
	<hr>

	<section id="product-page" class="product-page p-b-0">
		<div class="container">
			<div class="product">
				<div class="row m-b-40">
					<div class="col-lg-5">
						<div class="product-image" id="product-image-test">
							<!-- 이미지파일 -->
							<a href="#"><img alt="Shop product image!"
								src="https://img-cf.kurly.com/shop/data/goods/160923079018l0.jpg"></a>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="product-description">
							<div class="product-title">
								<h3>머스크 멜론 1.2kg(상품 uid 해당하는 st_name 가져오기)</h3>
							</div>
							<br>
							<br>
							<div>
								<h3>6,990원(st_price)</h3>
							</div>
							<br>
							<!-- st_price 값을 가져오기 -->
							<hr>
							<table>
								<tr>
									<th><h4>판매단위:</h4></th>
									<td class="sd_td">1통 ....(ERD 추가)</td>
								</tr>
							</table>
							<table>
								<tr>
									<th><h4>원산지:</h4></th>
									<td class="sd_td">국산.....(ERD 추가)</td>
								</tr>
							</table>
							<br>
							<table>
								<tr>
									<th><h4>구매수량:</h4></th>
									<td class="sd_td">
										<div class="cart-product-quantity">
											<div class="quantity m-l-5">
												<input type="button" class="minus" value="-"
													id="decreaseQuantity"> <input type="text"
													class="qty" value="1" id="productStock"> <input
													type="button" class="plus" value="+" id="increasQuantity">
											</div>
										</div>
									</td>
								</tr>
							</table>
							<hr>
						</div>
						<div id="sd_secPrice">
							<span>총 상품금액</span>:
							<h3 id="sd_h3">5,900원</h3>
						</div>
						<!-- st_price와 productStock 곱하기 -->
						<br>
						<br>
						<br>
						<div class="col-lg-12">
							<button type="submit" id="sd_btn">
								<span id="sd_basket_letter"><b>장바구니 담기</b></span>
							</button>
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<br>
			<br>
			<!-- Product additional tabs -->
			<div id="info-nav-3items" class="row m-b-40">
				<div class="col-lg-11" id="info-nav">
					<ul class="nav nav-tabs nav-fill" id="sd_info">
						<li class="nav-item"><a class="nav-link" href="#">상품설명</a></li>
						<li class="nav-item"><a class="nav-link" href="#">상품후기</a></li>
						<li class="nav-item"><a class="nav-link" href="#">상품Q&A</a></li>
					</ul>
				</div>
			</div>
			<br>
			<br>
			<div id="proInfoImg">
				<div class="product-image">
					<!-- 이미지 파일 -->
					<!-- 이미지파일 -->
					<img
						src="https://img-cf.kurly.com/shop/data/goodsview/20201229/gv20000147716_1.jpg">
				</div>
				<br>
				<div class="product-info">
					<!-- 상품설명 -->
					<div class="product-title">
						<h2>미니 사이즈로 만나는 연둣빛 과일</h2>
						<h1>
							<b>머스크 멜론</b>
						</h1>
					</div>
					<hr>
					<div>
						<p class="info-mellon">향긋한 멜론을 실속 있게 만나보세요. 컬리가 신선하게 즐길 수 있는
							머스크 멜론을 준비했습니다. 촘촘한 그물 무늬 껍질 속 녹진한 과육을 품고 있는데요. 수분이 풍부하고 향이 좋아 식후
							디저트나 간식으로 제격이랍니다. 살짝 말랑해질 때까지 충분히 후숙했다가 드셔보세요. 하몽, 프로슈토 등을 곁들여
							근사한 안주로 즐겨도 좋을 거예요</p>
					</div>
				</div>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<div class="ICMallCheck">
					<!-- 체크포인트 -->
					IC Mall's Check Point
				</div>
				<br>
				<br>
				<br>
				<br>
				<div>
					<!-- 체크포인트 이미지 -->
					<img
						src="https://img-cf.kurly.com/shop/data/goodsview/20201229/gv40000147717_1.jpg">
				</div>
				<br><br><br><br><br><br>
				<div class="review">
					<!-- 후기 -->
					<div class="content col-lg-14">
						<h3>
							<b>PRODUCT REVIEW</b>
						</h3>
						<h4>
							<ul>
								<li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</li>
							</ul>
						</h4>
						<table class="table">
							<tbody id="sc_table">
								<tr>
									<th scope="col" class="content col-lg-1">번호</th>
									<th scope="col" class="content col-lg-2">작성자</th>
									<th scope="col" class="content col-lg-7">제목</th>
									<th scope="col" class="content col-lg-2">작성날짜</th>
								</tr>
							</tbody>
						</table>
						<table class="table">
							<tbody>
								<tr>
									<th scope="col" class="content col-lg-1">uid-1</th>
									<td scope="col" class="content col-lg-2">name</td>
									<td scope="col" class="content col-lg-7"><div id="sub">subtitle</div></td>
									<td scope="col" class="content col-lg-2">regdate</td>
								</tr>
							</tbody>
						</table>
						<div id="reviewContent">
							<div>
								<b>-상품이름-</b>
							</div>
							상품후기 내용입니다!!!!!!!! subtitle[i]에 담아서..? 클릭시 순서에 맞게 뽑아주기..? uid
							값..?
						</div>
						<table class="table">
							<tbody>
								<tr>
									<th scope="col" class="content col-lg-1">uid-2</th>
									<td scope="col" class="content col-lg-2">name</td>
									<td scope="col" class="content col-lg-7">subtitle</td>
									<td scope="col" class="content col-lg-2">regdate</td>
								</tr>
							</tbody>
						</table>
						<div id="reviewContent">상품후기 내용입니다!!!!!!!!</div>
						<table class="table">
							<tbody>
								<tr>
									<th scope="col" class="content col-lg-1">uid-3</th>
									<td scope="col" class="content col-lg-2">name</td>
									<td scope="col" class="content col-lg-7">subtitle</td>
									<td scope="col" class="content col-lg-2">regdate</td>
								</tr>
							</tbody>
						</table>
						<div id="reviewContent">상품후기 내용입니다!!!!!!!!</div>
					</div>
				</div>
				<div class="question">
					<!-- 상품문의 -->
					문의
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