<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link href="${pageContext.request.contextPath }/CSS/jaeuk.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
	type="text/css" rel="stylesheet">
<title>회원가입</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
function fn_idChk(){
	/* 아이디 중복 검사 */
	$.ajax({
		url : "/idChk",
		type : "post",
		dataType : "json",
		//data : {"m_id" : $("m_id").val()},
		data : "user=" + $("input[name=m_id]").val(),
		success : function(data){
			if(data == 1){
				alert("중복된 아이디입니다.");
			}else if(data == 0){
				$("#idChk").attr("value", "Y");
				alert("사용가능한 아이디입니다.");
			}
		}
	});
}
</script>
<script>
function fn_mailChk(){
	/* 이메일 중복 검사 */
	$.ajax({
		url : "/mailChk",
		type : "post",
		dataType : "json",
		//data : {"m_id" : $("m_id").val()},
		data : "mail=" + $("input[name=m_mail]").val(),
		success : function(data){
			if(data == 1){
				alert("중복된 메일입니다.");
			}else if(data == 0){
				$("#mailChk").attr("value", "Y");
				alert("사용가능한 메일입니다.");
			}
		}
	});	
}
</script>

<script>
function passConfirm(){
		/* 비밀번호 체크 */
		var password = document.getElementById('m_password');					
		var passwordConfirm = document.getElementById('m_password2');	
		var confrimMsg = document.getElementById('confirmMsg');				
		var correctColor = "#00ff00";	
		var wrongColor ="#ff0000";	
		
		if(password.value == passwordConfirm.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
			confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
			confirmMsg.innerHTML ="비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
		}else{
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML ="비밀번호 불일치";
		}
}
</script>

<script>
function joinform_check() {
	/* 회원가입 유효성 검사 */
	var id = document.getElementById("m_id");
	var pwd = document.getElementById("m_password");
	var repwd = document.getElementById("m_password2");
	var name = document.getElementById("m_name");
	var mail = document.getElementById("m_mail");
	var phone = document.getElementById("m_phone");
	var adress = document.getElementById("adressbtn");
	
	var id_pattern = /^[0-9a-z]{6,15}$/;
	var mail_pattern = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	var phone_pattern = /^[0-9]+/g;
	
	
	if(id.value == ""){
		alert("아이디를 입력하시요.");
		id.focus();
		return false;
	};
	if(!id_pattern.test(id.value)){
		alert("ID는 6~15자의 영문 숫자로만 입력하여 주세요.");
		id.focus();
		return false;
	};
	if(pwd.value==''){ 
        alert("Password를 입력해주세요.");
        pwd.focus();
        return false;
    };
	if(name.value==''){ 
        alert("name을 입력해주세요.");
        name.focus();
        return false;
    };
    if(mail.value==''){ 
        alert("mail을 입력해주세요.");
        mail.focus();
        return false;
    };
    if(!mail_pattern.test(mail.value)){
		alert("올바른 mail을 입력해주세요.");
		mail.focus();
		return false;
	};
	if(phone.value==''){ 
        alert("phone을 입력해주세요.");
        phone.focus();
        return false;
    };
    if(!phone_pattern.test(phone.value)){
		alert("숫자만 입력해주세요.");
		phone.focus();
		return false;
    };
    if(adress.value==''){ 
        alert("주소를 입력해주세요.");
        adress.focus();
        return false;
    };
    
	document.join_form.submit();
}

</script>

