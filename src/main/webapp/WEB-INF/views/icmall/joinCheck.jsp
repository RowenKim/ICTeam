<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link href="${pageContext.request.contextPath }/CSS/jaeuk.css"
	type="text/css" rel="stylesheet">


<title>약관동의페이지</title>


<script>
function frm() {
	var frm = $("lable[name=agree]:checkbox:checked").lenght;
	
	console.log(cnt);
	
	if(cnt < 1) {
		alert("한 개 이상을 선택");
	}
	else {
		alert(cnt + "개가 선택되었습니다.");
	}
	
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
					<h1>이용약관 동의</h1>
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
	</div>


	<form name="frm">
		<!-- 영역 -->
		<div class="joinCheck">

			<hr class="two">

			<table>
				<tr>
					<!-- 첫번째 줄 시작 -->
					<td rowspan="5" class="t1"><span class="f2">이용약관동의</span> <span id="f2"
						class="f2">*</span></td>

					<td style="width:70%;"><label class="lab" for="agree_all"> <input
							type="checkbox" name="agree_all" id="agree_all"> <span
							id="f1">전체 동의합니다</span>
					</label></td>
				</tr>
				<tr>
					<!-- 첫번째 줄 시작 -->
					
					<td><span id="f3" style="font-size: 7px">선택항목에 동의하지 않은
							경우도<br> 회원가입 및 일반적인 서비스웹 이용할 수 있습니다.</span> <br></td>
				</tr>
				<tr>
					<!-- 두번째 줄 시작 -->
					

					<td><label class="lab" for="agree"> <input
							type="checkbox" name="agree" value="1"> <span>이용약관
								동의<strong>(필수)</strong>
						</span>
					</label></td>
					<td><a href="#"><span class="f1">약관보기></span></a></td>
				</tr>
				<!-- 두번째 줄 끝 -->
				<tr>
					<!-- 세번째 줄 시작 -->
					
					<td><label class="lab" for="agree"> <input
							type="checkbox" name="agree" value="2"> <span>개인정보
								수집ㆍ이용 동의<strong>(필수)</strong>
						</span>
					</label></td>
					<td><a href="#"><span class="f1">약관보기></span></a></td>
				</tr>
		
			</table>



			<div class="div2 m-t-30">
				<button type="button" class="btn" onclick="loadData()">가입하기</button>
			</div>

		</div>
	</form>
	<script src="${pageContext.request.contextPath }/JS/jaeuk.js"></script>
</body>
</html>