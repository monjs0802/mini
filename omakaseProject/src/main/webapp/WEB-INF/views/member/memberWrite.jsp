<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#wrap {
	background-color: rgba(255, 247, 240, 0.7);
	border-radius: 5px;
}

#writeForm {
	position: relative;
	top: 100px;
	left: 50px;
}

.contents_header {
	width: 100px;
	height: 100px;
	margin-right: 30px;
}

.contents_body {

}

#table {
	 float: left;
	 right-margin: 20px; 
}


</style>
</head>
<body>

<div id="wrap">
	<div id="writeForm" class="d-block justify-content-center p-3">
	
		<div class="contents_header">
			<h3>회원가입</h3>
		</div>
			
		<div class="contents_body">
	
			<form id="writeTable" class="table-primary">
				<div id="table" style="width:250px; height:50px; margin: auto;">
					<div class="form-floating">
					  <input type="text" class="form-control" name="name" id="name" placeholder="이름">
					  <label for="name">이름</label>
					</div>
					<div id="nameDiv"></div>
					
					<div class="form-floating">
					  <input type="text" class="form-control" name="id" id="id" placeholder="아이디">
					  <label for="id">아이디</label>
					</div>
					<div id="idDiv"></div>
					
					<div class="form-floating">
					  <input type="password" class="form-control" name="pwd" id="pwd" placeholder="비밀번호">
					  <label for="pwd">비밀번호</label>
					</div>
					<div id="pwdDiv"></div>
					
					<div class="form-floating">
					  <input type="password" class="form-control" name="repwd" id="repwd" placeholder="비밀번호 확인">
					  <label for="repwd">비밀번호 확인</label>
					</div>
					<div id="repwdDiv"></div>
				</div>
				
				<div id="table" style="width:250px;">
				
					<div class="form-floating">
					  <input type="email" class="form-control" name="email" id="email" placeholder="이메일">
					  <label for="repwd">이메일</label>
					</div>
					
					<div class="form-floating">
					  <input type="tel" class="form-control" name="tel" id="tel" placeholder="전화번호">
					  <label for="repwd">전화번호</label>
					</div>
					
					<div class="form-floating">
					  <input type="text" class="form-control" name="birth" id="birth" placeholder="생년월일">
					  <label for="birth">생년월일</label>
					</div>
					
					<div class="form-check">
					  <input class="form-check-input" type="checkbox" value="이메일" id="checkEmail">
					  <label class="form-check-label" for="flexCheckDefault">
					    이메일
					  </label>
					</div>
					<div class="form-check">
					  <input class="form-check-input" type="checkbox" value="문자메세지" id="checkSms">
					  <label class="form-check-label" for="flexCheckDefault">
					    문자메세지
					  </label>
					</div>
		
		
					<div class="btn-group" role="group" aria-label="Basic outlined example">
					  <button type="button" id="writeBtn" class="btn btn-outline-success">회원가입</button>
					  <button type="button"	id="resetBtn" class="btn btn-outline-secondary">다시작성</button>
					</div>
				</div>
			</form>
		</div> <!-- contents body -->
	</div> <!-- writeForm -->
</div> <!-- wrap -->
 
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
//회원정보 업데이트
$('#writeBtn').click(function(){
	//alert("okok");
	$('#nameDiv').empty();
	$('#pwdDiv').empty();
	$('#repwdDiv').empty();

	if( $('#name').val()=='' ){
		$('#nameDiv').text('이름을 입력하세요');
		$('#nameDiv').css('color','orange');
		$('#nameDiv').css('font-size','8px');
		$('#name').focus();
		
		
	}else if( $('#pwd').val() ==''){
		$('#pwdDiv').text('비밀번호를 입력하세요');
		$('#pwdDiv').css('color','orange');
		$('#pwdDiv').css('font-size','8px');
		$('#pwd').focus();
		
	}else if( $('#repwd').val() != $('#pwd').val() ){
		$('#repwdDiv').text('비밀번호가 맞지 않습니다');
		$('#repwdDiv').css('color','orange');
		$('#repwdDiv').css('font-size','8px');
		
	}else{
		$.ajax({
			 url: '/omakaseProject/member/write',
			type: 'post',
			data: $('#writeTable').serialize(),
										 
			success: function(){
				//alert( $('#writeTable').serialize());
				alert('회원가입이 완료되었습니다.');
				location.href = "../index";
			},
			error: function(err){
				console.log(err);
			}
		})
		
	}
});

</script>
</body>
</html>