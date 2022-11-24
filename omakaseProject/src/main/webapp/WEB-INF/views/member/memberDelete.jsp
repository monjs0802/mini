<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
	<tr>
		<td>비밀번호를 다시 입력 해주세요.</td>
		<input type="text" id="id" value="ho">  테스트아이디값 
	<tr>
	<tr>
		<td>
			<input type="password" id="pwd">
			<input type="button" value="확인" id="checkPWD">
		</td>
	</tr>
</table>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">

//비밀번호 얻어오는데 getMember함수 재활용
$(function(){
	$.ajax({
		type: 'post',
		url: '/omakaseProject/member/getMember', 
		data : 'id=' + $('#id').val() ,
		dataType: 'json' ,
		success: function(data){
			alert(JSON.stringify(data));
			var pwd = val(data.pwd);
			alert(pwd);
			
		},
		error: function(err){
			console.log(err)
		}
	});//ajax
});
	

$(function(){
	$('#checkPWD').click(function(){
		//id가지구가서 pwd 얻어와야함  
		
		
		//id의 비밀번호값이랑 적힌 비밀번호가 같으면 	
		
		
		if(confirm('정말로 탈퇴 하시겠습니까?')){
			//딜리트하러 감. 
		}
	});
});
</script>

</body>
</html>