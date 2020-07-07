<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./js/messageBox.js"></script>
<script>
	var chkDupId = false;
	$(document).ready(function() {
		$("#id").keyup(function() {
			if ($(this).val().trim() === '') {
				chkDupId = false;
				$("#dupChk").text("* 아이디를 입력해주세요").css("color", "black");
			} else {
				chkDupIdHandle();
			}
		})

		$("#loginSuccessBtn").click(function(){
			if ($("#userId").val().trim() === '') {
				showMessage("아이디를 입력해주세요 !");
			} else if ($("#userPw").val().trim() === '') {
				showMessage("비밀번호를 입력해주세요 !");
			} else {
				loginHandle();
			}
		})
		
		$("#joinSuccessBtn").click(function() {
			if ($("#id").val().trim() === '') {
				showMessage("아이디를 입력해주세요 !");
			} else if ($("#pw").val().trim() === '') {
				showMessage("비밀번호를 입력해주세요 !");
			} else if ($("#pw").val().trim() !== $("#pwChk").val().trim()) {
				showMessage("입력한 비밀번호가 서로 맞지 않습니다 !");
			} else if ($("#name").val().trim() === '') {
				showMessage("이름을 입력해주세요 !");
			} else if (!chkDupId) {
				showMessage("중복된 아이디가 존재합니다 !");
			} else {
				joinHandle();
			}
		})
	});

	function chkDupIdHandle() {
		$.ajax({
			url : "./dupId.do",
			method : "GET",
			data : {
				id : $("#id").val(),
			},
			success : function(res) {
				if (res['result']) {
					$("#dupChk").text("* 사용 가능한 아이디입니다.").css("color", "blue");
					chkDupId = true;
				} else {
					$("#dupChk").text("* 중복된 아이디가 존재합니다.").css("color", "red");
					chkDupId = false;
				}
			}
		});
	}

	function joinHandle() {
		$.ajax({
			url : "./joinSuccess.do",
			method : "POST",
			data : {
				id : $("#id").val(),
				pw : $("#pw").val(),
				name : $("#name").val()
			},
			success : function(res) {
				if (res['result']) {
					showMessage("회원가입 완료");
					$("#joinCencelBtn").click();
					chkDupId = false;
				} else {
					showMessage("회원가입 도중 문제가 발생했습니다");
				}
			}
		})
	}
	
	function loginHandle(){
		$.ajax({
			url : "./loginSuccess.do",
			method : "POST",
			data : {
				id : $("#userId").val(),
				pw : $("#userPw").val()
			},
			success : function(res){
				if(res === null){
					showMessage("아이디 혹은 비밀번호가 일치하지 않습니다.");
				}else{
					location.href="./index.do";
				}
			}
		});
	}
	
</script>
<body>
	<div class="modal fade" id="loginModal">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">로그인</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body" style="margin-top: -30px;">
					<div class="form-group">
						<label for="usr">아이디 :</label> <input type="text"
							class="form-control" id="userId" name="userId">
					</div>
					<div class="form-group">
						<label for="pwd">비밀번호 :</label> <input type="password"
							class="form-control" id="userPw" name="userPw">
					</div>
					<br />
					<button id="loginSuccessBtn" type="button" class="btn btn-primary btn-block">로그인</button>
					<br />
					<div class="row" style="text-align: center;">
						<div class="col-md-12">
							<a href="" data-toggle="modal" data-dismiss="modal"
								data-target="#joinModal">아직 회원이 아니십니까?</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="joinModal">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">회원가입</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body" style="margin-top: -30px;">
					<form action="/action_page.php">
						<div class="form-group">
							<label for="id">아이디 :</label> <input type="text"
								class="form-control" id="id" name="id">
						</div>
						<div class="form-group">
							<label id="dupChk"
								style="color: black; margin-left: 5px; margin-top: -5">*
								아이디를 입력해주세요</label>
						</div>
						<div class="form-group">
							<label for="pw">비밀번호 :</label> <input type="password"
								class="form-control" id="pw" name="pw">
						</div>
						<div class="form-group">
							<label for="pw">비밀번호 확인 :</label> <input type="password"
								class="form-control" id="pwChk" name="pwChk">
						</div>
						<div class="form-group">
							<label for="name">이름 :</label> <input type="text"
								class="form-control" id="name" name="name">
						</div>
						<br />
						<button id="joinSuccessBtn" type="button"
							class="btn btn-secondary btn-block">회원가입</button>
						<button id="joinCencelBtn" type="button"
							class="btn btn-primary btn-block" data-dismiss="modal">취
							소</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>