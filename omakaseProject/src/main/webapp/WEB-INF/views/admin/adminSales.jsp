<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#wrap {
	margin: auto;
	background-color: rgba(255, 247, 240, 0.5);
	border-radius: 10px;
}
.month_sale{
	display: none; 
} 
</style>
</head>
<body>

<div id="wrap">

	<div id="section">

<!-- 그래프 -->
<input type="hidden" class="year">
<ul class="month_sale">
	<li class="1">
		<dd class="menuASale"></dd>
		<dd class="menuBSale"></dd>
	</li>
	<li class="2">
		<dd class="menuASale"></dd>
		<dd class="menuBSale"></dd>
	</li>
	<li class="3">
		<dd class="menuASale"></dd>
		<dd class="menuBSale"></dd>
	</li>
	<li class="4">
		<dd class="menuASale"></dd>
		<dd class="menuBSale"></dd>
	</li>
	<li class="5">
		<dd class="menuASale"></dd>
		<dd class="menuBSale"></dd>
	</li>
	<li class="6">
		<dd class="menuASale"></dd>
		<dd class="menuBSale"></dd>
	</li>
	<li class="7">
		<dd class="menuASale"></dd>
		<dd class="menuBSale"></dd>
	</li>
	<li class="8">
		<dd class="menuASale"></dd>
		<dd class="menuBSale"></dd>
	</li>
	<li class="9">
		<dd class="menuASale"></dd>
		<dd class="menuBSale"></dd>
	</li>
	<li class="10">
		<dd class="menuASale"></dd>
		<dd class="menuBSale"></dd>
	</li>
	<li class="11">
		<dd class="menuASale"></dd>
		<dd class="menuBSale"></dd>
	</li>
	<li class="12">
		<dd class="menuASale"></dd>
		<dd class="menuBSale"></dd>
	</li>
</ul> <!-- 그래프 -->



<div class="d-grid gap-2 m-2 p-5">
	<button type="button" class="btn btn-outline-success" id="allBtn">판매 현황</button>
</div>


<div style="width: 900px;">
	<!--차트가 그려질 부분-->
	<canvas id="myChart"></canvas>
</div>

	</div><!-- section -->
</div><!-- wrap -->


<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script type="text/javascript">
$(function(){
	var date = new Date();
	var year = date.getFullYear();
	$('.year').val(year);
		
	for(var i=0; i<12; i++){
		calcMonthSale(i);
	}
	
	
	
});

$('#allBtn').click(function(){	
	var menuA = {
			label: "menuA",
			data: [ $('.month_sale .1 .menuASale').text()
					,$('.month_sale .2 .menuASale').text()
					,$('.month_sale .3 .menuASale').text()
					,$('.month_sale .4 .menuASale').text()
					,$('.month_sale .5 .menuASale').text()
					,$('.month_sale .6 .menuASale').text()
					,$('.month_sale .7 .menuASale').text()
					,$('.month_sale .8 .menuASale').text()
					,$('.month_sale .9 .menuASale').text()
					,$('.month_sale .10 .menuASale').text()
					,$('.month_sale .11 .menuASale').text()
					,$('.month_sale .12 .menuASale').text()
					],
			backgroundColor: 'rgba(255, 99, 132, 0.2)',
			borderWidth: 1
	}
	
	var menuB = {
			label: "menuB",
			data: [ $('.month_sale .1 .menuBSale').text()
					,$('.month_sale .2 .menuBSale').text()
					,$('.month_sale .3 .menuBSale').text()
					,$('.month_sale .4 .menuBSale').text()
					,$('.month_sale .5 .menuBSale').text()
					,$('.month_sale .6 .menuBSale').text()
					,$('.month_sale .7 .menuBSale').text()
					,$('.month_sale .8 .menuBSale').text()
					,$('.month_sale .9 .menuBSale').text()
					,$('.month_sale .10 .menuBSale').text()
					,$('.month_sale .11 .menuBSale').text()
					,$('.month_sale .12 .menuBSale').text()
					],
			backgroundColor: 'rgba(54, 162, 235, 0.2)',
			borderWidth: 1
	}
	
	var all = {
			label: "all",
			data: [ $('.month_sale .1 .menuASale').text()*1 + $('.month_sale .1 .menuBSale').text()*1
					,$('.month_sale .2 .menuASale').text()*1 + $('.month_sale .2 .menuBSale').text()*1
					,$('.month_sale .3 .menuASale').text()*1 + $('.month_sale .3 .menuBSale').text()*1
					,$('.month_sale .4 .menuASale').text()*1 + $('.month_sale .4 .menuBSale').text()*1
					,$('.month_sale .5 .menuASale').text()*1 + $('.month_sale .5 .menuBSale').text()*1
					,$('.month_sale .6 .menuASale').text()*1 + $('.month_sale .6 .menuBSale').text()*1
					,$('.month_sale .7 .menuASale').text()*1 + $('.month_sale .7 .menuBSale').text()*1
					,$('.month_sale .8 .menuASale').text()*1 + $('.month_sale .8 .menuBSale').text()*1
					,$('.month_sale .9 .menuASale').text()*1 + $('.month_sale .9 .menuBSale').text()*1
					,$('.month_sale .10 .menuASale').text()*1 + $('.month_sale .10 .menuBSale').text()*1
					,$('.month_sale .11 .menuASale').text()*1 + $('.month_sale .11 .menuBSale').text()*1
					,$('.month_sale .12 .menuASale').text()*1 + $('.month_sale .12 .menuBSale').text()*1
					],
			backgroundColor: 'rgba(255, 206, 86, 0.2)',
			borderWidth: 1
	}

	var context = document
	    .getElementById('myChart')
	    .getContext('2d');
	var myChart = new Chart(context, {
	    type: 'bar', // 차트의 형태
	    data: { // 차트에 들어갈 데이터
	        labels: [
	            //x 축
	            '1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'
	        ],
	        datasets: [
	        	menuA,
	        	menuB,
	        	all
	        ]
	    },
	    options: {
	        scales: {
	            yAxes: [
	                {
	                    ticks: {
	                        beginAtZero: true
	                    }
	                }
	            ]
	        }
	    }
	});
	
});


function calcMonthSale(i) {
	var month;
	if((i+1)<10){
		month = '0'+(i+1);
	}else {
		month = (i+1);
	}
	$.ajax({
		url: '/omakaseProject/admin/getSales',
		type: 'post',
		data: 'resDate=' + $('.year').val() + month,
		success: function(data){			
			$.each(data, function(index, items){				
				$('ul.month_sale li:eq('+i+') > .menuASale').text($('ul.month_sale li:eq('+i+') > .menuASale').text()*1+items.resMenuA);
				$('ul.month_sale li:eq('+i+') > .menuBSale').text($('ul.month_sale li:eq('+i+') > .menuBSale').text()*1+items.resMenuB);
				
			});
					
		},
		error: function(err){
			console.log(err);
		}
	});
}
</script>
</body>
</html>