<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<h2>예약취소하기</h2>
	<br>    
	<p>아래 예약내용 확은 후 하단 취소버튼을 눌러주세요.</p>     
	<br>
	<table class="table table-striped">
	  
		<tbody>
			<tr>
				<td>예약 번호</td>
				<td>${param.resNum}</td>
			</tr>
			<tr>
				<td>예약일</td>
				<td id="resDate"></td>
			</tr>
			<tr>
				<td>예약시간</td>
				<td  id="resTime"></td>
			</tr>
			<tr>
				<td>인원</td>
				<td id="resCount"></td>
			</tr>
		</tbody>
	</table>
	<br>
	<span>
		<input type="button" value="예약취소" id="cancelCheck">
	</span>
</div>

	

	
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
			$('#resTime').text(data.resTime +'시');
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