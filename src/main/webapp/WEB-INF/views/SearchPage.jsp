<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

</head>
<body>
	<jsp:include page="Header.jsp" />
	<main>
	<div class="jumbotron text-center">
		<div class="search-box">
			<form action="${pageContext.request.contextPath}/food/list.do"
				method="post" class="form-inline search-form">
				<select name="method" id="category" class="form-control">
					<option value="searchByName">제품명</option>
					<option value="searchByMaker">제조사</option>
					<option value="searchByMaterial">원재료</option>
					<option value="searchByAllergy">알러지</option>
				</select>
				<input type="hidden" name="action" value="food">
				<input name="key" id="keyword" class="form-control" type="text">
				<input type="submit" id="search" class="btn btn-default btn-safe" value="검색">
			</form>
		</div>
	</div>
	<div class="contents">
		<div class="item-group">

			<c:choose>
				<c:when test="${not empty foodList}">
					<c:forEach items="${foodList}" var="food">

						<div id="item" class="item">
							<input id="code" type="hidden" value="${food.food_code}">
							<div class="product-info">
								<div class="info-block">
									<img
										src="${pageContext.request.contextPath}/resources/${food.food_image}">
									<div class="btn-set">
										<a href="${pageContext.request.contextPath}/user/addEatList.do?user_id=${userId}&eatList=${food.food_code}"><button type="button" class="btn btn-primary" onclick="alert('섭취 목록에 추가되었습니다.');">추가</button></a>　
										<a href="${pageContext.request.contextPath}/user/addLikeList.do?user_id=${userId}&likeNum=${food.food_code}"><button type="button" class="btn btn-primary" onclick="alert('찜!!');">찜</button></a>
									</div>
								</div>
								<div class="info-block">
									<div class="product-title">
										<h3 id="name"><a href = "${pageContext.request.contextPath}/food/detail.do?food_code=${food.food_code}">${food.food_name}</a></h3>
										<p id="maker">${food.food_maker}</p>
									</div>
									<div class="product-material">
										<p id="material">${food.food_material}</p>
									</div>
								</div>
							</div>
						</div>

					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="5">식품 정보가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>


		</div>
	</main>
	<jsp:include page="Footer.jsp" />
</body>
<style>
body {
	margin: 0;
}

main {
	margin: 5%;
}

.jumbotron {
	background:
		url(${pageContext.request.contextPath}/resources/img/search-bg.jpg);
	margin: 1% auto;
	padding: 0;
	display: table;
	width: 95%;
}

.search-box {
	height: 90px;
}

.search-form {
	margin: 3% 0 10% 15%;
}

#category {
	width: 10%;
	margin: 0 1%;
	display: inline-block;
}

#keyword {
	width: 50%;
	margin: 0 1%;
}

#material {
	width: 580px;
}

.safe-text {
	color: rgb(60, 144, 226);
}

.btn-safe {
	background-color: rgb(60, 144, 226);
	width: 100px;
	color: white;
}

img {
	width: 200px;
}

.item {
	margin: 0 0 7% 0;
}

.info-block {
	display: inline-block;
	vertical-align: top;
	margin: 2%;
}

.contents {
	margin: 5% 23%;
}

.btn-set {
	display: flex;
	justify-content: center;
	margin: 5% 0;
}

.btn-primary {
	margin: 0 2%;
}

.item {
	z-index: 1;
}
</style>
<script>
	
</script>
</html>