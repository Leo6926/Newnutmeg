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

<link href="${contextRoot}/css/layout.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品列表</title>

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

	<!--右側內容 -->
	<div class="col-9 container" >
		<div class="row">
			<form action="selectCByKeyword">
				<div class="row align-items-center mb-5">
					<div class="col-2">
						<h4 class="container" style="font-size: 24px;">請輸入關鍵字: </h4>
					</div>
					
					<div class="form-floating col-5">
						<input type="text" class="form-control" id="cKeyword" name="cKeyword" placeholder="keyword">
						<label for="cKeyword">請輸入關鍵字</label>
					</div>

					<div class="col-1">
						<button type="submit" class="btn btn-success">搜尋</button>
					</div>
				</div>
			</form>	
			
			<div class="w-100"></div>
		
			<c:forEach var="commoditysData" items="${page.content }" varStatus="s">
				<div class="col-5 card mb-4">
		            <div class="row">
		                <div class="col-5">
							<div style="height: 280px;">
								<!-- 輪播 -->
								<div id="carouselCImg" class="carousel slide" data-bs-ride="carousel">
									<div class="carousel-inner" style="width: 250px; height: 280px;" id="cImg">
										<c:forEach var="cImgById" items="${commoditysData.commoditysImg }">
											<div class="carousel-item">
												<img alt="商品照片" src="${contextRoot }/commoditysImg/${cImgById.commoditysImgId }" width="250px">
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
		  
		                </div>
		
		                <div class="col-7">
		                    <table class="container">
		                        <tr>
		                            <td class="cTitleTd mb-2" style="vertical-align : middle;" colspan="2">
		                            	<a href="commoditysDetail/${commoditysData.commoditysId }">${commoditysData.commoditysTitle }</a>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="cIntroduceTd" colspan="2">${commoditysData.commoditysIntroduce }</td>
		                        </tr>
		                        <tr>
		                        	<td>價格: <s>${commoditysData.commoditysPrice }</s></td>
		                        	<td class="cSalePriceTd">促銷價格: <span class="salePrice"> ${commoditysData.commoditysSalePrice } </span></td>
		                        </tr>
		                    </table>
		                </div>
		            </div>
		        </div>
		        <div class="col-1"></div>
		    		
			</c:forEach>	
		
			
			 	<nav aria-label="Page navigation">
					<ul class="pagination justify-content-center">
						<c:if test="${page.number != 0 }">
							<li class="page-item"><a class="page-link" href="${contextRoot }/selectCByKeyword?cKeyword=${cKeyword }&p=${page.number }">上一頁</a></li>
						</c:if>
						
						<c:forEach var="navPage" begin="1" end="${page.totalPages }" varStatus="s">
							<c:choose>
								<c:when test="${page.number+1 == navPage}">
									<li class="page-item active"><a class="page-link">${navPage }</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link" href="${contextRoot }/selectCByKeyword?cKeyword=${cKeyword }&p=${navPage }">${navPage }</a></li>									
								</c:otherwise>
							</c:choose>
							
						</c:forEach>
		
						<c:if test="${page.number+1 != page.totalPages }">
							<li class="page-item"><a class="page-link" href="${contextRoot }/selectCByKeyword?cKeyword=${cKeyword }&p=${page.number+2 }">下一頁</a></li>
						</c:if>
					</ul>
				</nav>
				
		</div>
	</div>
</div>

<br>
<br>

<jsp:include page="/WEB-INF/jsp/default/footer.jsp" />

<!-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->

<script>
    $(function(){

        $("#cImg div:first-child").addClass("active");
		$("#cImgButton button:first-child").addClass("active");			//沒用到
		
		

		
    })



</script>




</body>
</html>




                	<!-- 輪播 -->
                	<!-- <div id="carouselCImg" class="carousel slide" data-bs-ride="carousel">
                		下方按鈕
                		<div class="carousel-indicators" id="cImgButton">
                			<c:forEach begin="0" end="${findCImgByFkCId.size() }" items="${findCImgByFkCId }" varStatus="s">
                				<button type="button" data-bs-target="#carouselCImg" data-bs-slide-to="${s.index }" aria-current="true" aria-label="Slide ${s.index+1 }"></button>
                			</c:forEach>
                		</div>
                		輪播圖片
                		<div class="carousel-inner" id="cImg">
				        	<c:forEach var="findCImgByFkCId" items="${findCImgByFkCId }">
				            	<div class="carousel-item">
				                	<img alt="商品圖片" src="${contextRoot }/commoditysImg/${findCImgByFkCId.commoditysImgId }" width="200px">
				                </div>
				            </c:forEach>   
				        </div>
				        左右按鈕             		
                		<button class="carousel-control-prev" type="button" data-bs-target="#carouselCImg" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button" data-bs-target="#carouselCImg" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>  	 -->
					
					
					
					
					

					