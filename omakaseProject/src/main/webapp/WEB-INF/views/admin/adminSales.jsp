<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
ul{
	visibility: hidden;
}
</style>
</head>
<body>
<input type="text" class="year">
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
</ul>

<div style="width: 900px; height: 900px;">
	<!--차트가 그려질 부분-->
	<canvas id="myChart"></canvas>
</div>

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


var context = document
    .getElementById('myChart')
    .getContext('2d');
var myChart = new Chart(context, {
    type: 'bar', // 차트의 형태
    data: { // 차트에 들어갈 데이터
        labels: [
            //x 축
            12,2,3,4,5,6,7,8,9,10,11,12
        ],
        datasets: [
            { //데이터
                label: 'test1', //차트 제목
                fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                data: [
                	 $('ul.month_sale li:eq(0) > .menuASale').text,19,25,20,23,26,25,1,8,55 //x축 label에 대응되는 데이터 값
//                     $('ul.month_sale li:eq(0) > .menuASale').text
//                     ,$('ul.month_sale li:eq(1) > .menuASale').text
//                     ,$('ul.month_sale li:eq(2) > .menuASale').text
//                     ,$('ul.month_sale li:eq(3) > .menuASale').text
//                     ,$('ul.month_sale li:eq(4) > .menuASale').text
//                     ,$('ul.month_sale li:eq(5) > .menuASale').text
//                     ,$('ul.month_sale li:eq(6) > .menuASale').text
//                     ,$('ul.month_sale li:eq(7) > .menuASale').text
//                     ,$('ul.month_sale li:eq(8) > .menuASale').text
//                     ,$('ul.month_sale li:eq(9) > .menuASale').text
//                     ,$('ul.month_sale li:eq(10) > .menuASale').text
//                     ,$('ul.month_sale li:eq(11) > .menuASale').text
                ],
                backgroundColor: [
                    //색상
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    //경계선 색상
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1 //경계선 굵기
            }/* ,
            {
                label: 'test2',
                fill: false,
                data: [
                    8, 34, 12, 24
                ],
                backgroundColor: 'rgb(157, 109, 12)',
                borderColor: 'rgb(157, 109, 12)'
            } */
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

function calcMonthSale(i) {
	var month;
	if(i<10){
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