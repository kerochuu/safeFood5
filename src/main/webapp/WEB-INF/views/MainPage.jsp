<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<title>SafeFoodForYou</title>
		<meta charset="utf-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"
				integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-4.1.0.min.js"></script>
	</head>
<body>
	<jsp:include page="Header.jsp" />
	<main>
	    <div class="jumbotron text-center">
	        <div id="logo">
	            <h1><span class="safe-text" style="color: rgb(60, 144, 226);">Safe</span> Food For You</h1>
	        </div>
	        <div class="search-box">
	            <form action="${pageContext.request.contextPath}/food/list.do" method="post" class="form-inline search-form">
	            	<select key="category" name="category" id="category" class="form-control">
					  <option value="searchByName">제품명</option>
					  <option value="searchByMaker">제조사</option>
					  <option value="searchByMaterial">원재료</option>
					  <option value="searchByAllergy">알러지</option>
					</select>
					<input type="hidden" name="action" value="food">
	                <input name="keyword" id="keyword" class="form-control" type="text">
	                <input type="submit" id="search" class="btn btn-default btn-safe" style="background-color:  rgb(60, 144, 226);" value="검색">
	            </form>
	        </div>
	    </div>
	</main>
	<jsp:include page="Footer.jsp" />
</body>
<style>
	body {
		margin: 0;
	}
	
	main {
		margin: 10%;
	}
	
	.jumbotron {
		background-color: white;
		margin: 5% auto;
	}
	
	.search-form {
		margin: 3% 0 10% 15%;
	}
	
	#category {
		display: inline-block;
		width: 10%;
		margin: 0 1%;
	}
	.search-form>.form-control {
		width: 60%;
		margin: 0 1%;
	}
	
	.safe-text {
		color: rgb(22, 160, 133);
	}
	
	.btn-safe {
		background-color: rgb(22, 160, 133);
		width: 100px;
		color: white;
	}
</style>
</html>