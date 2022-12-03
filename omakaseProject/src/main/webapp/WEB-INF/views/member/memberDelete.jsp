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

#checkDelete {
	position: relative;
	top: 50px;
	left: 15px;
	margin: auto;
}

#deleteForm {
	position: relative;
	top: 50px;
	left: 15px;
}

#deleteTable{
	background-color: rgba(255, 247, 240, 0.7);
	border-radius: 5px;
}

.contents_header{
	margin: auto auto;
}

.contents_body{
	width: 700px;
	height: 600px;
	margin: auto auto;
}

</style>
</head>
<body>

<div id="wrap">

	<div id="section">
	<div id="deleteForm" class="d-block justify-content-center">
	
	
		<div class="contents_header">
			<h3 align="center">회원탈퇴</h3>
		</div>

		
			
		<div class="contents_body">
			
			<form id="deleteCheckTable" class="table-primary">
			<br>
				<table class="table">
					 <thead>
						<tr>
						 	<th style="width: 100px;" scope="col">회원탈퇴를 원하시면 비밀번호를 다시 입력해주세요.</th>
						</tr>
						<tr >
							<td>
								<div class="form-floating">
									 <input type="password" class="form-control-sm" style="width: 300px;" name="pwd" id="pwd">
									<label for="pwd"></label>
									<button type="button" id="checkPWD" class="btn btn-outline-success" style="width: 90px;" >확인</button>
								 </div>
							</td>
						</tr>
					 </thead>
				</table>
			</form>
		
			<form id="deleteTable" class="table-primary">
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
						  	<input type="text" class="form-control-sm" name="name" id="name" readonly>
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
				      <th scope="row">비밀번호</th>
				      <td>
				      	<div class="form-floating">
					 	<input type="password" class="form-control-sm" name="pwd" id="pwd" style="background-color: gray;" readonly>
					  	<label for="pwd"></label>
						</div>
						<div id="pwdDiv"></div>
				      </td>
				      <td>
				      	<div class="form-floating">
					  	<input type="password" class="form-control-sm" name="repwd" id="repwd" style="background-color: gray;" readonly>
						</div>
						<div id="repwdDiv"></div>
				      </td>
				    </tr>
				    
				  	<tr>
				      <th scope="row">이메일</th>
				      <td>
						<div class="form-floating">
						<input type="text" class="form-control-sm" name="email" id="email" readonly>
					  
						</div>
				      </td>
				    </tr>
				    
				    <tr>
				   	 <th scope="row">전화번호</th>
				   	 <td>
				  		<div class="form-floating">
					  	<input type="tel" class="form-control-sm" name="tel" id="tel" readonly>
					  	<label for="repwd"></label>
						</div>
					 </td>	
				    </tr>
				    
				    <tr>
				   	 <th scope="row">생년월일</th>
				   	 <td>
				  		<div class="form-floating">
					  	<input type="text" class="form-control-sm" name="birth" id="birth" readonly>
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
					  <button type="button" id="deleteBtn" class="btn btn-outline-success">탈퇴하기</button>
					  <button type="button"	id="resetBtn" class="btn btn-outline-secondary">취소하기</button>
					</div>
					</td>
					</tr>
				  </tbody>
				</table>
			</form>
			</div><!-- contents body -->
		</div> <!-- deleteForm -->
	</div> <!-- section -->
</div> <!-- wrap -->


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#deleteTable').hide();

	$('#checkPWD').click(function(){

		$.ajax({
			type: 'post',
			url: '/omakaseProject/member/getMember', 
			data : 'id=' + '${memId}' ,
			dataType: 'json' ,
			success: function(data){
				//alert(JSON.stringify(data));					
				var pwd = data.pwd;	
				
				if(pwd == $('#pwd').val()){		
					//비빌번호가 맞으면
					$('#deleteCheckTable').hide();
					$('#deleteTable').show();
					
					$('#name').val(data.name);
					$('#id').val(data.id);
					$('#pwd').val(data.pwd);
					$('#repwd').val(data.pwd);
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