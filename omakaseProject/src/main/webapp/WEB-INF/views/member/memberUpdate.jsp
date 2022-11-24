<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

/* .my_wrap { */
/* 	margin-left: -200px; */
/* 	margin-top: 100px; */
/* } */

/* .my_wrap > h4 { */
/*     background: #fff; */
/*     width: 250px; */
/*     hight: 800px; */
/* 	padding-bottom: 5px; */
/* } */

/* ul { */
/* 	list-style-type: none; */
/* 	overflow: auto; */
/*   	/*position: fixed;*/ */
/* } */

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


#updateBtn ,#resetBtn {
    top:50%;
    background-color:#fcad68;
    color: #fff;
    border:none; 
    border-radius:10px;   /* 테두리둥글게 */
    padding: 7px;   /* 버튼의 위, 아래, 오른쪽, 왼쪽에 padding */
    float: left;
}

#updateBtn:hover ,#resetBtn:hover{
	text-decoration: underline;
	color: grey;
}


</style>
</head>
<body>

<!-- <div class="my_wrap"> -->
<!-- 	<h4><span>마이페이지</span></h4> -->
<!-- 	<ul> -->
<!-- 		<li><a href="http://localhost:8080/omakaseProject/member/memberInfo" id="resInfo">나의 예약정보</a></li> -->
<!-- 		<li><a href="http://localhost:8080/omakaseProject/member/memberUpdate">회원정보 수정</a></li> -->
<!-- 		<li><a href="#" id="memberDelete">회원 탈퇴</a></li> -->
<!-- 	</ul> -->
<!-- </div> -->

<div id="container">

	<div class="contents_header">
	<h3>회원정보 수정</h3>
	</div>
		
	<div class="contents_body">
<!-- 
	<form id="updateTable">
		<table>
			<tr>
				<th>이름</th>
				<td><input type="text" id="name" name="name" ></td>
			</tr>
			
			<tr>
				<th>아이디</th>
				<td><input type="text" id="id" name="id" value="ho"></td>
			</tr>
			
			<tr>
				<th>현재 비밀번호</th>
				<td><input type="password" id="pwd" name="ped"></td>
			</tr>
			
			<tr>
				<th>변경할 비밀번호</th>
				<td><input type="password" id="repwd"></td>
			</tr>
			
			<tr>
				<th>이메일</th>
				<td><input type="email" id="email" name="email"></td>
			</tr>
			
			<tr>
				<th>전화번호</th>
				<td><input type="text" id="tel" name="tel"></td>
			</tr>
			
			<tr>
				<th>생년원일</th>
				<td><input type="text" id="birth" name="birth"></td>
			</tr>
			
			<span>마케팅 수신동의</span>
			<input type="checkbox" id="emailMarketing">이메일
			<input type="checkbox" id="telMarketing">문자 메시지
		

			<span>
				<input type="button" id="updateBtn" value="저장하기">
				<input type="button" id="resetBtn" value="다시작성">
			</span>
		
		</table>
	</form>

-->
	<form id="updateTable">
		<div id="table">
			<span>이름</span>
			<input type="text" id="name" name="name">
			<div id="nameDiv"></div>
			
			<span>아이디</span>
			<input type="text" id="id" name="id" value="ho" readonly> 
			
			<span>비밀번호</span>
			<input type="password" id="pwd" name="pwd">
			<div id="pwdDiv"></div>
			
			<span>비밀번호 재확인</span>
			<input type="password" id="repwd">
			<div id="repwdDiv"></div>
		</div>
		
		<div id="table">
			<span>이메일</span>
			<input type="email" id="email" name="email">

			<span>전화번호</span>
			<input type="tel" id="tel" name="tel">

			<span>생년원일</span>
			<input type="text" id="birth" name="birth">
			
			<span>마케팅 수신동의</span>
			<input type="checkbox" id="emailMarketing">이메일
			<input type="checkbox" id="telMarketing">문자 메시지
		</div>

		<span>
			<input type="button" id="updateBtn" value="저장하기">
			<input type="button" id="resetBtn" value="다시작성">
		</span>
	</form>


	
	</div>
</div>  

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
//기존정보 끌어오기
$(function(){
	$.ajax({
		type: 'post' ,
		url: '/omakaseProject/member/getMember',
		data : 'id=' + $('#id').val() ,
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
				alert('okok');
				//alert("회원정보를 수정하였습니다.");
				//location.href = "/omakaseProject/index";
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