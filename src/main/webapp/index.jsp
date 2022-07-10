<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html lang="en">

<head>
	<base href="/ChandqPD05208_ASM/">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>David Tube</title>
    <link rel="stylesheet" href="/ChandqPD05208_ASM/fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <!-- https://fonts.google.com/ -->
    <link href="/ChandqPD05208_ASM/CSS/bootstrap.min.css" rel="stylesheet">
    
    <link href="/ChandqPD05208_ASM/CSS/templatemo-xtra-blog.css" rel="stylesheet">
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
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
               <a href="indexServlet">  <div class="mb-3 mx-auto tm-site-logo"><i class="fas fa-times fa-2x"></i></div>
                <h1 class="text-center">David Tube</h1> </a>
            </div>
            <nav class="tm-nav" id="tm-nav">
                <ul>
                    <li class="tm-nav-item active"><a href="indexServlet" class="tm-nav-link">
                            <i class="fas fa-home"></i>
                            Trang chủ
                        </a></li>
<!--                     <li class="tm-nav-item"><a href="videoServlet" class="tm-nav-link"> -->
<!--                             <i class="fas fa-pen"></i> -->
<!--                             Bài đăng -->
<!--                         </a></li> -->
                    <li class="tm-nav-item"><a href="about.jsp" class="tm-nav-link">
                            <i class="fas fa-users"></i>
                            Giới thiệu
                        </a></li>
                    <li class="tm-nav-item"><a href="contact.jsp" class="tm-nav-link">
                            <i class="far fa-comments"></i>
                            Liên hệ
                        </a></li>
<!--                     <li class="tm-nav-item"><a href="login.jsp" class="tm-nav-link"> -->
<!--                             <i class="fas fa-user"></i> -->
<!--                             Đăng nhập -->
<!--                         </a></li> -->
<!--                     <li class="tm-nav-item"><a href="sigup.jsp" class="tm-nav-link"> -->
<!--                             <i class="fas fa-list-alt"></i> -->
<!--                             Đăng kí -->
<!--                         </a></li> -->
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
									
									<a class="dropdown-item"
										href="update.jsp">Cập
										nhật hồ sơ</a>
								</c:otherwise>
							</c:choose>
                          
<!--                             <a class="dropdown-item" href="login.jsp">Đăng nhập</a> -->
                            
<!--                             <a class="dropdown-item" href="sigup.jsp">Đăng kí</a> -->
<!--                             <div class="dropdown-divider"></div> -->
<!--                             <a class="dropdown-item" href="login.jsp">Đăng xuất</a> -->
                            
<!--                             <a class="dropdown-item" href="update.jsp">Cập nhật tài khoản</a> -->

	

                          </div>
                          
                          
                          
                        </li>
                </ul>
            </nav>
            <div class="tm-mb-65">
                <a rel="nofollow" href="https://fb.com/templatemo" class="tm-social-link">
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
                        <input class="form-control tm-search-input" name="query" type="text" placeholder="Search..."
                            aria-label="Search">
                        <button class="tm-search-button" type="submit">
                            <i class="fas fa-search tm-search-icon" aria-hidden="true"></i>
                        </button>
                    </form>
                </div>
            </div>
            <div class="row tm-row">
            
<!--             videos : setAttribute (servlet) -->
            	<c:forEach items="${videos}" var="item">
            		<article class="col-12 col-md-6 tm-post">
                    <hr class="tm-hr-primary">
                    <a href="<c:url value='/videoServlet?action=watch&id=${item.poster}'/>" class="effect-lily tm-post-link tm-pt-60">
                    


                    
                        <div class="tm-post-link-inner">
                            
                              <img alt="Image" src="/ChandqPD05208_ASM/img/img-01.jpg">
                        </div>
                        <span class="position-absolute tm-new-badge">Mới</span>
                        <h2 class="tm-pt-30 tm-color-primary tm-post-title">${item.title}</h2>
                    </a>
                    <p class="tm-pt-30">
                        <!-- mô tả  -->
                    </p>
                    <div class="d-flex justify-content-between tm-pt-45">
                        <span class="tm-color-primary">${item.description}</span>
                        <span class="tm-color-primary">June 24, 2020</span>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-between">
                        <span>36 bình luận</span>
                        <span>đăng bởi Người dùng 01</span>
                    </div>
                </article>
            	</c:forEach>
            
                
