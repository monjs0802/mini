<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

input.button {
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
	<h3>나의 예약정보</h3>
	</div>
	
	<div class="contents_body">
		<table class="table">
		<input type="text" id="id" value="ho"> 테스트아이디값. 숨길예정
			<tr>
				<th>번호</th>
				<th>1</th>
			</tr>
			<tr>
				<th>예약일</th>
				<th>${ resDTO.resDate} </th>
			</tr>
			<tr>
				<th>예약시간</th>
				<th>${resDTO.resTime }</th>
			</tr>
			<tr>
				<th>인원</th>	
				<th>'${resDTO.resAdult }'+'${resDTO.resKid }'   ('${resDTO.resAdult }', '${resDTO.resKid }')</th>
			</tr>
			<tr>
				<th>예약변경</th>
				<th>
				<input class="button" type="button" value="예약변경">
				<input class="button" type="button" value="예약취소">
				</th>
			</tr>
		</table>
	</div>
</div>  


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">

$(function(){
	$('#memberDelete').click(function(){
		if(confirm('정말로 탈퇴 하시겠습니까?')){
			$.ajax({
				type: 'post',
				url: '/omakaseProject/member/delete',
				data: 'id=' + $('#id').val() ,
				/* 아이디 세션에서 얻어서 가지고 갈 예정. 테스트라서 id값 일단 줌 */
				success: function(){
					alert('탈퇴가 완료되었습니다.'+ '\r\n' +'이용해 주셔서 감사합니다.')
					
				}, 
				error: function(err){
					console.log(err)
				} 
					
			})	//ajax	
		}
	});
	
});



</script>
</body>
</html>