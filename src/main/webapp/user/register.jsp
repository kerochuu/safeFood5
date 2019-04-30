<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>사용자 관리-사용자 등록</h1>
	<form action="${pageContext.request.contextPath}/user/insertUser.do" method="post">
		차량번호:<input type="text" name="num" required="required"><br />
		모델명:<input type="text" name="model" required="required"><br />
		가격:<input type="number" name="price" required="required"><br />
		제조사 코드: <select name="vcode">
			<option selected="selected" value="10">10</option>
			<option value="20">20</option>
			<option value="30">30</option>
		</select> <br /> <input type="submit" value="자동차 등록"> <input
			type="reset" value="취소">
	</form>

</body>
</html>