<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>17831042윤지원</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="./js/messageBox.js"></script>
<script src="./js/confirmBox.js"></script>
<script>
	var boardList = [];
	var nowPage = 0;
	$(document).ready(function() {
		getData(0);

		$("#saveReplyBtn").click(function() {
			//alert($("#selectBoard").val());
			if ($("#replyContent").val().trim() === '') {
				showMessage("댓글을 입력해주세요");
			} else {
				$.ajax({
					url : "./replySave.do",
					method : "POST",
					data : {
						board_seq : $("#selectBoard").val(),
						content : $("#replyContent").val()
					},
					success : function(res) {
						getReply($("#selectBoard").val());
					}
				});
			}
		});

		$("#afterLoginCreateBoardBtn").click(function() {
			fileList = [];
			fileSizeList = [];
			$("#imgLiSection").html("");
			$("#imgDivSection").html("");
			$(".imgList").remove();
			$("#createBoardModal").modal(true);
		})

		$("#beforeLoginCreateBoardBtn").click(function() {
			showMessage("회원만 글을 작성할 수 있습니다.로그인을 시도해주세요.");
		})
	})

	function deleteReply(seq) {
		$.ajax({
			url : "./replyDelete.do",
			method : "POST",
			data : {
				seq : seq
			},
			success : function(res) {
				getReply($("#selectBoard").val());
			}
		})
	}

	function replyUpdateShow(seq){
		$("#replyUpdate").modal(true);
		$("#selectReply").val(seq);
	}
	
	function updateReply(){
		$.ajax({
			url : "./replyUpdate.do",
			method : "POST",
			data : {
				seq : $("#selectReply").val(),
				content : $("#updateReplyContent").val().trim()
			},
			success:function(res){
				getReply($("#selectBoard").val());
			}
		})
	}
	
	function getReply(seq) {
		$
				.ajax({
					url : "./replyView.do",
					method : "GET",
					data : {
						seq : seq
					},
					success : function(res) {
						var section = '';
						for (var i = 0; i < res.length; i++) {
							section += '<div class="card">';
							section += '<div class="card-body" style="text-align: left"><span class="badge badge-secondary" style="margin-right:30px">'
									+ res[i]['user_id']
									+ '</span><span class="badge badge-primary" style="margin-right:30px;">'
									+ res[i]['date']
									+ '</span>'
									+ res[i]['content'] + '</div></div>';
							if ($("#loginUser").val() === res[i]['user_id']) {
								section += '<button type="button" class="btn btn-primary btn-block" onclick="replyUpdateShow('+ res[i]['seq'] +')"/>수정</button><button type="button" class="btn btn-primary btn-block" onclick="deleteReply('+res[i]['seq']+')">삭제</button>';
							}
						}
						$("#replySection").html(section);
					}
				})
	}

	function deleteBoard(seq) {
		$.ajax({
			url : "./deleteBoard.do",
			method : "POST",
			data : {
				seq : seq
			},
			success : function(res) {
				location.href = "./index.do";
			}
		});
	}

	function showBoard(seq) {
		$
				.ajax({
					url : "./boardOneView.do",
					method : "GET",
					data : {
						seq : seq
					},
					success : function(res) {
						$("#portfolioModal").modal(true);
						var img = "";
						var boardMy = "";
						for (var i = 0; i < res['boardImg'].length; i++) {
							img += "<img style='height:500px;' class='img-fluid rounded mb-5' src='"+res['boardImg'][i]['path']+"'/>";
						}
						if ($("#loginUser").val() === res['user_id']) {
							boardMy = '<button type="button" class="btn btn-primary btn-block" style="margin-right:30px;">수 정</button>';
							boardMy += '<button onclick="deleteBoard('
									+ res['seq']
									+ ')" type="button" class="btn btn-secondary btn-block">삭 제</button><br/>';
						}
						$("#boardMy").html(boardMy);
						$("#boardContent").val(res['content']);
						$("#selectBoard").val(res['seq']);
						$("#boardImg").html(img);
						getReply(res['seq']);
					}
				})
	}

	function getData(page) {
		$
				.ajax({
					url : "./boardView.do",
					method : "GET",
					data : {
						page : page
					},
					success : function(res) {
						nowPage = page;
						var dateChk;
						var totalPage = Math.ceil(res['totalCount'] / 8);
						var section = '';
						for (var i = 0; i < res['list'].length; i++) {
							boardList.push(res['list'][i]);
						}
						for (var i = 0; i < boardList.length; i++) {
							var chk = false;
							if (dateChk !== boardList[i]['date']) {
								chk = true;
								dateChk = boardList[i]['date'];
								section += '<section style="padding: 20px; float: right;"><span style="font-size: 20px;"><strong>'
										+ dateChk
										+ '</strong></span></section>';
								section += '<section class="page-section portfolio"><div><div class="row">';
							}
							section += '<div onclick="showBoard('
									+ boardList[i]['seq']
									+ ')" class="col-md-4 col-lg-3 mb-5"><div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal2"><div class="portfolio-item-caption  h-100 w-100">';
							section += '<div class="portfolio-item-caption-content">';
							section += '<div style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">';
							section += '작성자 : ' + boardList[i]['user_id'];
							section += '</div><div style="padding: 10px;">'
									+ boardList[i]['content'];
							section += '</div><div style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">';
							section += '조회수 : ' + boardList[i]['hit']
									+ "&nbsp;&nbsp;&nbsp;작성일 : "
									+ boardList[i]['date'];
							section += '</div></div></div>';
							if (boardList[i]['path'] !== null) {
								section += '<img style="width:500px;height:250px;" class="img-fluid" src="'+boardList[i]['path']+'" />';
							} else {
								section += '<img style="width:500px;height:250px;" class="img-fluid" src="./img/basic.jpg" />';
							}
							section += '</div></div>';
							var nextBoard = boardList[i + 1];
							if (nextBoard === undefined
									|| nextBoard['date'] !== dateChk) {
								section += '</div></div></section><hr />';
							}
						}
						if (totalPage - 1 !== page) {
							$("#pageSection")
									.html(
											'<button id="showMoreBtn" type="button" class="btn btn-primary" onclick="getData('
													+ (nowPage + 1)
													+ ')">펼쳐보기</button>');
						} else {
							$("#pageSection").html("");
						}
						$("#boardSection").html(section);
					}
				});
	}
