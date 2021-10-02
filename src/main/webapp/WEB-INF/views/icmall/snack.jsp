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
<title>간식</title>
<!-- Stylesheets & Fonts -->
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/jaeuk.css"
	type="text/css" rel="stylesheet">
</head>

<body>
	<jsp:include page="header.jsp" />
	<!-- Body Inner -->
	<!-- Content -->
	<section id="page-content">
		<div class="container">
			<div class="div5">
				<h3>간식류</h3>
			</div>
			<!-- img 안나오는 이유
			<img  id="bestImgIsAuth_0_0" 
			src="https://i.011st.com/ex_t/R/180x180/1/85/1/src/dl/20/1/0/5/7/7/6/oMorM/1775105776_133443692_05.png" alt="[쿠폰가9,780원][태풍몰]포스트 그래놀라 현미/카카오/크랜베리/블루베리x2개+3단밀폐용기" 
			onerror="skp11.common.blankImage(this, 180);">
			
			<img id="spImgIsAuth_0" src="https://i.011st.com/ex_t/R/150x150/1/85/1/src/pd/20/6/8/2/4/2/8/gYjpA/2787682428_L300.jpg" alt="[청우식품공식] 쥬라기공룡 젤리 50g x (10개입) / 1박스" 
			onerror="skp11.common.blankImage(this, 180);">
			 -->
			
			<div class="space"></div>
				

		
				<!-- Blog -->
				<div id="blog" class="grid-layout post-4-columns m-b-30"
					data-item="post-item">
					<!-- Post item-->
				<c:forEach var="i" begin="3" end="14">
						<div class="post-item border" style="height:440px;">
							<div class="post-item-wrap">
								<div class="post-image">
									<a href="#">
									</a>
								</div>
								<div class="post-item-description">
									<h2>
									</h2>
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