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
		<link href="${pageContext.request.contextPath }/CSS/seoha.css" type="text/css" rel="stylesheet">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
	
</head>

<body>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>



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
                                    <li><a href="vegetable">채소</a></li>
                                    <li><a href="fruit">과일</a></li>
                                    <li><a href="meat">정육</a></li>
                                    <li class="current"><a href="snack">간식</a></li>
                                    <li><a href="health">건강식품</a></li>
                                </ul>
                                <!--Right Menu-->
                                <ul>
                               
                                   <form action="searchOk" name="search" method="get" onsubmit="return keyword_check()" class="form-inline my-2 my-lg-0 m-t-20 m-r-60 m-d-none" id="mall_serch_form">
                                   <input name="keyword" value="${keyword }" class="form-control mr-sm-2" id="mall_search" placeholder="검색어를 입력해주세요" aria-label="검색어를 입력해주세요" type="search"> 
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
				<c:forEach var="dto" items="${list }" begin="3" end="25">
						<div class="post-item border" style="height:440px;">
						<h1>${dto.pro_uid }</h1>
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