<!--                 <article class="col-12 col-md-6 tm-post"> -->
<!--                     <hr class="tm-hr-primary"> -->
<!--                     <a href="post.jsp" class="effect-lily tm-post-link tm-pt-60"> -->
<!--                         <div class=" tm-post-link-inner"> -->
<!--                             <img src="/ChandqPD05208_ASM/img/img-02.jpg" alt="Image" class="img-fluid"> -->
<!--                         </div> -->
<!--                         <span class="position-absolute tm-new-badge">Mới</span> -->
<!--                         <h2 class="tm-pt-30 tm-color-primary tm-post-title">Nội dung video2</h2> -->
<!--                     </a> -->
<!--                     <p class="tm-pt-30"> -->
<!--                         mô tả  -->
<!--                     </p> -->
<!--                     <div class="d-flex justify-content-between tm-pt-45"> -->
<!--                         <span class="tm-color-primary">Creative . Design . Business</span> -->
<!--                         <span class="tm-color-primary">June 16, 2020</span> -->
<!--                     </div> -->
<!--                     <hr> -->
<!--                     <div class="d-flex justify-content-between"> -->
<!--                         <span>48 comments</span> -->
<!--                         <span>by Admin Sam</span> -->
<!--                     </div> -->
<!--                 </article> -->
<!--                 <article class="col-12 col-md-6 tm-post"> -->
<!--                     <hr class="tm-hr-primary"> -->
<!--                     <a href="post.jsp" class="effect-lily tm-post-link tm-pt-20"> -->
<!--                         <div class="tm-post-link-inner"> -->
<!--                             <img src="/ChandqPD05208_ASM/img/img-03.jpg" alt="Image" class="img-fluid"> -->
<!--                         </div> -->
<!--                         <h2 class="tm-pt-30 tm-color-primary tm-post-title">Nội dung video3</h2> -->
<!--                     </a> -->
<!--                     <p class="tm-pt-30"> -->
<!--                         mô tả  -->
<!--                     </p> -->
<!--                     <div class="d-flex justify-content-between tm-pt-45"> -->
<!--                         <span class="tm-color-primary">Music . Audio</span> -->
<!--                         <span class="tm-color-primary">June 11, 2020</span> -->
<!--                     </div> -->
<!--                     <hr> -->
<!--                     <div class="d-flex justify-content-between"> -->
<!--                         <span>24 comments</span> -->
<!--                         <span>by John Walker</span> -->
<!--                     </div> -->
<!--                 </article> -->
<!--                 <article class="col-12 col-md-6 tm-post"> -->
<!--                     <hr class="tm-hr-primary"> -->
<!--                     <a href="post.jsp" class="effect-lily tm-post-link tm-pt-20"> -->
<!--                         <div class="tm-post-link-inner"> -->
<!--                             <img src="/ChandqPD05208_ASM/img/img-04.jpg" alt="Image" class="img-fluid"> -->
<!--                         </div> -->
<!--                         <h2 class="tm-pt-30 tm-color-primary tm-post-title">Nội dung video4</h2> -->
<!--                     </a> -->
<!--                     <p class="tm-pt-30"> -->

