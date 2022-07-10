<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Giới thiệu</title>
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
                    <li class="tm-nav-item"><a href="indexServlet" class="tm-nav-link">
                        <i class="fas fa-home"></i>
                        Trang chủ
                    </a></li>
<!--                     <li class="tm-nav-item"><a href="post.jsp" class="tm-nav-link"> -->
<!--                         <i class="fas fa-pen"></i> -->
<!--                         Bài đăng -->
<!--                     </a></li> -->
                    <li class="tm-nav-item active"><a href="about.jsp" class="tm-nav-link">
                        <i class="fas fa-users"></i>
                        Giới thiệu
                    </a></li>
                    <li class="tm-nav-item"><a href="contact.jsp" class="tm-nav-link">
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
                    <img src="/ChandqPD05208_ASM/img/about-01.jpg" alt="Image" class="img-fluid">
                </div>
            </div>
            <div class="row tm-row tm-mb-40">
                <div class="col-12">                    
                    <div class="mb-4">
                        <h2 class="pt-2 tm-mb-40 tm-color-primary tm-post-title">About this David Tube</h2>
                        <p>
                            David Tube là một nền tảng chia sẻ video trực tuyến của Mỹ có trụ sở chính tại New York. 
                            Nền tảng này được tạo ra vào tháng 3 năm 2020 bởi ông David C — đã được Google mua lại vào 
                            tháng 3 năm 2022 với giá 1,65 tỷ đô la Mỹ và hiện hoạt động như một 
                            trong những công ty con của Google. David Tube là trang web được truy cập nhiều thứ hai sau Google Tìm kiếm, 
                            theo xếp hạng của Alexa Internet.

                            
                        </p>

                        <p>
                            Trang web cho phép người dùng tải lên, xem, chia sẻ, thêm vào danh sách phát, báo cáo và nhận xét về video, 
                            đăng ký người dùng khác và sử dụng công nghệ WebM, H.264/MPEG-4 AVC và Adobe Flash Player để hiển thị 
                            nhiều video đa phương tiện do người dùng và doanh nghiệp tạo ra. Nội dung có sẵn bao gồm video clip, 
                            đoạn chương trình truyền hình, video âm nhạc, phim tài liệu ngắn và tài liệu, bản ghi âm, đoạn giới 
                            thiệu phim và các nội dung khác như viết blog bằng video, video sáng tạo ngắn và video giáo dục.
                        </p>
                                                  
                    </div>                    
                </div>
            </div>
            <div class="row tm-row tm-mb-120">
                <div class="col-lg-4 tm-about-col">
                    <div class="tm-bg-gray tm-about-pad">
                        <div class="text-center tm-mt-40 tm-mb-60">
                            <i class="fas fa-bezier-curve fa-4x tm-color-primary"></i>                            
                        </div>                        
                        <h2 class="mb-3 tm-color-primary tm-post-title">Background</h2>
                        <p class="mb-0 tm-line-height-short">
                            Phasellus pulvinar nisl ornare leo porttitor, et vestibulum lorem semper. 
                            Duis risus ex, molestie sit amet magna in,
                            pharetra pellentesque est. Curabitur elit metus.
                        </p>
                    </div>
                </div>
                <div class="col-lg-4 tm-about-col">
                    <div class="tm-bg-gray tm-about-pad">
                        <div class="text-center tm-mt-40 tm-mb-60">
                            <i class="fas fa-users-cog fa-4x tm-color-primary"></i>                            
                        </div>                        
                        <h2 class="mb-3 tm-color-primary tm-post-title">Teamwork</h2>
                        <p class="mb-0 tm-line-height-short">
                            Suspendisse ullamcorper, mi vel molestie ornare, arcu magna euismod ipsum, in malesuada nulla magna ut enim. 
                            Morbi lacinia magna sed auctor, vitae nunc cursus.
                        </p>
                    </div>
                </div>
                <div class="col-lg-4 tm-about-col">
                    <div class="tm-bg-gray tm-about-pad">
                        <div class="text-center tm-mt-40 tm-mb-60">
                            <i class="fab fa-creative-commons-sampling fa-4x tm-color-primary"></i>                            
                        </div>                        
                        <h2 class="mb-3 tm-color-primary tm-post-title">Our Core Value</h2>
                        <p class="mb-0 tm-line-height-short">
                            Nunc mi ante, suscipit vel dapibus et, volutpat sit amet ante. In tempor nec sem vitae varius. Aliquam tincidunt orci sem, et imperdiet massa consectetur nec.
                        </p>
                    </div>
                </div>
            </div>    
            
            <!-- member -->
            <div class="row tm-row tm-mb-60">
                <div class="col-12">
                    <hr class="tm-hr-primary  tm-mb-55">
                </div>                
                <div class="col-lg-6 tm-mb-60 tm-person-col">
                    <div class="media tm-person">
                        <img src="/ChandqPD05208_ASM/img/about-02.jpg" alt="Image" class="img-fluid mr-4">
                        <div class="media-body">
                            <h2 class="tm-color-primary tm-post-title mb-2">David C</h2>
                            <h3 class="tm-h3 mb-3">Giám đốc điều hành và người sáng lập</h3>
                            <p class="mb-0 tm-line-height-short">
                                Người có kinh nghiệm nhiều năm trong lĩnh vực sáng tạo, giải trí. Ông từng du học ở New Zealand.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 tm-mb-60 tm-person-col">
                    <div class="media tm-person">
                        <img src="/ChandqPD05208_ASM/img/about-03.jpg" alt="Image" class="img-fluid mr-4">
                        <div class="media-body">
                            <h2 class="tm-color-primary tm-post-title mb-2">Son Phan</h2>
                            <h3 class="tm-h3 mb-3">Giám đốc dự án</h3>
                            <p class="mb-0 tm-line-height-short">
                                Ông là người có kinh nghiệm nhiều năm trong lĩnh vực XL-TH. 
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 tm-mb-60 tm-person-col">
                    <div class="media tm-person">
                        <img src="/ChandqPD05208_ASM/img/about-04.jpg" alt="Image" class="img-fluid mr-4">
                        <div class="media-body">
                            <h2 class="tm-color-primary tm-post-title mb-2">Hoang LD</h2>
                            <h3 class="tm-h3 mb-3">Trưởng nhóm</h3>
                            <p class="mb-0 tm-line-height-short">
                                Đẹp trai, tài năng, tư duy đỉnh cao, hát hay, có tố chất lãnh đạo.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 tm-mb-60 tm-person-col">
                    <div class="media tm-person">
                        <img src="/ChandqPD05208_ASM/img/about-05.jpg" alt="Image" class="img-fluid mr-4">
                        <div class="media-body">
                            <h2 class="tm-color-primary tm-post-title mb-2">Catherine Soft</h2>
                            <h3 class="tm-h3 mb-3">Đối tác</h3>
                            <p class="mb-0 tm-line-height-short">
                                Giám đốc công ty Maecenas - một công ty nổi tiếng về lĩnh vực giải trí.
                            </p>
                        </div>
                    </div>
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