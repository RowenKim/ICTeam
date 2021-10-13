<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<c:choose>
	<c:when test="${result == 0 }">
	<script>
		alert("장바구니 담기 실패");
		history.back();  
	</script>
	</c:when>
	<c:otherwise>
	<script>
		alert("장바구니 담기 성공");
		location.href = "/icmall/all/stockDetail?uid=${dto.pro_uid}";
	</script>
	</c:otherwise>
</c:choose>
