<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
    	<%-- Core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<%
    Calendar onedayago = Calendar.getInstance();
onedayago.add(Calendar.DATE , -1);
	String beforeDate = new java.text.SimpleDateFormat("MM-dd").format(onedayago.getTime());%>
<%  
    Calendar twodayago = Calendar.getInstance();
twodayago.add(Calendar.DATE , -2);
	String twoDate = new java.text.SimpleDateFormat("MM-dd").format(twodayago.getTime());%>
<%  
    Calendar threedayago = Calendar.getInstance();
threedayago.add(Calendar.DATE , -3);
	String threeDate = new java.text.SimpleDateFormat("MM-dd").format(threedayago.getTime());%>
<%  
    Calendar fourdayago = Calendar.getInstance();
fourdayago.add(Calendar.DATE , -4);
	String fourDate = new java.text.SimpleDateFormat("MM-dd").format(fourdayago.getTime());%>
<%  
    Calendar fivedayago = Calendar.getInstance();
fivedayago.add(Calendar.DATE , -5);
	String fiveDate = new java.text.SimpleDateFormat("MM-dd").format(fivedayago.getTime());%>
<%  
    Calendar sixdayago = Calendar.getInstance();
sixdayago.add(Calendar.DATE , -6);
	String sixDate = new java.text.SimpleDateFormat("MM-dd").format(sixdayago.getTime());%>
<%  
    Calendar sevendayago = Calendar.getInstance();
