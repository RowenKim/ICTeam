<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            	<%-- Core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <span>I.C Mall ?????????</span>
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
      <!-- ???????????? -->       
        <li class="nav-item dropdown">
          <a class="nav-link sidebar-link text-white dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-shopping-cart text-white fa-lg mr-2"></i>
            <span>????????????</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          	<a class="dropdown-item navdropdown" href="payOk">-????????????</a>
            <a class="dropdown-item navdropdown" href="readyStuck">-???????????????</a>
            <a class="dropdown-item navdropdown" href="shopping">-?????????</a>
            <a class="dropdown-item navdropdown" href="shoppingFinish">-????????????</a>
            <a class="dropdown-item navdropdown" href="buyFinish">-????????????</a>
            <a class="dropdown-item navdropdown" href="refund">-????????????</a>
            <a class="dropdown-item navdropdown" href="exchange">-????????????</a>
            
          </div>
        </li>
        
        <!-- ??????/???????????? -->
    	 <li class="nav-item dropdown">
          <a class="nav-link sidebar-link text-white dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-envelope text-white fa-lg mr-2"></i>
            <span>?????? / ????????????</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item navdropdown" href="adminQuestion">-????????????</a>
            <a class="dropdown-item navdropdown" href="adminReview">-????????????</a> 
          </div>
        </li>
       <!-- ???????????? -->
         <li class="nav-item dropdown">
          <a class="nav-link sidebar-link text-white dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user text-white fa-lg mr-2"></i>
            <span> ????????????</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item navdropdown" href="userList">-???????????????</a>
          </div>
        </li>
      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">???????????? ?????????</a>
            </li>
            <li class="breadcrumb-item active">I.C Mall</li>
          </ol>
		
		<br>
		
		<!-- DataTables Example -->
		<div class="card mb-3">
		<div class="card-body">
		<div class="table-responsive">
                <table  class="table-hover table text-center table-bordered" id="myTable"  width="100%" cellspacing="0">
                  <thead>
                    <tr class="text-muted">
                      <th>??????</th>
                      <th>?????????</th>
                      <th>????????????</th>
                      <th>????????????</th>
                      <th>??????</th>
                      <th>????????????</th>
                      <th>????????????</th>
                      <th>????????????</th>
                      <th>????????????</th>
                    </tr>
                  </thead>
                   <c:forEach var="dto" items="${shipOk }" >
                    <tr>
                      <td style="vertical-align:middle"><input type="checkbox"/></td>
                      <td>${dto.m_name }</td>
                      <td>${dto.p_name }</td>
                      <td><span class="badge badge-danger w-75 py-2">${dto.s_status }</span></td>
                      <td>${dto.p_qty }</td>
                      <td>${dto.p_price }</td>
                      <td>${dto.p_way }</td>
                      <td>${dto.s_shippingNum }</td>
                      <td>${dto.p_date }
                      </td>
                    </tr>
                  </c:forEach>
                  </tbody>
                 
                </table>
              </div>
             </div>
           </div>
          
        
       
        
         
          

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright ?? I.C Mall 2021</span>
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
            <h5 class="modal-title" id="exampleModalLabel">???????????? ??????</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">??</span>
            </button>
          </div>
          <div class="modal-body">
          <span>I.C MAll Admin?????? ???????????? ????????? ?????????.</span><br> 
          Logout?????? ???????????? I.C Mall ?????????????????? ???????????????.</div>
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
