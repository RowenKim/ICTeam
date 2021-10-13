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
<script>
function chkSubmit(){
	frm = document.forms['frm'];
	
	var r_title = frm['r_title'].value.trim();
	var r_content = frm['r_content'].value.trim();
	
	if(r_title == ""){
		alert("제목은 반드시 입력해야 합니다");
		frm['r_title'].focus();
		return false;
	}
	if(r_content == ""){
		alert("내용은 반드시 작성해야 합니다");
		frm['r_content'].focus();
		return false;
	}
	return true;
	
} // end chkSubmit()
</script>
<body>
	<jsp:include page="header.jsp" />
	<hr>
	<section id="page-content">
	
		<div class="content col-lg-14">
		<div id="titleCenter">
			<h3><b>후기작성</b></h3>
		</div>
		<br>
		<br><br>
			<form name="frm" action="stockReviewOk"" method="post" onsubmit="return chkSubmit()">
			<input type="hidden" name="pro_uid" value="${list[0].pro_uid }"/>
			<input type="hidden" name="m_uid" value="${dto.m_uid }"/>
			<input type="hidden" name="r_img" value="이미지테스트"/>
			<input type="hidden" name="r_date" value="now()"/>
			<table class="table" id="sr_table">
				<tbody>
					<tr>
						<th scope="row" class="sr_headTable"><div style="padding:12px 8px 12px 18px;">${list[0].pro_img }</div></th>
						<td style="vertical-align:middle;"><h3>${list[0].pro_name }</h3></td>
					</tr>
					<tr>
						<th scope="row" class="sr_headTable"><b>제목</b></th>
						<td><input
							class="form-control required" name="r_title"
							placeholder="제목을 입력해주세요" id="name" aria-required="true"
							type="text"></td>
					</tr>
					<tr>
						<th scope="row" class="sr_headTable"><b>후기내용</b></th>
						<td><textarea class="form-control required" name="r_content" rows="9"
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
	<script src="${pageContext.request.contextPath }/JS/won.js"></script>
	<jsp:include page="footer.jsp" />

</body>
</html>