sevendayago.add(Calendar.DATE , -7);
	String sevenDate = new java.text.SimpleDateFormat("MM-dd").format(sevendayago.getTime());%>
	
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
    
    
    <link href="${pageContext.request.contextPath }/CSS/won.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">

  </head>

  <body id="page-top">
    <nav class="navbar navbar-expand navbar-dark navtopbg static-top">

      <a class="navbar-brand mr-1" href="adminIndex">Admin</a>

      
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
    
    <!-- 관리자 메인 페이지 -->
    <section class="p-b-10">
            <div class="container">
	                <div class="row">
	                    <div class="col-lg-8">
	                        <div class="heading-text heading-section ai_order">
						    	<span id="orderTitel_admin"><b>주문관리</b></span>
	                            <table class="ai_tab" id="ai_tab">
							    	<tr>
							    		<td class="ai_tab1"><a href="shoppingFinish" class="ai_title">배송완료</a><br>
							    		<div class="ai_sec">${countShippingOkPro }</div></td>
							    		<td class="ai_tab1"><a href="readyStuck" class="ai_title">상품준비중</a><br>
							    		<div class="ai_sec">${countReadyPro }</div></td>
							    		<td class="ai_tab1"><a href="shopping" class="ai_title">배송중</a><br>
							    		<div class="ai_sec">${countShippingPro }</div></td>
							    	</tr>
							    	<tr>
							    		<td class="ai_tab2"><a href="buyFinish" class="ai_title">구매확정</a><br>
							    		<div class="ai_sec">${countBuyOkPro }</div></td>
							    		<td class="ai_tab2"><a href="refund" class="ai_title">환불접수</a><br>
							    		<div class="ai_sec">${countRefundPro }</div></td>
							    		<td class="ai_tab2"><a href="exchange" class="ai_title">교환접수</a><br>
							    		<div class="ai_sec">${countExchangePro }</div></td>
							    	</tr>
							    </table>
	                        </div>
	                    </div>
	                    <div class="col-lg-4">
	                        <div id="secondTable">
						    	<span id="qutTitle_admin">문의/답변관리</span>
						    		<table class="ai_secTab">
						    			<tr>
						    				<td class="ai_secTab1" id="ai_secTab1-1"><a href="adminReview" class="ai_title2">상품후기</a></td>
						    				<td class="ai_secTab1"><span class="ai_cnt">${countReview }</span> 건</td>
						    			</tr>
						    			<tr>
						    				<td class="ai_secTab2"><a href="adminQuestion" class="ai_title2">문의하기</a></td>
						    				<td class="ai_secTab2"><span class="ai_cnt">${countProQA }</span> 건</td>
						    			</tr>
						    		</table>
					    		</div>
					    		</div>
						    <div>
	                    </div>
	            <p class="qutTitle2_admin">회원현황</p>
	            <table class="table table-bordered table-striped col-lg-11" id="memberTable">
	                    <thead>
	                        <tr>
	                            <th class="sep-15 ai_tapHead">날짜</th>
	                            <th class="sep-25 ai_tapHead">
	                                전체회원<br>
	                            </th>
	                            <th class="sep-25 ai_tapHead">
	                                신규회원
	                            </th>
	                            <th class="sep-25 ai_tapHead">
	                            	탈퇴회원
	                            </th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                        <tr>
	                            <th class="text-nowrap ai_tapHead2" scope="row" id="7daysAgo">
	                            <%= sevenDate %>
	                            </th>
	                            <td class="ai_tapD2">${countAllMemSevendayAgo }</td> <!-- 전체회원 7일전-->
	                            <td class="ai_tapD2">${countNewMemSevendayAgo }</td> <!-- 신규회원 -->
	                            <td class="ai_tapD2">${countDelMemSevendayAgo }</td> <!-- 탈퇴회원 -->
	                        </tr>
	                        <tr>
	                            <th class="text-nowrap ai_tapHead2" scope="row"><%= sixDate %></th>
	                            <td class="ai_tapD2">${countAllMemSixdayAgo }</td> <!-- 전체회원 6일전-->
	                            <td class="ai_tapD2">${countNewMemSixdayAgo }</td> <!-- 신규회원 -->
	                            <td class="ai_tapD2">${countDelMemSixdayAgo }</td> <!-- 탈퇴회원 -->
	                        </tr>
	                        <tr>
	                            <th class="text-nowrap ai_tapHead2" scope="row"><%= fiveDate %></th>
	                           <td class="ai_tapD2">${countAllMemFivedayAgo }</td> <!-- 전체회원 5일전-->
	                            <td class="ai_tapD2">${countNewMemfivedayAgo }</td> <!-- 신규회원 -->
	                            <td class="ai_tapD2">${countDelMemFivedayAgo }</td> <!-- 탈퇴회원 -->
	                        </tr>
	                        <tr>
	                            <th class="text-nowrap ai_tapHead2" scope="row"><%= fourDate %></th>
	                           <td class="ai_tapD2">${countAllMemFourdayAgo }</td> <!-- 전체회원 4일전-->
	                            <td class="ai_tapD2">${countNewMemFourdayAgo }</td> <!-- 신규회원 -->
	                            <td class="ai_tapD2">${countDelMemFourdayAgo }</td> <!-- 탈퇴회원 -->
	                        </tr>
	                        <tr>
	                            <th class="text-nowrap ai_tapHead2" scope="row"><%= threeDate %></th>
	                          <td class="ai_tapD2">${countAllMemThreedayAgo }</td> <!-- 전체회원 3일전-->
	                            <td class="ai_tapD2">${countNewMemThreedayAgo }</td> <!-- 신규회원 -->
	                            <td class="ai_tapD2">${countDelMemThreedayAgo }</td> <!-- 탈퇴회원 -->
	                        </tr>
	                        <tr>
	                            <th class="text-nowrap ai_tapHead2" scope="row"><%= twoDate %></th>
	                           <td class="ai_tapD2">${countAllMemTwodayAgo }</td> <!-- 전체회원 2일전-->
	                            <td class="ai_tapD2">${countNewMemTwodayAgo }</td> <!-- 신규회원 -->
	                            <td class="ai_tapD2">${countDelMemTwodayAgo }</td> <!-- 탈퇴회원 -->
	                        </tr>
	                        <tr>
	                            <th class="text-nowrap ai_tapHead2" scope="row"><%= beforeDate %></th>
	                          <td class="ai_tapD2">${countAllMemOnedayAgo }</td> <!-- 전체회원 1일전-->
	                            <td class="ai_tapD2">${countNewMemOnedayAgo }</td> <!-- 신규회원 -->
	                            <td class="ai_tapD2">${countDelMemOnedayAgo }</td> <!-- 탈퇴회원 -->
	                        </tr>
	                        <tr>
	                           <th class="text-nowrap ai_tapHead2" scope="row" colspan="2">7일 합계</th>
	                            <td class="ai_tapD2">${countAllMemSevenBetOneDay }</td>
	                            <td class="ai_tapD2">
	                            ${countDelMemSevenBetOneDay }
	                            </td>
	                        </tr>
	                    </tbody>
	                </table>
	            </div>
         </div>
            
        </section>
    
    
    
    

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

	<script src="${pageContext.request.contextPath }/JS/jaeuk.js"></script>
	<script src="${pageContext.request.contextPath }/JS/won.js"></script>
	<script src="${pageContext.request.contextPath }/JS/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/JS/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/JS/functions.js"></script>
  </body>

</html>
