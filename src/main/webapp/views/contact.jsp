<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Liên hệ</title>
	<link rel="stylesheet" href="/ChandqPD05208_ASM/fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <!-- https://fonts.google.com/ -->
    <link href="/ChandqPD05208_ASM/CSS/bootstrap.min.css" rel="stylesheet">
    
    <link href="/ChandqPD05208_ASM/CSS/templatemo-xtra-blog.css" rel="stylesheet">
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
    <!--
<!--
    
TemplateMo 553 Xtra Blog

https://templatemo.com/tm-553-xtra-blog

-->
</head>
<body>
	<header class="tm-header" id="tm-header">
        <div class="tm-header-wrapper">
            <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="tm-site-header">
               <a href="index.jsp">  <div class="mb-3 mx-auto tm-site-logo"><i class="fas fa-times fa-2x"></i></div>
                <h1 class="text-center">David Tube</h1> </a>
            </div>
            <nav class="tm-nav" id="tm-nav">            
                <ul>
                    <li class="tm-nav-item"><a href="index.jsp" class="tm-nav-link">
                        <i class="fas fa-home"></i>
                        Trang chủ
                    </a></li>
                    <li class="tm-nav-item"><a href="post.jsp" class="tm-nav-link">
                        <i class="fas fa-pen"></i>
                        Bài đăng
                    </a></li>
                    <li class="tm-nav-item"><a href="about.jsp" class="tm-nav-link">
                        <i class="fas fa-users"></i>
                        Giới thiệu
                    </a></li>
                    <li class="tm-nav-item active"><a href="contact.jsp" class="tm-nav-link">
                        <i class="far fa-comments"></i>
                        Liên hệ
                    </a></li>
<!--                     <li class="tm-nav-item"><a href="login.jsp" class="tm-nav-link"> -->
<!--                         <i class="fas fa-user"></i> -->
                        
<!--                         Đăng nhập -->
<!--                     </a></li> -->
<!--                     <li class="tm-nav-item"><a href="sigup.jsp" class="tm-nav-link"> -->
<!--                         <i class="fas fa-list-alt"></i> -->
<!--                         Đăng kí -->
<!--                     </a></li> -->
                    <li class="tm-nav-item dropdown">
                          <a class="tm-nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-list-alt"></i> 
                            <c:choose>
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
									<a class="dropdown-item"
										href="login.jsp">Đăng
										nhập</a>
									<a class="dropdown-item"
										href="sigup.jsp">Đăng
										ký</a>
								</c:when>
								<c:otherwise>
									<a class="dropdown-item"
										href="login.jsp">Đăng
										xuất</a>
