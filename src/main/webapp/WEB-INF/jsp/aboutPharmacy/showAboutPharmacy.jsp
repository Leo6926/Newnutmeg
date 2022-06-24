<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${contextRoot }/css/aboutPharmacyStyle.css">

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>

<link href="${contextRoot}/css/layout.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>關於藥局呦</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/default/myNavbar2.jsp" />

<div class="row"><!-- 1row -->
<!-- 左側選單-------------------------------------------------------------------------------- -->
	
	<div class="col-3">
		<br>
		<br>
		<br>
		<br>
		<div class="row"><!-- 1.1row -->
			<div class="col-10 container">
				<div class="list-group">
					<div class="list-group-item">
						關於我們
					</div>
					<a href="#aboutPharmacy" id="aboutPharmacyList" class="list-group-item list-group-item-action">
						<h4>關於藥局</h4>
						<small>想多了解藥局的大小事嘛?</small>				
					</a>
					<a href="#pHistory" id="pHistoryList" class="list-group-item list-group-item-action">
						<h4>藥局沿革</h4>
						<small>小小的藥局，一點一滴的過程</small>
					</a>
					<a href="#philosophy" id="philosophyList" class="list-group-item list-group-item-action">
						<h4>經營理念</h4>
						<small>我們的堅持是您最安心的選擇</small>
					</a>
				</div>
			</div>
		</div>
	</div>
	
<!-- 右側資料-------------------------------------------------------------------------------- -->
	<div class="col-9">
		<br>
		<br>
		<div> <!--row-->
			<a id="aboutPharmacy"></a>
			<div>
				<img src="${contextRoot }/images/aboutPTitle.png" class="titleImg" alt="關於藥局">
			</div>
	
<!-- -------------------------------------------------------------------------------------------------------------------------------------------			 -->

			<div class="row justify-content-center">
				<c:forEach var="aboutPData" items="${page.content }">
					<!-- 圖片 -->
					<div class="col-4">
						圖片
					</div>
					<!-- 內容 -->
					<div class="col-6">
						<div class="row">
							<div class="col">
								${aboutPData.aboutPTitle}
							</div>
							<div class="w-100"></div>
							<div class="col mt-5">
								${aboutPData.aboutPContent }
							</div>
						</div>
								

						
					</div>
				</c:forEach>
			</div>







<!-- -------------------------------------------------------------------------------------------------------------------------------------------			 -->
			<div>
				<table class="container">
					<c:forEach var="aboutPData" items="${page.content }">	
						<tr>
							<td colspan="4" hidden>${aboutPData.aboutPId }</td>
						</tr>
						
						<tr>
							<td rowspan="2" class="aboutPArrowTd">
								<c:if test="${aboutPData.aboutPId > 1}">
									<a href="${contextRoot }/aboutPharmacy?p=${aboutPData.aboutPId-1 }">
										<img class="aboutPLeftTurn" alt="向左翻頁" src="${contextRoot }/images/right-arrow.png">
									</a>
								</c:if>	
							</td>
							
							<td rowspan="2" class="aboutPImgTd">
								<c:choose>
									<c:when test="${fAPImgByFkId.size() > 1 }">
										<!-- 輪播 -->
										<div id="carouselAPImg" class="carousel slide" data-bs-ride="carousel">
											<!--下方按鈕-->
											<div class="carousel-indicators" id="aboutPImgButton">
												<c:forEach begin="0" end="${fAPImgByFkId.size() }" items="${fAPImgByFkId }" varStatus="s">
													<button type="button" data-bs-target="#carouselAPImg" data-bs-slide-to="${s.index }" aria-current="true" aria-label="Slide ${s.index+1 }"></button>
												</c:forEach>
											</div>
											<!-- 輪播圖片 -->
											<div class="carousel-inner" id="aboutPImg">
												<c:forEach var="fAPImgByFkId" items="${fAPImgByFkId }">
													<div class="carousel-item">
														<img class="aboutPImg" style="float : left;" alt="關於藥局圖片" src="${contextRoot }/aboutPImg/${fAPImgByFkId.abountPImgId }">
													</div>
												</c:forEach>
											</div>
											<!--左右按鈕-->
											<button class="carousel-control-prev" type="button" data-bs-target="#carouselAPImg" data-bs-slide="prev">
												<span class="carousel-control-prev-icon" aria-hidden="true"></span>
												<span class="visually-hidden">Previous</span>
											</button>
											<button class="carousel-control-next" type="button" data-bs-target="#carouselAPImg" data-bs-slide="next">
												<span class="carousel-control-next-icon" aria-hidden="true"></span>
												<span class="visually-hidden">Next</span>
											</button>
										</div>
									</c:when>
									
									<c:otherwise>
										<c:forEach var="fAPImgByFkId" items="${fAPImgByFkId }">
											<img class="aboutPImg" alt="關於藥局圖片" src="${contextRoot }/aboutPImg/${fAPImgByFkId.abountPImgId }">
										</c:forEach>
									</c:otherwise>
									
								</c:choose>
							</td>
							
							<td class="aboutPTitleTd" style="height: 50px;">
								${aboutPData.aboutPTitle }
							</td>
							
							<td rowspan="2" class="aboutPArrowTd">
								<c:if test="${aboutPData.aboutPId < page.totalPages}">
									<a href="${contextRoot }/aboutPharmacy?p=${aboutPData.aboutPId+1 }">
										<img class="aboutPRightTurn" alt="向右翻頁" src="${contextRoot }/images/right-arrow.png">
									</a>
								</c:if>
							</td>
						</tr>
						
						<tr>
							<td class="aboutPContentTd">
								${aboutPData.aboutPContent }
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>

	<!-- 藥局沿革----------------------------------------------------------------------------------------------------------------------------------------- -->
			<a id="pHistory"></a>
			<div>
				<img src="${contextRoot }/images/pHistory.png" class="titleImg" alt="藥局沿革">
			</div>				
			
			<br>
			<br>

			
			<div class="col-5 container">
				<div id="carouselPHImg" class="carousel slide" data-bs-ride="carousel">
					<!--下方按鈕-->
					<div class="carousel-indicators" id="pHImgButton">
						<c:forEach begin="0" end="${fAPImgByFkId.size() }" items="${findPHImgByFkPHId }" varStatus="s">
							<button type="button" data-bs-target="#carouselPHImg" data-bs-slide-to="${s.index }" aria-current="true" aria-label="Slide ${s.index+1 }"></button>
						</c:forEach>
					</div>
					<!-- 輪播圖片 -->
					<div class="carousel-inner" id="pHImg">
						<c:forEach var="findPHImgByFkPHId" items="${findPHImgByFkPHId }">
							<div class="carousel-item">
								<img class="pHImg container"  alt="藥局沿革圖片" src="${contextRoot }/pHImg/${findPHImgByFkPHId.pHistoryImgId }">
							</div>
						</c:forEach>
					</div>
					<!--左右按鈕-->
					<button class="carousel-control-prev" type="button" data-bs-target="#carouselPHImg" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-bs-target="#carouselPHImg" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>		
			</div>
				

			<div class="col-10 container">
				<c:forEach var="pHList" items="${pHList }">
					<p class="aboutPTitle">${pHList.pHistoryTitle }</p>
					<p class="aboutPContent">${pHList.pHistoryContent }</p>
				</c:forEach>
			</div>

			
			<!-- 經營理念----------------------------------------------------------------------------------------------------------------------------------------- -->
			<a id="philosophy"></a>
			<div>
				<img src="${contextRoot }/images/philosophy.png" class="titleImg" alt="經營理念">
			</div>

			<div class="col-10 container">
				<ul>
					<li class="mb-3" style="font-size: 28px;">提供所有照顧嬰幼兒健康，成長所需的專業藥局</li>
					<li class="mb-3" style="font-size: 28px;">提供所有現代媽媽育嬰資訊，產品及保養自身窈窕美麗的專業藥局</li>
					<li class="mb-3" style="font-size: 28px;">提供預防疾病，老化及維持身體健康的專業藥局</li>
					<li class="mb-3" style="font-size: 28px;">提供您健康，成長，美麗的方便好鄰居</li>
				</ul>


			</div>




		</div>
	</div>
