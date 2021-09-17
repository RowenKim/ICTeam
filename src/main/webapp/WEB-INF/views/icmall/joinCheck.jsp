<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath }/CSS/jaeuk.css" type="text/css" rel="stylesheet">


<title>약관동의페이지</title>
</head>

<body>

<jsp:include page="header.jsp"/>


<form name="frm">
<!-- 영역 -->
<div class="div1">
	<table>
	<tr><!-- 첫번째 줄 시작 -->
	  <td class="t1">
	  	<span class = "f2">이용약관동의</span>
	  	<span id ="f2" class = "f2">*</span>
	  </td>
	
	  <td>
	  <label class= "lab" for="agree_all">
	  <input type="checkbox" name="agree_all" id="agree_all">
	  <span id = "f1">전체 동의합니다</span>
	  </label>
	  </td>
	</tr>
	<tr><!-- 첫번째 줄 시작 -->
		<td>
	    </td>
		<td>
		<span id = "f3" style="font-size: 7px" >선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스웹 이용할 수 있습니다.</span>
		<br>
		</td>
	</tr>
	<tr><!-- 두번째 줄 시작 -->
	 	<td>
	  	</td>
	
	    <td>
	    <label class= "lab" for="agree">
	 	<input type="checkbox" name="agree" value="1">
	    <span>이용약관 동의<strong>(필수)</strong></span>
	    </label>
		</td>
		<td>
	    <span class="f1">약관보기></span>
		</td>
	</tr><!-- 두번째 줄 끝 -->
	<tr><!-- 세번째 줄 시작 -->
		<td>
	  	</td>
	    <td>
	    <label class= "lab" for="agree">
	  	<input type="checkbox" name="agree" value="2">
	 	<span>개인정보 수집ㆍ이용 동의<strong>(필수)</strong></span>
		</label>
		</td>
		<td>
	    <span class="f1">약관보기></span>
		</td>
	</tr><!-- 세번째 줄 끝 -->
	<tr><!-- 네번째 줄 시작 -->
		<td>
	  	</td>
	    <td>
	    <label class= "lab" for="agree">
	  	<input type="checkbox" name="agree" value="3">
	  	<span>개인정보 수집ㆍ이용 동의<strong>(선택)</strong></span>
		</label>
		</td>
		<td>
	    <span class="f1">약관보기></span>
		</td>
	</tr><!-- 네번째 줄 끝 -->
	</table>
	
	
	<br><br><br>
	<div class="div2">
	<button type="button" class = "btn" onclick="loadData()">가입하기</button>
	</div>

</div>





<script src="${pageContext.request.contextPath }/JS/jaeuk.js"></script>

</form>
</body>
</html>