</head>
<body>

   
    

	<jsp:include page="header.jsp" />
	<div class="body-inner">
		<!-- Page title -->
		<section id="page-title">
			<div class="container">
				<div class="page-title">
					<h1>회원가입</h1>
					<!--  <span>Shop 2 columns version</span> -->
				</div>
				<!--  <div class="breadcrumb">
                    <ul>
                        <li><a href="#">Home</a>
                        </li>
                        <li><a href="#">Shop</a>
                        </li>
                        <li class="active"><a href="#">2 columns version</a>
                        </li>
                    </ul>
                </div> -->
			</div>
		</section>
		<!-- end: Page title -->
		<div class="container center m-t-30 m-b-30" id="div3" style="overflow:hidden;">

			<div>
				<h2>회원가입</h2>
			</div>
			<br>

			<hr class="two">
			<br>

			<div>
				<form name="login" action="/joinOk" method="POST">
					<table style="width:100%;">
						<tr>
							<!-- 첫번째 줄 시작 -->
							<td class="t2"><span>아이디</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3 text-center"><input type="text" name="m_id" class="inf" id ="m_id" 
								placeholder="6자에서 15자의 영문 혹은 영문과 숫자를 조합" ></td>
							<td class="t4"><input type="button" 
								class="idbtn" onclick="fn_idChk();" value="중복확인"></td>
						</tr>

						<tr>
							<!-- 두번째 줄 시작 -->
							<td class="t2"><span>비밀번호</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3"><input type="password" name="m_password" id="m_password" class="inf" onchange="passConfirm()"
							 placeholder="비밀번호를 입력해주세요"></td>
							<td class="t4"></td>
						</tr>
						<!-- 두번째 줄 끝 -->
						<tr>
							<!-- 세번째 줄 시작 -->
							<td class="t2"><span>비밀번호 확인</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3"><input type="password" name="m_password2" id="m_password2" class="inf"
								 placeholder="비밀번호를 한번 더 입력해주세요" onchange="passConfirm()"></td>
							<td class="t4"><span id="confirmMsg"></span></td>
						</tr>
						<!-- 세번째 줄 끝 -->
						<tr>
							<!-- 네번째 줄 시작 -->
							<td class="t2"><span>이름</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3"><input type="text" name="m_name" value="" class="inf" id="m_name"
								 placeholder="이름을 입력해주세요"></td>
							<td class="t4"></td>
						</tr>
						<!-- 네번째 줄 끝 -->
						<tr>
							<!-- 다섯번째 줄 시작 -->
							<td class="t2"><span>이메일</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3"><input type="text" name="m_mail" value="" class="inf" id="m_mail"
								 placeholder="예: icmall@mall.com"></td>
							<td class="t4"><input type="button" name="user_PWcheck"
								class="idbtn"  onclick="fn_mailChk();" value="중복확인"></td>
						</tr>
						<!-- 다섯번째 줄 끝 -->

						<tr>
							<!-- 여섯번째 줄 시작 -->
							<td class="t2"><span>휴대폰</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3"><input type="text" name="m_phone" value="" class="inf" id="m_phone"
							 placeholder="숫자만 입력해주세요"></td>
							<td class="t4"></td>
						</tr>
						<!-- 여섯번째 줄 끝 -->

						<tr>
							<!-- 일곱번째 줄 시작 -->
							<td class="t2"><span>주소</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3"><input type="text" name="m_addr" class="inf" 
								id="adressbtn" value="주소검색" ></td>
							<td class="t4"></td>
						</tr>
						<!-- 일곱번째 줄 끝 -->

						<tr>
							<!-- 여덜번째 줄 시작 -->
							<td class="t2"><span>성별</span></td>
							<td id="t3"><input type="radio" name="m_gender" value="m"
								id="man"> <label for="man">남자</label> <input class="m-l-10"
								type="radio" name="m_gender" value="w" id="woman"> <label
								for="woman">여자</label></td>
							<td class="t4"></td>
						</tr>
						<!-- 아홉번째 줄 끝 -->
						<tr>
							<!-- 아홉번째 줄 시작 -->
							<td class="t2"><span>생년월일</span></td>
							<td class="t3"><input type="date" name="m_birth" class="inf"
								id="datebtn" value="" placeholder="YYYY / MM / DD"></td>
							<td class="t4"></td>
						</tr>
						<!-- 아홉번째 줄 끝 -->
					</table>
					<!-- end:icon2 -->
					<div class="row">
						<div class="col-lg-12 m-t-30">
							<div class="form-group text-center">
								<button class="btn" type="submit" onclick ="joinform_check();" style="width:30%;">제출</button>
								
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
	<jsp:include page="footer.jsp" />
</body>

</html>