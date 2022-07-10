<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quan li</title>
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
				<a href="index.jsp">
					<div class="mb-3 mx-auto tm-site-logo">
						<i class="fas fa-times fa-2x"></i>
					</div>
					<h1 class="text-center">David Tube</h1>
				</a>
			</div>
			<nav class="tm-nav" id="tm-nav">
				<ul>
					<li class="tm-nav-item"><a href="index.jsp"
						class="tm-nav-link"> <i class="fas fa-home"></i> Trang chủ
					</a></li>
					<li class="tm-nav-item"><a href="post.jsp" class="tm-nav-link">
							<i class="fas fa-pen"></i> Bài đăng
					</a></li>
					<li class="tm-nav-item"><a href="about.jsp"
						class="tm-nav-link"> <i class="fas fa-users"></i> Giới thiệu
					</a></li>
					<li class="tm-nav-item"><a href="contact.jsp"
						class="tm-nav-link"> <i class="far fa-comments"></i> Liên hệ
					</a></li>
					
					
					
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
			<div class="row tm-row tm-mb-45">
				<div class="col-12">
					<hr class="tm-hr-primary tm-mb-55">

				</div>
			</div>


			<div class="row tm-row tm-mb-120">
				<div class="col-12">
					<h2 class="tm-color-primary tm-post-title tm-mb-60">Quan li</h2>
					

					<div class="row">
						<div class="col">
							<c:if test="${not empty message }">
								<div class="alert alert-success">${{message}}</div>
							</c:if>

							<c:if test="${not empty error }">
								<div class="alert alert-danger">${{error}}</div>

							</c:if>
						</div>
					</div>
				</div>
				<div class="col-lg-8 tm-contact-left">
					<div class="col">
    				<form action="/ManagerServlet" method="post">
    					<div class="form-group">
    						<label for="userId">User ID:</label>
    						<input type="text" name="id"  value="${user.id}" class="form-control" />
    					</div>
    					
    					<div class="form-group">
    						<label for="password">Password:</label>
    						<input type="password" class="form-control" value="${user.password}" name="password" id="password" />
    					</div>
    					
    					<div class="form-group">
    						<label for="fullname">Fullname:</label>
    						<input type="text" class="form-control" value="${user.fullname}" name="fullname" id="fullname" />
    					</div>
    					
    					<div class="form-group">
    						<label for="email">Email:</label>
    						<input type="text" class="form-control" value="${user.email}" name="email" id="email" />
    					</div>
    					
    					<div class="form-check form-check-inline">
    						<label >Role:</label>
    						<label class="ml-2"> <input checked="checked" type="radio" class="form-check-input" id="admin" 
    							value="true" ${user.admin ? 'checked' : ''} name="admin" />Admin </label>
    						<label class="ml-2"> <input type="radio" class="form-check-input" id="user" 
    							value="false" ${!user.admin ? 'checked' : ''} name="admin" />User </label>
    					</div>
    					
    					<div class="form-group">
    						<button class="btn btn-primary" formaction="/ChandqPD05208_ASM/create">Create</button>
    						<button class="btn btn-warning" formaction="/ChandqPD05208_ASM/update">Update</button>
    						<button class="btn btn-danger" formaction="/ChandqPD05208_ASM/delete">Delete</button>
    						<button class="btn btn-info" formaction="/ChandqPD05208_ASM/reset">Reset</button>
    					</div>
    					<h1>${message}</h1>
    				</form>
    			</div>

				</div>


				<div class="col-12">
					<hr class="tm-hr-primary tm-mb-55">

				</div>
				
				<div class="row">
    		<div class="col">
    			<table class="table table-stripe">
    				<tr>
    					<td>User ID </td>
    					<td>Password </td>
    					<td>Fullname </td>
    					<td>Email </td>
    					<td>Role </td>
    				</tr>
    				
    				<c:forEach var="item" items="${users}">
						<tr>
							<td>${item.id}</td>
							<td>${item.password}</td>
							<td>${item.fullname}</td>
							<td>${item.email}</td>
							<td>${item.admin ? 'Admin' : 'User'}</td>
							<td>
								<a href="/ChandqPD05208_ASM/edit?id=${item.id}">Edit</a>
								<a href="/ChandqPD05208_ASM/delete?id=${item.id}">Delete</a>
							</td>
						</tr>
					</c:forEach>
    				
    			</table>
    		</div>
    	</div>

				<div class="col-lg-5 tm-contact-right" style="text-align: right;">

					<ul class="tm-social-links">
						<li class="mb-2"><a href="https://facebook.com"
							class="d-flex align-items-center justify-content-center"> <i
								class="fab fa-facebook"></i>
						</a></li>
						<li class="mb-2"><a href="https://twitter.com"
							class="d-flex align-items-center justify-content-center"> <i
								class="fab fa-twitter"></i>
						</a></li>
						<li class="mb-2"><a href="https://google.com"
							class="d-flex align-items-center justify-content-center"> <i
								class="fab fa-google"></i>
						</a></li>
						<li class="mb-2"><a href="https://instagram.com"
							class="d-flex align-items-center justify-content-center mr-0">
								<i class="fab fa-instagram"></i>
						</a></li>
					</ul>
				</div>
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
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>