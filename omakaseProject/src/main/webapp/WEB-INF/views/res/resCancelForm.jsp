<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<span>
	 아래 예약내용 확은 후 하단 취소버튼을 눌러주세요.
	</span>
	<form id="resForm">
	<table class="resTable" id="resTable">
 			 <tr>
				<th>예약 번호 </th>
				<th >${param.resNum}</th>
			</tr>
			<tr>
				<th>예약일</th>
				<th id="resDate"></th>
			</tr>
			<tr>
				<th>예약시간</th>
				<th id="resTime"></th>
			</tr>
			<tr>
				<th>인원</th>	
				<th id="resCount"></th>
			</tr>   
	</table>
	</form>
	
	
	<span>
		<input type="button" value="예약취소" id="cancelCheck">
	</span>
	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>	
$(function(){
	$.ajax({
		url: '/omakaseProject/res/getOneRes',
		type: 'post',
		data: 'resNum=' + ${param.resNum},
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			//$('#id').text(data.resId);
			$('#resDate').text(data.resDate);
			$('#resTime').text(data.resTime);
			var resNum = data.resNum;
			var resTot = data.resAdult + data.resKid ;
			var resAdult = data.resAdult;
			var resKid = data.resKid;
			$('#resCount').text('총 '+resTot+'명'+'(성인 : '+resAdult+'명, 소아 : '+resKid+'명)');
						
			//$('#resMenuA').text(data.resMenuA);
			//$('#resMenuB').text(data.resMenuB);

		},
		error: function(err){
			console.log(err);
		}

	})//ajax
	
});    //resNum로 resDTO 가져오기

$('#cancelCheck').click(function(){
	//var resNum = ${param.resNum}
	
	$.ajax({
		url: '/omakaseProject/res/resCancel',
		type: 'post',
		data: 'resNum=' + ${param.resNum},
		success: function(){	
			alert('예약이 취소되었습니다.'+ '\r\n' +'이용해 주셔서 감사합니다.');
			opener.parent.location.reload();
			window.close();
		},
		error: function(err){
			console.log(err);
		}

	})//ajax
	
}); //cancelCheck


</script>




</body>
</html>