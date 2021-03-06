<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="org.springframework.util.StringUtils"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ssafy.spring.vo.User"%>
<%@ page import="com.ssafy.spring.vo.Eat"%>

<html>
<head>
<title>SafeFoodForYou</title>
<meta charset="utf-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap-4.1.0.min.js"></script>
<style>
html, body, h1, h2, h3, h4, h5, h6 {
	font-family: "Roboto", sans-serif
}
</style>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<main> <!-- Page Container -->
	<div class="w3-content w3-margin-top" style="max-width: 1400px;">

		<!-- The Grid -->
		<div class="w3-row-padding">

			<!-- Left Column -->
			<div class="w3-third">

				<div class="w3-white w3-text-grey w3-card-4">
					<div class="w3-display-container"></div>
					<div class="w3-container">
						<br />
						<h2>${user.user_id}</h2>

						<form method=post action="changeInfo.do">

							<p>
								<i
									class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i><input
									id="id" class="form-control" name="user_id" type=text
									value="${user.user_id}">
							</p>

							<p>
								<i
									class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i><input
									class="form-control" name="user_address" type=text
									value="${user.user_address}">
							</p>
							<p>
								<i
									class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i><input
									class="form-control" name="user_phone" type=text
									value="${user.user_phone}">
							</p>
							<p>
								<i
									class="fa fa-lock fa-fw w3-margin-right w3-large w3-text-teal"></i><input
									class="form-control" name="user_pw" type=password
									value="${user.user_pw}">
							</p>
							<input type="hidden" name="method" value="editMember"> <input
								type="hidden" name="action" value="member">
							<div>
								<button id="edit" type="submit"
									class="form-control btn btn-block btn-primary" style="width: 60%;">수정</button>
								<button id="delete-Info" type="button" class="btn btn-danger">탈퇴</button>
							</div>
						</form>
						<hr>

						<p class="w3-large">
							<b><i
								class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>일일
								섭취량</b>
						</p>
						<p>탄수화물</p>
						<div class="w3-light-grey w3-round-xlarge w3-small">
							<div class="w3-container w3-center w3-round-xlarge w3-teal"
								style="width: 90%">90%</div>
						</div>
						<p>단백질</p>
						<div class="w3-light-grey w3-round-xlarge w3-small">
							<div class="w3-container w3-center w3-round-xlarge w3-teal"
								style="width: 80%">
								<div class="w3-center w3-text-white">80%</div>
							</div>
						</div>
						<p>지방</p>
						<div class="w3-light-grey w3-round-xlarge w3-small">
							<div class="w3-container w3-center w3-round-xlarge w3-teal"
								style="width: 75%">75%</div>
						</div>
						<p>나트륨</p>
						<div class="w3-light-grey w3-round-xlarge w3-small">
							<div class="w3-container w3-center w3-round-xlarge w3-teal"
								style="width: 50%">50%</div>
						</div>
						<br>

						<p class="w3-large w3-text-theme">
							<b><i
								class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>알러지</b>
						</p>
						<div id="allergy">
							<c:choose>
								<c:when test="${not empty user.user_allergy}">
									<c:forEach items="${user.user_allergy}" var="allergy">
										<label class="label label-allergy">${allergy}</label>
									</c:forEach>
								</c:when>
							</c:choose>
						</div>
						<br>
					</div>
				</div>
				<br>

				<!-- End Left Column -->
			</div>

			<!-- Right Column -->
			<div class="w3-twothird">

				<div class="w3-container w3-card w3-white w3-margin-bottom">
					<h2 class="w3-text-grey w3-padding-16">
						<i class="fa fa-cutlery fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>알레르기 통계
					</h2>
					<c:choose>
						<c:when test="${not empty user.list}">
							<%
								String[] allergys = {"새우", "대두", "우유", "땅콩", "돼지고기", "계란", "소고기"};
								HashMap<String, Integer> allergy_count = new HashMap<String, Integer>();
								//System.out.println(country_count.toString());
								
								List<Eat> user_eatlist = ((User) request.getAttribute("user")).getList();
								System.out.println(user_eatlist.toString());
								
								for(Eat user_eat: user_eatlist) { // 먹은 음식 하나
									String material = user_eat.getEat_food_material();
									for(String allergy: allergys) {
										int count = StringUtils.countOccurrencesOf(material, allergy); // material에 allergy가 몇 번 나오는지
										
										if(allergy_count.containsKey(allergy))
											allergy_count.put(allergy, allergy_count.get(allergy)+count);
										else
											allergy_count.put(allergy, count);
									}
								}
								System.out.println(allergy_count.toString());
								pageContext.setAttribute("allergy_count", allergy_count);
							%>
							<%-- <c:forEach items="${user.list}" var="temp">
								<div class="w3-container">
									<%
										String material = ((Eat) request.getAttribute("temp")).getEat_food_material();
										for(String allergy: allergys) {
											int count = StringUtils.countOccurrencesOf(material, allergy); // material에 allergy가 몇 번 나오는지
											if(count > 0)
												allergy_count.put(allergy, count);
										}
									%>
									<hr>
								</div>
							</c:forEach> --%>
							
							<div class="nutrition-info">
	            				<div class="info-block">
	                				<canvas id="chart-area" width="400" height="400" class="chartjs-render-monitor" style="display: block; width: 372px; height: 186px;"></canvas>
	            				</div>
	            				<div class="info-block">
	                				<table class="table">
	                					<c:forEach items="${allergy_count}" var="c">
		            						<tr>
		            							<th>${c.key}</th>
		            							<td>${c.value}</td>
		            						</tr>
		            					</c:forEach>
	                				</table>
	            				</div>
	        				</div>
						</c:when>
						<c:otherwise>
							해당 내용이 존재하지 않습니다.
						</c:otherwise>
					</c:choose>
				</div>
				<!-- End Right Column -->
				<div>
					<button id="eat" type="submit"
						class="form-control btn btn-block btn-primary">섭취목록</button>
					<button id="jjim" type="submit"
						class="form-control btn btn-block btn-primary">찜목록</button>
					
				</div>
			</div>

			

			<!-- End Grid -->
		</div>

		<!-- End Page Container -->
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

