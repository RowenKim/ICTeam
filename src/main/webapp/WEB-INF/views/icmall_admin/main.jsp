<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<meta charset="UTF-8">
	<link href="${pageContext.request.contextPath }/CSS/admin.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
	
	<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">	
	<meta charset="UTF-8">
	<link href="${pageContext.request.contextPath }/CSS/admin.css" type="text/css" rel="stylesheet">
	
    <title>I.C Mall - admin</title>
  </head>
  <body>
    <!-- navbar -->
    <nav class="navbar navbar-expand-md navbar-light">
    	<button class="navbar-toggler ml-auto mb-2 bg-light" type="button" data-toggle="collapse" data-target="#sidebar">
    		<span class="navbar-toggle-icon"></span>
    	</button>	
    	<div class="collapse navbar-collapse" id="sidebar">
    		<div class="container-fluid">
    			<div class="row"></div>
    			<!-- sidebar -->
    			<div class="col-lg-3 sidebar fixed-top">
    				<a href="#" class="navbar-brand text-white text-center d-block mx-auto py-3 mb-4 
    				bottom-border">I.C Mall Admin</a>
    		
    				<ul class="navbar-nav flex-column mt-4">
    					<!-- 주문관리 -->
    					<li class="nav-item">
    						<a href="#" class="nav-link text-white p-3 mb-2 current">
    							<i class="fas fa-shopping-cart text-white fa-lg mr-3"></i> 주문관리
    						</a>
    					<!-- 문의/답변관리 -->
    					<li class="nav-item">
    						<a href="#" class="nav-link text-white p-3 mb-2 current">
    							<i class="fas fa-envelope text-white fa-lg mr-3"></i> 문의 / 답변관리
    						</a>
    					<!-- 회원관리 -->
    					<li class="nav-item">
    						<a href="#" class="nav-link text-white p-3 mb-2 current">
    							<i class="fas fa-user text-white fa-lg mr-3"></i> 회원관리
    						</a>
    				</ul>
    			</div>
    			<!-- end sidebar -->
    			<!-- top navbar -->
    			<div class="col-lg-9 ml-auto bg-dark fixed-top py-3">
    				<div class="row">
    					<div class="col-md-4">
    						<h4 class="text-light text-uppercase mb-0">주문관리</h4>
    					</div>
    					<div class="col-md-5">
    					
    					</div>
    					<div class="col-md-6">
    					
    					</div>
    					
    				</div>
    			</div>
    			<!-- end top navbar -->
    		</div>
    	</div>
    </nav>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
   
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath }/JS/admin.js"></script>
  </body>
</html>