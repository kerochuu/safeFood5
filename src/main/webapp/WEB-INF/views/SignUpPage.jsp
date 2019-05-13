<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	src="${pageContext.request.contextPath}/resources/js/localStorage.js"></script>	</head>
<body>
	
	
	 
		 
		<div class="bg"></div>
		
	<form action="${pageContext.request.contextPath}/user/insertUser.do" method="post">
	   	<div class="signIn-area">
	   	                   
	   	<h2 class="tilte-sub">회원가입</h2>
			
			
			<div class="contents">
				<div class="signIn-field">
				    <div style = "width: 250px; float: left;">
					    <label for="id" >아이디 <input id="id" type="text" class="form-control" name="user_id" required="required"></label>
					    <br/>
					    
					    <label>비밀번호
					    <input type="password" class="form-control" name="user_pw" required="required">
					     </label>
					     <br/>
					     
					    <label>이름 
					    <input type="text" class="form-control" name="user_name" required="required">
					    </label>
					    <br/>
					    
					    <label>핸드폰 
					    <input type="text" class="form-control" name="user_phone" >
					    </label>
					    <br/>
					    
					    <label>주소 
					    <input type="text" class="form-control" name="user_address" >
					   </label>
					    <br/>
				</div>	
				
					<div style ="float:left;">
					    알레르기 <hr/>
					    
					    <label for="ebi">새우<input id = "ebi" type="checkbox" class="form-control" name="user_allergy" 
					    	value = "새우"> </label>
					    	
					   	<label for="kong">대두 <input id = "kong" type="checkbox" class="form-control" name="user_allergy" 
					    	value = "대두"> </label>
					    	
					   	<label for="milk"> 우유<input id = "milk" type="checkbox" class="form-control" name="user_allergy" 
					    	value = "우유"> </label>
					   
					   
					    <!-- <input type="hidden" id="user_likelist" name="user_likelist" value="/1-N/2-N/3-N/4-N/5-N/6-N/7-N/8-N/9-N/10-N/11-N/12-N/13-N/14-N/15-N/16-N/17-N/18-N/19-N/20-N/"> -->
					    
						
						<br /> 
					</div>	
						<br/>
						<div class="form-btn">
							<button type="submit" class="btn btn-block btn-primary">가입</button>
						</div>
			
						<div class="form-btn">
							<button id="goToMain" type="button" class="btn btn-block">취소</button>
						</div>
						
						
						<div class="inner-foot">
							<p class="tag">SAFE AND FRESH</p>
						</div>
					
					
				</div>
				    
				</div>	    
					</div>
			
		
	</form>
	
	
	<jsp:include page="Footer.jsp" />
</body>
<style>

form {
	width: 0;
	height: 0;
}


.bg {
	background:
		url(${pageContext.request.contextPath}/resources/img/login-background.jpg);
	height: 800px;
	position: relative;
	z-index: -1;
	margin: 0 0 0 20%;
}

.signIn-area {
	background: white;
	position: relative;
	z-index: 1;
	height: 800px;
	width: 600px;
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
<script>
	$("#goToMain")
			.click(
					function() {
						location.href = "${pageContext.request.contextPath}/index.jsp";
					});
</script>
</html>