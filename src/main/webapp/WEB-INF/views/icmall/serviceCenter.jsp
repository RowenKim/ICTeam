<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
 <%-- Core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<body>
   <jsp:include page="header.jsp" />

   <section id="page-content">
   <div class="content col-lg-14">
      <div id="titleCenter">
         <h3><b>쇼핑몰문의LIST</b></h3>
      </div>
      <br><br>
      <table class="table">
            <tbody id="sc_table">
               <tr>
                  <th scope="col" style="width:10%" class="">번호</th>
                  <th scope="col" style="width:20%" class="">작성자</th>
                  <th scope="col" style="width:30%" class="">제목</th>
                  <th scope="col" style="width:40%" class="">작성날짜</th>
               </tr>
            </tbody>
      </table>
      <c:forEach var="list" items="${list }" >				
					<table class="table">
						<tbody>
							<tr style="text-align:center;">
							<th style="width:10%" class="sep-55"><div class="text-left"><a href="/icmall/user/serviceCenterInfo?uid=${list.q_uid }">${list.q_uid }</a></div></th>
							<th style="width:20%" class="sep-55"><div class="text-left"><a href="/icmall/user/serviceCenterInfo?uid=${list.q_uid }">${dto.m_name  }</a></div></th>
							<th style="width:30%" class="sep-55"><div class="text-left"><a href="/icmall/user/serviceCenterInfo?uid=${list.q_uid }">${list.q_title }</a></div></th>
							<th style="width:40%" class="sep-55"><div class="text-left"><a href="/icmall/user/serviceCenterInfo?uid=${list.q_uid }">${list.q_questionDate }</a></div></th>
													
							</tr>
							</tbody>
						</table>
						</c:forEach>
     					<br>
						<br>
						<c:if test="${dto.m_uid != undefined }">
							<div class="form-group text-center">
			                  <button class="btn" type="submit" onClick="location.href='/icmall/user/webWrite?uid=${dto.m_uid }'">문의하기</button>
	               			</div>
						</c:if>
   </div>
   </section>

   <script src="${pageContext.request.contextPath }/JS/won.js"></script>
   <jsp:include page="footer.jsp" />
</body>
</html>