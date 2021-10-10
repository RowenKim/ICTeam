<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>상품문의</title>
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
function chkSubmit(){
	frm = document.forms['frm'];
	
	var proq_title = frm['proq_title'].value.trim();
	var proq_questionContent = frm['proq_questionContent'].value.trim();
	
	if(proq_title == ""){
		alert("제목은 반드시 입력해야 합니다");
		frm['proq_title'].focus();
		return false;
	}
	if(proq_questionContent == ""){
		alert("내용은 반드시 작성해야 합니다");
		frm['proq_questionContent'].focus();
		return false;
	}
	return true;
	
} // end chkSubmit()
</script>
<script>
function changeFilename(file) {
	file = $(file);
	const filename = file[0].files[0].name;
	const target = file.prevAll('input');
	target.val(filename);
}
</script>
<body>
<jsp:include page="header.jsp" />
	
	<section id="page-content">
		<div class="content col-lg-14">
		<div id="titleCenter">
			<h3><b>상품문의</b></h3>
		</div>
		<br><br>
		상품 uid : ${pro_uid }<br>
		회원 임시 uid : ${memList[0].m_uid }
			<form name = "frm" action="questionOk" method="post" onsubmit="return chkSubmit()" enctype="multipart/form-data">
			<input type="hidden" name="pro_uid" value="${pro_uid }"/>
			<input type="hidden" name="m_uid" value="${memList[0].m_uid }"/>
			<table class="table">
				<tbody id="q_table">
					<tr>
						<th scope="row" class="">제목</th>
						<td><input
							class="form-control required" name="proq_title"
							placeholder="제목을 입력해주세요" id="name" aria-required="true"
							type="text"></td>
					</tr>
					<tr>
						<th scope="row" class="q_headTable">내용</th>
						<td><textarea class="form-control required" name="proq_questionContent" rows="9"
							placeholder="내용을 입력해주세요" id="comment"
							aria-required="true"></textarea></td>
					</tr>
				</tbody>
			</table>
			<!-- 새로운 버튼 도전 -->
			<div data-name="fileDiv" class="form-group filebox bs3-primary">
				<label for="file_0" class="col-sm-2 control-label">파일1</label>
				<div class="col-sm-10">
					<input type="text" class="upload-name" value="파일 찾기" readonly />
					<label for="file_0" class="control-label">찾아보기</label>
					<input type="file" name="files" id="file_0" class="upload-hidden" onchange="changeFilename(this)" />
				
					<button type="button" onclick="addFile()" class="btn btn-bordered btn-xs visible-xs-inline visible-sm-inline visible-md-inline visible-lg-inline">
						<i class="fa fa-plus" aria-hidden="true"></i>
					</button>
					<button type="button" onclick="removeFile(this)" class="btn btn-bordered btn-xs visible-xs-inline visible-sm-inline visible-md-inline visible-lg-inline">
						<i class="fa fa-minus" aria-hidden="true"></i>
					</button>
				</div>
			</div>
			
			<!-- 새로운 버튼 도전 -->
			<div id="btnDiv" class="row">
				<div class="col-lg-12">
					<div class="form-group text-center">
						<button class="btn" type="submit">등록</button>
					</div>
				</div>
			</div>
			</form>
		</div>
	<!-- <iframe src="http://www.11st.co.kr/products/2772954357/view-desc"></iframe>  -->
	</section>
	<script src="${pageContext.request.contextPath }/JS/file.js"></script>
	<jsp:include page="footer.jsp" />

</body>
</html>