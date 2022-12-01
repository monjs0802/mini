<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>한우마카세 | han"U"makase</title>
<link rel="shortcut icon" href="http://localhost:8080/omakaseProject/resources/img/icon.png">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="http://localhost:8080/omakaseProject/resources/css/sub_index.css">

<style type="text/css"> 
/* .button {
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
} */


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
		
		<div id="index2_section">
			<jsp:include page="${display }"/>
		</div>
	
	</div>

	<div id="footer">
		<jsp:include page="./main/footer.jsp" />
	</div><!-- footer -->

</div>

<!-- JavaScript Bundle with Popper -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>