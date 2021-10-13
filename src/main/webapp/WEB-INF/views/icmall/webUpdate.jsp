<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- Core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>상품문의수정</title>
<link href="${pageContext.request.contextPath }/CSS/won.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
.filebox.bs3-primary .col-sm-10>label {
	color: #fff;
	background-color: #337ab7;
	border-color: #2e6da4;
}
.filebox .col-sm-10>label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	font-weight: 600;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}
.filebox .upload-name {
	display: inline-block;
	width: 350px;
	padding: .5em .75em;
	/* label의 패딩값과 일치 */
	font-size: inherit;
	font-family: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #f5f5f5;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
	-webkit-appearance: none;
	/* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}
</style>
<script>
//function changeFilename(file) {
	
//	if(document.getElementById('changeYn')){
//		alert("Y OK")
 //  		document.getElementById('changeYn').value = 'Y';
//	}
	
//	file = $(file);
//	const filename = file[0].files[0].name;
//	const target =  file.prevAll('input.upload-name');
//	target.val(filename);
//	
	//file.prevAll('input[name="fileIdxs"]').remove();
//}
</script>
<script>
function chkSubmit(){
	frm = document.forms['frm'];
	
	var q_title = frm['q_title'].value.trim();
	var proq_questionContent = frm['q_content'].value.trim();
	
	if(q_title == ""){
		alert("제목은 반드시 입력해야 합니다");
		frm['q_title'].focus();
		return false;
	}
	if(q_content == ""){
		alert("내용은 반드시 작성해야 합니다");
		frm['q_content'].focus();
		return false;
	}
	return true;
	
} // end chkSubmit()
</script>
<body>
<jsp:include page="header.jsp" />
	
	<section id="page-content">
		<div class="content col-lg-14">
			<div id="titleCenter">
			<h3><b>상품수정</b></h3>
			</div>
			<br><br>
			<form name="frm" action="webUpdateOk" method="post" onsubmit="return chkSubmit()">
			<input type="hidden" name="q_uid" value="${list[0].q_uid }" />
			<table class="table">
				<tbody id="q_table">
					<tr>
						<th scope="row">제목</th>
						<td><input
							class="form-control required" name="q_title"
							placeholder="제목을 입력해주세요" id="name" aria-required="true"
							type="text" value="${list[0].q_title }"></td>
					</tr>
					<tr>
						<th scope="row" class="q_headTable">내용</th>
						<td><textarea class="form-control required" name="q_content" rows="9"
							placeholder="내용을 입력해주세요" id="comment"
							aria-required="true">${list[0].q_content }</textarea></td>
					</tr>
				</tbody>
			</table>
			<h4>파일</h4>
		<c:forEach var="row" items="${fileList }" varStatus="status">
			<div data-name="fileDiv" class="form-group filebox bs3-primary">
						<label for="file_${status.count }" class="col-sm-2 control-label">파일${status.count }</label>
						<div class="col-sm-10">
						<input type="hidden" name="fileIdxs" value="${row.pqfUid }"/>
						<input type="text" class="upload-name" value="${row.originalName }" readonly/>
						<label for="file_${status.count }" class="control-label">찾아보기</label>
						<input type="file" name="files" id="file_${status.count}" class="upload-hidden" onchange="changeFilename(this)" />
						<c:if test="${status.count == 1 }">
							<button type="button" onclick="addFile()" class="btn btn-bordered btn-xs visible-xs-inline visible-sm-inline visible-md-inline visible-lg-inline">
								<i class="fa fa-plus" aria-hidden="true"></i>
							</button>
						</c:if>
						<button type="button" onclick="removeFile(this); deleteFile(${row.pqfUid});" class="btn btn-bordered btn-xs visible-xs-inline visible-sm-inline visible-md-inline visible-lg-inline">
							<i class="fa fa-minus" aria-hidden="true"></i>
						</button>
						<br>
						<input type="hidden" id="changeYn" name="changeYn" value="N">
				</div>
			</div>
		</c:forEach>
		<input type="hidden" id="fileList" value="${fileList.size() }"/>
			<div id="btnDiv" class="row">
				<div class="col-lg-12">
					<div class="form-group text-center">
						<button class="btn" type="submit">수정</button>
					</div>
				</div>
			</div>
			</form>
		</div>
	</section>
<script src="${pageContext.request.contextPath }/JS/file.js"></script>
	<jsp:include page="footer.jsp" />


</body>
</html>