<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<head>
	    <title>SafeFoodForYou</title>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-4.1.0.min.js"></script>
	    <script src="${pageContext.request.contextPath}/resources/js/Chart.bundle.min.js"></script>
	    <script src="${pageContext.request.contextPath}/resources/js/utils.js"></script>
	</head>
<body>
	<jsp:include page="Header.jsp" />
		<main>
			<form action="${pageContext.request.contextPath}/food/list.do" method="post">
	    	<h2 class="title-sub">제품정보</h2>
	    	<button id="add" type="submit" class="btn btn-primary">추가</button>
	    	</form>
	    <hr>
	    <div id="productInfo" class="contents">
	        <div class="product-info">
	        	<div class="info-block">
            		<img src="${pageContext.request.contextPath}/resources/${food.food_image}">
            	</div>
            	<div class="info-block">
            		<div class="product-title">
            			<h3 id="name">${food.food_name}</h3>
            			<p id="maker">${food.food_maker}</p>
            		</div>
            		<div class="product-ingredient">
            			<p id="ingredient">${food.food_material}</p>
            		</div>
		            <div id="allergy">
		            <c:choose>
		            	<c:when test="${not empty food.food_allergy}">
		            		<c:forEach items="${food.food_allergy}" var="allergy">
		            			<label class="label label-allergy">${allergy}</label>
		            		</c:forEach>
		            	</c:when>
	            	</c:choose>
			    	</div>
    			</div>
			</div>
		</div>
	    <h2 class="title-sub">영양정보</h2>
	    <hr>
	    <div class="contents">
	        <div class="nutrition-info">
	            <div class="info-block">
	                <canvas id="chart-area" width="400" height="400" class="chartjs-render-monitor" style="display: block; width: 372px; height: 186px;"></canvas>
	            </div>
	            <div class="info-block">
	                <table class="table">
	                    <tr>
	                        <th>일일 제공량</th>
	                        <td>${food.serving_wt}</td>
	                    </tr>
	                    <tr>
	                        <th>칼로리</th>
	                        <td>${food.nutr_cont1}</td>
	                    </tr>
	                    <tr>
	                        <th>탄수화물</th>
	                        <td>${food.nutr_cont2}</td>
	                    </tr>
	                    <tr>
	                        <th>단백질</th>
	                        <td>${food.nutr_cont3}</td>
	                    </tr>
	                    <tr>
	                        <th>지방</th>
	                        <td>${food.nutr_cont4}</td>
	                    </tr>
	                    <tr>
	                        <th>당류</th>
	                        <td>${food.nutr_cont5}</td>
	                    </tr>
	                    <tr>
	                        <th>나트륨</th>
	                        <td>${food.nutr_cont6}</td>
	                    </tr>
	                    <tr>
	                        <th>콜레스테롤</th>
	                        <td>${food.nutr_cont7}</td>
	                    </tr>
	                    <tr>
	                        <th>포화지방산</th>
	                        <td>${food.nutr_cont8}</td>
	                    </tr>
	                    <tr>
	                        <th>트렌스지방</th>
	                        <td>${food.nutr_cont9}</td>
	                    </tr>
	                </table>
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
        margin: 10% 20%;
    }
    .title-sub {
    	display: inline-block;
    }
    #add {
    	margin: 0 0 10px 10px;
    }
    .safe-text {
        color:rgb(60, 144, 226);
    }
    .contents {
        margin: 3% 0;
    }
    .product-info, .nutrition-info {
        margin: 0 10%;
    }
    .info-block {
        display: inline-block;
        vertical-align: top;
        margin: 2%;
    }
    .label-allergy{
        color: white;
        padding: 5px;
        background-color: red;
        border-radius: 12px;
        margin: 3px;
    }
    #ingredient{
        width: 400px;
    }
    img{
        padding: 10%;
        height: 400px;
        width: 400px;
    }
    canvas {
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
    th{
        width: 300px;
    }

</style>
<script>
    var config = {
        type: 'doughnut',
        data: {
            datasets: [{
                data: [
                	'${food.nutr_cont2}',
                	'${food.nutr_cont3}',
                	'${food.nutr_cont4}',
                	'${food.nutr_cont5}',
                	'${food.nutr_cont6}',
                	'${food.nutr_cont7}',
                	'${food.nutr_cont8}',
                	'${food.nutr_cont9}'
                ],
                backgroundColor: [
                    '#4dc9f6',
                    '#f67019',
                    '#f53794',
                    '#537bc4',
                    '#acc236',
                    '#166a8f',
                    '#00a950',
                    '#58595b'
                ],
                label: 'Dataset 1'
            }],
            labels: [
                '탄수화물',
                '단백질',
                '지방',
                '당류',
                '나트륨',
                '콜레스테롤',
                '포화지방산',
                '트렌스지방'
            ]
        },
        options: {
            responsive: true,
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: 'Chart.js Doughnut Chart'
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
</html>