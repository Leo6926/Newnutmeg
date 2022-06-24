<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>



<script src="${contextRoot}/js/vue/vue.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue-router/3.5.2/vue-router.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.js"></script>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link href="${contextRoot}/css/totop.css" rel="stylesheet">
<link href="${contextRoot}/css/layout.css" rel="stylesheet" >
<link rel="stylesheet" href="${contextRoot}/css/style2.css">

<title>處方箋領藥</title>

</head>
<body id="top" data-aos-easing="ease" data-aos-duration="400"
	data-aos-delay="0">
<jsp:include page="default/myNavbar2.jsp"/>

	<%--
	<section id="earth">
		<div class="earth_container">
			<div class="slogan" >
				<h2>處方箋領藥</h2>
				<h5>快速又方便</h5>
			</div>
		
		</div> 
	</section>--%>
<div class="centainer">

 <%--
    
    <div class="col-2"> --%>
    <%-- 
     <br>
     <div class="list-group">
		 	 <a class="list-group-item list-group-item-action  list-group-item-success" aria-current="true">
		    處方箋領藥
		  </a>
		  <a href="${contextRoot}/prescription" class="list-group-item list-group-item-action">處方箋領藥說明</a>
		  <a href="${contextRoot}/question/prescriptionQA" class="list-group-item list-group-item-action">處方箋領藥說明Q&A</a>
	</div>
    </div>  --%>

 <%-- -
    <br>
      <div>
     
     <h2> <image src="images/logo.jpg"class="rounded-circle" width="50" height="50" alt="LOGO圖檔" ><font style="color:green"><b>處方箋領藥說明---------------------</b></font></image></h2>
	</div>
