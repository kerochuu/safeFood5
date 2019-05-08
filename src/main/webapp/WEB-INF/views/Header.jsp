<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header>
	<nav class="navbar navbar-expand-lg navbar-dark"
		style="background-color: #52100d;">
		<a href="${pageContext.request.contextPath}/food/main.do"
			class="navbar-brand"><span class="safe-text"
			style="color: rgb(60, 144, 226);">Safe</span>FoodForYou</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav mr-auto"></div>
			<div class="navbar-nav">
				<a class="nav-item nav-link" href="#">공지사항</a> <a
					class="nav-item nav-link"
					href="${pageContext.request.contextPath}/food/SearchPage.do"
					>전체 상품 정보</a> 
					
					<a class="nav-item nav-link" href="${pageContext.request.contextPath}/resources/html/Qna.html"> Q&A</a>
					<a class="nav-item nav-link" href="#">|</a>
				<c:if test="${userId != null }">
					<a class="nav-item nav-link"
						href="${pageContext.request.contextPath}/user/userinfo.do">${userId}
						님 로그인 되었습니다.</a>

					<a class="nav-item nav-link"
						href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a>
				</c:if>

			</div>
		</div>
	</nav>
</header>
<style>
header {
	position: fixed;
	top: 0;
	padding: 10px;
	width: 100%;
	box-sizing: border-box;
}

a:link, a:visited, a:active, a:hover {
	text-decoration: none;
	color: green;
}
</style>