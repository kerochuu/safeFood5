<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	Cookie[] cookie = request.getCookies();
	String id = "";
	if (cookie != null) {
		for (int i = 0; i < cookie.length; ++i) {
			if (cookie[i].getName().trim().equals("uid")) {
				id = cookie[i].getValue();
			}
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<title>SafeFoodForYou</title>
<meta charset="utf-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap-4.1.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/localStorage.js"></script>
</head>
<body>

	<div class="bg"></div>
	<form action="${pageContext.request.contextPath}/user/login.do"
		method="post">
		<div class="signIn-area">
			<div class="inner-head">
				<img src="${pageContext.request.contextPath}/resources/img/logo.png">
			</div>
			<div class="signIn-field">
				<label>아이디 
					    <input type="text" class="form-control" name="id" placeholder="ID" required="required">
				</label>
					    <br/>
				<label>비밀번호
					    <input type="password" class="form-control" name="pw" placeholder="PASSWORD" required="required">
				</label>
					    <br/>

			</div>

			<div class="form-btn">
				<input type="hidden" name="action" value="login">
				<button type="submit" class="btn btn-block btn-primary">로그인</button>
			</div>


			<div class="form-btn">
				<button id="sign-up" type="button" class="btn btn-block">회원가입</button>
			</div>
			<div class="form-btn">
				<button id="find-id" type="button" class="btn btn-block">계정찾기</button>
			</div>
			<div class="inner-foot">
				<p class="tag">SAFE AND FRESH</p>
			</div>


		</div>
	</form>

</body>
<style>
form {
	width: 0;
	height: 0;
}

.bg {
	background:
		url(${pageContext.request.contextPath}/resources/img/login-background.jpg);
	background-size: 90%;
	background-repeat: no-repeat;
	height: 800px;
	position: relative;
	z-index: -1;
	margin: 0 0 0 20%;
}

.signIn-area {
	background: white;
	position: relative;
	z-index: 1;
	height: 600px;
	width: 450px;
	padding: 50px;
	left: 250px;
	top: -700px;
}

.in-row {
	margin: 20px 0 0 0;
}

.form-util {
	margin: 20px 0 0 0;
	font-size: 14px;
	color: #4f5a66;
	font-weight: bold;
}

.form-btn {
	margin: 30px 0 0 0;
	font-size: 14px;
	font-weight: bold;
}

.inner-foot {
	margin: 50px 0 0 0;
}

.tag {
	text-align: center;
	font-size: 20px;
	font-weight: bold;
	color: #ddd;
}

.label {
	width: 100%;
}

.form-control {
	width: 100%;
	border: 1px solid;
	border-color: #ddd;
}
</style>
<script>
	$("#sign-up")
			.click(
					function() {
						location.href = "${pageContext.request.contextPath}/user/join.do";
					});
	$("#find-id")
			.click(
					function() {
						location.href = "${pageContext.request.contextPath}/user/find.do";
					});
</script>
</html>