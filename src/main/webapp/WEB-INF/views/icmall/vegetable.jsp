<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>

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
<link href="${pageContext.request.contextPath }/CSS/seoha.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>


<meta charset="UTF-8">
    <!-- Document title -->
    <title>nav</title>
    <!-- Stylesheets & Fonts -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pension Reservation</title>

<script type="text/javascript">
 function keyword_check(){
  if(document.search.keyword.value==''){ //검색어가 없을 경우  
  alert('검색어를 입력하세요'); //경고창 띄움 
  document.search.keyword.focus(); //다시 검색창으로 돌아감 
  return false;
  }
  else return true;
 }
</script>  




<body>
 <!-- Body Inner -->
    <div class="body-inner">
        <!-- Topbar -->
        <div id="topbar" class="d-xl-block d-lg-block">
            <div class="container">
                <div class="row" >
                    <div class="col-md-12" style="">
                     <c:choose>
                       <c:when test="${user == null }">
                           <ul class="top-menu" style="float:right">
                               <li><a href="join">회원가입</a></li>
                               <li><a href="loginForm">로그인</a></li>
                               <li><a href="serviceCenter">고객센터</a></li>
                           </ul>
                       </c:when>
                       <c:otherwise>
                           <ul class="top-menu" style="float:right">
                               <li><a href="/icmall/myPage">마이페이지</a></li>
                               <li><a href="serviceCenter">고객센터</a></li>
                           </ul>
                       </c:otherwise>
                      </c:choose>
                    </div>
                </div>
            </div>
        </div>
        <!-- end: Topbar -->

        <!-- Header -->
        <header id="header" data-transparent="true" class="header-logo-center" style="">
             <div class="header-inner">
                <div class="container">
                    <!--Logo-->
                    <div id="logo">
                        <a href="index">
                            <span class="logo-default">IC MALL</span>
                          
                        </a>
                    </div>
                </div>
            </div>
            <div class="header-inner">
            <div class="container">
                   
                    <!--Navigation Resposnive Trigger-->
                    <div id="mainMenu-trigger">
                        <a class="lines-button x"><span class="lines"></span></a>
                    </div>
                    <!--end: Navigation Resposnive Trigger-->
                    <!--Navigation-->
                    <div id="mainMenu" class="menu-creative">
                        <div class="container">
                            <nav>
                                <!--Left Menu-->
                                <ul>
                                    <li class="current"><a href="vegetable">채소</a></li>
                                    <li><a href="fruit">과일</a></li>
                                    <li><a href="meat">정육</a></li>
                                    <li><a href="snack">간식</a></li>
                                    <li><a href="health">건강식품</a></li>
                                </ul>
                                <!--Right Menu-->
                                <ul>
                               
                                   <form action="searchOk" name="search" method="get" onsubmit="return keyword_check()" class="form-inline my-2 my-lg-0 m-t-20 m-r-60 m-d-none" id="mall_serch_form">
                                   <input name="keyword" class="form-control mr-sm-2" id="mall_search" placeholder="검색어를 입력해주세요" aria-label="검색어를 입력해주세요" type="search"> 
                               	   <i class="fab fa-sistrix" id="mall_serch_icon" ></i>
                                   <i class="fas fa-shopping-cart m-l-15" id="mall_cart"> </i>
                           		 </form>
                           		
                          
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!--end: Navigation-->
                </div>
            </div>
        </header>
        <!-- end: Header -->
    </div>
   
    <!-- end: Body Inner -->
    <!-- Scroll top -->
    <a id="scrollTop"><i class="icon-chevron-up"></i><i class="icon-chevron-up"></i></a>
    <!--Plugins-->
   


	<!-- Body Inner -->
	<!-- Content -->
	<section id="page-content">
		<div class="container">
			<div class="div5">
				<h3>채소</h3>
			</div>
			<div class="space"></div>

			<!-- Blog -->
			<div id="blog" class="grid-layout post-4-columns m-b-30"
				data-item="post-item">
				<!-- Post item-->
				<c:forEach var="list" items="${list }">
					<div class="post-item border" style="height:440px !important;">
						<div class="post-item-wrap">
							<div class="post-image">
								<a href="stockDetail?uid=${list.pro_uid }">${list.pro_img } </a>
							</div>
							<div class="post-item-description" style="height:170px;">
								<h2>
									<a href="stockDetail?uid=${list.pro_uid }">${list.pro_name }</a>
								</h2>
								<p><fmt:formatNumber value="${list.pro_price }" pattern="#,###"/> 원</p>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- end: Post item-->
			</div>
			<!-- Pagination -->
			<div>
				<ul class="pagination" style="width:205px; margin:0 auto;">
					<li class="page-item"><a class="page-link" href="#"><i
							class="fa fa-angle-left"></i></a></li>
					<li class="page-item active"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#"><i
							class="fa fa-angle-right"></i></a></li>
				</ul>
				<!-- end: Pagination -->
			</div>

		</div>

	</section>
	<jsp:include page="footer.jsp" />


	<script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/JS/functions.js"></script>

	<script>
		/* jQuery 의 AJAX 함수 get(), post()

		 $.get(URL, callback);
		 $.post(URL, data, callback);
		 */

		var api_key = "57cb459748a33d851cf52795d4f76bd2";

		$(document)
				.ready(
						function() {
							$("#btn_load")
									.click(
											function() {
												alert("js 연결 성공")
												/* var date = document
														.getElementById("date").value
														.trim(); */

												// XML
												var url = "https://openapi.11st.co.kr/openapi/OpenApiService.tmall?key=57cb459748a33d851cf52795d4f76bd2&apiCode=ProductSearch&keyword=%EC%95%BC%EC%B1%84&option=Categories"

												$.get(url, function(data,
														status) {
													alert("불러오기")
													if (status == "success")
														parseXML(data);
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