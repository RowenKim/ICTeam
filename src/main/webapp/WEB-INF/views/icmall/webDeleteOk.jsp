<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<c:choose>
	<c:when test="${ result == 0 }">
		<script>
			alert("삭제 실패");
			history.back();  
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("삭제 성공");
			location.href = "/icmall/all/serviceCenter";
		</script>
	</c:otherwise>
</c:choose>
</html>