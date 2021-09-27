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
		<div class="container center m-t-30 m-b-30" id="div3">

			<div>
				<h2>회원가입</h2>
			</div>
			<br>

			<hr class="two">
			<br>

			<div>
				<form name="login" action="index.html" method="post">
					<table style="width:100%;">
						<tr>
							<!-- 첫번째 줄 시작 -->
							<td class="t2"><span>아이디</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3 text-center"><input type="text" name="user_ID" class="inf"
								placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"></td>
							<td class="t4"><input type="button" name="user_IDcheck"
								class="idbtn" value="중복확인"></td>
						</tr>

						<tr>
							<!-- 두번째 줄 시작 -->
							<td class="t2"><span>비밀번호</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3"><input type="password" name="user_PW1" class="inf"
							 placeholder="비밀번호를 입력해주세요"></td>
							<td class="t4"></td>
						</tr>
						<!-- 두번째 줄 끝 -->
						<tr>
							<!-- 세번째 줄 시작 -->
							<td class="t2"><span>비밀번호 확인</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3"><input type="password" name="user_PW2" class="inf"
								 placeholder="비밀번호를 한번 더 입력해주세요"></td>
							<td class="t4"><input type="button" name="user_PWcheck"
								class="idbtn" value="중복확인"></td>
						</tr>
						<!-- 세번째 줄 끝 -->
						<tr>
							<!-- 네번째 줄 시작 -->
							<td class="t2"><span>이름</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3"><input type="text" name="user_name" value="" class="inf"
								 placeholder="이름을 입력해주세요"></td>
							<td class="t4"></td>
						</tr>
						<!-- 네번째 줄 끝 -->
						<tr>
							<!-- 다섯번째 줄 시작 -->
							<td class="t2"><span>이메일</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3"><input type="text" name="user_email" value="" class="inf"
								 placeholder="예: icmall@mall.com"></td>
							<td class="t4"><input type="button" name="user_PWcheck"
								class="idbtn" value="중복확인"></td>
						</tr>
						<!-- 다섯번째 줄 끝 -->

						<tr>
							<!-- 여섯번째 줄 시작 -->
							<td class="t2"><span>휴대폰</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3"><input type="text" name="user_phone" value="" class="inf"
							 placeholder="숫자만 입력해주세요"></td>
							<td class="t4"></td>
						</tr>
						<!-- 여섯번째 줄 끝 -->

						<tr>
							<!-- 일곱번째 줄 시작 -->
							<td class="t2"><span>주소</span> <span class="f4" id="f2">*</span>
							</td>
							<td class="t3"><input type="button" name="user_adress" class="inf"
								id="adressbtn" value="주소검색"></td>
							<td class="t4"></td>
						</tr>
						<!-- 일곱번째 줄 끝 -->

						<tr>
							<!-- 여덜번째 줄 시작 -->
							<td class="t2"><span>성별</span></td>
							<td id="t3"><input type="radio" name="gender" value="m" class="inf"
								id="man"> <label for="man">남자</label> <input
								type="radio" name="gender" value="m" id="woman"> <label
								for="woman">여자</label></td>
							<td class="t4"></td>
						</tr>
						<!-- 아홉번째 줄 끝 -->
						<tr>
							<!-- 아홉번째 줄 시작 -->
							<td class="t2"><span>생년월일</span></td>
							<td class="t3"><input type="date" name="user_date" class="inf"
								id="datebtn" value="" placeholder="YYYY / MM / DD"></td>
							<td class="t4"></td>
						</tr>
						<!-- 아홉번째 줄 끝 -->
					</table>
					<!-- end:icon2 -->
					<div class="row">
						<div class="col-lg-12 m-t-30">
							<div class="form-group text-center">
								<button class="btn" type="submit" style="width:30%;">제출</button>
								
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