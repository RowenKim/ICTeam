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
	
		<div class="content">
		<div id="titleCenter">
			<h3><b>후기수정</b></h3>
		</div>
		<br><br>
		<form name="frm" action="reviewUpdateOk"" method="post" onsubmit="return chkSubmit()">
		<input type="hidden" name="pro_uid" value="${proList[0].pro_uid }"/>
		<input type="hidden" name="r_uid" value="${reviewInfo[0].r_uid }"/>
			<table class="table">
				<tbody id="sr_table">
					<tr>
						<th scope="row" class="sr_headTable">${proList[0].pro_img }</th>
						<td>${proList[0].pro_name }</td>
					</tr>
					<tr>
						<th scope="row" class="sr_headTable"><b>제목</b></th>
						<td><input
							class="form-control required" name=r_title
							value="${reviewInfo[0].r_title }" id="name" aria-required="true"
							type="text"></td>
					</tr>
					<tr>
						<th scope="row" class="sr_headTable"><b>후기내용</b></th>
						<td><textarea class="form-control required" name="r_content" rows="9"
							 id="comment"
							aria-required="true">${reviewInfo[0].r_content }</textarea></td>
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