-%>
	<%-- 
      <div class="container">
      <div class="opinion_container"><h2>肉豆公藥局服務</h2>
        </div>
		
	</div>
	<div class="alert alert-danger" role="alert">
 	
 		<ul style="list-style-type:none">
      		<li >專收各大院所慢性病連續處方箋</li>
      		<li> 台大、長庚、榮總、省桃、壢新、天晟、敏盛、慈濟、聖保祿、馬偕、國軍總醫院、北醫、國泰、陽明、萬芳、振興、秀傳、亞東、
      		旗山、岡山、童綜合、仁愛、奇美、慈濟、慈惠、樂安、光田、清泉、豐原、聯合、</li>
      		<li>李綜合、阮綜合、竹東、耕莘、高醫、凱旋、小港、旗津、義大、聖功 …………等各大醫療院所。</li>
      	</ul>
	</div>
	--%>
	<%-- 
	<main>
        <div id="our-service"><div class="about">
        <div class="about_container"><h2>肉豆公藥局服務</h2> 
        <div class="all_about">
        <div data-aos="fade-down" data-aos-duration="600" data-aos-once="false" class="about_1 aos-init aos-animate">
        
        	
        	
			 <ul style="list-style-type:none">
	      		 <li><h3>專收各大院所慢性病連續處方箋</h3></li>
	      		<li> <h4>台大、長庚、榮總、省桃、壢新、天晟、敏盛、慈濟、聖保祿、馬偕、國軍總醫院、北醫、國泰、陽明、萬芳、振興、秀傳、亞東、
	      		旗山、岡山、童綜合、仁愛、奇美、慈濟、慈惠、樂安、光田、清泉、豐原、聯合、李綜合、阮綜合、竹東、耕莘、高醫、凱旋、小港、旗津、義大、聖功 …………等各大醫療院所。</h4></li>
      		</ul>
        </div> 
        </div> <div class="light_bg"></div> <div class="fence"></div></div></div>
    </main>
	<div class="col-5">
	--%>
	 <br>
	 
	 <main>
        <div id="our-service">
        <div class="about">
        <div class="about_container">
        	<h3><img src="${contextRoot}/images/logo.jpg"class="rounded-circle" width="50" height="50" alt="LOGO圖檔">
					<font style="color:green">
						<b>處方箋領藥說明------------------------------</b>
					</font>
			</h3>
			<h2>處方箋領藥</h2> 
        <div class="all_about">
        <div data-aos="fade-down" data-aos-duration="600" data-aos-once="false" class="about_1 aos-init aos-animate">
        <img src="${contextRoot}/images/pres.JPG" width="500" height="500"alt="...."> 
        </div> 
        </div>
        </div></div></div>
    </main>
	

    <section id="more_opinion">
    <div class="more_opinion">
     <div class="opinion_container"><h2>為何到肉豆公藥局領藥</h2> 
     <div id="opinion">
     <ul id="all_opinion" data-aos="fade-up" data-aos-duration="700" class="aos-init aos-animate">
	     <li class="person">
	          <div class="top"><img src="${contextRoot}/images/pp.png" width="225" height="225">
		      </div> 
			      <p>保障</p>
			      <p class="content">為避免民眾隨意不當使用藥品導致危害到自身健康以及保障民眾的用藥權益，透過藥師專業及藥局服務品質的提升，使民眾獲得更大的醫療助益。</p>
		       </li>
		 <li class="person">
		       <div class="top"><img src="${contextRoot}/images/hand.png" width="220" height="220"> 
		      </div>
			      <p>溫馨關懷</p>
			      <p class="content">不僅提供保健資訊，飲食衛教指導，還能為民眾的飲食健康做把關，給予您最貼心的建議以及溫馨電話叮嚀領藥，讓您不會忘記服用藥品。</p></li>
		 <li class="person">
		       <div class="top"><img src="${contextRoot}/images/work.png" width="225" height="225">
		       </div>
		          <p>專業服務</p>
		          <p class="content">專業藥師可靠服務及諮詢，線上藥師暖心聊聊，提供藥物衛教，讓用藥更安全。</p></li>
		 <li class="person">
		       <div class="top"><img src="${contextRoot}/images/CLOUD.jpg" width="220" height="220"> 
		      </div>
		          <p>雲端藥歷</p>
		          <p class="content">提供民眾就醫時，診間醫師可透過健保資訊服務系統(VPN)，即時查詢	
					到病人近期藥品之就醫資訊，避免醫師重複處方及病人重複用藥，以提升用
					藥安全及品質。</p></li>
		 <li class="person">
		       <div class="top"><img src="${contextRoot}/images/doc.png"  width="220" height="220"> 
		       </div> 
		       	  <p>用藥諮詢與指導</p>
		          <p class="content">藥師作為調劑藥物的主要工作者，更是把關每位民眾用藥的安全性，提供個人化用藥衛教以避免用藥錯誤。</p></li>
		 <li class="person">
		      <div class="top"><img src="${contextRoot}/images/picp.png"  width="220" height="220">
		      </div> 
		          <p>預約領藥方便快速</p>
		          <p class="content">拍照上傳慢性病連續處方箋(慢箋)，領藥免排隊；亦可協助父母親友代預約，關懷家人更即時。</p></li>
		      </ul>
		      </div>
		  </div>
		 </div>
	</section>
	<!--回到最上層按鈕 -->
      	<button type="button" id="BackTop" class="toTop-arrow"></button>
			<script>
			$(function(){
				$('#BackTop').click(function(){ 
					$('html,body').animate({scrollTop:0}, 333);
				});
				$(window).scroll(function() {
					if ( $(this).scrollTop() > 300 ){
						$('#BackTop').fadeIn(222);
					} else {
						$('#BackTop').stop().fadeOut(222);
					}
				}).scroll();
			});
			</script>



</div>
<%-- 
<div class="col">
</div>
</div>--%>


<%--

 --%>
<jsp:include page="default/footer.jsp" />

   <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>AOS.init();</script>
    <script src="${contextRoot}/js/header_footer.js"></script>
    <script src="${contextRoot}/js/home/home.js"></script>
</body>

</html>