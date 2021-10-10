<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>쇼핑몰 문의정보</title>
<link href="${pageContext.request.contextPath }/CSS/won.css"
   type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/plugins.css"
   type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/CSS/style.css"
   type="text/css" rel="stylesheet">
</head>
<script>
   function chkSubmit(q_uid){

      if (confirm("정말 삭제하시겠습니까?") == true){    //확인
            
         location.href='webDeleteOk?uid=' + q_uid
   
      }else{   //취소

          return;

      }
      
   }
</script>
<body>
<jsp:include page="header.jsp" />
   
   <section id="page-content" class="centerSetting">
      <div class="content col-lg-10">
      <table class="table">
               <tbody id="q_table">
                  <tr>
                     <th scope="row">제목</th>
                     <td> ${qList[0].q_title }</td>
                  </tr>
                  <tr>
                     <th scope="row" id="q_handler" class="q_headTable">내용</th>
                     <td><p>${qList[0].q_questionContent }</p></td>
                  </tr>
                  <tr>
                     <th>이미지</th>
                     <td>${qList[0].q_img }</td>
                  </tr>
               </tbody>
            </table>
         </div>
         <hr style="width:80%">
         <div>
         <h4>
            답변내용
         </h4>
         <h6 style="padding-bottom:150px;">→ ${qList[0].q_answerContent }</h6>
         </div>
         <div class="row">
            <div class="col-lg-12">
               <div class="form-group text-center">
                  <button class="btn" type="submit" onClick="location.href='serviceCenter'">뒤로가기</button>
                  <button class="btn" type="submit" onClick="location.href='webUpdate?uid=${qList[0].q_uid }'">수정하기</button>
                  <button class="btn" type="submit" onClick="chkSubmit(${qList[0].q_uid })">삭제하기</button>
               </div>
            </div>
         </div>
   </section>
   
   
<jsp:include page="footer.jsp" />
</body>
</html>