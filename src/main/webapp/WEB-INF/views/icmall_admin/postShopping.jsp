<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>I.C Mall Admin</title>

    <!-- Bootstrap core CSS-->
    <link href="${pageContext.request.contextPath }/admin/vendor/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/CSS/admin.css">
	
    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath }/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
     <link href="${pageContext.request.contextPath }/CSS/admin.css" type="text/css" rel="stylesheet">

    <!-- Page level plugin CSS-->
    <link href="${pageContext.request.contextPath }/admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath }/admin/css/sb-admin.css" rel="stylesheet">
    
    

  </head>

  <body id="page-top">
    <nav class="navbar navbar-expand navbar-dark navtopbg static-top">

      <a class="navbar-brand mr-1" href="adminIndex">Admin</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>
      <!-- Nav bar -->
      <form class="ml-auto text-light navtopfont"> 
      <span>I.C Mall 관리자</span>
      </form>
       <ul class="navbar-nav ml-auto ml-md-0">
          <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
          </div>
        </li>
         </ul>
    </nav>

    
	<div id="wrapper">
      <!-- Sidebar -->
      <ul class="sidebar navbar-nav sidebarHB">
      <!-- 주문관리 -->       
        <li class="nav-item dropdown">
          <a class="nav-link sidebar-link text-white dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-shopping-cart text-white fa-lg mr-2"></i>
            <span>주문관리</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item navdropdown" href="beforePay">-입금대기</a>
            <a class="dropdown-item navdropdown" href="finishPay">-결제완료</a>
            <a class="dropdown-item navdropdown" href="readyStuck">-상품준비중</a>
            <a class="dropdown-item navdropdown" href="shopping">-배송중</a>
            <a class="dropdown-item navdropdown" href="shoppingFinish">-배송완료</a>
            <a class="dropdown-item navdropdown" href="buyFinish">-구매확정</a>
            <a class="dropdown-item navdropdown" href="refund">-환불접수</a>
            <a class="dropdown-item navdropdown" href="exchange">-교환접수</a>
            
          </div>
        </li>
        
        <!-- 문의/답변관리 -->
    	 <li class="nav-item dropdown">
          <a class="nav-link sidebar-link text-white dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-envelope text-white fa-lg mr-2"></i>
            <span>문의 / 답변관리</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item navdropdown" href="adminQuestion">-문의하기</a>
            <a class="dropdown-item navdropdown" href="adminReview">-상품후기</a> 
          </div>
        </li>
       <!-- 회원관리 -->
         <li class="nav-item dropdown">
          <a class="nav-link sidebar-link text-white dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user text-white fa-lg mr-2"></i>
            <span> 회원관리</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item navdropdown" href="userList">-회원리스트</a>
            <a class="dropdown-item navdropdown" href="userLevel">-회원관리</a> 
            
          </div>
        </li>
      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">회원 등급 관리</a>
            </li>
            <li class="breadcrumb-item active">I.C Mall</li>
          </ol>
		
		<br>
	   <div class="container">
  		<h3>게시글 보기</h3>
       <table class="table table-bordered" >
		  <tbody style="vertical-align:middle;">
		    <tr>
		      <th>게시판</th>
		      <td>
				  <div class="dropdown position-static actions d-inline-block">
				     <button class="btn btn btn-outline px-1 py-0 mt-1 dropdown-toggle actions-btn" type="button"
				          id="table-action" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				          <i class="mdi mdi-dots-horizontal"></i>
				          쇼핑몰관련문의</button>
				      <div class="dropdown-menu" aria-labelledby="table-action">
				          <a class="dropdown-item" href="postStuck">상품문의</a>
				          <a class="dropdown-item" href="postAnyquestion">기타문의</a>
				          <a class="dropdown-item" href="post">전체</a>
				      </div>
				</div>
           	  </td>
		    </tr>
		    <tr>
		    	<th>제목</th>
		    	<td>상품/쇼핑몰/기타 문의합니다</td>
		    </tr>
		    <tr>
		    	<th>작성자</th>
		    	<td>누구게?</td>
		    </tr>
		    <tr>
		    	<th>작성날짜</th>
		    	<td>2021-00-00</td>
		    </tr>
		    <tr>
		    	<th>내용</th>
		    	<td>홍홍홍</td>
		    </tr>
		  </tbody>
		</table>
		</div>
		<br>
		<div class="container">
  		<h3>게시글 답변</h3>
       <table class="table table-bordered" >
		  <tbody style="vertical-align:middle;">
		    <tr>
		      <th>답변상태</th>
		      <td>
				  <div class="dropdown position-static actions d-inline-block">
				     <button class="btn btn btn-outline px-1 py-0 mt-1 dropdown-toggle actions-btn" type="button"
				          id="table-action" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				          <i class="mdi mdi-dots-horizontal"></i>
				          답변대기</button>
				      <div class="dropdown-menu" aria-labelledby="table-action">
				          <a class="dropdown-item" href="#">답변완료</a>
				      </div>
				</div>
           	  </td>
		    </tr>
		    <tr>
		    	<th>답변제목</th>
		    	<td>문의답변</td>
		    </tr>
		    <tr>
		    	<th>답변내용</th>
		    	<td>네!</td>
		    </tr>
		  </tbody>
		</table>
		</div>
		
          
        
       
        
         
          

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © I.C Mall 2021</span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

    </div>
    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">로그아웃 안내</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">
          <span>I.C MAll Admin에서 로그아웃 하려고 합니다.</span><br> 
          Logout버튼 클릭하면 I.C Mall 메인페이지로 돌아갑니다.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="/icmall/index">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath }/admin/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath }/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="${pageContext.request.contextPath }/admin/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath }/admin/vendor/datatables/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath }/admin/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath }/admin/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="${pageContext.request.contextPath }/admin/js/demo/datatables-demo.js"></script>
    <script src="${pageContext.request.contextPath }/admin/js/demo/chart-area-demo.js"></script>
	
	<script src="${pageContext.request.contextPath }/JS/admin.js"></script>
	
  </body>

</html>
