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

#updateForm {
	position: relative;
	top: 50px;
	left: 15px;
}

#updateTable{
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
	<div id="updateForm" class="d-block justify-content-center">

		<div class="contents_header">
			<h3 align="center">회원정보 수정</h3>
		</div>
		
		<div class="contents_body">
			<form id="updateTable" class="table-primary">
				<table class="table">
				 <thead>
				    <tr>
				      <th style="width: 100px;" scope="col" colspan="2"><strong style="text-decoration: underline;">${memId}</strong> 님의 회원정보</th>
				      
				      <th style="width: 150px;" scope="col"></th>
				    </tr>
				  </thead>
				  
				   <tbody>
				   	<tr>
				      <th scope="row" >이름</th>
				      <td>
					      	<div class="form-floating">
						  	<input type="text" class="form-control-sm" name="name" id="name">
						 	<label for="name"></label>
							</div>
							<div id="nameDiv"></div>
					  </td>
				    </tr>
				   	<tr>
				      <th scope="row">아이디</th>
				      <td>
				      	<div class="form-floating">
					  	<input type="text" class="form-control-sm" name="id" id="id" readonly>
					  	<label for="id"></label>
						</div>
						<div id="idDiv"></div>
				      </td>
				    </tr>
				   
				   <tr>
				      <th scope="row">새 비밀번호</th>
				      <td>
				      	<div class="form-floating">
					 	<input type="new-password" class="form-control-sm" name="pwd" id="pwd" placeholder="새 비밀번호">
					  	<label for="pwd"></label>
						</div>
						<div id="pwdDiv"></div>
				      </td>
				      <td>
				      	<div class="form-floating">
					  	<input type="new-password" class="form-control-sm" name="repwd" id="repwd" placeholder="비밀번호 확인">
					  	<label for="repwd"></label>
						</div>
						<div id="repwdDiv"></div>
				      </td>
				    </tr>
				    
				    <tr>
				      <th scope="row">이메일</th>
				      <td>
						<div class="form-floating">
						<input type="email" class="form-control-sm" name="email" id="email">
						<label for="repwd"></label>
						</div>
				      </td>
				    </tr>
				    
				     <tr>
				   	 <th scope="row">전화번호</th>
				   	 <td>
				  		<div class="form-floating">
					  	<input type="tel" class="form-control-sm" name="tel" id="tel">
					  	<label for="repwd"></label>
						</div>
					 </td>	
				    </tr>
				    
				    <tr>
				   	 <th scope="row">생년월일</th>
				   	 <td>
				  		<div class="form-floating">
					  	<input type="text" class="form-control-sm" name="birth" id="birth">
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
					  <button type="button" id="updateBtn" class="btn btn-outline-success">회원정보수정</button>
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
//기존정보 끌어오기
$(function(){
	
	if( ${memId == null} ){
		alert('로그인이 필요한 서비스 입니다.')
		location.href="/omakaseProject/index"
	}else{
		$.ajax({
			type: 'post' ,
			url: '/omakaseProject/member/getMember',
			data : 'id=' + '${memId}' ,
			dataType: 'json' ,
			success: function(data){
				//alert(JSON.stringify(data));
				
	 			$('#name').val(data.name);
				$('#id').val(data.id);
				$('#email').val(data.email);
				$('#tel').val(data.tel);
				$('#birth').val(data.birth); 
			},
			error: function(err){
				console.log(err)
			} 		 		
		});//ajax
		
	}
	
	
});

//회원정보 업데이트
$('#updateBtn').click(function(){
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
			url: '/omakaseProject/member/update',
			type: 'post',
			data: $('#updateTable').serialize(),
				 //alert( $('#updateTable').serialize() ),
										
			success: function(){
				//alert('okok');
				alert("회원정보를 수정하였습니다.");
				location.href = "/omakaseProject/index";
				//세션값 얻어온거 초기화시키기
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