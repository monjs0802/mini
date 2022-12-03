<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="http://localhost:8080/omakaseProject/resources/css/sub_index.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<style type="text/css">

.ui-widget-header { border: 0px solid #dddddd; background: #fff; } 

.ui-datepicker-calendar>thead>tr>th { font-size: 14px !important; } 

.ui-datepicker .ui-datepicker-header { position: relative; padding: 10px 0; } 

.ui-state-default,
.ui-widget-content .ui-state-default,
.ui-widget-header .ui-state-default,
.ui-button,
html .ui-button.ui-state-disabled:hover,
html .ui-button.ui-state-disabled:active { border: 0px solid #c5c5c5; background-color: transparent; font-weight: normal; color: #454545; text-align: center; } 

.ui-datepicker .ui-datepicker-title { margin: 0 0em; line-height: 16px; text-align: center; font-size: 14px; padding: 0px; font-weight: bold; } 

.ui-datepicker { display: none; background-color: #fff; border-radius: 4px; margin-top: 10px; margin-left: 0px; margin-right: 0px; padding: 20px; padding-bottom: 10px; width: 300px; box-shadow: 10px 10px 40px rgba(0, 0, 0, 0.1); } 

.ui-widget.ui-widget-content { border: 1px solid #eee; } 

#datepicker:focus>.ui-datepicker { display: block; } 

.ui-datepicker-prev,
.ui-datepicker-next { cursor: pointer; } 

.ui-datepicker-next { float: right; } 

.ui-state-disabled { cursor: auto; color: hsla(0, 0%, 80%, 1); } 

.ui-datepicker-title { text-align: center; padding: 10px; font-weight: 100; font-size: 20px; } 

.ui-datepicker-calendar { width: 100%; } 

.ui-datepicker-calendar>thead>tr>th { padding: 5px; font-size: 20px; font-weight: 400; } 

.ui-datepicker-calendar>tbody>tr>td>a { color: #000; font-size: 12px !important; font-weight: bold !important; text-decoration: none;}

.ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover { cursor: auto; background-color: #fff; } 

.ui-datepicker-calendar>tbody>tr>td { border-radius: 100%; width: 44px; height: 30px; cursor: pointer; padding: 5px; font-weight: 100; text-align: center; font-size: 12px; } 

.ui-datepicker-calendar>tbody>tr>td:hover { background-color: transparent; opacity: 0.6; } 

.ui-state-hover,
.ui-widget-content .ui-state-hover,
.ui-widget-header .ui-state-hover,
.ui-state-focus,
.ui-widget-content .ui-state-focus,
.ui-widget-header .ui-state-focus,
.ui-button:hover,
.ui-button:focus { border: 0px solid #cccccc; background-color: transparent; font-weight: normal; color: #2b2b2b; } 

.ui-widget-header .ui-icon { background-image: url('http://localhost:8080/omakaseProject/resources/img/btns.png'); } 

.ui-icon-circle-triangle-e { background-position: -20px 0px; background-size: 36px; } 

.ui-icon-circle-triangle-w { background-position: -0px -0px; background-size: 36px; } 

.ui-datepicker-calendar>tbody>tr>td:first-child a { color: red !important; } 

.ui-datepicker-calendar>tbody>tr>td:last-child a { color: #0099ff !important; } 

.ui-datepicker-calendar>thead>tr>th:first-child { color: red !important; } 

.ui-datepicker-calendar>thead>tr>th:last-child { color: #0099ff !important; } 

.ui-state-highlight,
.ui-widget-content .ui-state-highlight,
.ui-widget-header .ui-state-highlight { border: 0px; background: #f1f1f1; border-radius: 50%; padding-top: 10px; padding-bottom: 10px; } 

.inp { padding: 10px 10px; background-color: #f1f1f1; border-radius: 4px; border: 0px; } 

.inp:focus { outline: none; background-color: #eee;}
    
.ui-datepicker-calendar .ui-state-active {
  background: #6eafbf;
  color: #e0e0e0;
  text-shadow: 0px 1px 0px #4d7a85;
  filter: dropshadow(color=#4d7a85, offx=0, offy=1);
  border: 1px solid #55838f;
  position: relative;
  margin: -1px;
}
    
/* container start */

#wrap {
	margin: 0 0 0 0em;
	background-color: rgba(255, 247, 240, 0.7);
}

.hr {
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
  border: 0;
  height: 3px;
  margin-bottom: 0px;
  margin-top: 60px;
  overflow: visible;
  text-align: center;
}
.hr:after {
  background: white;
  content: "Reservation";
  display: inline-block;
  font: "BodoniXT" !important;
  font-size: 20pt;
  color: black;
  padding: 0 0.6em;
  position: relative;
  top: -0.7em;
}

#rescontainer{
	width: 900px;
	height: 600px;
	position: relative;
	left: 80px;
	right: 80px;
}
.content1{
    width: 50%;   
    height: 50%;
	position: relative;
}

.content2{
    width: 50%;
    height: 50%;
	position: relative;
}

dt {
	display: none;
}

.list_time a{
	background-color: transparent;
	display: block;
	float: left;
	margin-right: 10px;
	margin-bottom: 10px;
	text-decoration: none;
	color: black;
	font-size: 10px;
}

.list_time a:after{
	clear: both;
}

/* button{ position:absolute; top:50%; left:50%; */
/*   width:120px; height:30px; margin-top:-15px; margin-left:-60px; */
/*   line-height:15px; cursor:pointer; */
/* } */

.resModal{ 
  position:absolute; width:100%; height:100%; background: rgba(0,0,0,0.8); top:0; left:0; display:none;
}

.resModal_content {
  width:400px; height:400px;
  background:#fff; border-radius:10px;
  position:relative; top:30%; left:50%;
  margin-top:-100px; margin-left:-200px;
  text-align:center;
  box-sizing:border-box; padding:74px 0;
  line-height:13px;
}

.resModal .btn_min {
	display:inline-block;
    width:25px;
    height:25px;
    border-style: none;
}

.resModal .btn_plus {
	display:inline-block;
	width:25px;
    height:25px;
    border-style: none;
}
.resModal .text_num {
	display:inline-block;
}

/* container end */
 
</style>
</head>
<body>
<div id="wrap">

<hr class="hr" />

<div id="rescontainer" class="d-flex justify-content-center p-5">
	<input type="hidden" class="date">
	<input type="hidden" class="resNum" value=${param.resNum }>
	<c:if test="${not empty memId }">
		<input type="hidden" class="memId" value=${memId }>
	</c:if>
	
	<!-- 달력 -->
	<div class="content1 p-3 m-3 " style="float:left;">
		<div id="datepicker"></div>
	</div>
	
	<!-- 타임 테이블 -->
	<div class="content2 p-5 m-3" style="float:left;">
		<div class="time_select">
			<ul class="list_time bg-transparent">
				
				<li>
					<a href="#none">
					<button type="button" class="btn btn-warning"
					style="--bs-btn-font-size: 7pt;">
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
					</button>
					</a>
				</li>

				<li>
					<a role="button" href="#none">
					<button type="button" class="btn btn-warning"
					style="--bs-btn-font-size: 7pt;">
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
					</button>
					</a>
				</li>
				
				<li>
					<a role="button" href="#none">
					<button type="button" class="btn btn-warning"
					style="--bs-btn-font-size: 7pt;">
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
					</button>
					</a>
				</li>
				
				<li>
					<a role="button" href="#none">
					<button type="button" class="btn btn-warning"
					style="--bs-btn-font-size: 7pt;">
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
					</button>
					</a>
				</li>
				
				<li>
					<a role="button" href="#none">
					<button type="button" class="btn btn-warning"
					style="--bs-btn-font-size: 7pt;">
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
						</button>
					</a>
				</li>
				
				<li>
					<a role="button" href="#none">
					<button type="button" class="btn btn-warning"
					style="--bs-btn-font-size: 7pt;">
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
					</button>
					</a>
				</li>
				
				<li>
					<a role="button" href="#none">
					<button type="button" class="btn btn-warning"
					style="--bs-btn-font-size: 7pt;">
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
					</button>
					</a>
				</li>
				
				<li>
					<a role="button" href="#none">
					<button type="button" class="btn btn-warning"
					style="--bs-btn-font-size: 7pt;">
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
					</button>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
					<button type="button" class="btn btn-warning"
					style="--bs-btn-font-size: 7pt;">
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
					</button>	
					</a>
				</li>
			</ul>
		</div>
	</div><!-- 타임테이블 -->
</div> <!-- container -->
</div>


<!-- 모달 -->


<div class="resModal">
  <div class="resModal_content">
  	<p class="resId"></p>
  	<p class="resDate"></p>
  	<input type="hidden" class="resTime">
  	<p class="resTime2"></p>
  	<input type="hidden" class="maxNum">
  	<p class="maxNum2"></p><br>
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

  	<button type="button" id="resUpdateBtn" style="border-style: none;">예약변경</button>
  	<button type="button" id="modal_close_btn" style="background-color: transparent; border-style: none;">취소</button>
  </div>
</div>



<script>
$(function(){
	var date = new Date();
	
	if(date.getMonth()+1<10) {
		var Month = '0' + date.getMonth()+1;
	}else{
		Month = date.getMonth()+1;
	}
	
	if(date.getDate()<10) {
		var Day = '0' + date.getDate();
	}else{
		Day = date.getDate();
	}
	
	var today = date.getFullYear() + '' + Month + '' + Day;
	$('.date').val(today);
	
	for(var i=0; i<9; i++){
		$('#rescontainer .content2 li .seat strong:eq(' + i + ')').text(8);
		$('#rescontainer .content2 li .time:eq('+ i +')').parents('button').attr({"class": "btn btn-warning"});	
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
							$('#rescontainer .content2 li .time:eq('+ i +')').parents('button').attr({"class": "btn btn-dark"});
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
                     	$('#rescontainer .content2 li .time:eq('+ i +')').parents('button').attr({"class": "btn btn-warning"});
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
                     								$('#rescontainer .content2 li .time:eq('+ i +')').parents('button').attr({"class": "btn btn-dark"});
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
	if($('.memId').val() == null){
		alert("로그인이 필요한 서비스입니다");
	}
	else if($(this).find('.seat strong').text() == 0){
		alert('예약이 마감되었습니다')
	}else{
		$('.resModal .resId').text($('.memId').val() + '님');
		$('.resModal .resDate').text($('.date').val());
		$('.resModal .resTime').val($(this).find('.time').prev().text());
		$('.resModal .resTime2').text($(this).find('.time').prev().text() + '' + '시');
		$('.resModal .maxNum').val($(this).find('.seat strong').text());
	 	$('.resModal .maxNum2').text('잔여석 : ' + $(this).find('.seat strong').text());
		$('#adult > .text_num').text(0);
		$('#kid > .text_num').text(0);
		$('.resModal').fadeIn();
	}
});
	  
$("#modal_close_btn").click(function(){
	$(".resModal").fadeOut();
});
	  
$('#adult > .btn_plus').click(function(){
	var num = $('#adult > .text_num').text();
	num *=1;
	if(($('#adult > .text_num').text()*1 + $('#kid > .text_num').text()*1) >= $('.maxNum').val()){
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
 	if(($('#kid > .text_num').text()*1 + $('#adult > .text_num').text()*1) >= $('.maxNum').val()){
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
//resNum로 resDTO 가져오기
$(function(){
	$.ajax({
		url: '/omakaseProject/res/getOneRes',
		type: 'post',
		data: 'resNum=' + ${param.resNum},
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
		},
		error: function(err){
			console.log(err);
		}
	})//ajax
}); 
$('#resUpdateBtn').click(function(){
	var allP = $('#adult > .text_num').text()*1 + $('#kid > .text_num').text()*1;
 	var allM = $('#menuA > .text_num').text()*1 + $('#menuB > .text_num').text()*1;
	
	if(allP == 0){
		alert('최소 한명 이상의 예약인원이 필요합니다')		
	}else if(allM < allP){
		alert("1인 1메뉴 이상 주문하셔야 예약 가능합니다")
	}else{
// 		alert($('#adult > .text_num').text()+''+$('#kid > .text_num').text());
// 		alert($('#menuA > .text_num').text()+''+$('#menuB > .text_num').text());
// 		alert(allP + '' + allM);
		$.ajax({
			url: '/omakaseProject/res/resUpdate',
			type: 'post',
			data: 'resNum=' + $('.resNum').val()
				+ '&resDate=' + $('.resDate').text()
				+ '&resTime=' + $('.resTime').val() 
				+ '&resAdult=' + $('#adult > .text_num').text()
				+ '&resKid=' + $('#kid > .text_num').text()
				+ '&resMenuA=' + $('#menuA > .text_num').text()
				+ '&resMenuB=' + $('#menuB > .text_num').text(),
			success: function(){
				alert("예약이 변경되었습니다");
				opener.parent.location.reload();
				window.close();
			},
			error: function(err){
				console.log(err);
			}	
		});
	}
});
</script>
</body>
</html>