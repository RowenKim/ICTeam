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
<body>
<jsp:include page="header.jsp" />
	
	<section id="page-content">
		<div class="content col-lg-14">
		<div id="titleCenter">
			<h3><b>쇼핑몰문의</b></h3>
		</div>
		<br><br>
			<form name = "frm" action="webWriteOk" method="post" onsubmit="return chkSubmit()" enctype="multipart/form-data">
			<input type="hidden" name="m_uid" value="${memList[0].m_uid }"/>
			<table class="table">
				<tbody id="q_table">
					<tr>
						<th scope="row" class="">제목</th>
						<td><input
							class="form-control required" name="q_title"
							placeholder="제목을 입력해주세요" id="name" aria-required="true"
							type="text"></td>
					</tr>
					<tr>
						<th scope="row" class="q_headTable">내용</th>
						<td><textarea class="form-control required" name="q_content" rows="9"
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
			
			<div id="btnDiv" class="row">
				<div class="col-lg-12">
					<div class="form-group text-center">
						<button class="btn" type="submit">등록</button>
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