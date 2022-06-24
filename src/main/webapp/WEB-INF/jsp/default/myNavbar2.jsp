<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>

<title>肉豆公藥局</title>
<meta charset="UTF-8">
<!-- <meta name="keywords" content="travel, tour, trip, online travel">
<meta name="description" content="online travel website">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${contextRoot }/css/aboutPharmacyStyle.css">

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

<link href="${contextRoot}/css/style2.css" rel="stylesheet">

</head>
<body id="top" data-aos-easing="ease" data-aos-duration="400" data-aos-delay="-1">

	<header id="the_header" class="animation_header" style="background-color: #C8E887;">
		<div class="navigation">
			<div style="float: left;">
				<a href="${contextRoot}/firstPage">
					<img src="${contextRoot}/images/logo.png" style="margin-top: 15px; margin-left: 3%;" width="68px" alt="肉豆公logo">
				</a>
			</div>

			<nav class="nav">
				<ul class="nav_list">
					<div class="web_bar">
						<li><a href="${contextRoot}/firstPage">首頁</a></li>
						<li><a href="${contextRoot}/aboutPharmacy">關於我們</a></li>
						<li><a class=" dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				             處方箋領藥說明
				         	</a>
				          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
				           		<li><a class="dropdown-item" href="${contextRoot}/prescription">處方箋領藥說明</a></li>
				          		<li><a class="dropdown-item" href="${contextRoot}/question/prescriptionQA">處方箋領藥說明Q&A</a></li>
				          </ul>
       					</li>
						<li><a href="${contextRoot}/commoditysPage">商品清單</a></li>
						<li><a href="${contextRoot}/message/add">常見問題</a></li>
					</div>
						<a href="" data-bs-toggle="modal" data-bs-target="#memberLogin">
							<img src="${contextRoot}/images/member.png" style="margin-top: 15px;" width="55px" alt="肉豆公會員登入">
						</a>
				</ul>
			</nav>
		</div>
	</header>

	<div class="modal fade" id="memberLogin" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
			
				<!-- 登入介面內容 --> 
				<form action="memberLogin" method="post">
					<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">
									<img src="${contextRoot}/images/newLogo.png" style="float: left;" width="48px" height="auto" alt="肉豆公Logo">
							</h5>
							<span class="align-middle" style="font-size: 26px; margin-left: 8px;">會員登入</span> 
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
				
				
					<div class="modal-body row">
						<div class="col-1"></div>
						<div class="col-8">
							<div>請輸入帳號:</div>
							<div>
								<input type="text" class="form-control" required="required" name="memberAccout">
							</div>
							
							<div>請輸入密碼:</div>
							<div>
								<input type="password" class="form-control" required="required" name="memberPassword">
							</div>
							<br>
							<p style="float: left;">還沒加入嗎?</p><a href="register">點此註冊</a>
						</div>	
					</div>

					
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">取消</button>
						<button type="submit" class="btn btn-primary">送出</button>
					</div>

				</form>
				
			</div>
		</div>
	</div>

	


	
</body>
</html>