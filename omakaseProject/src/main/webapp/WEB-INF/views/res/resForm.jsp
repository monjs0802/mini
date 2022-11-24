<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style type="text/css">
/* container start */
#rescontainer{
	width: 900px;
	height: 600px;
}
.content1{
    float: left;
    width: 50%;
    height: 50%;
	position: relative;
}

.content2{
    float: right;
    width: 50%;
    height: 50%;
	position: relative;
}
dt {
	display: none;
}


.list_time a {
	display: inline-block;
	border: 1px solid black;
	float: left;
	margin-right: 10px;
	text-decoration: none;
	color: black;
	font-size: 14px;
}
.list_time a:after{
	clear: both;
}

/* button{ position:absolute; top:50%; left:50%; */
/*   width:120px; height:30px; margin-top:-15px; margin-left:-60px; */
/*   line-height:15px; cursor:pointer; */
/* } */

.modal{ 
  position:absolute; width:100%; height:100%; background: rgba(0,0,0,0.8); top:0; left:0; display:none;
}

.modal_content{
  width:400px; height:400px;
  background:#fff; border-radius:10px;
  position:relative; top:30%; left:50%;
  margin-top:-100px; margin-left:-200px;
  text-align:center;
  box-sizing:border-box; padding:74px 0;
  line-height:23px;
}

.modal .btn_min {
	display:inline-block;
    width:15px;
    height:15px;
}

.modal .btn_plus {
	display:inline-block;
	width:15px;
    height:15px;
}
.modal .text_num {
	display:inline-block;
}

/* container end */
</style>
</head>
<body>
<div id="rescontainer">
	<input type="hidden" class="date">
	<div class="content1">
		<div id="datepicker"></div>
	</div>
	<div class="content2">
		<div class="time_select">
			<ul class="list_time">
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>11</dt>
							<dd class="time">
								<strong>11:00</strong>
							</dd>
							<dt>잔여석</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>12</dt>
							<dd class="time">
								<strong>12:00</strong>
							</dd>
							<dt>잔여석</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>13</dt>
							<dd class="time">
								<strong>13:00</strong>
							</dd>
							<dt>잔여석</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>14</dt>
							<dd class="time">
								<strong>14:00</strong>
							</dd>
							<dt>잔여석</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<br><br><br><br>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>17</dt>
							<dd class="time">
								<strong>17:00</strong>
							</dd>
							<dt>잔여석</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>18</dt>
							<dd class="time">
								<strong>18:00</strong>
							</dd>
							<dt>잔여석</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>19</dt>
							<dd class="time">
								<strong>19:00</strong>
							</dd>
							<dt>잔여석</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>20</dt>
							<dd class="time">
								<strong>20:00</strong>
							</dd>
							<dt>잔여석</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>21</dt>
							<dd class="time">
								<strong>21:00</strong>
							</dd>
							<dt>잔여석</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				
			</ul>
		</div>
	</div>
</div> <!-- container -->


<div class="modal">
  <div class="modal_content">
  	<p class="resDate"></p>
  	<p class="resTime"></p>
  	<p class="maxNum"></p><br>
  	<div id="adult">성인
  		<button type="button" class="btn_min" id="btn_min">-</button>
  		<div class="text_num">0</div>
  		<button type="button" class="btn_plus" id="btn_plus">+</button>
  	</div>
  	<div id="kid">아동
  		<button type="button" class="btn_min" id="btn_min">-</button>
  		<div class="text_num">0</div>
  		<button type="button" class="btn_plus" id="btn_plus">+</button>
  	</div>
  	<br>
  	<div id="menuA">A코스
  		<button type="button" class="btn_min" id="btn_min">-</button>
  		<div class="text_num">0</div>
  		<button type="button" class="btn_plus" id="btn_plus">+</button>
  	</div>
  	<div id="menuB">B코스
  		<button type="button" class="btn_min" id="btn_min">-</button>
  		<div class="text_num">0</div>
  		<button type="button" class="btn_plus" id="btn_plus">+</button>
  	</div>
    <br>
  	<button type="button" id="resBtn">예약</button>
  	<button type="button" id="modal_close_btn">취소</button>
  </div>
</div>



