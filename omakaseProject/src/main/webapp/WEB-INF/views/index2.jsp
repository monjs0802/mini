<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<style type="text/css">
html{
   overflow-y: scroll;
}

body {
   margin: 0;
   padding: 0;
   height: 100%;
}

#wrapper{
	width: 1100px;
	margin: auto;
}

#header {
   /* width: 1700px; */
   height: 10%;
   text-align: center;
}

#container {
   margin: auto;
   /* width: 1700px; */
   height: 500px;
}

#container:after {
   content: '';
   display: block;
   clear: both;
   float: none;
}

#nav {
   margin-left: 10px;
   width: 20%;
   height: 100%;
   float: left;
}

#section {
   width: 70%;
   height: 100%;
   float: left;
   margin: auto;
}

.button {
  background-color: white;
  border: solid black 1px;
  color: black;
  padding: 10px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  cursor: pointer;
}
.button1 {
  background-color: gray;
  border: solid black 1px;
  color: white;
  padding: 10px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  cursor: pointer;
}
/* footer start */
#footer{
	border-top: 1px solid #cccccc;
	padding: 18px 30px 40px 20px;
	color: #666;
	font-size: 0.9em;
}
#footer:after{
	content: '';
	display: block;
	clear: both;
}
.btmnav{
	float: right;
}
.btmnav dd{
	float: left;
}
.btmnav dd:after{
	content: '|';
	padding: 0 0.7em;
	color: #999;
}
.btmnav dd:last-child:after{
	content: '';
	padding: 0 0;
}
.copy{
	line-height: 1.8;
}
/* footer end */


</style>
</head>
<body>
<div id="wrapper">
<div id="header">
	<jsp:include page="./main/menu.jsp" />
</div>

<div id="container">

<div id="nav">
	<jsp:include page="${nav }" />
</div>

<div id="section">
	<jsp:include page="${display }"/>
</div>

</div>

<div id="footer">
	<dl class="btmnav">
		<dt class="blind">bottom navigation</dt>
		<dd><a href="#">About</a></dd>
		<dd><a href="#">Services</a></dd>
		<dd><a href="#">Portfolio</a></dd>
		<dd><a href="#">Contact us</a></dd>
		<dd><a href="#">Location</a></dd>		
	</dl>
	
	<p class="copy">
		Copyright &copy; COMPANY Design<br>
		Powered by Webazit, e-mail : <a href="mailto:webmaster@company.com">webmaster@company.com</a>
	</p>
</div><!-- footer -->

</div>
</body>
</html>