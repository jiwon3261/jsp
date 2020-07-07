<%@page import="jspBoard.board.entity.UserEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>navHeader</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./js/messageBox.js"></script>
<script src="./js/confirmBox.js"></script>
<script>
	$(document).ready(function(){
		$("#logoutSuccessBtn").click(function(){
			showConfirm("정말 로그아웃 하시겠습니까?",logout);
		})
	});
	
	function logout(){
		location.href="./logoutSuccess.do";
	}
	
</script>
<body>
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">SHARE♥GALL</a>
			<button
				class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<%
						UserEntity user = (UserEntity) session.getAttribute("user");
						if (user == null) {
					%>
					<li class="nav-item mx-0 mx-lg-1"><button type="button"
							id="loginBtn" class="btn btn-outline-primary btn-lg"
							style="color: #FFFFFF;" data-toggle="modal"
							data-target="#loginModal">로그인</button></li>
					<li class="nav-item mx-0 mx-lg-1"><button type="button"
							id="joinBtn" class="btn btn-outline-primary btn-lg"
							style="color: #FFFFFF;" data-toggle="modal" data-dismiss="modal"
							data-target="#joinModal">회원 가입</button></li>
					<%
						} else {
					%>
					<li class="nav-item mx-0 mx-lg-1">
					<button id="logoutSuccessBtn" type="button"
							class="btn btn-outline-primary btn-lg" style="color: #FFFFFF;">로그아웃</button></li>
					<%
						}
					%>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>