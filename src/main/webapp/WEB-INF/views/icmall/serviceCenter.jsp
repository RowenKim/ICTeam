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
                  <th scope="col" class="">번호</th>
                  <th scope="col" class="">작성자</th>
                  <th scope="col" class="">제목</th>
                  <th scope="col" class="">작성날짜</th>
               </tr>
            </tbody>
      </table>
      <c:forEach var="dto" items="${list }" >				
							<table class="table">
								<tbody>
									<tr style="text-align:center;">
										<th class="sep-55"><div class="text-left"><a href="serviceCenterInfo?uid=${dto.q_uid }">${dto.q_title }</a></div></th>
										<td class="sep-15">${memList[1].m_uid }.m_name } </td>
										<td class="sep-15">${dto.q_questionDate }</td>
										<td class="sep-15">${dto.q_status }</td>
										<td class="sep-15">${dto.q_viewCnt }</td>
									</tr>
								</tbody>
							</table>
						</c:forEach>
     					<br>
						<br>
						
						<div class="form-group text-center">
		                  <button class="btn" type="submit" onClick="location.href='webWrite?uid=${list[0].m_uid }'">문의하기</button>
               			</div>
   
   </div>
   </section>

   <script src="${pageContext.request.contextPath }/JS/won.js"></script>
   <jsp:include page="footer.jsp" />
</body>
</html>