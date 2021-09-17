<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>쇼핑몰문의</title>
<link href="${pageContext.request.contextPath }/CSS/won.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
</head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<body>
	<jsp:include page="header.jsp" />

	<section id="page-content">
	<div class="content col-lg-14">
		<div id="titleCenter">
			<h3><b>쇼핑몰문의LIST</b></h3>
		</div>
		<br><br>
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
			<div><b>-상품이름-</b></div>
		상품후기 내용입니다!!!!!!!! subtitle[i]에 담아서..? 클릭시 순서에 맞게 뽑아주기..? uid 값..?
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
	</section>

	<script src="${pageContext.request.contextPath }/JS/won.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>