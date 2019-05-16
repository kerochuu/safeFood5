<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.ssafy.spring.vo.User"%>

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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/vue"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
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
									class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>
								<input id="id" class="form-control" name="user_id" type=text
									value="${user.user_id}">
							</p>

							<p>
								<i
									class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>
								<input class="form-control" name="user_address" type=text
									value="${user.user_address}">
							</p>
							<p>
								<i
									class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>
								<input class="form-control" name="user_phone" type=text
									value="${user.user_phone}">
							</p>
							<p>
								<i
									class="fa fa-lock fa-fw w3-margin-right w3-large w3-text-teal"></i>
								<input class="form-control" name="user_pw" type=password
									value="${user.user_pw}">
							</p>
							<input type="hidden" name="method" value="editMember"> <input
								type="hidden" name="action" value="member">
							<div>
								<button id="edit" type="submit"
									class="form-control btn btn-block btn-primary"
									style="width: 60%;">수정</button>
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
			<div class="w3-twothird" style="width: 45%;">

				<div class="w3-container w3-card w3-white w3-margin-bottom">
					<h2 class="w3-text-grey w3-padding-16">
						<i
							class="fa fa-cutlery fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>섭취
						목록
					</h2>

					<c:forEach items="${user.list}" var="temp">
						<div class="w3-container">
							<h3 class="w3-opacity">
								<b>${temp.eat_food_name}</b> <a
									href="${pageContext.request.contextPath}/eat/deleteEat.do?eat_code=${temp.eat_code}"><button
										type="button" class="btn btn-primary"
										onclick="alert('삭제되었습니다!! ${temp.eat_code}');">삭제</button></a>

							</h3>
							<%-- <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>${food.eatDay}</h6> --%>
							<!--  <p>${food.material}</p>-->
							<hr />
						</div>

					</c:forEach>
				</div>

				<!-- End Right Column -->
				<div>
					<button id="jjim" type="submit"
						class="form-control btn btn-block btn-primary">찜목록</button>
					<button id="jjim" type="submit"
						class="form-control btn btn-block btn-primary">알레르기정보</button>

				</div>
			</div>

			<div class="w3-twothird" style="width: 20%;">
				<div class="w3-container w3-card w3-white w3-margin-bottom">
					<h2 class="w3-text-grey w3-padding-16">
						<i
							class="fa fa-arrow-circle-o-down fa-fw w3-margin-right w3-xxlarge w3-text-teal"
							aria-hidden="true"></i>순위


					</h2>
					<c:forEach items="${eatList}" var="el">
						<div class="w3-container">
							<h6 class="w3-opacity">
								<b>${el.eat_food_name}</b>

							</h6>
							<%-- <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>${food.eatDay}</h6> --%>
							<!--  <p>${food.material}</p>-->
							<hr />
						</div>
					</c:forEach>

				</div>

			</div>



			<!-- End Grid -->
		</div>

		<!-- End Page Container -->
	</div>
	</main>
	<jsp:include page="Footer.jsp" />


	<script type="text/javascript">
      let eat = new Vue({
         el : "#app",
         data: {
            eatList : [],
            foodList : [],
            date : '',
            calData : [],
            isGet : false,
            
            supportpereat : 0,
            calory : 0,
            carbo : 0,
            protein : 0,
            fat : 0,
            sugar : 0,
            natrium : 0,
            chole : 0,
            fattycid : 0,
            transfat : 0,
            userInfo : '',
         },
         methods: {
            getUser() {
                 axios.get("http://localhost:9080/basic/user/getuser")
                  .then(response => {
                     this.userInfo = response.data;
                  })
                  .catch()
                  .finally();
             },
            getFoodList() { // 내가 섭취한 음식만 가져오기
               axios.get("http://70.12.247.55:9080/basic/food/selectEatList.do?id=" + this.userInfo)
                   .then(response => {
                      this.foodList = response.data;
                   })
                   .catch()
                   .finally();
            },
            getEatCal() { // 먹은 음식 성분 계산
               console.log('getEatcal');
               this.supportpereat = 0;
                this.calory = 0;
                this.carbo = 0;
                this.protein = 0;
                this.fat = 0;
                this.sugar = 0;
                this.natrium = 0;
                this.chole = 0;
                this.fattycid = 0;
                this.transfat = 0;
                
               for(let i = 0; i < this.foodList.length; i++) {
                  if(this.foodList[i].personeat.date === this.date) {
                     this.supportpereat += this.foodList[i].supportpereat;
                        this.calory += this.foodList[i].calory;
                        this.carbo += this.foodList[i].carbo;
                        this.protein += this.foodList[i].protein;
                        this.fat += this.foodList[i].fat;
                        this.sugar += this.foodList[i].sugar;
                        this.natrium += this.foodList[i].natrium;
                        this.chole += this.foodList[i].chole;
                        this.fattycid += this.foodList[i].fattycid;
                        this.transfat += this.foodList[i].transfat;
                  };
               };
               this.isGet = true;
               this.getGraph();
            },
            getGraph() {
               google.charts.load('current', {'packages' : ['corechart']});
             google.charts.setOnLoadCallback(drawChart);
             
             // Draw the chart and set the chart values
             function drawChart() {
                
               let data = google.visualization.arrayToDataTable([
               /* ['일일 제공량', ${food.supportpereat}], */
               ['성분', '제공량'],
               ['칼로리', eat.$data.supportpereat],
               ['탄수화물', eat.$data.carbo],
               ['단백질', eat.$data.protein],
               ['지방', eat.$data.fat],
               ['당류', eat.$data.sugar],
               ['나트륨', eat.$data.natrium],
               ['콜레스테롤', eat.$data.chole],
               ['포화지방산', eat.$data.fattyacid],
               ['트랜스지방', eat.$data.transfat],
             ]); 
               
              let options = {
                'title' : eat.$data.date +'일 섭취량',
                /* 'width' : 100%,
                'height' : 100%, */
              };
              let chart = new google.visualization.PieChart(document.getElementById('piechart'));
              chart.draw(data, options);
             }
            },
         },
         created() {
            window.onload = () => {
               this.getUser();
             };
         },
      });

   </script>
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
	$("#exit").click(function() {
		location.href = "main.do?action=member&method=deleteMember";
	});
	$("#id").attr("style", "diplay:none;");
	$("#delete-Info")
			.click(
					function() {
						location.href = "${pageContext.request.contextPath}/user/deleteInfo.do";
					});
	$("#jjim")
			.click(
					function() {
						location.href = "${pageContext.request.contextPath}/user/userinfo_jjim.do";
					});
</script>
</html>