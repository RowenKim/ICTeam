<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%-- Core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="INSPIRO" />
<meta name="description" content="Themeforest Template Polo">
<!-- Document title -->
<title>육류</title>
<!-- Stylesheets & Fonts -->
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/jaeuk.css"
	type="text/css" rel="stylesheet">
</head>

<body>
	<jsp:include page="header.jsp"/>
    <!-- Body Inner -->
                <!-- Content -->
        <section id="page-content">
            <div class="container">
            <div class="div5">
            <h3>육류</h3>
         	</div>
         	<div class="space"></div>
                <!-- Blog -->
                <div id="blog" class="grid-layout post-4-columns m-b-30" data-item="post-item">
                    <!-- Post item-->
                   <c:forEach var="dto" items="${list }" begin="3" end="25">
					<div class="post-item border" style="height:440px;">
						<div class="post-item-wrap">
							<div class="post-image">
							 <a href="stockDetail?uid=${dto.pro_uid }">
                                    ${dto.pro_img}
                                </a>
							</div>
							<div class="post-item-description">
								<h2>
									<a href="stockDetail?uid=${dto.pro_uid }">${dto.pro_name}</a>
								</h2>
								<h3>${dto.pro_price} 원</h3>
							</div>
						</div>
					</div>
				</c:forEach>					

				</div>
			</div>
	</section>


	<script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/JS/functions.js"></script>

<jsp:include page="footer.jsp" />
</body>

</html>