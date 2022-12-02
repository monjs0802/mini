<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div#container {
	margin-top: -10px;
	margin-left: 50px;
	width: 90%;
	padding: 30px 0;
}
.contents_header {
	margin-top: -20px;
}

.contents_body {
	margin-left: 50px;
}
.contents_body span{
    display: block;
    padding: 8px 0 0 0;   
    width: 130px;
    margin-right: 0;
}

#table {
	 float: left;
	 right-margin: 20px; 
}

</style>
</head>
<body>
<div id="container">

	<div class="contents_header">
		<h3>회원탈퇴</h3>
		<table>
			<tr>
				<td>회원탈퇴를 원하시면 비밀번호를 다시 입력 해주세요.</td>
			<tr>
			<tr>
				<td>
					<input type="password" id="pwd">
					<input type="button" value="확인" id="checkPWD">
				</td>
			</tr>
		</table>
	</div>
	
	<div class="contents_body">
		<form id="deleteTable">
			<div id="table">
				<span>이름</span>
				<input type="text" id="name" name="name" readonly>
				<div id="nameDiv"></div>
				
				<span>아이디</span>
				<input type="text" id="id" name="id" readonly> 
				
				<span>비밀번호</span>
				<input type="text"  readonly style="background-color: gray;">
				
				<span>비밀번호 재확인</span>
				<input type="text"  readonly style="background-color: gray;">
			</div>
			
			<div id="table">
				<span>이메일</span>
				<input type="email" id="email" name="email" readonly>
		
				<span>전화번호</span>
				<input type="tel" id="tel" name="tel" readonly>
		
				<span>생년원일</span>
				<input type="text" id="birth" name="birth" readonly>
				
				<span>마케팅 수신동의</span>
				<input type="checkbox" id="emailMarketing">이메일
				<input type="checkbox" id="telMarketing">문자 메시지
			</div>
		
			<span>
				<input type="button" id="deleteBtn" value="탈퇴하기">
			</span>
		</form>
	</div>

</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#deleteTable').hide();

	$('#checkPWD').click(function(){

		$.ajax({
			type: 'post',
			url: '/omakaseProject/member/getMember', 
			data : 'id=' + $('#id').val() ,
			dataType: 'json' ,
			success: function(data){
				//alert(JSON.stringify(data));					
				var pwd = data.pwd;	
				
				if(pwd == $('#pwd').val()){		
					//비빌번호가 맞으면
					$('#deleteTable').show();
					
					$('#name').val(data.name);
					$('#email').val(data.email);
					$('#tel').val(data.tel);
					$('#birth').val(data.birth);

				}else{
					//비밀번호가 틀리면
					alert('비밀번호가 틀렸습니다. 다시 입력 해주세요.')
				}
			},
			error: function(err){
					console.log(err)
			}	
		});//ajax
	});
	
	
	//회원정보삭제
	$('#deleteBtn').click(function(){
		
		if(confirm('정말로 탈퇴 하시겠습니까?')){
			
			$.ajax({
				type: 'post',
				url: '/omakaseProject/member/delete',
				data: 'id=' + $('#id').val(),
				success: function(){
					alert('탈퇴가 완료되었습니다.'+ '\r\n' +'이용해 주셔서 감사합니다.');
					location.href='/omakaseProject/index'
				},
				error: function(err){
					console.log(err)	
				}			
			});//ajax
			
		}//if
	});
	
});

	


</script>

</body>
</html>