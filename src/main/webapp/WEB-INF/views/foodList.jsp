<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>음식목록 - 리스트</h2>
	<form >
		<c:forEach items="${foodList}" var="car">
			<label>음식이름: ${food.food_name}</label>
			<label>제조사: ${food.food_maker}</label>
			<input type="checkbox" name="num" value="${car.num}">
			<hr>
		</c:forEach>
		<%-- <a href="${pageContext.request.contextPath}/car/register.jsp">추가
			등록</a> --%>
		<button type="submit">선택항목 삭제</button>
	</form>



</body>
</html>