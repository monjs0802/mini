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

#container {
	height: 1000px;
}

#wrap {
	margin: auto;
	background-color: rgba(255, 247, 240, 0.5);
	border-radius: 10px;
}

#adminResContainer{
	width: 900px;
	position: relative;
}

.content1{
	margin: auto;
	width: 300px;
	position: relative;
}

.content2{

	position: relative;
}

.resBoard tr th{
	width: 50px;
}
</style>
</head>
<body>

<div id="wrap">
	<div id="section">
	
		<div id="adminResContainer">
			
			<input type="hidden" class="date">
			
			<!-- ?????? -->
			<div class="content1 p-3">
				<div id="datepicker"></div>
			</div>
			
			<!-- ?????? ?????? ??? -->
			<div class="content2 p-4">
			
			<table id="resBoard" class="table table-warning table-striped-columns table-hover">
			  <thead>
			  	<tr class="resFrame">
			      <th scope="col">??????</th>
			      <th scope="col">?????????</th>
			      <th scope="col">??????</th>
			      <th scope="col">??????</th>
			      <th scope="col">??????</th>
			      <th scope="col">??????</th>
			      <th scope="col">??? ??????</th>
			      <th scope="col">A??????</th>
			      <th scope="col">B??????</th>
			    </tr>
			  </thead>
			  <tbody>
			   
			  </tbody>
			</table>
		</div>	
		
		</div><!-- adminResContainer -->
	</div><!-- section -->	
</div><!-- wrap -->

<script type="text/javascript">
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
	
	$.ajax({
		url: '/omakaseProject/res/getReserve',
		type: 'post',
		data: 'resDate=' + $('.date').val(),
		success: function(data){
			$.each(data, function(index, items){
				$('<tr/>').append($('<td/>',{
						   align: 'center',
						   text: items.resNum
					   })).append($('<td/>',{
						   align: 'center',
						   text: items.resId
					   })).append($('<td/>',{
					       align: 'center',
						   text: items.resDate
					   })).append($('<td/>',{
						   align: 'center',
						   text: items.resTime
					   })).append($('<td/>',{
						   align: 'center',
						   text: items.resAdult
					   })).append($('<td/>',{
						   align: 'center',
						   text: items.resKid
					   })).append($('<td/>',{
						   align: 'center',
						   text: (items.resAdult + items.resKid)
					   })).append($('<td/>',{
						   align: 'center',
						   text: items.resMenuA
					   })).append($('<td/>',{
						   align: 'center',
						   text: items.resMenuB
					   })).appendTo($('#resBoard'));		
			});	//$.each
		},
		error: function(err){
			console.log(err);
		}
	});

	$("#datepicker").datepicker({
		 dateFormat: 'yy-mm-dd' //Input Display Format ??????
	 	,showOtherMonths: true //??? ????????? ???????????? ???????????? ????????? ??????
	 	,showMonthAfterYear:true //?????? ?????? ?????????, ?????? ??? ??????
	    ,changeMonth: true //?????????????????? ??? ?????? ??????                
	    ,showOn: "both" //button:????????? ????????????,????????? ???????????? ?????? ?????? ^ both:????????? ????????????,????????? ???????????? input??? ???????????? ?????? ??????  
	    ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //?????? ????????? ??????
	    ,buttonImageOnly: true //?????? ????????? ?????? ????????? ?????????, ???????????? ????????? ???
	    ,buttonText: "??????" //????????? ????????? ?????? ?????? ??? ???????????? ?????????                
	    ,yearSuffix: "???" //????????? ?????? ?????? ?????? ?????? ?????????
	    ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //????????? ??? ?????? ?????????
	    ,monthNames: ['1???','2???','3???','4???','5???','6???','7???','8???','9???','10???','11???','12???'] //????????? ??? ?????? Tooltip ?????????
	    ,dayNamesMin: ['???','???','???','???','???','???','???'] //????????? ?????? ?????? ?????????
	    ,dayNames: ['?????????','?????????','?????????','?????????','?????????','?????????','?????????'] //????????? ?????? ?????? Tooltip ?????????
	    ,minDate: "0D" //?????? ????????????(-1D:?????????, -1M:?????????, -1Y:?????????)
	    ,maxDate: "+1M" //?????? ????????????(+1D:?????????, -1M:?????????, -1Y:?????????) 
	    ,onSelect: function() {           		
	               		var date = $.datepicker.formatDate("yymmdd",$("#datepicker").datepicker("getDate"));
	               		$('.date').val(date);
	               		$('#resBoard tr').not($('#resBoard tr').eq(0)).remove();
	               		$.ajax({
	               			url: '/omakaseProject/res/getReserve',
	               			type: 'post',
	               			data: 'resDate=' + $('.date').val(),
	               			success: function(data){
	               				$.each(data, function(index, items){
	               					$('<tr/>').append($('<td/>',{
	         						   align: 'center',
	         						   text: items.resNum
	         					   })).append($('<td/>',{
	        						   align: 'center',
	        						   text: items.resId
	        					   })).append($('<td/>',{
	         					       align: 'center',
	         						   text: items.resDate
	         					   })).append($('<td/>',{
	         						   align: 'center',
	         						   text: items.resTime
	         					   })).append($('<td/>',{
	         						   align: 'center',
	         						   text: items.resAdult
	         					   })).append($('<td/>',{
	         						   align: 'center',
	         						   text: items.resKid
	         					   })).append($('<td/>',{
	         						   align: 'center',
	         						   text: (items.resAdult + items.resKid)
	         					   })).append($('<td/>',{
	         						   align: 'center',
	         						   text: items.resMenuA
	         					   })).append($('<td/>',{
	         						   align: 'center',
	         						   text: items.resMenuB
	         					   })).appendTo($('#resBoard'));		
	               				});	//$.each
	               			},
	               			error: function(err){
	               				console.log(err);
	               			}
	               		});
	      	        }	
	});
});


</script>
</body>
</html>