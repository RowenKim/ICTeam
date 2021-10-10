<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Q&A 상품문의정보</title>
<link href="${pageContext.request.contextPath }/CSS/won.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp" />
	
	<section id="page-content" class="centerSetting">
		<div class="content col-lg-10">
		<table class="table">
					<tbody id="q_table">
						<tr>
							<th scope="row">제목</th>
							<td> 제목이다</td>
						</tr>
						<tr>
							<th scope="row" id="q_handler" class="q_headTable">내용</th>
							<td><p>내용이다</p></td>
						</tr>
						<tr>
							<th scope="row" class="q_headTable">이미지</th>
							<td>
							파일1:이미지/..<br>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="row">
            <div class="col-lg-12">
               <div class="form-group text-center">
                  <button class="btn" type="submit">수정하기</button>
                  <button class="btn" type="submit">삭제하기</button>
               </div>
            </div>
         </div>
	</section>
	
	
<jsp:include page="footer.jsp" />
</body>
</html>