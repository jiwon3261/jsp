<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="modal" id="loginModal">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">

				<div class="modal-header">
					<h4 class="modal-title">로그인</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body" style="margin-top: -30px;">
					<form action="/action_page.php">
						<div class="form-group">
							<label for="usr">아이디 :</label> <input type="text"
								class="form-control" id="usr" name="username">
						</div>
						<div class="form-group">
							<label for="pwd">비밀번호 :</label> <input type="password"
								class="form-control" id="pwd" name="password">
						</div>
						<br />
						<button type="submit" class="btn btn-primary btn-block">로그인</button>
						<br />
						<div class="row" style="text-align: center;">
							<div class="col-md-12">
								<a href="#">아직 회원이 아니십니까?</a>
							</div>
						</div>

					</form>
				</div>

			</div>
		</div>
	</div>
</body>
</html>