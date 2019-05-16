<%@page import="org.springframework.util.StringUtils"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ssafy.spring.vo.Food" %>

<html>
	<head>
	    <title>SafeFoodForYou</title>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-4.1.0.min.js"></script>
	    <script src="https://unpkg.com/vue"></script>
	    <script src="${pageContext.request.contextPath}/resources/js/Chart.bundle.min.js"></script>
	    <script src="${pageContext.request.contextPath}/resources/js/utils.js"></script>
	</head>
<body>
	<jsp:include page="Header.jsp" />
	<main>		
		<form method="post"  action="${pageContext.request.contextPath}/eat/insertEat.do">
			<input type="hidden" name="user_id" value="${userId}"/>
			<input type="hidden" name="food_code" value="${food.food_code}"/>
			<input type="hidden" name="food_name" value="${food.food_name}"/>
			<input type="hidden" name="food_material" value="${food.food_material}"/>
			<input type="submit" class="btn btn-primary" 
				onclick="alert('섭취목록 추가!! ${userId} ${food.food_name} ${food.food_material}');" value="추가"/>
			<input type="submit" class="btn btn-info" onclick="alert('찜!! ${userId} ${food.food_name}');" formaction="${pageContext.request.contextPath}/jjim/insertJjim.do" value="찜"/>
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
	    
	    <h2 class="title-sub">원산지 정보</h2>
	    <hr>
	    <div class="contents">
	        <div class="nutrition-info">
	        	<%
					String material = ((Food) request.getAttribute("food")).getFood_material();
					String[] countrys = {"국산", "국내산", "호주", "미국", "독일", "말레이시아", "뉴질랜드", "중국", "캐나다", "에티오피아", "콜롬비아", "브라질", "네덜란드", "아일랜드"};
					HashMap<String, Integer> country_count = new HashMap<String, Integer>();
					for(String country: countrys) {
						int count = StringUtils.countOccurrencesOf(material, country); // material에 country가 몇 번 나오는지
						if(count > 0)
							country_count.put(country, count);
					}
					//System.out.println(country_count.toString());
					pageContext.setAttribute("country_count", country_count);
				%>
	        
	            <div class="info-block">
	                <canvas id="chart-area2" width="400" height="400" class="chartjs-render-monitor" style="display: block; width: 372px; height: 186px;"></canvas>
	            </div>
	            <div class="info-block">
	                <table class="table">
	                	<!-- <tr v-for="(val, key) in country_count" :value="key">
							<th v-text="{{key}}" />
							<td v-text="{{val}}" />
							<td>{{val}}</td>
						</tr> -->
						<c:forEach items="${country_count}" var="c">
		            		<tr>
		            			<th>${c.key}</td>
		            			<td>${c.value}</td>
		            		</tr>
		            	</c:forEach>
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
    
    var config2 = { // 국가별 표시 및 통계 그래프
            type: 'doughnut',
            data: {
                datasets: [{
                    data: [
                    	'${country_count["국산"]}',
                    	'${country_count["국내산"]}',
                    	'${country_count["호주"]}',
                    	'${country_count["미국"]}',
                    	'${country_count["독일"]}',
                    	'${country_count["말레이시아"]}',
                    	'${country_count["뉴질랜드"]}',
                    	'${country_count["중국"]}',
                    	'${country_count["캐나다"]}',
                    	'${country_count["에티오피아"]}',
                    	'${country_count["콜롬비아"]}',
                    	'${country_count["브라질"]}',
                    	'${country_count["네덜란드"]}',
                    	'${country_count["아일랜드"]}'
                    ],
                    backgroundColor: [
                        '#4dc9f6',
                        '#4dc9f6',
                        '#E5D85C', // 노란색
                        '#8041D9', // 보라색
                        '#f67019',
                        '#f53794',
                        '#537bc4',
                        '#acc236',
                        '#CC3D3D', // 빨간색
                        '#166a8f',
                        '#00a950',
                        '#58595b',
                        '#FFB2F5', // 연분홍
                        '#CEFBC9' // 연초록
                    ],
                    label: 'Dataset 2'
                }],
                labels: [
                    '국산',
                    '국내산',
                    '호주',
                    '미국',
                    '독일',
                    '말레이시아',
                    '뉴질랜드',
                    '중국',
                    '캐나다',
                    '에티오피아',
                    '콜롬비아',
                    '브라질',
                    '네덜란드',
                    '아일랜드'
                ]
            },
            options: {
                responsive: true,
                legend: {
                    position: 'top',
                },
                title: {
                    display: true,
                    text: '원산지 별 통계 Doughnut Chart'
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
        
        var ctx2 = document.getElementById('chart-area2').getContext('2d');
        window.myDoughnut = new Chart(ctx2, config2);
    };

    var colorNames = Object.keys(window.chartColors);
</script>
</html>