<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bài đăng: ${video.title}</title>
<link rel="stylesheet"
	href="/ChandqPD05208_ASM/fontawesome/css/all.min.css">
<!-- https://fontawesome.com/ -->
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap"
	rel="stylesheet">
<!-- https://fonts.google.com/ -->
<link href="/ChandqPD05208_ASM/CSS/bootstrap.min.css" rel="stylesheet">

<link href="/ChandqPD05208_ASM/CSS/templatemo-xtra-blog.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="fontawesome-free-5.15.4-web/css/all.min.css">
<!--
    
TemplateMo 553 Xtra Blog

https://templatemo.com/tm-553-xtra-blog

-->
</head>
<body>
	<header class="tm-header" id="tm-header">
		<div class="tm-header-wrapper">
			<button class="navbar-toggler" type="button"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>
			<div class="tm-site-header">
				<a href="indexServlet">
					<div class="mb-3 mx-auto tm-site-logo">
						<i class="fas fa-times fa-2x"></i>
					</div>
					<h1 class="text-center">David Tube</h1>
				</a>
			</div>
			<nav class="tm-nav" id="tm-nav">
				<ul>
					<li class="tm-nav-item"><a href="indexServlet"
						class="tm-nav-link"> <i class="fas fa-home"></i> Trang chủ
					</a></li>
<!-- 					<li class="tm-nav-item active"><a href="post.jsp" -->
<!-- 						class="tm-nav-link"> <i class="fas fa-pen"></i> Bài đăng -->
<!-- 					</a></li> -->
					<li class="tm-nav-item"><a href="about.jsp"
						class="tm-nav-link"> <i class="fas fa-users"></i> Giới thiệu
					</a></li>
					<li class="tm-nav-item"><a href="contact.jsp"
						class="tm-nav-link"> <i class="far fa-comments"></i> Liên hệ
					</a></li>
					<!--                     <li class="tm-nav-item"><a href="login.jsp" class="tm-nav-link"> -->
					<!--                         <i class="fas fa-user"></i> -->

					<!--                         Đăng nhập -->
					<!--                     </a></li> -->
					<!--                     <li class="tm-nav-item"><a href="sigup.jsp" class="tm-nav-link"> -->
					<!--                         <i class="fas fa-list-alt"></i> -->
					<!--                         Đăng kí -->
					<!--                     </a></li> -->
					<li class="tm-nav-item dropdown"><a
						class="tm-nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class="fas fa-list-alt"></i> <c:choose>
								<c:when test="${empty sessionScope.user}">
									Tài khoản
								</c:when>
								<c:otherwise>
									${sessionScope.user.fullname}
								</c:otherwise>
							</c:choose>
					</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<c:choose>
								<c:when test="${empty sessionScope.user}">
									<a class="dropdown-item" href="login.jsp">Đăng nhập</a>
									<a class="dropdown-item" href="sigup.jsp">Đăng ký</a>
								</c:when>
								<c:otherwise>
									<a class="dropdown-item" href="login.jsp">Đăng xuất</a>
									
									<a class="dropdown-item" href="update.jsp">Cập nhật hồ sơ</a>
								</c:otherwise>
							</c:choose>
						</div></li>
				</ul>
			</nav>
			<div class="tm-mb-65">
				<a href="https://facebook.com" class="tm-social-link"> <i
					class="fab fa-facebook tm-social-icon"></i>
				</a> <a href="https://twitter.com" class="tm-social-link"> <i
					class="fab fa-twitter tm-social-icon"></i>
				</a> <a href="https://instagram.com" class="tm-social-link"> <i
					class="fab fa-instagram tm-social-icon"></i>
				</a> <a href="https://linkedin.com" class="tm-social-link"> <i
					class="fab fa-linkedin tm-social-icon"></i>
				</a>
			</div>

		</div>
	</header>
	<div class="container-fluid">
		<main class="tm-main">
			<!-- Search form -->
			<div class="row tm-row">
				<div class="col-12">
					<form method="GET" class="form-inline tm-mb-80 tm-search-form">
						<input class="form-control tm-search-input" name="query"
							type="text" placeholder="Search..." aria-label="Search">
						<button class="tm-search-button" type="submit">
							<i class="fas fa-search tm-search-icon" aria-hidden="true"></i>
						</button>
					</form>
				</div>
			</div>
