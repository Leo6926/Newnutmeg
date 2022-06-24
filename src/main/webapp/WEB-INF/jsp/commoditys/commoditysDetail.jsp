<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
    
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
 
<link rel="stylesheet" type="text/css" href="${contextRoot }/css/commoditysStyle.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品細節</title>
</head>
<body>

<jsp:include page="/WEB-INF/jsp/default/myNavbar2.jsp" />
<br>
<br>

<div class="row">

	<!-- 左側選單 -->
	<div class="col-3">
		<div class="row"><!-- 1.1row -->
			<div class="col-10 container">
				<div class="list-group">
					<div class="list-group-item" style="text-align:center; background-color: #EAF9CE ;">
						<span style="font-size: 24px;">請選擇商品類別</span>
					</div>

					<c:forEach var="findCategory" items="${findCategory }">
						<a href="${contextRoot }/selectCByKeyword?cKeyword=${findCategory }" class="list-group-item list-group-item-action">
						<h5 class="categorys">${findCategory }</h5>
						</a>
					</c:forEach>


				</div>
			</div>
		</div>
	</div>
	
	<!-- 右側內容 -->
	<div class="col-8 container card">
		<div class="row">
			<!-- 圖片 -->
			<div class="col-5">
				<div id="carouselCImg" class="carousel slide carousel-dark" data-bs-ride="carousel">
					<div class="carousel-inner" id="cImg">
						<!-- 輪播 -->
						<c:forEach var="commoditysImg" items="${commodityData.commoditysImg }">
							<div class="carousel-item">
								<img alt="商品照片" width="550px" height="600px" src="${contextRoot }/commoditysImg/${commoditysImg.commoditysImgId }">
							</div>
						</c:forEach>
						<!-- 左右按鈕 -->
						<button class="carousel-control-prev" type="button" data-bs-target="#carouselCImg" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button" data-bs-target="#carouselCImg" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
						<!-- 上下按鈕 -->
						<div class="carousel-indicators" id="cImgBtn">
							<c:forEach var="commoditysImg" begin="0" items="${commodityData.commoditysImg }" varStatus="s">
								<button type="button" data-bs-target="#carouselCImg" data-bs-slide-to="${s.index }" aria-current="true" aria-label="Slide ${s.index }"></button>
							</c:forEach>
						</div>


					</div>
				</div>
				
			</div>
			<!-- 內容 -->
			<div class="col-7">
				<div class="mt-2 mb-2">
					<button type="button" class="btn btn-secondary btn-lg" disabled>${commodityData.commoditysCategory }</button>
					&nbsp&nbsp
					<span style="font-size: 26px;">${commodityData.commoditysTitle }</span>
				</div>
				<div class="w-100"></div>
				<div class="mt-3">
					<div class="row align-items-end">
						<div class="col-1"></div>
						<div class="col-5">
							<span class="dCheadline align-text-bottom">特價: </span>
							<span class="salePrice">${commodityData.commoditysSalePrice }</span> 
						</div>
						<div class="col-6">
							<span>原價: <s>${commodityData.commoditysPrice}</s></span>
						</div>
					</div>
				</div>
				<div class="w-100"></div>
				<div class="mt-3">
					${commodityData.commoditysIntroduce}
				</div>
				<div class="w-100"></div>
				<div class="mt-3">
					<div class="row align-items-end">
						<div class="col-2">
							<button type="button" class="btn btn-success btn-lg">直接購買</button>
						</div>
						<div class="col-2">
							<span>剩餘數量: ${commodityData.commoditysQuantity }</span>
						</div>
						<div class="col-3"></div>
						<div class="col-2">
							<button type="button" class="btn btn-outline-secondary">加入購物車</button>
						</div>
						<div class="col-3">
							<span>下架日期: ${commodityData.commoditysTakedownTime }</span>
						</div>
					</div>



					
					
					
				</div>


			</div>
		



		</div>
	
	</div>




</div>


<!-- ------------------------------------------------------------------------------------------------------------------------------------------- -->
<script>
	$(function(){

		$("#cImg div:first-child").addClass("active");
		$("#cImgBtn button:first-child").addClass("active");
		
	})
</script>




</body>
</html>