</div>

<br>
<br>

<jsp:include page="/WEB-INF/jsp/default/footer.jsp" />

<!-- ------------------------------------------------------------------------------------------------------------------------------------------------ -->

<script>

	$(function(){
		
		$("#aboutPImg div:first-child").addClass("active");
		$("#aboutPImgButton button:first-child").addClass("active");
		
		$("#pHImg div:first-child").addClass("active");
		$("#pHImgButton button:first-child").addClass("active");

		$("a[href=#aboutPharmacy]").click(function() {
			$("html,body").animate({
				scrollTop:$("#aboutPharmacy").offset().top
			}, "show");

		return false;
		});

		$("a[href=#pHistory]").click(function() {
			$("html,body").animate({
				scrollTop:$("#pHistory").offset().top
			}, "show");

		return false;
		});

		$("a[href=#philosophy]").click(function() {
			$("html,body").animate({
				scrollTop:$("#philosophy").offset().top
			}, "show");

		return false;
		});





		
	})
	
</script>

</body>
</html>



 
	<!--
		待處理:
		、css樣式 、照片輪播
		--------------------------------------------------------------- 
		想改利用箭頭換頁(OK)
		<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
			<c:choose>
				<c:when test="${page.number != pageNumber-1 }">
					<a href="${contextRoot }/aboutPharmacy?p=${pageNumber }">
						<c:out value="${pageNumber }"></c:out>
					</a>
				</c:when>	
				<c:otherwise>
					<c:out value="${pageNumber}"></c:out>
				</c:otherwise>
			
			</c:choose>

		</c:forEach>
	-->
		 
	 <!--
	 
	 		<div class="row">
			<c:forEach var="aboutPData" items="${page.content }">
			
			<div hidden>${aboutPData.aboutPId }</div>

			<div class="col-1">
				<c:if test="${aboutPData.aboutPId > 1}">
					<a href="${contextRoot }/aboutPharmacy?p=${aboutPData.aboutPId-1 }">
						<img class="aboutPLeftTurn" alt="向左翻頁" src="${contextRoot }/image/right-arrow.png">
					</a>
				</c:if>	
			</div>
				
			<div class="col-4">
				<img src="${contextRoot }/aboutPImg/${aboutPData.aboutPId }" class="aboutPImg" alt="關於藥局的圖片">
			</div>
				
			<div class="col-6">
					${aboutPData.aboutPTitle }

					${aboutPData.aboutPContent }
			</div>
				
			<div class="col-1">
				<c:if test="${aboutPData.aboutPId < page.totalPages}">
					<a href="${contextRoot }/aboutPharmacy?p=${aboutPData.aboutPId+1 }">
						<img class="aboutPRightTurn" alt="向右翻頁" src="${contextRoot }/image/right-arrow.png">
					</a>
				</c:if>
			</div>
			
			</c:forEach>
				
		</div>	
	 
	 -->
