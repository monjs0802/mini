<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css"> 
@import url('https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap');
@import url(https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700);

#wrap {
	background-color: rgba(255, 247, 240, 0.7);;
	border-radius: 5px;
}

#section {

	position: relative;
	left: 300px;
}

#loginForm{
	margin: auto auto;
	text-align: center;
}

/* 유효성Div */
#idDiv, #pwdDiv {
	font-size: 8pt;
	color: red;
	font-weight: bold;
}

/* 찐 버튼 */
.clear {
  clear: both;
}
.button {
  display: block;
  position: relative;
  float: left;
  width: 120px;
  padding: 0;
  margin: 10px 20px 10px 0;
  font-weight: 600;
  text-decoration: none;
  text-align: center;
  line-height: 50px;
  color: #FFF;
  border-radius: 5px;
  transition: all 0.2s ;
}

.btnOrange {
  background: #FFAA40;
}
.btnPush:hover {
  margin-top: 15px;
  margin-bottom: 5px;
  color: #c83200;
}
.btnOrange.btnPush {
  box-shadow: 0px 5px 0px 0px #A66615;
}
.btnOrange.btnPush:hover {
  box-shadow: 0px 0px 0px 0px #A66615;
}



/* 민혁님 용 로그인/회원가입 버튼 ㅡㅡ 지각하지마셈요 */
.loginBtn{	
	width: 150px;
	height: 70px;
    position: relative;
    display: inline-block;
    padding: 23px 35px;
    color: black;
    text-decoration: none;
    text-transform: uppercase;
    font-size: 9pt;
    transition: 0.5s;
    letter-spacing: 4px;
    overflow: hidden;
}

.loginBtn:hover{
    background: #FF9100;
    color: lightgrey;
    box-shadow: 0 0 5px #FF9100,
                0 0 25px #FF9100,
                0 0 50px #FF9100,
                0 0 200px #FF9100;
     -webkit-box-reflect:below 1px linear-gradient(transparent, #0005);
}

.loginBtn:nth-child(1){
    filter: hue-rotate(270deg);
}

.loginBtn:nth-child(2){
    filter: hue-rotate(110deg);
}
.loginBtn span{
    position: absolute;
    display: block;
}
.loginBtn span:nth-child(1){
    top: 0;
    left: 0;
    width: 100%;
    height: 2px;
    background: linear-gradient(90deg,transparent, #A42D02);
    animation: animate1 1s linear infinite;
}
@keyframes animate1{
    0%{
        left: -100%;
    }
    50%,100%{
        left: 100%;
    }
}
.loginBtn span:nth-child(2){
    top: -100%;
    right: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(180deg,transparent,#A42D02);
    animation: animate2 1s linear infinite;
    animation-delay: 0.25s;
}
@keyframes animate2{
    0%{
        top: -100%;
    }
    50%,100%{
        top: 100%;
    }
}
.loginBtn span:nth-child(3){
    bottom: 0;
    right: 0;
    width: 100%;
    height: 2px;
    background: linear-gradient(270deg,transparent,#A42D02);
    animation: animate3 1s linear infinite;
    animation-delay: 0.50s;
}
@keyframes animate3{
    0%{
        right: -100%;
    }
    50%,100%{
        right: 100%;
    }
}
.loginBtn span:nth-child(4){
    bottom: -100%;
    left: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(360deg,transparent,#A42D02);
    animation: animate4 1s linear infinite;
    animation-delay: 0.75s;
}
@keyframes animate4{
    0%{
        bottom: -100%;
    }
    50%,100%{
        bottom: 100%;
    }
}

</style>
</head>

<body>
<div id="wrap" class="m-auto">
	 
	<div id="section" class="d-block p-5 m-auto justify-content-center align-content-center">
	
	    <a href="#" class="m-5 align-items-center mx-auto">
    	<img src="http://localhost:8080/omakaseProject/resources/img/logo2.png" width="200" alt="로고">
    	</a>
    	
		<form id="loginForm" class="justify-content-center align-content-center start-50" name="loginForm" action="/login">
			<table>
				<tr>
					<td>
						<div class="form-floating mt-5" style="width: 300px; height:50;">
					  	<input type="text" name="id" class="form-control" id="id" placeholder="아이디 입력">
					  	<label for="id">아이디 입력</label>
						<div id="idDiv" ></div>
						</div>
					</td>
				</tr>
				
				<tr>
					<td>
						<div class="form-floating">
						<input type="password" name="pwd" class="form-control mb-5" id="pwd" placeholder="비밀번호 입력">
						<label for="pwd">비밀번호 입력</label>
						<div id="pwdDiv"></div>
						</div>
					</td>
				</tr>
			</table>
		</form>		
				<div class="Btn">	
					<a href="#" id="loginBtn" class="ml-5 button btnPush btnOrange">Login</a>
					<a href="memberWrite" class="button btnPush btnOrange">Sing up</a>
				</div>	
					
					<!-- 좀 감상하시고 -->
					<!-- <a id="loginBtn" class="loginBtn" href="#">
				        <span></span>
				        <span></span>
				        <span></span>
				        <span></span>
				        Login
				    </a>
				    <a id="loginBtn" class="loginBtn" href="memberWrite">
				        <span></span>
				        <span></span>
				        <span></span>
				        <span></span>
				        Sign Up
			  		</a> -->
			  		<!-- 지워주세요 저기부터 여기까지 -->	
			  	<br>
			  		
			  		<!-- 카카오 로그인 -->
					<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?client_id=d5eefc288eb394a4aab977f7c47a36e2
					&redirect_uri=	
					http://localhost:8080/omakaseProject/index&response_type=code">
			<!-- 	REST_API키 및 REDIRECT_URI는 본인걸로 수정하세요. -->
			<!--	본인걸로 수정 시 띄어쓰기 절대 하지 마세요. 오류납니다. -->
					<img src="/omakaseProject/resources/img/klogin.png" style="width: 150px">
					</a>
					<div class="clear"></div> 
					
				<br><br>
			
			<div id="loginResult"></div>	
		
	</div><!-- section -->
</div><!--  wrap -->


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$('#loginBtn').click(function(){
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	
	if($('#id').val() == ''){
		$('#idDiv').text('아이디를 입력하세요');
		$('#id').focus();
		
	}else if($('#pwd').val() == ''){
		$('#pwdDiv').text('비밀번호를 입력하세요');
		$('#pwd').focus();
		
	}else{
		$.ajax({
			url: '/omakaseProject/member/login',
			type: 'post',
			data: 'id=' + $('#id').val() +'&pwd=' + $('#pwd').val(),
			dataType: 'text',
			success: function(data){
				if(data == 'exist'){
					location.href='../index';
				}else if(data == 'non_exist'){
					$('#pwdDiv').text('아이디 또는 비밀번호가 맞지 않습니다.');
					$('#pwdDiv').css('font-size', '12pt');
				}
					
			},
			error:function(err){
				//alert(err);
				console.log(err);
			}
		});
	}
		
});
</script>
</body>
</html>