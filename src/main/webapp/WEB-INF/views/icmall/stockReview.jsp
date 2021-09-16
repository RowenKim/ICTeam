<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>상품후기 작성</title>
<link href="${pageContext.request.contextPath }/CSS/won.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">

</head>
<body>
	<jsp:include page="header.jsp" />
	<hr>
	<section id="page-content">

		<div class="content col-lg-16">
			<h4>후기작성</h4>
			<form action="stockReviewOk">
			<table class="table">
				<tbody>
					<tr>
						<th scope="row"><img src="img" alt="이미지"></th>
						<td>상품이름(SELECT st_name WHERE st_uid=?)</td>
					</tr>
					<tr>
						<th scope="row">제목</th>
						<td><input
							class="form-control required" name="senderName"
							placeholder="제목을 입력해주세요" id="name" aria-required="true"
							type="text"></td>
					</tr>
					<tr>
						<th scope="row">후기내용</th>
						<td><textarea class="form-control required" name="comment" rows="9"
							placeholder="자세한 후기는 다른 고객의 구매에 많은 도움이 됩니다" id="comment"
							aria-required="true"></textarea></td>
					</tr>
				</tbody>
			</table>
			<div class="row">
				<div class="col-lg-12">
					<div class="form-group text-center">
						<button class="btn" type="submit">작성완료</button>
					</div>
				</div>
			</div>
			</form>
		</div>
	</section>



	<br>
	<br>
	<jsp:include page="footer.jsp" />

</body>
</html>