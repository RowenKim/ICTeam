<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- Core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
<script>
	function chkSubmit(proq_uid){

		if (confirm("정말 삭제하시겠습니까?") == true){    //확인
				
			location.href='questionDeleteOk?uid=' + proq_uid
	
		}else{   //취소

		    return;

		}
		
	}
</script>
<body>
<jsp:include page="header.jsp" />
	
	<section id="page-content" class="centerSetting">
		<div class="content col-lg-10">
		<table class="table">
					<tbody id="q_table">
						<tr>
							<th scope="row">제목</th>
							<td> ${proqList[0].proq_title }</td>
						</tr>
						<tr>
							<th scope="row" id="q_handler" class="q_headTable">내용</th>
							<td><p>${proqList[0].proq_questionContent }</p></td>
						</tr>
					</tbody>
				</table>
				<h3>이미지</h3>
					이미지 경로 : 
					<img src="D:\DevRoot\Dropbox\Git_ICTeam\Git_ICTeam\src\main\webapp\WEB-INF\upload\211010\0b4434c67cd84fd8b0d80963bb9f1565.png" style="border:">
			</div>
			<hr style="width:80%">
			<div>
			<h4>
				답변내용
			</h4>
			<h6 style="padding-bottom:150px;">→ ${proqList[0].proq_answerContent }</h6>
			</div>
			<div class="row">
            <div class="col-lg-12">
            <c:if test="${proqList[0].m_uid eq dto.m_uid }">
               <div class="form-group text-center">
                  <button class="btn" type="submit" onClick="location.href='questionUpdate?uid=${proqList[0].proq_uid }'">수정하기</button>
                  <button class="btn" type="submit" onClick="chkSubmit(${proqList[0].proq_uid })">삭제하기</button>
               </div>
            </c:if>
            </div>
         </div>
	</section>
	<img src="" />
	
<jsp:include page="footer.jsp" />
</body>
</html>