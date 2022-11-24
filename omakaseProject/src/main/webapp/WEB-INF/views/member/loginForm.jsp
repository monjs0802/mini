<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

@import url(https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700);

html{
	background-image: linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3) ), url(/project/img/tb2.png);
	background-color:#ffffff;
}

table {
   /* width:100px;
   margin:0 auto;
   height:150px;
   width:300px; */
   background-color:linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3) ),#ffffff;
}
a.button.relative{
	position:relative;
}

a,
a:visited {
  text-decoration: none;
  color: #00AE68;
}

.clear {
  clear: both;
}
a.button {
  display:block;
  position: relative;
  float: left;
  width: 100px;
  padding: 0;
  margin: 10px 20px 10px 10px;
  font-weight: 600;
  text-align: center;
  line-height: 50px;
  color: #FFF;
  border-radius: 5px;
  transition: all 0.2s ;
}
.btnOrange {
  background: #FFAA40;
}

.btnFade.btnOrange:hover {
  background: #FF8E00;
}
.btnPurple {
  background: #A74982;
}
.btnFade.btnPurple:hover {
  background: #6D184B;
}
</style>
</head>
<h2>로그인</h2>
<body>
<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?client_id=d5eefc288eb394a4aab977f7c47a36e2
&redirect_uri=	
http://localhost:8080/omakaseProject/index&response_type=code">
	<!-- REST_API키 및 REDIRECT_URI는 본인걸로 수정하세요 -->
	<!-- 본인걸로 수정 시 띄어쓰기 절대 하지 마세요. 오류납니다. -->
		<img src="/omakaseProject/resources/img/klogin.png" style="height:30px">
	</a>
		<form id="loginForm" name="loginForm">
			<table border="1" cellpadding="5" cellspacing="0" >
				<tr>
					<td>
						<input type="text" name="id" id="id" size="30" placeholder="아이디 입력">
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" name="pwd" id="pwd" size="40" placeholder="비밀번호 입력">
					</td>
				</tr>
		</table>
				
				<div id="container" class="container" >
				 <h3 class="articleTitle"></h3>
					<a href="#" title="Button fade orange" class="button btnFade btnOrange">로그인</a>
					<a href="#" title="Button fade purple" class="button btnFade btnPurple">회원가입</a>
					 <div class="clear"></div>
				 </div>
					<!-- <th colspan="5">
						<button type="button" id="loginBtn">로그인</button>
						<button type="button" onclick="#">회원가입</button>
					</th> -->
				
		<br><br>
		
		<div id="loginResult"></div>	
		</form>
	</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$('#loginBtn').click(function(){
	$('#placeholder').empty();
	$('#placeholder').empty();
	
	if($('#id').val() == ''){
		$('#idDiv').text('아이디를 입력하세요');
		$('#id').focus();
		
	}else if($('#pwd').val() == ''){
		$('#pwdDiv').text('비밀번호를 입력하세요');
		$('#pwd').focus();
		
	}else{
		$.ajax({
			url: '/miniProject_MVC/member/login.do',
			type: 'post',
			data: 'id=' + $('#id').val() +'&pwd=' + $('#pwd').val(),
			//data: { 'id': $('#id').val(), 'pwd': $('#pwd').val() }
			dataType: 'text',			
			success: function(data){
				data = data.trim();
				
				if(data == 'ok'){
					/* location.href='../index.jsp'; */
					
				}else if(data == 'fail'){
					$('#loginResult').text('아이디 또는 비밀번호가 맞지 않습니다.');
					$('#loginResult').css('font-size', '12pt');
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