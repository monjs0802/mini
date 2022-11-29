<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#container {
	margin-left: -10px;
	width: 90%;
	padding: 30px 0;
}
.contents_header {
	margin-top: -20px;
}


.table tr th:first-child {
    background-color: #fb7d10;
    border-color: #8F1D1D;
    color: #FFF;          /* 글자색 */
    height: 30px;
}

.table {
	margin: 20px; 
	font-size: .9em; 
	font-color: #000000;    
	width: 600px;
	border-color: black;
   	border-collapse: collapse;   
 	border-radius: 5px;  /* 테두리둥글게 */
 	overflow: hidden;
}

button {
    top:50%;
    background-color:#fcad68;
    color: #fff;
    border:none; 
    border-radius:10px;   /* 테두리둥글게 */
    padding: 5px;   /* 버튼의 위, 아래, 오른쪽, 왼쪽에 padding */

}
</style>
</head>
<body>

<div id="container">

	<div class="contents_header">
	<h3> <strong>${memId}</strong> 님의 예약정보</h3>
	<input type="hidden" id="memId" value="${memId }" > 
	<input type="hidden" id="memPwd" value="${memDTO.name}" >
	
	</div>
	
	<div class="contents_body">
	<form class="resTable">
		<table class="table" id="table">
<%-- 			 <tr>
				<th>예약 번호 </th>
				<th id="resNum"></th>
			</tr>
			<tr>
				<th>예약일</th>
				<th> data.resDate </th>
			</tr>
			<tr>
				<th>예약시간</th>
				<th>${resDTO.resTime }</th>
			</tr>
			<tr>
				<th>인원</th>	
				<th>총 ${resDTO.resAdult }+${resDTO.resKid } 명   (${resDTO.resAdult }명, ${resDTO.resKid }명)</th>
			</tr> 
			<tr> 
				<th>예약변경</th>
				<th>
				<input class="button" type="button" value="예약변경">
				<input class="button" type="button" value="예약취소">
				</th>  
			</tr>   --%>
		</table>
		</form>
		<div class="result" id="result"></div>
	</div>
</div>  


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">

//id로 검색해서 내 모든 예약정보 모두 가져오기
$(function(){
	//alert($('#memId').val());
	
	$.ajax({
		url: '/omakaseProject/res/getResInfo',
		type: 'post',
		data: 'resId=' + $('#memId').val(),
		success: function(data){
			//alert(JSON.stringify(data));
			if( JSON.stringify(data) === '[]'){ //배열값이 없을때
				$('#table').append( $('<tr/>').html('예약 내용이 없습니다.'))
			}
			
			else{ //배열값이 있을 때 */
				for(var i=0; i<data.length; i++){
					
					var resNum = data[i].resNum;
					var resDate= data[i].resDate;
					var resTime= data[i].resTime;
					var resAdult= data[i].resAdult;
					var resKid= data[i].resKid;
					
					$('#table').append( $('<tr/>')
									.append( $('<th/>').html('예약번호'))
									.append( $('<th/>').html(resNum)))
					 		   .append( $('<tr/>')	
					 				.append( $('<th/>').html('예약일'))
					 				.append( $('<th/>').html(resDate))) 
					 		   .append( $('<tr/>')
					 				 .append( $('<th/>').html('예약시간'))
					 				 .append( $('<th/>').html(resTime))) 
					 		   .append( $('<tr/>')
					 				 .append( $('<th/>').html('예약인원'))
					 				 .append( $('<th/>').html('총'+ (resAdult+resKid) +'명 (성인: ' +resAdult+ '명, 소아: '+resKid+'명)'))) 
					 		   .append( $('<tr/>')
					 				 .append( $('<th/>').html('예약수정'))
					 				 .append( $('<th/>').append($('<span>').append($('<button id="change'+i+'" onclick="resUpdate(\''+resNum+'\')">' ).html('예약변경')) )
					 									.append($('<span>').append($('<button id="cancel'+i+'" onclick="resCancel(\''+resNum+'\')">' ).html('예약취소')) ) ))
					 		   .append( $('<hr>'));		   
				}//for	
 			} 


		},
		error: function(err){
			console.log(err);
		}

	})//ajax
}); //$(function()
	

//예약변경 창열기
function resUpdate(resNum){
	//alert(resNum);
	window.open("/omakaseProject/res/resUpdateForm?resNum="+resNum,
				"/omakaseProject/res/resUpdateForm",               
				"width=900, height=500, scrollbars=no, toolbar=no, menubar=no, status=no, location=no");
}

//예약취소 창열기
function resCancel(resNum){
	//alert(resNum);
 	window.open("/omakaseProject/res/resCancelForm?resNum="+resNum,
				"/omakaseProject/res/resCancelForm",               
				"width=900, height=500, scrollbars=no, toolbar=no, menubar=no, status=no, location=no"); 
}


</script>
</body>
</html>