<%-- 			<c:forEach items="${videos}" var="item"> --%>
				<div class="row tm-row">
					<div class="col-12">
						<hr class="tm-hr-primary tm-mb-55">
						

						<iframe width="954" height="535"
							src="https://www.youtube.com/embed/${video.poster}"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>

						
						
					</div>
				</div>
<%-- 			</c:forEach> --%>

			



				<div class="row tm-row">
					<div class="col-lg-8 tm-post-col">
						<div class="tm-post-full">
 
<!--  							like share -->
							<div id="fb-root"></div>
							<script async defer crossorigin="anonymous"
								src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0"
								nonce="a9nBwqvh"></script>
								
								
							<div class="fb-like" data-href="https://www.youtube.com/watch?v=${video.poster}"
								data-width="" data-layout="button_count" data-action="like"
								data-size="small" data-share="true">
								
								</div>
								
							<div id="fb-root"></div>
							<script async defer crossorigin="anonymous"
								src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0"
								nonce="zCMef0AK"></script>
								
								
<!--  							like share -->


					
							<div class="mb-4">
							
								<h2 class="pt-2 tm-color-primary tm-post-title">${video.title}</h2>
								
								
								<p>Mô tả video: ${video.description}</p>
								<p></p>
								<span class="d-block text-right tm-color-primary">Creative
									. Design . Business</span>
							</div>
							<div class="fb-comments" data-href="http://127.0.0.1:5500/bai3.html" data-width="100%" data-numposts="5"></div>
							
							

							<!-- Comments -->

						</div>
					</div>
					<aside class="col-lg-4 tm-aside-col">
						<div class="tm-post-sidebar">
							<hr class="mb-3 tm-hr-primary">
							<h2 class="mb-4 tm-post-title tm-color-primary">Thể loại</h2>
							<ul class="tm-mb-75 pl-5 tm-category-list">
								<li><a href="#" class="tm-color-primary">Vlog</a></li>
								<li><a href="#" class="tm-color-primary">Du lịch</a></li>
								<li><a href="#" class="tm-color-primary">Âm nhạc</a></li>
								<li><a href="#" class="tm-color-primary">Ẩm thực</a></li>

							</ul>
							<hr class="mb-3 tm-hr-primary">
							<h2 class="tm-mb-40 tm-post-title tm-color-primary">Bài viết
								liên quan</h2>
							<a href="#" class="d-block tm-mb-40">
								<figure>
									<img src="/ChandqPD05208_ASM/img/img-02.jpg" alt="Image"
										class="mb-3 img-fluid">
									<figcaption class="tm-color-primary">Tiêu đề video</figcaption>
								</figure>
							</a> <a href="#" class="d-block tm-mb-40">
								<figure>
									<img src="/ChandqPD05208_ASM/img/img-05.jpg" alt="Image"
										class="mb-3 img-fluid">
									<figcaption class="tm-color-primary">Tiêu đề video</figcaption>
								</figure>
							</a> <a href="#" class="d-block tm-mb-40">
								<figure>
									<img src="/ChandqPD05208_ASM/img/img-06.jpg" alt="Image"
										class="mb-3 img-fluid">
									<figcaption class="tm-color-primary">Tiêu đề video</figcaption>
								</figure>
							</a>
						</div>
					</aside>
				</div>

			

			<footer class="row tm-row">

				<div class="col-md-6 col-12 tm-color-gray tm-copyright">
					Copyright 2020 David Tube Company Co.</div>
			</footer>
		</main>
	</div>

	<script src="/ChandqPD05208_ASM/js/jquery.min.js"></script>
	<script src="/ChandqPD05208_ASM/js/templatemo-script.js"></script>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>