<!-- 									<a class="dropdown-item" -->
<!-- 										href="/sonpvpd05068_ASG/views/change_password.jsp">Đổi -->
<!-- 										mật khẩu</a> -->
									<a class="dropdown-item"
										href="update.jsp">Cập
										nhật hồ sơ</a>
								</c:otherwise>
							</c:choose>
                          </div>
                        </li>
                </ul>
            </nav>
            <div class="tm-mb-65">
                <a href="https://facebook.com" class="tm-social-link">
                    <i class="fab fa-facebook tm-social-icon"></i>
                </a>
                <a href="https://twitter.com" class="tm-social-link">
                    <i class="fab fa-twitter tm-social-icon"></i>
                </a>
                <a href="https://instagram.com" class="tm-social-link">
                    <i class="fab fa-instagram tm-social-icon"></i>
                </a>
                <a href="https://linkedin.com" class="tm-social-link">
                    <i class="fab fa-linkedin tm-social-icon"></i>
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
                        <input class="form-control tm-search-input" name="query" type="text" placeholder="Search..." aria-label="Search">
                        <button class="tm-search-button" type="submit">
                            <i class="fas fa-search tm-search-icon" aria-hidden="true"></i>
                        </button>                                
                    </form>
                </div>                
            </div>            
            <div class="row tm-row tm-mb-45">
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55">
                    <div class="gmap_canvas"> <!-- Google Map -->
                        <iframe width="100%" height="477" id="gmap_canvas"
                            
                        src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7667.579468149377!2d108.1675231!3d16.0763974!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314218e6e72e66f5%3A0x46619a0e2d55370a!2zMTM3IE5ndXnhu4VuIFRo4buLIFRo4bqtcCwgVGhhbmggS2jDqiBUw6J5LCBMacOqbiBDaGnhu4N1LCDEkMOgIE7hurVuZw!5e0!3m2!1svi!2s!4v1648348539068!5m2!1svi!2s" 
                        width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"
                            frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                    </div>
                </div>                
            </div>
            <div class="row tm-row tm-mb-120">
                <div class="col-12">
                    <h2 class="tm-color-primary tm-post-title tm-mb-60">Liên hệ với chúng tôi</h2>
                </div>
                <div class="col-lg-7 tm-contact-left">
                    <form method="POST" action="" class="mb-5 ml-auto mr-0 tm-contact-form">                        
                        <div class="form-group row mb-4">
                            <label for="name" class="col-sm-3 col-form-label text-right tm-color-primary">Name</label>
                            <div class="col-sm-9">
                                <input class="form-control mr-0 ml-auto" name="name" id="name" type="text" required>                            
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="email" class="col-sm-3 col-form-label text-right tm-color-primary">Email</label>
                            <div class="col-sm-9">
                                <input class="form-control mr-0 ml-auto" name="email" id="email" type="email" required>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="subject" class="col-sm-3 col-form-label text-right tm-color-primary">Subject</label>
                            <div class="col-sm-9">
                                <input class="form-control mr-0 ml-auto" name="subject" id="subject" type="text" required>
                            </div>
                        </div>
                        <div class="form-group row mb-5">
                            <label for="message" class="col-sm-3 col-form-label text-right tm-color-primary">Message</label>
                            <div class="col-sm-9">
                                <textarea class="form-control mr-0 ml-auto" name="message" id="message" rows="8" required></textarea>                                
                            </div>
                        </div>
                        <div class="form-group row text-right">
                            <div class="col-12">
                                <button class="tm-btn tm-btn-primary tm-btn-small">Gửi</button>                        
                            </div>                            
                        </div>                                
                    </form>
                </div>
                <div class="col-lg-5 tm-contact-right">
                    <address class="mb-4 tm-color-gray">
                        137 Nguyễn Thị Thập, Thanh Khê Tây, Liên Chiểu, Đà Nẵng
                    </address>
                    <span class="d-block">
                        Tel:
                        <a href="tel:0905810917" class="tm-color-gray">0905810917</a>
                    </span>
                    <span class="mb-4 d-block">
                        Email:
                        <a href="mailto:chandqpd05208@fpt.edu.vn" class="tm-color-gray">chandqpd05208@fpt.edu.vn</a>
                    </span>
                    <p class="mb-5 tm-line-height-short">
                        Chúng tôi rất hân hạnh được hợp tác với các bạn
                    </p>
                    <ul class="tm-social-links">
                        <li class="mb-2">
                            <a href="https://facebook.com" class="d-flex align-items-center justify-content-center">
                                <i class="fab fa-facebook"></i>
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="https://twitter.com" class="d-flex align-items-center justify-content-center">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="https://youtube.com" class="d-flex align-items-center justify-content-center">
                                <i class="fab fa-youtube"></i>
                            </a>
                        </li>
                        <li class="mb-2">
                            <a href="https://instagram.com" class="d-flex align-items-center justify-content-center mr-0">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>      
            <footer class="row tm-row">
                
                <div class="col-md-6 col-12 tm-color-gray tm-copyright">
                    Copyright 2020 David Tube Company Co. 
                </div>
            </footer>
        </main>
    </div>
    <script src="/ChandqPD05208_ASM/js/jquery.min.js"></script>
    <script src="/ChandqPD05208_ASM/js/templatemo-script.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>