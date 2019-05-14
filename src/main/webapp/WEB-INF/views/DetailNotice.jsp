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
			<form
				action="${pageContext.request.contextPath}/food/detailNotice.do"
				method="post" class="form-inline search-form">
				<input type="hidden" name="action" value="notice"> <input
					name="key" id="keyword" class="form-control" type="text"> <input
					type="submit" id="search-notice" class="btn btn-default btn-safe"
					value="검색">
			</form>
		</div>
	</div>
	<div class="contents">
		<div class="item-group">
			<div id="item" class="item">
				<div class="product-info">
					<div class="info-block">
						<div class="product-title">
							<h3 id="title" style="color: green;">${notice.notice_title}
							</h3>
							
							<p id="date">${notice.notice_date}</p>
							
							<h6>${notice.notice_content}</h6>
						</div>

					</div>
				</div>
			</div>


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
$("#search-notice")
.click(
		function() {
			location.href = "${pageContext.request.contextPath}/notice/searchTitle.do";
		});
</script>
</html>