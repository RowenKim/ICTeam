<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
			<%-- Core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>후기리스트</title>
<link href="${pageContext.request.contextPath }/CSS/won.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
</head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

	function chkSubmit(r_uid){

		if (confirm("정말 삭제하시겠습니까?") == true){    //확인
				
			location.href='myReviewDeleteOk?uid=' + r_uid
	
		}else{   //취소

		    return;

		}
		
	}
	
</script>
<body>
	<jsp:include page="header.jsp" />

	<div class="review" >
		<!-- 후기 -->
		<div class="content" >
			<h3 style="width:1000px; margin:auto;">
				<b>PRODUCT REVIEW</b>
			</h3>
			<h4 style="width:1000px; margin:auto;">
				상품에 대한 후기를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당
						게시판으로 이동될 수 있습니다.
			</h4>
			<table class="table" style="width:1000px; margin:auto;">
				<tbody id="sc_table">
					<tr class="text-center">
						<th class="sep-10">번호</th>
						<th class="sep-55">제목</th>
						<th class="sep-15">작성날짜</th>
					</tr>
				</tbody>
			</table>
			<c:forEach var="dto" items="${reviewList }" >	
			<div class="change1">
				<table class="table" style="width:1000px;margin:auto;">
					<tbody>
						<tr style="text-align:center;">
							<th class="sep-10">${dto.r_uid } </th>
							<td class="sep-55"><div class="text-left">${dto.r_title } </div></td>
							<td class="sep-15">${dto.r_date } </td>
						</tr>
					</tbody>
				</table>
			<div class="reviewContent" style="display:none;width:1000px; margin:auto;" >
				<b>후기 내용 : ${dto.r_content }</b>
				<div class="form-group text-center">
                  <button class="btn" type="submit" onClick="location.href='myReviewUpdate?uid=${dto.r_uid }'">수정하기</button>
                  <button class="btn" type="submit" onClick="chkSubmit(${dto.r_uid})">삭제하기</button>
        		</div>	
			</div>
			</div>
			</c:forEach>
		</div>
	</div>

	<script src="${pageContext.request.contextPath }/JS/won.js"></script>
	<jsp:include page="footer.jsp" />
</body>
</html>