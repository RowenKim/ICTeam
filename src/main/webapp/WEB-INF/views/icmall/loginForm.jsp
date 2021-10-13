<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>로그인 페이지</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/admin/Login/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Login/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Login/fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Login/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Login/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Login/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Login/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Login/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Login/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/admin/Login/css/main.css">
</head>
<body>
 <%-- loginProcessingUrl() 로 세팅한 url, 반드시 POST! --%>
<%-- 일단 아이디/패스워드 의 name 은 'username' 과 'password' 로 하자 (시큐리티의 디폴트) --%>
	<%-- 만약 다른 name  을 사용하려면 SecurityConfig 에서 .usernameParameter("userid") 해주면 된다 --%>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
			<form action="/loginOk" method="POST" class="login100-form validate-form">
					<span class="login100-form-title p-b-26">
						Welcome<br> 
						I.C Mall
					</span>
					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="m_id">
						<span class="focus-input100" data-placeholder="ID"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="m_password">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Login
							</button>
						
						</div>
					</div>
				</form>
					<div class="text-center p-t-115">
						<span class="txt1">
							아직 회원이 아니신가요?
						</span>

						<a class="txt2" href="/icmall/join">
							회원가입
						</a>
					</div>
				
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	<script src="${pageContext.request.contextPath }/admin/Login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/admin/Login/vendor/animsition/js/animsition.min.js"></script>
	<script src="${pageContext.request.contextPath }/admin/Login/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath }/admin/Login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/admin/Login/vendor/select2/select2.min.js"></script>
	<script src="${pageContext.request.contextPath }/admin/Login/vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath }/admin/Login/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="${pageContext.request.contextPath }/admin/Login/vendor/countdowntime/countdowntime.js"></script>
	<script src="${pageContext.request.contextPath }/admin/Login/js/main.js"></script>

</body>
</html>