<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>쇼핑몰문의수정</title>
<link href="${pageContext.request.contextPath }/CSS/won.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp" />
	
	<section id="page-content">
		<div class="content col-lg-14">
		<div id="titleCenter">
			<h3><b>쇼핑몰문의수정</b></h3>
		</div>
		<br><br>
			<form action="webUpdateOk">
			<table class="table">
				<tbody id="q_table">
					<tr>
						<th scope="row" class="content col-lg-2" >제목</th>
						<td><input
							class="form-control required" name="senderName"
							value="제목을 입력해주세요" id="name" aria-required="true"
							type="text"></td>
					</tr>
					<tr>
						<th scope="row" class="q_headTable">내용</th>
						<td><textarea class="form-control required" name="comment" rows="9"
							 id="comment"
							aria-required="true">내용입력 수정하세요</textarea></td>
					</tr>
					<tr>
						<th scope="row" class="q_headTable">이미지</th>
						<td>
						파일1:<input type="file" name="file1"><br>
						</td>
					</tr>

				</tbody>
			</table>
			<div class="row">
				<div class="col-lg-12">
					<div class="form-group text-center">
						<button class="btn" type="submit">등록</button>
					</div>
				</div>
			</div>
			</form>
		</div>
	</section>

	<jsp:include page="footer.jsp" />


</body>
</html>