p {
	margin-top: 1rem;
	margin-bottom: 0;
}

#exit {
	margin-top: 12px;
}

.form-control {
	width: 70%;
	display: inline-block;
}

.label-allergy {
	color: white;
	padding: 5px;
	background-color: rgb(60, 144, 226);
	border-radius: 12px;
	margin: 3px;
}

#edit {
	margin: 3% 0 0 9.5%;
}
</style>

<script>
    var config = {
        type: 'doughnut',
        data: {
            datasets: [{
                data: [
                	'${allergy_count["새우"]}',
                	'${allergy_count["대두"]}',
                	'${allergy_count["우유"]}',
                	'${allergy_count["땅콩"]}',
                	'${allergy_count["돼지고기"]}',
                	'${allergy_count["계란"]}',
                	'${allergy_count["소고기"]}'
                ],
                backgroundColor: [
                    '#4dc9f6',
                    '#f67019',
                    '#f53794',
                    '#537bc4',
                    '#acc236',
                    '#166a8f',
                    //'#00a950',
                    '#58595b'
                ],
                label: 'Dataset 1'
            }],
            labels: [
                '새우',
                '대두',
                '우유',
                '땅콩',
                '돼지고기',
                '계란',
                '소고기'
            ]
        },
        options: {
            responsive: true,
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: '섭취 식품 알레르기별 통계'
            },
            animation: {
                animateScale: true,
                animateRotate: true
            }
        }
    };

    window.onload = function() {
        var ctx = document.getElementById('chart-area').getContext('2d');
        window.myDoughnut = new Chart(ctx, config);
    };

    var colorNames = Object.keys(window.chartColors);
</script>

<script>
$("#exit").click(function(){
	 location.href = "main.do?action=member&method=deleteMember";
});
$("#id").attr("style","diplay:none;");
$("#delete-Info")
.click(
		function() {
			location.href = "${pageContext.request.contextPath}/user/deleteInfo.do";
		});
$("#eat")
.click(
		function() {
			location.href = "${pageContext.request.contextPath}/user/userinfo.do";
		});
$("#jjim")
.click(
		function() {
			location.href = "${pageContext.request.contextPath}/user/userinfo_jjim.do";
		});

</script>
</html>