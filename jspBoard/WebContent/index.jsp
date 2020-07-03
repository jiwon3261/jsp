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
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!--nav-->
	<%@include file="./nav.jsp"%>
	<!--header-->
	<%@include file="./header.jsp"%>
	<!--main-->
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
		<div class="col-md-2">
			<button type="button" class="btn btn-success" style="width: 100%;">글쓰기</button>

		</div>

	</div>
	<hr />
	<section style="padding: 20px; float: right;">
		<span style="font-size: 20px;"><strong>오늘</strong></span>
	</section>
	<!-- <section style="padding: 20px; float: right;">
			<span style="font-size: 20px; float: left;"><strong>오늘</strong></span>
		<span>
		<button type="button" class="btn btn-success" style="width: 150px;">글쓰기</button>
		<button type="button" class="btn btn-success" style="width: 150px;">내
				글 관리</button>
		</span>
		<select
			class="form-control" id="sel1" name="sellist1">
			<option>정렬선택</option>
			<option>내가쓴 글</option>
			<option>조회많은순</option>
			<option>댓글 많은 순</option>
			<option>날짜순</option>
		</select>

	</section> -->
	<section class="page-section portfolio" id="portfolio">
		<div>
			<div class="row">
				<!-- Portfolio Item 1-->
				<div class="col-md-4 col-lg-3 mb-5">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal1">
						<div class="portfolio-item-caption  h-100 w-100">
							<div class="portfolio-item-caption-content">
								<div
									style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">작성자
									: 윤지원</div>
								<div style="padding: 10px;">오늘은 길을 걷다sdfsdfs가 하늘을
									보았다...버스커버fsfsdf스커 노래오늘은 길을 걷다가 하늘을 보았다...버스커버스커 노래오늘은 길을 걷다가
									하늘을 보았다...버스커버스dfdsfds커 노래</div>
								<div
									style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">조회수
									: 00 댓글 수 : 00</div>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/cabin.png" alt="" />
					</div>
				</div>
				<!-- Portfolio Item 2-->
				<div class="col-md-4 col-lg-3 mb-5">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal2">
						<div class="portfolio-item-caption  h-100 w-100">
							<div class="portfolio-item-caption-content">
								<div
									style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">작성자
									: 윤지원</div>
								<div style="padding: 10px;">오늘은 길을 걷다sdfsdfs가 하늘을
									보았다...버스커버fsfsdf스커 노래오늘은 길을 걷다가 하늘을 보았다...버스커버스커 노래오늘은 길을 걷다가
									하늘을 보았다...버스커버스dfdsfds커 노래</div>
								<div
									style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">조회수
									: 00 댓글 수 : 00</div>

							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/cake.png" alt="" />
					</div>
				</div>
				<!-- Portfolio Item 3-->
				<div class="col-md-4 col-lg-3 mb-5">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal3">
						<div class="portfolio-item-caption  h-100 w-100">
							<div class="portfolio-item-caption-content">
								<div
									style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">작성자
									: 윤지원</div>
								<div style="padding: 10px;">오늘은 길을 걷다sdfsdfs가 하늘을
									보았다...버스커버fsfsdf스커 노래오늘은 길을 걷다가 하늘을 보았다...버스커버스커 노래오늘은 길을 걷다가
									하늘을 보았다...버스커버스dfdsfds커 노래</div>
								<div
									style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">조회수
									: 00 댓글 수 : 00</div>

							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/circus.png"
							alt="" />
					</div>
				</div>
				<!-- Portfolio Item 4-->

				<div class="col-md-4 col-lg-3 mb-5 mb-lg-0">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal4">
						<div class="portfolio-item-caption  h-100 w-100">
							<div class="portfolio-item-caption-content">
								<div
									style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">작성자
									: 윤지원</div>
								<div style="padding: 10px;">오늘은 길을 걷다sdfsdfs가 하늘을
									보았다...버스커버fsfsdf스커 노래오늘은 길을 걷다가 하늘을 보았다...버스커버스커 노래오늘은 길을 걷다가
									하늘을 보았다...버스커버스dfdsfds커 노래</div>
								<div
									style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">조회수
									: 00 댓글 수 : 00</div>

							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/game.png" alt="" />
					</div>
				</div>
				<!-- Portfolio Item 5-->
				<div class="col-md-4 col-lg-3 mb-5 mb-md-0">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal5">
						<div class="portfolio-item-caption  h-100 w-100">
							<div class="portfolio-item-caption-content">
								<div
									style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">작성자
									: 윤지원</div>
								<div style="padding: 10px;">오늘은 길을 걷다sdfsdfs가 하늘을
									보았다...버스커버fsfsdf스커 노래오늘은 길을 걷다가 하늘을 보았다...버스커버스커 노래오늘은 길을 걷다가
									하늘을 보았다...버스커버스dfdsfds커 노래</div>
								<div
									style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">조회수
									: 00 댓글 수 : 00</div>

							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/safe.png" alt="" />
					</div>
				</div>
				<!-- Portfolio Item 6-->
				<div class="col-md-4 col-lg-3">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal6">
						<div class="portfolio-item-caption  h-100 w-100">
							<div class="portfolio-item-caption-content">
								<div
									style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">작성자
									: 윤지원</div>
								<div style="padding: 10px;">오늘은 길을 걷다sdfsdfs가 하늘을
									보았다...버스커버fsfsdf스커 노래오늘은 길을 걷다가 하늘을 보았다...버스커버스커 노래오늘은 길을 걷다가
									하늘을 보았다...버스커버스dfdsfds커 노래</div>
								<div
									style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">조회수
									: 00 댓글 수 : 00</div>

							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/submarine.png"
							alt="" />
					</div>
				</div>
			</div>

		</div>
	</section>
	<hr />
	<section style="padding: 20px; float: right;">
		<span style="font-size: 20px;"><strong>2020년 09월 10일</strong></span>
	</section>
	<section class="page-section portfolio" id="portfolio">
		<div>
			<div class="row">
				<!-- Portfolio Item 1-->
				<div class="col-md-4 col-lg-3 mb-5">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal1">
						<div class="portfolio-item-caption  h-100 w-100">
							<div class="portfolio-item-caption-content">
								<div
									style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">작성자
									: 윤지원</div>
								<div style="padding: 10px;">오늘은 길을 걷다sdfsdfs가 하늘을
									보았다...버스커버fsfsdf스커 노래오늘은 길을 걷다가 하늘을 보았다...버스커버스커 노래오늘은 길을 걷다가
									하늘을 보았다...버스커버스dfdsfds커 노래</div>
								<div
									style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">조회수
									: 00 댓글 수 : 00</div>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/cabin.png" alt="" />
					</div>
				</div>
				<!-- Portfolio Item 2-->
				<div class="col-md-4 col-lg-3 mb-5">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal2">
						<div class="portfolio-item-caption  h-100 w-100">
							<div class="portfolio-item-caption-content">
								<div
									style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">작성자
									: 윤지원</div>
								<div style="padding: 10px;">오늘은 길을 걷다sdfsdfs가 하늘을
									보았다...버스커버fsfsdf스커 노래오늘은 길을 걷다가 하늘을 보았다...버스커버스커 노래오늘은 길을 걷다가
									하늘을 보았다...버스커버스dfdsfds커 노래</div>
								<div
									style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">조회수
									: 00 댓글 수 : 00</div>

							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/cake.png" alt="" />
					</div>
				</div>
				<!-- Portfolio Item 3-->
				<div class="col-md-4 col-lg-3 mb-5">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal3">
						<div class="portfolio-item-caption  h-100 w-100">
							<div class="portfolio-item-caption-content">
								<div
									style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">작성자
									: 윤지원</div>
								<div style="padding: 10px;">오늘은 길을 걷다sdfsdfs가 하늘을
									보았다...버스커버fsfsdf스커 노래오늘은 길을 걷다가 하늘을 보았다...버스커버스커 노래오늘은 길을 걷다가
									하늘을 보았다...버스커버스dfdsfds커 노래</div>
								<div
									style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">조회수
									: 00 댓글 수 : 00</div>

							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/circus.png"
							alt="" />
					</div>
				</div>
				<!-- Portfolio Item 4-->

				<div class="col-md-4 col-lg-3 mb-5 mb-lg-0">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal4">
						<div class="portfolio-item-caption  h-100 w-100">
							<div class="portfolio-item-caption-content">
								<div
									style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">작성자
									: 윤지원</div>
								<div style="padding: 10px;">오늘은 길을 걷다sdfsdfs가 하늘을
									보았다...버스커버fsfsdf스커 노래오늘은 길을 걷다가 하늘을 보았다...버스커버스커 노래오늘은 길을 걷다가
									하늘을 보았다...버스커버스dfdsfds커 노래</div>
								<div
									style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">조회수
									: 00 댓글 수 : 00</div>

							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/game.png" alt="" />
					</div>
				</div>
				<!-- Portfolio Item 5-->
				<div class="col-md-4 col-lg-3 mb-5 mb-md-0">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal5">
						<div class="portfolio-item-caption  h-100 w-100">
							<div class="portfolio-item-caption-content">
								<div
									style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">작성자
									: 윤지원</div>
								<div style="padding: 10px;">오늘은 길을 걷다sdfsdfs가 하늘을
									보았다...버스커버fsfsdf스커 노래오늘은 길을 걷다가 하늘을 보았다...버스커버스커 노래오늘은 길을 걷다가
									하늘을 보았다...버스커버스dfdsfds커 노래</div>
								<div
									style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">조회수
									: 00 댓글 수 : 00</div>

							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/safe.png" alt="" />
					</div>
				</div>
				<!-- Portfolio Item 6-->
				<div class="col-md-4 col-lg-3">
					<div class="portfolio-item mx-auto" data-toggle="modal"
						data-target="#portfolioModal6">
						<div class="portfolio-item-caption  h-100 w-100">
							<div class="portfolio-item-caption-content">
								<div
									style="background-color: #EAEAEA; padding: 10px; border-bottom: 2px solid #BDBDBD;">작성자
									: 윤지원</div>
								<div style="padding: 10px;">오늘은 길을 걷다sdfsdfs가 하늘을
									보았다...버스커버fsfsdf스커 노래오늘은 길을 걷다가 하늘을 보았다...버스커버스커 노래오늘은 길을 걷다가
									하늘을 보았다...버스커버스dfdsfds커 노래</div>
								<div
									style="background-color: #EAEAEA; position: absolute; left: 0; bottom: 0px; width: 100%; padding: 10px; border-top: 2px solid #BDBDBD;">조회수
									: 00 댓글 수 : 00</div>

							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/submarine.png"
							alt="" />
					</div>
				</div>
			</div>

		</div>
	</section>
	<!-- About Section-->
	<!-- <section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			About Section Heading
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			Icon Divider
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			About Section Content
			<div class="row">
				<div class="col-lg-4 ml-auto">
					<p class="lead">Freelancer is a free bootstrap theme created by
						Start Bootstrap. The download includes the complete source files
						including HTML, CSS, and JavaScript as well as optional SASS
						stylesheets for easy customization.</p>
				</div>
				<div class="col-lg-4 mr-auto">
					<p class="lead">You can create your own custom avatar for the
						masthead, change the icon in the dividers, and add your email
						address to the contact form to make it fully functional!</p>
				</div>
			</div>
			About Section Button
			<div class="text-center mt-4">
				<a class="btn btn-xl btn-outline-light"
					href="https://startbootstrap.com/themes/freelancer/"> <i
					class="fas fa-download mr-2"></i> Free Download!
				</a>
			</div>
		</div>
	</section> -->
	<!-- Contact Section-->
	<!-- <section class="page-section" id="contact">
		<div class="container">
			Contact Section Heading
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact
				Me</h2>
			Icon Divider
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			Contact Section Form
			<div class="row">
				<div class="col-lg-8 mx-auto">
					To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19.
					<form id="contactForm" name="sentMessage" novalidate="novalidate">
						<div class="control-group">
							<div
								class="form-group floating-label-form-group controls mb-0 pb-2">
								<label>Name</label> <input class="form-control" id="name"
									type="text" placeholder="Name" required="required"
									data-validation-required-message="Please enter your name." />
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="control-group">
							<div
								class="form-group floating-label-form-group controls mb-0 pb-2">
								<label>Email Address</label> <input class="form-control"
									id="email" type="email" placeholder="Email Address"
									required="required"
									data-validation-required-message="Please enter your email address." />
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="control-group">
							<div
								class="form-group floating-label-form-group controls mb-0 pb-2">
								<label>Phone Number</label> <input class="form-control"
									id="phone" type="tel" placeholder="Phone Number"
									required="required"
									data-validation-required-message="Please enter your phone number." />
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="control-group">
							<div
								class="form-group floating-label-form-group controls mb-0 pb-2">
								<label>Message</label>
								<textarea class="form-control" id="message" rows="5"
									placeholder="Message" required="required"
									data-validation-required-message="Please enter a message."></textarea>
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<br />
						<div id="success"></div>
						<div class="form-group">
							<button class="btn btn-primary btn-xl" id="sendMessageButton"
								type="submit">Send</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section> -->
	<!-- Footer-->
	<%@include file="./footer.jsp"%>
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
	<!-- Portfolio Modal 1-->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
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
							<div class="col-lg-12">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">Log Cabin</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<div id="carouselExampleIndicators" class="carousel slide"
									data-ride="carousel">
									<ol class="carousel-indicators">
										<li data-target="#carouselExampleIndicators" data-slide-to="0"
											class="active"></li>
										<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
										<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
									</ol>
									<div class="carousel-inner" role="listbox">
										<!-- Slide One - Set the background image for this slide in the line below -->
										<div class="carousel-item active"
											style="background-image: url('./assets/img/portfolio/cake.png')">
											<div class="carousel-caption d-none d-md-block">
												<h3 class="display-4">First Slide</h3>
												<p class="lead">This is a description for the first
													slide.</p>
											</div>
										</div>
										<!-- Slide Two - Set the background image for this slide in the line below -->
										<div class="carousel-item"
											style="background-image: url('https://source.unsplash.com/wfh8dDlNFOk/1920x1080')">
											<div class="carousel-caption d-none d-md-block">
												<h3 class="display-4">Second Slide</h3>
												<p class="lead">This is a description for the second
													slide.</p>
											</div>
										</div>
										<!-- Slide Three - Set the background image for this slide in the line below -->
										<div class="carousel-item"
											style="background-image: url('https://source.unsplash.com/O7fzqFEfLlo/1920x1080')">
											<div class="carousel-caption d-none d-md-block">
												<h3 class="display-4">Third Slide</h3>
												<p class="lead">This is a description for the third
													slide.</p>
											</div>
										</div>
									</div>
									<a class="carousel-control-prev"
										href="#carouselExampleIndicators" role="button"
										data-slide="prev"> <span
										class="carousel-control-prev-icon" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="carousel-control-next"
										href="#carouselExampleIndicators" role="button"
										data-slide="next"> <span
										class="carousel-control-next-icon" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<!-- Portfolio Modal - Text-->
								<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" data-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 2-->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal2Label"
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
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal2Label">Tasty Cake</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/cake.png" alt="" />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" data-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 3-->
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal3Label"
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
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal3Label">Circus Tent</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/circus.png" alt="" />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" data-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 4-->
	<div class="portfolio-modal modal fade" id="portfolioModal4"
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
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal4Label">Controller</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/game.png" alt="" />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" data-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 5-->
	<div class="portfolio-modal modal fade" id="portfolioModal5"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal5Label"
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
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal5Label">Locked Safe</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/safe.png" alt="" />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" data-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 6-->
	<div class="portfolio-modal modal fade" id="portfolioModal6"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal6Label"
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
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal6Label">Submarine</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/submarine.png" alt="" />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" data-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="./loginModal.jsp"%>
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
