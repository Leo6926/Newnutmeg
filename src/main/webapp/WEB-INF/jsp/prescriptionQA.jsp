<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
 
<link href="${contextRoot}/css/totop.css" rel="stylesheet">
<link href="${contextRoot}/css/layout.css" rel="stylesheet" >
<link rel="stylesheet" href="${contextRoot}/css/style2.css">
<link href="${contextRoot}/css/fpage.css" rel=stylesheet>
<title>處方箋領藥說明Q&A</title>
</head>
<body id="top" data-aos-easing="ease" data-aos-duration="400"
	data-aos-delay="0">
	<%--開頭與導覽列 --%>
	<%--
	<section id="earth">
		<div class="earth_container">
			<div class="slogan" >
				<h2>處方箋領藥Q&A</h2>
			</div>
		</div>
	</section>
	 --%>
	 	<jsp:include page="default/myNavbar2.jsp"/>
		<div class="row justify-content-center">
			
						<div class="col-2">
					     <br>
							<div class="list-group">
								<a class="list-group-item list-group-item-action  list-group-item-success" aria-current="true">
									處方箋領藥
								</a>
								<a href="${contextRoot}/prescription" class="list-group-item list-group-item-action">
									處方箋領藥說明
								</a>
								<a href="${contextRoot}/question/prescriptionQA" class="list-group-item list-group-item-action">
									處方箋領藥說明Q&A
								</a>
							</div>
							</div>
					
		      <div class="col-6">
		    	<br>
				<h3><image src="${contextRoot}/images/logo.jpg"class="rounded-circle" width="50" height="50" alt="LOGO圖檔">
					<font style="color:green">
						<b>處方箋領藥說明Q&A-----------------------------</b>
					</font>
				</image></h3>
				<br>
			<div>
				<form th:action="@{/question/prescriptionQA }">		
					<input type="text" name="keyword" th:value="${keyword}" required/>
					<input type="submit" value="Search" />
				</form>
			</div> 
			 <br>
			<div class="accordion" id="accordionExample">
			<c:if test="${page.totalElements>0}">
				<c:forEach var="prescriptionQ" items="${page.content}">
					<div class="card " >
						<div class="card-header  list-group-item-success">
							<c:out value="${prescriptionQ.question_topic}" />    
						</div>
						<div class="card-body  list-group-item-warning">
							<p class="card-text">
								<c:out value="${prescriptionQ.question_answer}" />
							</p>
						</div>
					</div>
					<br>
				</c:forEach>
				</c:if>
				  <%-- >
		        </div> 
		        </div> 
		        </div></div></div>
		    </main>--%
					<%--若無資料顯示查無此資料 --%>
					<c:if test="${page.totalElements ==0}">
						<c:out value="查無此資料" />
					</c:if>
				<div class="row justify-content-center">
					<div class="col-9">
							<nav aria-label="Page navigation example">
							 <ul class="pagination justify-content-center">
								<%-- 
								<a href="${contextRoot}/question/prescriptionQA?p=${pageNumber}">
									<c:out value="${pageNumber}" />
								</a>
								--%>
										<li class="page-item ">
										  <c:if test="${pageNumber > 1}">
												<a class="page-link" href="${contextRoot}/question/prescriptionQA?p=${pageNumber-1 }" >上一頁</a>
										  </c:if>
										</li>
								<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
									<c:choose>         
									<c:when  test="${page.number != pageNumber-1 }">
											<li class="page-item">
						 						 <a class="page-link" href="${contextRoot}/question/prescriptionQA?p=${pageNumber}" style="color:blue; text-decoration:none;">
												    <c:out value="${pageNumber}" /></a>
											</li>
									</c:when>
								 	<%--當下頁面為黑色 --%>
									<c:otherwise >
											<li class="page-item">
											  	<a class="page-link" href="${contextRoot}/question/prescriptionQA?p=${pageNumber}" >
												  <c:out value="${pageNumber}" /></a>
											</li>
									</c:otherwise>  
									</c:choose>
										<%--
										<c:if test="${pageNumber != page.totalPages}">
											|
										</c:if>	  --%> 
								 </c:forEach>
										<c:if test="${pageNumber < page.totalPages}">
											<li class="page-item">
													<a class="page-link" href="${contextRoot}/question/prescriptionQA?p=${pageNumber+1}">下一頁</a>
										  	</li>
										 </c:if> 	
					  </ul>
						</nav>
						</div>
				</div>
				<%-- 
				<nav aria-label="Page navigation example">
            	<ul class="pagination" id="pageid">
	            </ul>
	       		</nav>--%>
				<br>
			</div>
		</div>
			<div class="col">
			</div>  
			
			<%-- </div>--%>
		
	</div>
		<!--回到最上層按鈕 -->
	<button type="button" id="BackTop" class="toTop-arrow"></button>
			<script>
			$(function(){
				$('#BackTop').click(function(){ 
					//0.333秒完成捲動的動作
					$('html,body').animate({scrollTop:0}, 333);
				});
				//當瀏覽器的捲軸在移動時
				$(window).scroll(function() {
					if ( $(this).scrollTop() > 300 ){
						//超過 300 px，以0.222秒的特效顯示按鈕
						$('#BackTop').fadeIn(222);
					} else {
						//未超過 300 px，先停止正在進行的特效，接著以 0.222 秒的特效隱藏按鈕
						$('#BackTop').stop().fadeOut(222);
					}
				}).scroll();
			});
			</script>
	
	
	    <jsp:include page="default/footer.jsp"/>

<%-- 
 	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>AOS.init();</script>
    <script src="${contextRoot}/js/header_footer.js"></script>
    <script src="${contextRoot}/js/home/home.js"></script>
--%>
</body>
</html>