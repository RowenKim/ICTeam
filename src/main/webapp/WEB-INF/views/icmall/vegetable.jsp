<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="INSPIRO" />
<meta name="description" content="Themeforest Template Polo">
<!-- Document title -->
<title>채소</title>
<!-- Stylesheets & Fonts -->
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/jaeuk.css"
	type="text/css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
	<jsp:include page="header.jsp" />
	<!-- Body Inner -->
	<!-- Content -->
	<section id="page-content">
		<div class="container">
			<div class="div5">
				<h3>채소</h3>
			</div>
			<div class="space"></div>

			<!-- Blog -->
			<div id="blog" class="grid-layout post-3-columns m-b-30"
				data-item="post-item">
				<!-- Post item-->
				<div class="post-item border">
					<div class="post-item-wrap">
						<div class="post-image">
							<a href="#"> <img alt=""
								src="https://blog.kakaocdn.net/dn/qEwHb/btqCoRsfE2N/iAWkJFh4g1IKZshNnOe860/img.jpg">
							</a>
						</div>
						<div class="post-item-description">
							<h2>
								<a href="#">${e4 } </a>
							</h2>
							<p>10,000원</p>
							<p>유기농 농사로 나온 멜론</p>
						</div>
					</div>
				</div>
				<!-- end: Post item-->
				<!-- Post item-->
				<div class="post-item border">
					<div class="post-item-wrap">
						<div class="post-image">
							<a href="#"> <img alt=""
								src="https://blog.kakaocdn.net/dn/qEwHb/btqCoRsfE2N/iAWkJFh4g1IKZshNnOe860/img.jpg">
							</a>
						</div>
						<div class="post-item-description">
							<h2>
								<a href="#">[유기농] 멜론 </a>
							</h2>
							<p>10,000원</p>
							<p>유기농 농사로 나온 멜론</p>
						</div>
					</div>
				</div>
				<!-- end: Post item-->
				<!-- Post item-->
				<div class="post-item border">
					<div class="post-item-wrap">
						<div class="post-image">
							<a href="#"> <img alt=""
								src="https://blog.kakaocdn.net/dn/qEwHb/btqCoRsfE2N/iAWkJFh4g1IKZshNnOe860/img.jpg">
							</a>
						</div>
						<div class="post-item-description">
							<h2>
								<a href="#">[유기농] 멜론 </a>
							</h2>
							<p>10,000원</p>
							<p>유기농 농사로 나온 멜론</p>
						</div>
					</div>
				</div>

				<div class="post-item border">
					<div class="post-item-wrap">
						<div class="post-image">
							<a href="#"> <img alt=""
								src="https://blog.kakaocdn.net/dn/qEwHb/btqCoRsfE2N/iAWkJFh4g1IKZshNnOe860/img.jpg">
							</a>
						</div>
						<div class="post-item-description">
							<h2>
								<a href="#">[유기농] 멜론 </a>
							</h2>
							<p>10,000원</p>
							<p>유기농 농사로 나온 멜론</p>
						</div>
					</div>
				</div>
				<div class="post-item border">
					<div class="post-item-wrap">
						<div class="post-image">
							<a href="#"> <img alt=""
								src="https://blog.kakaocdn.net/dn/qEwHb/btqCoRsfE2N/iAWkJFh4g1IKZshNnOe860/img.jpg">
							</a>
						</div>
						<div class="post-item-description">
							<h2>
								<a href="#">[유기농] 멜론 </a>
							</h2>
							<p>10,000원</p>
							<p>유기농 농사로 나온 멜론</p>
						</div>
					</div>
				</div>
				<div class="post-item border">
					<div class="post-item-wrap">
						<div class="post-image">
							<a href="#"> <img alt=""
								src="https://blog.kakaocdn.net/dn/qEwHb/btqCoRsfE2N/iAWkJFh4g1IKZshNnOe860/img.jpg">
							</a>
						</div>
						<div class="post-item-description">
							<h2>
								<a href="#">[유기농] 멜론 </a>
							</h2>
							<p>10,000원</p>
							<p>유기농 농사로 나온 멜론</p>
						</div>
					</div>
				</div>

			</div>
		</div>

	</section>

	<button id="btn_load" type="button" class="btn">채소 가져오기</button>
	
	<table id="demoXML"></table>


	<script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/JS/functions.js"></script>

	<script>
		/* jQuery 의 AJAX 함수 get(), post()

		 $.get(URL, callback);
		 $.post(URL, data, callback);
		 */

		var api_key = "57cb459748a33d851cf52795d4f76bd2";

		$(document).ready(function() {
			$("#btn_load").click(function() {
				alert("js 연결 성공")
				/* var date = document
						.getElementById("date").value
						.trim(); */

				// XML
				var url = "https://openapi.11st.co.kr/openapi/OpenApiService.tmall?key=57cb459748a33d851cf52795d4f76bd2&apiCode=ProductSearch&keyword=%EC%95%BC%EC%B1%84&option=Categories"

				$.get(url, function(data,status) {
					alert("불러오기")
					if (status == "success") parseXML(data);
				});
				// 이미 data 에 XML DOM object로 넘어온다
				// application/xml;charset=UTF-8
				//var parser = new DOMParser();
				//data <- parser.paseFromString(responseTxt, "text/xml");
			});

							// 지우기
		});

		// XML 파싱의 경우 jQuery 에서 제공해주는 
		// DOM 관련 함수들을 사용하면 간결해진다.
		function parseXML(xmlDOM) {
			// TODO : jQuery 함수를 사용하여 재작성 해보기
			var i;

			var table = "<tr><th>상품이름</th><th>가격</th><th>부제목</th>";
			// var x = xmlDOM.getElementsByTagName("row");
			// for (i = 0; i < x.length; i++) {
			// 	table += "<tr>";
			// 	table += "<td>" + x[i].getElementsByTagName("LINE_NUM")[0].childNodes[0].nodeValue + "</td>";
			// 	table += "<td>" + x[i].getElementsByTagName("SUB_STA_NM")[0].childNodes[0].nodeValue + "</td>";
			// 	table += "<td>" + x[i].getElementsByTagName("RIDE_PASGR_NUM")[0].childNodes[0].nodeValue + "</td>";
			// 	table += "<td>" + x[i].getElementsByTagName("ALIGHT_PASGR_NUM")[0].childNodes[0].nodeValue + "</td>";		
			// 	table += "</tr>";
			// }
			// document.getElementById("demoXML").innerHTML = table;

			// each(함수)
			// select된 element 각각에 적용하는 함수

			$(xmlDOM).find("row").each(
					
					function() {
						table += "<tr>";
						table += "<td>" + $(this).find("ProductName").text()
								+ "</td>";
						table += "<td>" + $(this).find("ProductPrice").text()
								+ "</td>";
						table += "<td>" + $(this).find("Text1").text()
								+ "</td>";
						table += "</tr>";
					});
			$("#demoXML").html(table);

		}

		
	</script>

</body>

</html>