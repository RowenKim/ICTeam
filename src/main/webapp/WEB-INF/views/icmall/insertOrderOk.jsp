<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<%-- 위에서 필요한 트랜잭션이 마무리 되면 페이지 만들어주기 --%>
<c:choose>
	<c:when test="${result == 0 }">
		<script>
			alert("등록 실패");
			history.back();  
		</script>	
	</c:when>
	<c:otherwise>
		<script>
			alert("주문하기 페이지로 이동합니다");
			location.href = "/icmall/user/checkOut";
		</script>	
	</c:otherwise>
</c:choose>