<!--                         mô tả  -->
<!--                     </p> -->
<!--                     <div class="d-flex justify-content-between tm-pt-45"> -->
<!--                         <span class="tm-color-primary">Artworks . Design</span> -->
<!--                         <span class="tm-color-primary">June 4, 2020</span> -->
<!--                     </div> -->
<!--                     <hr> -->
<!--                     <div class="d-flex justify-content-between"> -->
<!--                         <span>72 comments</span> -->
<!--                         <span>by Admin Sam</span> -->
<!--                     </div> -->
<!--                 </article> -->
<!--                 <article class="col-12 col-md-6 tm-post"> -->
<!--                     <hr class="tm-hr-primary"> -->
<!--                     <a href="post.jsp" class="effect-lily tm-post-link tm-pt-20"> -->
<!--                         <div class="tm-post-link-inner"> -->
<!--                             <img src="/ChandqPD05208_ASM/img/img-05.jpg" alt="Image" class="img-fluid"> -->
<!--                         </div> -->
<!--                         <h2 class="tm-pt-30 tm-color-primary tm-post-title">Nội dung video5</h2> -->
<!--                     </a> -->
<!--                     <p class="tm-pt-30"> -->
<!--                         mô tả  -->



<!--                     </p> -->
<!--                     <div class="d-flex justify-content-between tm-pt-45"> -->
<!--                         <span class="tm-color-primary">Creative . Video . Audio</span> -->
<!--                         <span class="tm-color-primary">May 31, 2020</span> -->
<!--                     </div> -->
<!--                     <hr> -->
<!--                     <div class="d-flex justify-content-between"> -->
<!--                         <span>84 comments</span> -->
<!--                         <span>by Admin Sam</span> -->
<!--                     </div> -->
<!--                 </article> -->
<!--                 <article class="col-12 col-md-6 tm-post"> -->
<!--                     <hr class="tm-hr-primary"> -->
<!--                     <a href="post.jsp" class="effect-lily tm-post-link tm-pt-20"> -->
<!--                         <div class="tm-post-link-inner"> -->
<!--                             <img src="/ChandqPD05208_ASM/img/img-06.jpg" alt="Image" class="img-fluid"> -->
<!--                         </div> -->
<!--                         <h2 class="tm-pt-30 tm-color-primary tm-post-title">Nội dung video6</h2> -->
<!--                     </a> -->
<!--                     <p class="tm-pt-30"> -->
<!--                         mô tả  -->
<!--                     </p> -->
<!--                     <div class="d-flex justify-content-between tm-pt-45"> -->
<!--                         <span class="tm-color-primary">Visual . Artworks</span> -->
<!--                         <span class="tm-color-primary">June 16, 2020</span> -->
<!--                     </div> -->
<!--                     <hr> -->
<!--                     <div class="d-flex justify-content-between"> -->
<!--                         <span>96 comments</span> -->
<!--                         <span>by Admin Sam</span> -->
<!--                     </div> -->
<!--                 </article> -->
            </div>
            <div class="row tm-row tm-mt-100 tm-mb-75">
                <div class="tm-prev-next-wrapper">
                    <a href="#" class="mb-2 tm-btn tm-btn-primary tm-prev-next disabled tm-mr-20">Prev</a>
                    <a href="#" class="mb-2 tm-btn tm-btn-primary tm-prev-next">Next</a>
                </div>
                <div class="tm-paging-wrapper">
                    <span class="d-inline-block mr-3">Page</span>
                    <nav class="tm-paging-nav d-inline-block">
                        <ul>
                            <li class="tm-paging-item active">
                                <a href="#" class="mb-2 tm-btn tm-paging-link">1</a>
                            </li>
                            <li class="tm-paging-item">
                                <a href="#" class="mb-2 tm-btn tm-paging-link">2</a>
                            </li>
                            <li class="tm-paging-item">
                                <a href="#" class="mb-2 tm-btn tm-paging-link">3</a>
                            </li>
                            <li class="tm-paging-item">
                                <a href="#" class="mb-2 tm-btn tm-paging-link">4</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <footer class="row tm-row">
                <hr class="col-12">

                <div class="col-md-6 col-12 tm-color-gray tm-copyright">
                    Copyright 2022 David Tube.
                </div>
            </footer>
        </main>
    </div>
    
    <script src="/ChandqPD05208_ASM/js/jquery.min.js"></script>
    <script src="/ChandqPD05208_ASM/js/templatemo-script.js"></script>
    <script src="/ChandqPD05208_ASM/src/main/webapp/js/templatemo-script.js"></script>
    
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