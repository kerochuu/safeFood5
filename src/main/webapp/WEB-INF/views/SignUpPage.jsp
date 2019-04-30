<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<title>SafeFoodForYou</title>
		<meta charset="utf-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"
				integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-4.1.0.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/localStorage.js"></script>
	</head>
<body>
	
		<h1>사용자 관리-사용자 등록</h1>
		<form action="${pageContext.request.contextPath}/user/insertUser.do" method="post">
	    <h2 class="tilte-sub">회원가입</h2>
	    
	    
	    <hr>
	    
	    <div class="contents">
	    <div class="form-group">
	    <label>아이디 </label>
	    <input type="text" class="form-control" name="user_id" required="required"><br />
	    </div>
	    
	    <div class="form-group">
	    <label>비밀번호 </label>
	    <input type="text" class="form-control" name="user_pw" required="required"><br />
	    </div>
	    
	    <div class="form-group">
	    <label>이름 </label>
	    <input type="text" class="form-control" name="user_name" required="required"><br />
	    </div>
	    
	    <div class="form-group">
	    <label>핸드폰 </label>
	    <input type="text" class="form-control" name="user_phone" required="required"><br />
	    </div>
	    
	    <div class="form-group">
	    <label>주소 </label>
	    <input type="text" class="form-control" name="user_address" required="required"><br />
	    </div>
	    
	    <div class="form-group">
	    <label>섭취목록 </label>
	    <input type="text" class="form-control" name="user_eatlist" required="required"><br />
	    </div>
	    
	    <div class="form-group">
	    <label>알레르기 </label>
	    <select name="user_allergy">
			<option selected="selected" value="10">10</option>
			<option value="20">20</option>
			<option value="30">30</option>
		</select> 
		</div>
	    
		
		<br /> 
		<input type="submit" value="회원가입"> 
		<input type="reset" value="취소">
		</div>
			
	   
	    </form>
	<jsp:include page="Footer.jsp" />
</body>
<style>
    body {
        margin: 0;
    }
    main {
        margin: 5% 20%;
    }
    .safe-text {
        color:rgb(22, 160, 133);
    }
    .form-reg {
        margin: 5% 10%;
        width: 50%;
    }
    .form-check-inline{
        margin: 1% 2%;
    }
    button{
        margin: 1%;
    }
</style>
</html>