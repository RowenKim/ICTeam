<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>   
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="INSPIRO" />
    <meta name="description" content="Themeforest Template Polo">
    <!-- Document title -->
    <title>myPage</title>
    <!-- Stylesheets & Fonts -->
    <link href="${pageContext.request.contextPath }/CSS/plugins.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/CSS/style.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/CSS/seoha.css" type="text/css" rel="stylesheet">
    
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

</head>
<body>
<jsp:include page="header.jsp"/>
<!-- Body Inner -->
  <div class="body-inner">
  
   <!--container-->
    <section id="page-title">
	  	<div class="container background-grey">
	        <div class="heading-text heading-line text-center">
	          <h4>마이페이지</h4>
	        </div>
	   	</div> 
  </section>
  <!-- Page title -->
  
      <div class="container text-center p-t-50">
        <div class="page-title">
          <h3>${dto.m_name }</h3>
          <span>${dto.m_mail }</span><br>
          <button type="button" class="btn btn-light btn-shadow btn-rounded m-t-20" onclick="location.href= 'userUpdate'">내정보<i class="icon-user"></i></button>
                          
        </div>
       <!--  <div class="breadcrumb">
          <ul>
            <li><a href="#">Home</a> </li>
            <li><a href="#">Shortcodes</a> </li>
            <li class="active"><a href="#">Icon boxes</a> </li>
          </ul>
        </div> -->
      </div>
    
   
    <!-- end: Page title -->
    <!-- Section -->
    <section>
     <!--container-->
      <div class="container">
         <!--Default icons-->
       <!--  <div class="row icon-boxes">
       		<div class="icon-boxx col-md-3 col-6">
          		<i class="icon-file-text"></i>          		
          		<div class="icon-box-content">
            	<h3>주문내역 확인</h3>           
         		</div>
         	 </div>      
          <div class="icon-boxx col-md-3 col-6">
            <i class="icon-gift"></i>
            <div class="icon-box-content">
              <h3>장바구니</h3>
             
            </div>
          </div>
          <div class="icon-boxx col-md-3 col-6">
            <i class="icon-edit"></i>
            <div class="icon-box-content">
              <h3>상품후기</h3>
              
            </div>
          </div>
          <div class="icon-boxx col-md-3 col-6">
            <i class="icon-send"></i>
            <div class="icon-box-content">
              <h3>문의하기</h3>
            
            </div>
          </div>
        </div> -->
       <!--  <div class="space"></div> -->
        <!--Default icons-->
      
        <div class="row icon-boxes">
          <div class="col-md-3 col-6 text-center">
            <div class="icon-box effect medium center m-t-50">
              <div class="icon"> <a href="/icmall/user/orderList"><i class="fa fa-clipboard-list"></i></a> </div>
              <h3>주문내역 확인</h3>
              <p></p>
            </div>
          </div>
          <div class="col-md-3 col-6 text-center">
            <div class="icon-box effect medium center m-t-50">
              <div class="icon"> <a href="/icamll/user/basket"><i class="fa fa-gift"></i></a> </div>
              <h3>장바구니</h3>
              <p></p>
            </div>
          </div>
          <div class="col-md-3 col-6 text-center">
            <div class="icon-box effect medium center m-t-50">
              <div class="icon"> <a href="/icmall/user/myStock?uid=${dto.m_uid }"><i class="fa fa-edit"></i></a> </div>
              <h3>상품후기</h3>
              <p></p>
            </div>
          </div>
          <div class="col-md-3 col-6 text-center">
            <div class="icon-box effect medium center m-t-50">
              <div class="icon"> <a href="/icamll/user/webWrite?uid=${dto.m_uid }"><i class="fa fa-location-arrow"></i></a> </div>
              <h3>문의하기</h3>
              <p></p>
            </div>
          </div>
        </div>
        <!-- end:icon2 -->
        <div class="row m-t-60">
				<div class="col-lg-12">
					<div class="form-group text-center">
						<button class="btn" type="button" onClick="location.href='/logout'">로그아웃</button>
					</div>
				</div>
			</div>
        </div>
       <!--end: container-->
    </section>
    <!-- Section --> 
 
 
 
 
 
 
 
 
 
 
 
 
 <!-- end:Body Inner -->
  </div>










<jsp:include page="footer.jsp"/>
 <!-- Scroll top -->
    <a id="scrollTop"><i class="icon-chevron-up"></i><i class="icon-chevron-up"></i></a>
    <!--Plugins-->
    <script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
    <script src="${pageContext.request.contextPath }/JS/functions.js"></script>

</body>
</html>