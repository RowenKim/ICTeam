<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8"/>
  <link href="${pageContext.request.contextPath }/CSS/jaeuk.css" type="text/css" rel="stylesheet">
  <title>회원정보수정</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
function fn_mailChk(){
	/* 이메일 중복 검사 */
	$.ajax({
		url : "all/mailChk",
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
function userUpdate_check(){
	/* 회원정보수정 유효성 검사 */
	var pwd = document.getElementById("m_password");
	var repwd = document.getElementById("m_password2");
	var mail = document.getElementById("m_mail");
	var phone = document.getElementById("m_phone");
	
	var mail_pattern = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	var phone_pattern = /^[0-9]+/g;
	
	if(pwd.value==''){ 
        alert("Password를 입력해주세요.");
        pwd.focus();
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
	
}
</script>
<script>
function info_chk(frm){
	frm.action ="/icmall/user/userDelete";
	frm.submit();
	return true;
}

</script>
</head>
<body>

<jsp:include page="header.jsp"/>
 
<div class="container center" id ="div3">
	 <br><br><br>
  <div>
    <h2>회원정보수정</h2>
  </div>
  <br>
  <hr class="two">
  <br>
 
  <div>
  <form name="login" action="/icmall/user/userUpdateOk" method="post">
  <table>
	<tr><!-- 첫번째 줄 시작 -->
	  <td class="t2">
	  	<span>아이디</span> 
	  </td>
	  <td class="t3">
	  <input type="hidden" name="m_uid"  id ="m_uid"  class = "inf" value="${dto.m_uid}" readonly>
	  <input type="text" name="m_id"  id ="m_id"  class = "inf" value="${dto.m_id}" readonly>
	  </td>
	   <td class="t4">
	  </td>
	</tr>
	<tr><!-- 두번째 줄 시작 -->
		<td class="t2">
		 <span>현재비밀번호</span> 
	    </td>
		<td class="t3">
		 <input type="password" name="user_PW1" class = "inf" value="${dto.m_password}" readonly> 
		</td>
		<td class="t4">
		</td>
	</tr><!-- 두번째 줄 끝 -->
	
	<tr><!-- 두번째 줄 시작 -->
		<td class="t2">
		 <span>새 비밀번호</span> 
		
	    </td>
		<td class="t3">
		 <input type="password" name="m_password" id="m_password" class = "inf">
		</td>
		<td class="t4">
		</td>
	</tr><!-- 두번째 줄 끝 -->
	<tr><!-- 세번째 줄 시작 -->
	 	<td class="t2">
	 	 <span>새 비밀번호 확인</span>
	  	</td>
	    <td class="t3">
	  	  <input type="password" name="m_password2" id="m_password2" class = "inf" onchange="passConfirm()">
		</td>
		<td class="t4">
		<span id="confirmMsg"></span>
		</td>
	</tr><!-- 세번째 줄 끝 -->
	<tr><!-- 네번째 줄 시작 -->
		<td class="t2">
		 <span>이름</span> 
	  	</td>
	    <td class="t3">
	     <input type="text" name="m_name" value="${dto.m_name}" class = "inf" readonly> 
		</td>
		<td class="t4">
		</td>
	</tr><!-- 네번째 줄 끝 -->
	<tr><!-- 다섯번째 줄 시작 -->
		<td class="t2">
		 <span>이메일</span> 
	  	</td>
	    <td class="t3">
	     <input type="text" name="m_mail" value="" class = "inf" id="m_mail"> 
		</td>
		<td class="t4">
	     <input type="button" name="user_PWcheck" class = "idbtn"  onclick="fn_mailChk();" value="중복확인" >
		</td>
	</tr><!-- 다섯번째 줄 끝 -->

 	<tr><!-- 여섯번째 줄 시작 -->
		<td class="t2">
		 <span>휴대폰</span> 
	  	</td>
	    <td class="t3">
	     <input type="text" name="m_phone" value=""  class = "inf"  placeholder="숫자만 입력해주세요"> 
		</td>
		<td class="t4">

		</td>
	</tr><!-- 여섯번째 줄 끝 -->
	

	<tr><!-- 여덜번째 줄 시작 -->
		<td class="t2">
		  <span>성별</span>
	  	</td>
	    <td id = "t3">
	     <input type="radio" name="m_gender" value="m" id="man">
      	<label for="man">남자</label>
      	<input type="radio" name="m_gender" value="m" id="woman"> 
     	 <label for="woman">여자</label>
		</td>
		<td class="t4">
		</td>
	</tr><!-- 아홉번째 줄 끝 -->
	<tr><!-- 아홉번째 줄 시작 -->
		<td class="t2">
		  <span>생년월일</span>
	  	</td>
	    <td class="t3">
	     <input type="date" name="m_birth"  id = "datebtn"  value="${dto.m_birth }" placeholder="YYYY / MM / DD"> 
		</td>
		<td class="t4">
		</td>
	</tr><!-- 아홉번째 줄 끝 -->
	</table>
	<input type="hidden" name="m_addr" value="${dto.m_addr}" />
	<input type="hidden" name="enabled" value="${dto.enabled }" />
	<br><br>
  <div class="div4">
  <input type="submit" name="" value="탈퇴하기"  onClick='return info_chk(this.form);' class ="idbtn">
  <input type="submit" name="" value="정보수정"  onclick ="userUpdate_check();" class ="upbtn">
  </div>
  </form>
  </div>
  <br><br><br><br><br>
  
  
  
  </div>
  

  
</body>
</html>