<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
			<!DOCTYPE html>
			<html xmlns:th="http://www.thymeleaf.org">

			<head>

				<meta charset="utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
				<link
					href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
					rel="stylesheet">
				<link rel="stylesheet" href="assets/css/find_school.css">

				<title>ASFS - Asist student finding school</title>
				<link rel="icon" type="image/x-icon" href="/views/images/asfsIconTitle.png">
				<!-- Bootstrap core CSS -->
				<link href="/views/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


				<!-- Additional CSS Files -->
				<link rel="stylesheet" href="/views/assets/css/fontawesome.css">
				<link rel="stylesheet" href="/views/assets/css/templatemo-scholar.css">
				<link rel="stylesheet" href="/views/assets/css/owl.css">
				<link rel="stylesheet" href="/src/main/webapp//views/assets/css/find_school.css">
				<link rel="stylesheet" href="/views/assets/css/animate.css">
				<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
				<style>
					._filter_poitn {
						display: flex;
						align-items: center;
						justify-content: center;
					}

					._filter_poitn p {
						margin: 0 10px;
						font-size: 20px;
						font-weight: bold;
						color: white;
					}
				</style>
			</head>

			<body>

				<!-- ***** Preloader Start ***** -->
				<div id="js-preloader" class="js-preloader">
					<div class="preloader-inner">
						<span class="dot"></span>
						<div class="dots">
							<span></span> <span></span> <span></span>
						</div>
					</div>
				</div>
				<!-- ***** Preloader End ***** -->

				<!-- ***** Header Area Start ***** -->
				<header class="header-area header-sticky">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<nav class="main-nav">
									<!-- ***** Logo Start ***** -->
									<a href="/views/index.jsp" class="logo" style="margin-right: 30px">
										<img alt="" src="/views/images/logoASFS.png" style="max-width: 100px">


									</a>
									<!-- ***** Logo End ***** -->
									<!-- ***** Serach Start ***** -->
									<div class="search-input">
										<form id="search" action="#">
											<input type="text" placeholder="Type Something" id='searchText'
												name="searchKeyword" onkeypress="handle" /> <i class="fa fa-search"></i>
										</form>
									</div>
									<!-- ***** Serach Start ***** -->
									<!-- ***** Menu Start ***** -->
									<ul class="nav">
										<li class="scroll-to-section"><a href="#top" class="active">Giới
												thiệu</a></li>
										<li class="scroll-to-section"><a href="#services">Tìm trường</a></li>
										<li class="scroll-to-section"><a href="#courses">Tin tức</a></li>
										<li class="scroll-to-section"><a href="#team">Thành viên</a></li>
										<li class="scroll-to-section"><a href="#contact">Liên hệ</a></li>
									</ul>
									<a class='menu-trigger'> <span>Menu</span>
									</a>
									<!-- ***** Menu End ***** -->
								</nav>
							</div>



							<!-- ***** Menu End ***** -->

						</div>

					</div>
					</div>
				</header>
				<!-- ***** Header Area End ***** -->
				<!-- Gioi thieu về website -->
				<div class="main-banner" id="top">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="owl-carousel owl-banner">
									<div class="item item-1">
										<div class="header-text">
											<span class="category">ASSIST STUDENT FINDING SCHOOL</span>
											<h2>Giới thiệu</h2>
											<p>Chào mừng bạn đến với ASSIST STUDENT FINDING SCHOOL nền
												tảng tổng hợp thông tin chi tiết và toàn diện về các trường đại
												học tại Thành phố Hồ Chí Minh! Chúng tôi cam kết mang đến cho
												bạn một nguồn tài nguyên đáng tin cậy và phong phú để bạn có
												thể dễ dàng tìm kiếm và so sánh các trường đại học, từ đó đưa
												ra những quyết định sáng suốt cho tương lai học tập của mình.</p>
										</div>
									</div>
									<div class="item item-2">
										<div class="header-text">
											<span class="category">ASSIST STUDENT FINDING SCHOOL</span>
											<h2>Sứ mệnh của chúng tôi</h2>
											<p>Tại ASSIST STUDENT FINDING SCHOOL sứ mệnh của chúng tôi
												là cung cấp những thông tin chính xác, cập nhật và toàn diện
												nhất về các trường đại học tại TP.HCM. Chúng tôi mong muốn trở
												thành cầu nối giữa các trường đại học và các bạn học sinh, sinh
												viên cũng như phụ huynh, giúp bạn có được cái nhìn tổng quan và
												chi tiết về các cơ sở giáo dục hàng đầu này.</p>

										</div>
									</div>
									<div class="item item-3">
										<div class="header-text">
											<span class="category">ASSIST STUDENT FINDING SCHOOL</span>
											<h2>Những gì chúng tôi cung cấp</h2>
											<ul class="text-white">
												<li>Giới thiệu trường: Lịch sử, sứ mệnh, tầm nhìn, và
													những điểm nổi bật của từng trường.</li>
												<li>Chương trình đào tạo: Danh sách các ngành học và
													chương trình từ đại học đến sau đại học.</li>
												<li>Cơ sở vật chất: Thông tin về các cơ sở học tập, phòng
													thí nghiệm, thư viện, ký túc xá, và các tiện ích khác.</li>
												<li>Tuyển sinh: Quy trình tuyển sinh, điều kiện đầu vào,
													thông tin học bổng, và hướng dẫn nộp hồ sơ.</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!-- Tìm trường ở đây (Hoài Hưng) -->
				<div class="find_school mt-5" id="services">
					<div class="container">
						<div class="row">
							<div class="header"
								style="background-color:#7a6ad8 ; color: white; border-radius: 50px 20px 50px 20px;">
								<div class="col-12 text-center mb-4 pt-3">
									<h3 style="color: white;">TÌM TRƯỜNG</h3>
								</div>
								<div class="row">
									<div class="col-sm-6 d-flex">
										<div class="selected ms-5">
											<form action="/index/search" method="get">
												<input type="text" class="form-control" name="name"
													placeholder="Tên trường">
												<div class="_filter_poitn d-flex mt-3">
													<input type="text" class="form-control " style="height: 40px;"
														name="minPoint" placeholder="Điểm">
													<p class="p-3" style="color: white;">Đến</p>
													<input type="text" class="form-control " style="height: 40px;"
														name="maxPoint" placeholder="Điểm">
												</div>
										</div>
									</div>
									<div class="col-sm-6 search-info pe-3">
										<input type="text" class="form-control ms-5" name="address"
											style="height: 40px; width: 500px;" placeholder="Địa chỉ">
										<select class="form-select select-major mt-3 ms-5" name="majorName"
											style="height: 40px; width: 500px;">
											<option value="">Ngành</option>
											<c:forEach var="major" items="${majors}">
												<option value="${major.majorName}">${major.majorName}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="text-center d-flex justify-content-center align-items-center pb-3">
									<input type="submit" class="btn btn-search mb-2"
										style="background-color: white; color: #7a6ad8; width: 100px;" value="Tìm kiếm">
									<input type="submit" class="btn btn-reset mb-2 ms-2" onclick="resetForm()"
										style="background-color: white; color: #7a6ad8; width: 100;" value="Reset">
								</div>
								</form>
							</div>
							<div class="col-12">
								<div class="find_school table mt-4">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>STT</th>
												<th>Tên trường</th>
												<th>Địa chỉ</th>
												<th>Loại Hình</th>
												<th>SDT</th>
												<th>Web</th>
												<th>Ngành</th>
												<th>Điểm</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="school" items="${schools}">
												<tr>
													<td>${school.schoolId}</td>
													<td>${school.schoolName}</td>
													<td>${school.address}</td>
													<td>${school.typeSchool}</td>
													<td>${school.phone}</td>
													<td><a href="${school.webSite}"
															target="_blank">${school.webSite}</a></td>
													<td>
														<c:forEach var="majorSchool" items="${school.majorSchools}">
															${majorSchool.major.majorName}<br>
														</c:forEach>
													</td>
													<td>
														<c:forEach var="majorSchool" items="${school.majorSchools}">
															${majorSchool.point}<br>
														</c:forEach>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Bài viết blog -->
				<section class="section courses" id="courses">
					<div class="container">
						<div class="row">
							<div class="col-lg-12 text-center">
								<div class="section-heading">

									<h2>Tin tức</h2>
								</div>
							</div>
						</div>
						<div class="row event_box">
							<c:forEach var="n" items="${list_new}">
								<div class="col-lg-4 col-md-6 align-self-center mb-30 event_outer col-md-6 design">
									<div class="events_item">
										<div class="thumb">
											<a href="${n.link_news}" target="_blank"> <img src="${n.link_image}" alt="">
											</a> <span class="category">Cre: ${n.created}</span>
										</div>
										<div class="down-content">
											<span class="author">${n.title}</span> <i>${n.createDate}</i>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</section>
				<!-- Giới thiệu Team -->
				<div id="team">
					<h2 class="text-center mt-5 mb-0">Thành viên</h2>
					<div class="team section">

						<div class="container">
							<!-- row chứa: Quân, Hưng, Hiếu -->
							<div class="row mb-5">

								<!-- Quân -->
								<div class="col-lg-4 col-md-6">
									<div class="team-member">
										<div class="main-content">
											<img src="/views/images/TeamImages/Quan.jpg" alt=""> <span
												class="category">Backend Developer</span>
											<h4>Bùi Minh Quân</h4>
											<ul class="social-icons">
												<li><a href="https://www.facebook.com/quanbui.brvt"><i
															class="fab fa-facebook"></i></a></li>
												<li><a href="#"><i class="fab fa-twitter"></i></a></li>
												<li><a href="#"><i class="fab fa-linkedin"></i></a></li>
											</ul>
										</div>
									</div>
								</div>

								<!-- Hưng -->
								<div class="col-lg-4 col-md-6">
									<div class="team-member">
										<div class="main-content">
											<img src="/views/images/TeamImages/Hung.jpg" alt=""> <span
												class="category">Full-Stack Developer</span>
											<h4>Võ Hoài Hưng</h4>
											<ul class="social-icons">
												<li><a href="#"><i class="fab fa-facebook"></i></a></li>
												<li><a href="#"><i class="fab fa-twitter"></i></a></li>
												<li><a href="#"><i class="fab fa-linkedin"></i></a></li>
											</ul>
										</div>
									</div>
								</div>

								<!-- Hiếu -->
								<div class="col-lg-4 col-md-6">
									<div class="team-member">
										<div class="main-content">
											<img src="/views/images/TeamImages/Hieu.jpg" alt=""> <span
												class="category">Backend Developer</span>
											<h4>Phan Chí Hiếu</h4>
											<ul class="social-icons">
												<li><a href="https://www.facebook.com/phc.hieuu"><i
															class="fab fa-facebook"></i></a></li>
												<li><a href="#"><i class="fab fa-twitter"></i></a></li>
												<li><a href="#"><i class="fab fa-linkedin"></i></a></li>
											</ul>
										</div>
									</div>
								</div>

							</div>

							<!-- row chứa: Vũ, Thân, Tài -->
							<div class="row" style="margin-top: 130px;">

								<!-- vũ -->
								<div class="col-lg-4 col-md-6">
									<div class="team-member">
										<div class="main-content">
											<img src="/views/images/TeamImages/Vu.jpg" alt=""> <span
												class="category">Backend Developer</span>
											<h4>Trần Quang Vũ</h4>
											<ul class="social-icons">
												<li><a href="https://www.facebook.com/vu.tranquang.18400"><i
															class="fab fa-facebook"></i></a></li>
												<li><a href="#"><i class="fab fa-twitter"></i></a></li>
												<li><a href="#"><i class="fab fa-linkedin"></i></a></li>
											</ul>
										</div>
									</div>
								</div>

								<!-- Thân -->
								<div class="col-lg-4 col-md-6">
									<div class="team-member">
										<div class="main-content">
											<img src="/views/images/TeamImages/Than.jpg" alt=""> <span
												class="category">Backend Developer</span>
											<h4>Nguyễn Trần Thân</h4>
											<ul class="social-icons">
												<li><a href="https://www.facebook.com/profile.php?id=100035874030082"><i
															class="fab fa-facebook"></i></a></li>
												<li><a href="#"><i class="fab fa-twitter"></i></a></li>
												<li><a href="#"><i class="fab fa-linkedin"></i></a></li>
											</ul>
										</div>
									</div>
								</div>

								<!-- Tài -->
								<div class="col-lg-4 col-md-6">
									<div class="team-member">
										<div class="main-content">
											<img src="/views/images/TeamImages/Tai.jpg" alt=""> <span
												class="category">Full-Stack Developer</span>
											<h4>Trần Tú Tài</h4>
											<ul class="social-icons">
												<li><a href="#"><i class="fab fa-facebook"></i></a></li>
												<li><a href="#"><i class="fab fa-twitter"></i></a></li>
												<li><a href="#"><i class="fab fa-linkedin"></i></a></li>
											</ul>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<!-- phần của Vũ nè -->
				<div class="section testimonials">
					<div class="container">
						<div class="row">
							<div class="col-lg-7">
								<div class="owl-carousel owl-testimonials">
									<!-- Lặp qua danh sách nhận xét và hiển thị -->
									<c:forEach var="comment" items="${comments}">
										<div class="item">
											<h3 class="text-white fst-italic">"${comment.text}"</h3>
											<div class="author">
												<!-- Giả sử bạn lưu ảnh trong thư mục 'images' -->

												<span class="category">Email: ${comment.email}</span>
												<h4>Họ tên: ${comment.name}</h4>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
							<div class="col-lg-5 align-self-center">
								<div class="section-heading">
									<h6>TESTIMONIALS</h6>
									<h2>Nhận xét</h2>
									<p>
										Những nhận xét, đánh giá gửi về chúng tôi... <br> Email:
										quangvutran0803@gmail.com <br> Hoặc thông qua gửi biểu mẫu
										bên dưới nè...
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- của vũ -->
				<div class="contact-us section" id="contact">
					<div class="container">
						<div class="row">
							<div class="col-lg-6 align-self-center">
								<div class="section-heading">
									<h6>Contact Us</h6>
									<h2>Liên hệ</h2>
									<p>
										- Cảm ơn bạn đã liên hệ, góp ý cho chúng tôi. <br> - Những
										liên hệ đóng góp của các bạn là động lực giúp chúng tôi phát
										triển <br> - Gửi ngay mọi thắc mắc cho chúng tôi với biểu
										mẫu bên ngay bên cạnh... <br> - Hãy cho chúng tôi thấy sự
										quan tâm của bạn đối với chúng tôi <br> - Chúc các bạn một
										ngày tốt lành...
									</p>

								</div>
							</div>
							<div class="col-lg-6">
								<div class="contact-us-content">
									<form id="contact-form" action="/index/comments/create" method="post">
										<div class="row">
											<div class="col-lg-12">
												<fieldset>
													<input type="text" name="name" id="name" placeholder="Họ tên"
														required>
												</fieldset>
											</div>
											<div class="col-lg-12">
												<fieldset>
													<input type="email" name="email" id="email" placeholder="Email"
														required>
												</fieldset>
											</div>
											<div class="col-lg-12">
												<fieldset>
													<textarea name="text" id="message" placeholder="Tin nhắn của bạn"
														required></textarea>
												</fieldset>
											</div>
											<div class="col-lg-12">
												<fieldset>
													<button type="submit" id="form-submit" class="orange-button">Gửi
														tin nhắn ngay</button>
												</fieldset>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<footer>
					<div class="container p-4">
						<div class="row justify-content-center">
							<!-- Logo section -->
							<div class="col-lg-4 text-center">
								<img src="/views/images/logoASFS.png" alt="Website Logo" class="img-fluid"
									style="width: 200px"> <br>
								<h5 class="text-uppercase text-white mt-3">Assist Student
									Finding School</h5>
							</div>

							<!-- Useful Links -->
							<div class="col-3">
								<h5 class="text-uppercase text-white">Useful Links</h5>
								<ul class="list-unstyled mb-0">
									<li><a href="#!" class="text-white">Home</a></li>
									<li><a href="#!" class="text-white">About</a></li>
									<li><a href="#!" class="text-white">Services</a></li>
									<li><a href="#!" class="text-white">Contact</a></li>
								</ul>
							</div>
							<div class="col-3">
								<h5 class="text-uppercase text-white">About US</h5>
								<div class="text-white">Assist Student Finding School là nền
									tảng tổng hợp thông tin toàn diện về các trường đại học tại Thành
									phố Hồ Chí Minh. Chúng tôi cam kết cung cấp thông tin chính xác,
									cập nhật và đáng tin cậy để giúp học sinh, sinh viên và phụ huynh
									dễ dàng tìm kiếm và so sánh các trường đại học, từ đó đưa ra quyết
									định sáng suốt cho tương lai học tập.</div>
							</div>
							<!-- Contact -->
							<div class="col-lg-2 text-center">
								<h5 class="text-uppercase text-white">Contact</h5>
								<div>
									<a href="#!" class="text-white"><i class="fab fa-facebook fa-2x"></i></a> <a
										href="#!" class="text-white"><i class="fab fa-instagram fa-2x"></i></a> <a
										href="#!" class="text-white"><i class="fab fa-twitter fa-2x"></i></a>
								</div>
							</div>
						</div>
					</div>
				</footer>
				<!-- Scripts -->
				<!-- Bootstrap core JavaScript -->
				<script src="/views/vendor/jquery/jquery.min.js"></script>
				<script src="/views/vendor/bootstrap/js/bootstrap.min.js"></script>
				<script src="/views/assets/js/isotope.min.js"></script>
				<script src="/views/assets/js/owl-carousel.js"></script>
				<script src="/views/assets/js/counter.js"></script>
				<script src="/views/assets/js/custom.js"></script>
				<script>
					function resetForm() {
						window.location.href = "/index/home";
					}
				</script>
			</body>

			</html>