<script>
$(function(){
	var date = new Date();
	var today = date.getFullYear() + '' + (date.getMonth()+1) + '' + date.getDate();
	$('.date').val(today);
	
	for(var i=0; i<9; i++){
		$('#rescontainer .content2 li .seat strong:eq(' + i + ')').text(8);
		$('#rescontainer .content2 li .time:eq('+ i +')').parents('a').css({"background-color": "white", "color": "black"});	
	}
	
	$.ajax({
		url: '/omakaseProject/res/getReserve',
		type: 'post',
		data: 'resDate=' + $('.date').val(),
		success: function(data){
			$.each(data, function(index, items){
				for(var i=0; i<9; i++){
					if($('#rescontainer .content2 li .time:eq('+ i +')').prev().text() == items.resTime){
						var num = items.resAdult + items.resKid;
						var seat = $('#rescontainer .content2 li .time:eq('+ i +')').parents('dl').find('.seat strong').text();
						$('#rescontainer .content2 li .time:eq('+ i +')').parents('dl').find('.seat strong').text(seat-num);
						if($('#rescontainer .content2 li .time:eq('+ i +')').parents('dl').find('.seat strong').text() == 0) {
								$('#rescontainer .content2 li .time:eq('+ i +')').parents('a').css({"background-color": "grey", "color": "white"});
						}//if
					}//if
				}//for
			
			});
		},
		error: function(err){
			console.log(err);
		}
	});

	$("#datepicker").datepicker({
		 dateFormat: 'yy-mm-dd' //Input Display Format 변경
      	     ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
      	     ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
             ,changeMonth: true //콤보박스에서 월 선택 가능                
             ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
             ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
             ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
             ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
             ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
             ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
             ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
             ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
             ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
             ,minDate: "0D" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
             ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후) 
           	 ,onSelect: function() {           		
                    		var date = $.datepicker.formatDate("yymmdd",$("#datepicker").datepicker("getDate"));
                     		$('.date').val(date);
                     		for(var i=0; i<9; i++){
                     			$('#rescontainer .content2 li .seat strong:eq(' + i + ')').text(8);
                     			$('#rescontainer .content2 li .time:eq('+ i +')').parents('a').css({"background-color": "white", "color": "black"});
                     		}
                     		$.ajax({
                     			url: '/omakaseProject/res/getReserve',
                     			type: 'post',
                     			data: 'resDate=' + $('.date').val(),
                     			success: function(data){
                     				$.each(data, function(index, items){
                     					for(var i=0; i<9; i++){
                     						if($('#rescontainer .content2 li .time:eq('+ i +')').prev().text() == items.resTime){
                     							var num = items.resAdult + items.resKid;
                     							var seat = $('#rescontainer .content2 li .time:eq('+ i +')').parents('dl').find('.seat strong').text();
                     							$('#rescontainer .content2 li .time:eq('+ i +')').parents('dl').find('.seat strong').text(seat-num);
                     							if($('#rescontainer .content2 li .time:eq('+ i +')').parents('dl').find('.seat strong').text() == 0) {
                     								$('#rescontainer .content2 li .time:eq('+ i +')').parents('a').css({"background-color": "grey", "color": "white"});
                     							}//if
                     						}//if
                     					}//for
                     				
                     				});
                     			},
                     			error: function(err){
                     				console.log(err);
                     			}
                     		});
                 		}
	});
});   


$('.list_time a').click(function(){
	if($(this).find('.seat strong').text() == 0){
		alert('예약이 마감되었습니다')
	}else{
		$('.modal .resDate').text($('.date').val());
		$('.modal .resTime').text($(this).find('.time').prev().text());
	 	$('.modal .maxNum').text($(this).find('.seat strong').text());
		$('#adult > .text_num').text(0);
		$('#kid > .text_num').text(0);
		$('.modal').fadeIn();
	}
});
	  
$("#modal_close_btn").click(function(){
	$(".modal").fadeOut();
});
	  
$('#adult > .btn_plus').click(function(){
	var num = $('#adult > .text_num').text();
	num *=1;
	if(($('#adult > .text_num').text()*1 + $('#kid > .text_num').text()*1) >= $('.maxNum').text()){
		alert('최대 정원을 초과했습니다')
 	}else{
		$('#adult > .text_num').text(num+1);
 	}
});

$('#adult > .btn_min').click(function(){
	var num = $('#adult > .text_num').text();
	num *=1;
	if(num>0){
		$('#adult > .text_num').text(num-1);
	}
});

$('#kid > .btn_plus').click(function(){
	var num = $('#kid > .text_num').text();
	num *=1;
 	if(($('#kid > .text_num').text()*1 + $('#adult > .text_num').text()*1) >= $('.maxNum').text()){
		alert('최대 정원을 초과했습니다')
 	}else{
		$('#kid > .text_num').text(num+1);
 	}
});

$('#kid > .btn_min').click(function(){
	var num = $('#kid > .text_num').text();
	num *=1;
	if(num>0){
		$('#kid > .text_num').text(num-1);
	}
});

$('#menuA > .btn_plus').click(function(){
	var num = $('#menuA > .text_num').text();
	num *=1;
	$('#menuA > .text_num').text(num+1);
});

$('#menuA > .btn_min').click(function(){
	var num = $('#menuA > .text_num').text();
	num *=1;
	if(num>0){
		$('#menuA > .text_num').text(num-1);
	}
});

$('#menuB > .btn_plus').click(function(){
	var num = $('#menuB > .text_num').text();
	num *=1;
	$('#menuB > .text_num').text(num+1);
});

$('#menuB > .btn_min').click(function(){
	var num = $('#menuB > .text_num').text();
	num *=1;
	if(num>0){
		$('#menuB > .text_num').text(num-1);
	}
});

$('#resBtn').click(function(){
	$.ajax({
		url: '/omakaseProject/res/reserve',
		type: 'post',
		data: 'resDate=' + $('.resDate').text() 
			+ '&resTime=' + $('.resTime').text() 
			+ '&resAdult=' + $('#adult > .text_num').text()
			+ '&resKid=' + $('#kid > .text_num').text()
			+ '&resMenuA=' + $('#menuA > .text_num').text()
			+ '&resMenuB=' + $('#menuB > .text_num').text(),
		success: function(){
			alert("예약이 완료되었습니다");
			location.href='/omakaseProject/index';
		},
		error: function(err){
			console.log(err);
		}	
	});
});
</script>
</body>
</html>