</script>
</head>
<body id="page-top">
	<!--nav-->
	<%@include file="../../common/nav.jsp"%>
	<!--header-->
	<%@include file="../../common/header.jsp"%>
	<!--main-->
	<%@include file="./createBoard.jsp"%>
	<input type="hidden" id="loginUser"
		value="<%=user != null ? user.getId() : ""%>" />
	<div class="row" style="margin: 12px;">
		<div class="col-md-8"></div>
		<div class="col-md-2">
			<select class="form-control" id="sel1" name="sellist1">
				<option>날짜순</option>
				<option>내가쓴 글</option>
				<option>조회많은순</option>
				<option>댓글 많은 순</option>
			</select>
		</div>
		<%
			if (user == null) {
		%>
		<div class="col-md-2">
			<button id="beforeLoginCreateBoardBtn" type="button"
				class="btn btn-success" style="width: 100%;">글쓰기</button>
		</div>
		<%
			} else {
		%>
		<div class="col-md-2">
			<button id="afterLoginCreateBoardBtn" type="button"
				class="btn btn-success" style="width: 100%;">글쓰기</button>
		</div>
		<%
			}
		%>
	</div>
	<hr />
	<div id="boardSection"></div>
	<div id="pageSection" style="text-align: center; margin-bottom: 100px;">
	</div>
	<%@include file="../../common/footer.jsp"%>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>3학년 1학기 jsp기말고사</small>
		</div>
	</div>
	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
	<div class="scroll-to-top d-lg-none position-fixed">
		<a class="js-scroll-trigger d-block text-center text-white rounded"
			href="#page-top"><i class="fa fa-chevron-up"></i></a>
	</div>
	<!-- Portfolio Modals-->
	<div class="portfolio-modal modal fade" id="portfolioModal"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal4Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<div id="boardMy"></div>
								<p class="mb-5">
									<textarea class="form-control" rows="15" id="boardContent"
										readonly="readonly"></textarea>
								</p>
								<div id="boardImg"></div>
								<div id="replySection"></div>
								<br />
								<div>
									<div class="input-group mb-3">
										<input id="replyContent" type="text" class="form-control">
										<div class="input-group-append">
											<button id="saveReplyBtn" class="btn btn-success">댓글
												등록</button>
											<input type="hidden" id="selectBoard" />
										</div>
									</div>
								</div>
								<!-- Portfolio Modal - Text-->
								<button class="btn btn-primary" data-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> 닫 기
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Button to Open the Modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#replyUpdate">댓글 수정</button>

	<!-- The Modal -->
	<div class="modal" id="replyUpdate">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="input-group mb-3">
						<input type="text" class="form-control" id="updateReplyContent">
						<input type="hidden" id="selectReply"/>
						<div class="input-group-append">
							<button class="btn btn-success" data-dismiss="modal" onclick="updateReply()">댓글 수정</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<!-- Contact form JS-->
	<script src="assets/mail/jqBootstrapValidation.js"></script>
	<script src="assets/mail/contact_me.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
