
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- jQuery 선언부 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="INSPIRO" />
    <meta name="description" content="Themeforest Template Polo">
    <!-- Document title -->
    <title>nav</title>
    <!-- Stylesheets & Fonts -->
    <link href="${pageContext.request.contextPath }/CSS/plugins.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/CSS/style.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/CSS/seoha.css" type="text/css" rel="stylesheet">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
  
  
  
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



</head>
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
                               <li><a href="/icmall/all/join">회원가입</a></li>
                               <li><a href="/icmall/all/loginForm">로그인</a></li>
                               <li><a href="/icmall/all/serviceCenter">고객센터</a></li>
                           </ul>
                       </c:when>
                       <c:otherwise>
                           <ul class="top-menu" style="float:right">
                           <c:if test="${auth.m_auth == 'ROLE_ADMIN' }">
                           		<li><a href="/icmall_admin/admin/adminIndex">관리자페이지</a></li>
                           </c:if>
                               <li><a href="/icmall/user/myPage">마이페이지</a></li>
                               <li><a href="/icmall/all/serviceCenter">고객센터</a></li>
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
                        <a href="/icmall/all/index">
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
                                    <li><a href="/icmall/all/vegetable">채소</a></li>
                                    <li><a href="/icmall/all/fruit">과일</a></li>
                                    <li><a href="/icmall/all/meat">정육</a></li>
                                    <li><a href="/icmall/all/snack">간식</a></li>
                                    <li><a href="/icmall/all/health">건강식품</a></li>
                                </ul>
                                <!--Right Menu-->
                                <ul>
                               
                                   <form action="searchOk" name="search" method="get" onsubmit="return keyword_check()" class="form-inline my-2 my-lg-0 m-t-20 m-r-60 m-d-none" id="mall_serch_form">
                                   <input name="keyword" class="form-control mr-sm-2" id="mall_search" placeholder="검색어를 입력해주세요" aria-label="검색어를 입력해주세요" type="search"> 
                               	   <i class="fab fa-sistrix" id="mall_serch_icon" ></i>
                                   <a href="/icmall/user/basket"><i class="fas fa-shopping-cart m-l-15" id="mall_cart"> </i></a>
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
   
</body>
</html>