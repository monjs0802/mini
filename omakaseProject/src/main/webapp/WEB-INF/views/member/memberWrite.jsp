<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#wrap {
	
	position: relative;
	margin: 0 auto;
}

#section {
	position: relative;
}

#writeForm {
	position: relative;
	top: 50px;
	left: 15px;
}

#writeTable{
	background-color: rgba(255, 247, 240, 0.7);
	border-radius: 5px;
}

.contents_header{
	margin: auto auto;
}

.contents_body {
	width: 700px;
	height: 600px;
	margin: auto auto;
}
</style>
</head>
<body>

<div id="wrap">

	<div id="section">
	<div id="writeForm" class="d-block justify-content-center">
	
		<div class="contents_header">
			<h3 align="center">회원가입</h3>
		</div>
			
		<div class="contents_body">
			<form id="writeTable" class="table-primary">
				<table class="table">
				  <thead>
				    <tr>
				      <th style="width: 100px;" scope="col">#</th>
				      <th style="width: 150px;" scope="col"></th>
				      <th style="width: 150px;" scope="col"></th>
				    </tr>
				  </thead>
				  
				  <tbody>
				    <tr>
				      <th scope="row" >이름</th>
				      <td>
					      	<div class="form-floating">
						  	<input type="text" class="form-control-sm" name="name" id="name" placeholder="이름">
						 	<label for="name"></label>
							</div>
							<div id="nameDiv"></div>
					  </td>
				    </tr>
				    
				    <tr>
				      <th scope="row">아이디</th>
				      <td>
				      	<div class="form-floating">
					  	<input type="text" class="form-control-sm" name="id" id="id" placeholder="아이디">
					  	<label for="id"></label>
						</div>
						<div id="idDiv"></div>
				      </td>
				    </tr>
				    
				    <tr>
				      <th scope="row">비밀번호</th>
				      <td>
				      	<div class="form-floating">
					 	<input type="new-password" class="form-control-sm" name="pwd" id="pwd" placeholder="비밀번호">
					  	<label for="pwd"></label>
						</div>
						<div id="pwdDiv"></div>
				      </td>
				      <td>
				      	<div class="form-floating">
					  	<input type="new-password" class="form-control-sm" name="repwd" id="repwd" placeholder="비밀번호 확인">
						</div>
						<div id="repwdDiv"></div>
				      </td>
				    </tr>
				    
				  	<tr>
				      <th scope="row">이메일</th>
				      <td>
						<div class="form-floating">
						<input type="text" class="form-control-sm" name="email" id="email" placeholder="이메일">
					  
						</div>
				      </td>
				    </tr>
				    
				    <tr>
				   	 <th scope="row">전화번호</th>
				   	 <td>
				  		<div class="form-floating">
					  	<input type="tel" class="form-control-sm" name="tel" id="tel" placeholder="전화번호">
					  	<label for="repwd"></label>
						</div>
					 </td>	
				    </tr>
				    
				    <tr>
				   	 <th scope="row">생년월일</th>
				   	 <td>
				  		<div class="form-floating">
					  	<input type="text" class="form-control-sm" name="birth" id="birth" placeholder="생년월일">
					 	<label for="birth"></label>
						</div>
					 </td>	
				    </tr>
				    
				    <tr>
				   	 <th scope="row">마케팅 수신동의</th>
				   	 <td>
				  		<div class="form-check">
					  	<input class="form-check-input" type="checkbox" value="이메일" id="checkEmail">
					  	<label class="form-check-label" for="flexCheckDefault">
					    이메일
					  	</label>
					  	</div>
					 </td>
					 <td> 	
					  	<div class="form-check">
					  	<input class="form-check-input" type="checkbox" value="문자메세지" id="checkSms">
					  	<label class="form-check-label" for="flexCheckDefault">
					    문자메세지
					 	</label>
					 	</div>
						
					 </td>
				    </tr>
				    
				    <tr>
				    <td colspan="3" align="center">
					<div class="btn-group" role="group" aria-label="Basic outlined example">
					  <button type="button" id="writeBtn" class="btn btn-outline-success">회원가입</button>
					  <button type="button"	id="resetBtn" class="btn btn-outline-secondary">다시작성</button>
					</div>
					</td>
					</tr>
				  </tbody>
				</table>
			</form>
			</div>
		</div> <!-- contents body -->
	</div> <!-- writeForm -->
</div> <!-- wrap -->
 
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
//회원정보 업데이트
$('#writeBtn').click(function(){
	//alert("okok");
	$('#nameDiv').empty();
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	$('#repwdDiv').empty();

	if( $('#name').val()=='' ){
		$('#nameDiv').text('이름을 입력하세요');
		$('#nameDiv').css('color','orange');
		$('#nameDiv').css('font-size','8px');
		$('#name').focus();
		
	}else if( $('#id').val() ==''){
		$('#idDiv').text('아이디를 입력하세요');
		$('#idDiv').css('color','orange');
		$('#idDiv').css('font-size','8px');
		$('#id').focus();
		
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