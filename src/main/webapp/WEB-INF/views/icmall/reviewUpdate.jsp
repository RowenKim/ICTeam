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
	
		<div class="content col-lg-14 p-r-0">
		<div id="titleCenter">
			<h3><b>후기수정</b></h3>
		</div>
		<br><br>
			<form action="reviewUpdateOk">
			<table class="table">
				<tbody id="sr_table">
					<tr>
						<th scope="row" class="sr_headTable"><img src="img" alt="이미지"></th>
						<td>상품이름(SELECT st_name WHERE st_uid=?)</td>
					</tr>
					<tr>
						<th scope="row" class="sr_headTable"><b>제목</b></th>
						<td><input
							class="form-control required" name="senderName"
							value="수정할 제목" id="name" aria-required="true"
							type="text"></td>
					</tr>
					<tr>
						<th scope="row" class="sr_headTable"><b>후기내용</b></th>
						<td><textarea class="form-control required" name="comment" rows="9"
							 id="comment"
							aria-required="true">수정할 내용</textarea></td>
					</tr>
				</tbody>
			</table>
			<div class="row">
				<div class="col-lg-12">
					<div class="form-group text-center">
						<button class="btn" type="submit">수정완료</button>
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