<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="zh-tw"><head>
    <title>jumper</title>
    <meta charset="UTF-8">
<meta name="keywords" content="travel, tour, trip, online travel">
<meta name="description" content="online travel website">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<script src="${contextRoot}/js/jquery-3.6.0.min.js" ></script>
<script src="${contextRoot}/js/bootstrap.bundle.min.js" ></script>
<script src="${contextRoot}/js/vue/vue.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue-router/3.5.2/vue-router.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.js"></script>
<link rel="stylesheet" href="${contextRoot}/css/style2.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>

<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">
    <section id="earth"><div class="earth_container"><div class="slogan">
    <h2>Welcome to 肉豆公</h2> 
    <h5>隨時隨地、隨心所欲，和我們一起暢跳世界！ 立即開始您的線上旅遊！</h5> 
        <img src="${contextRoot}/images/logo.png" class="scroll_down"></div> <a href="game.html"></a></div>
    </section>

    <header id="the_header" class="animation_header"><div class="navigation"><div class="nav_logo"><a href="home.html"><img src="./images/logo/logo.svg" alt="logo" class="logo"></a></div> <nav class="nav"><ul class="nav_list"><div class="web_bar"><li><a href="about.html">關於我們</a></li> <li><a href="travel_list.html">旅遊總覽</a></li> <li><a href="postcard.html">客製明信片</a></li> <li><a href="QA.html">常見問題</a></li></div> <div class="mobile_bar"><li class="home"><a href="home.html"><img src="./images/icon/header/home_icon.svg" alt="home"></a></li> <li class="favorite"><img src="./images/icon/header/favorite_icon.svg" alt="favorite"></li> <li class="member"><img src="./images/icon/header/member_icon.svg" alt="member"></li> <li class="menu"><img src="./images/icon/header/menu_icon.svg" alt="menu"></li></div></ul></nav></div></header>
    <div id="mobile_menu"><div id="nav_rwd"><img src="${contextRoot}/images/logo.png" alt="logo" class="logo_rwd"> 
    <div class="menu">
    <img id="close_menu" src="./images/icon/header/close.svg" alt="close"> 
    <div class="menu_item"><button class="btnL_light"><a href="about.html">關於我們</a></button> 
    <button class="btnL_light"><a href="travel_list.html">旅遊總覽</a></button>
     <button class="btnL_light"><a href="postcard.html">客製明信片</a></button> 
     <button class="btnL_light"><a href="QA.html">常見問題</a></button></div></div></div></div>

     <main>
        <div id="our-service"><div class="about">
        <div class="about_container"><h2>我們的服務</h2> 
        <div class="all_about">
        <div data-aos="fade-down" data-aos-duration="600" data-aos-once="false" class="about_1 aos-init aos-animate">
        <img src="${contextRoot}/images/phone.png" alt="專業的線上導遊"> 
        <div class="des_1"><h3>專業的線上導遊</h3> 
        <h4>我們提供具有專業知識背景的線上導遊，零時差導覽您的線上旅程，透過直播即時互動，他們將帶領您身歷其境，讓您隨時隨地，開機就能遊覽世界。</h4>
        </div>
        </div> 
        <div data-aos="fade-down" data-aos-duration="300" data-aos-delay="300" data-aos-once="false" class="about_2 aos-init">
        <div class="des_2"><h3>高CP值的觀光旅遊</h3> <h4>相較於實體旅遊的高額花費，線上旅遊讓您能以更輕鬆無負擔的價格，就能享受一場由專業的當地導遊，所帶領的獨一無二異國旅遊體驗。</h4></div> 
        <img src="${contextRoot}/images/phone.png" alt="提供包場">
        </div>
        </div>
        </div> <div class="light_bg"></div> <div class="fence"></div></div></div>
    </main>

   <section id="more_opinion">
    <div class="more_opinion"><aside class="fence_col"></aside>
     <div class="opinion_container"><h2>商品清單</h2> 
     <div id="opinion">
     <ul id="all_opinion" data-aos="fade-up" data-aos-duration="700" class="aos-init aos-animate">
	     <li class="person">
	          <div class="top"><img src="${contextRoot}/images/pp.png" width="220" height="220">
		      </div> 
			      <p>保障</p>
			      <p class="content">保障民眾的用藥權益，透過藥師專業及藥局服務品質的提升，使民眾獲得更大的醫療助益。</p>
		       </li>
		 <li class="person">
		       <div class="top"><img src="${contextRoot}/images/hand.png" width="220" height="220"> 
		      </div>
			      <p>溫馨關懷</p>
			      <p class="content">不僅提供保健資訊，飲食衛教指導，還能為民眾的飲食健康做把關，給予您最貼心的建議以及溫馨電話叮嚀領藥，讓您不會忘記服用藥品</p></li>
		 <li class="person">
		       <div class="top"><img src="${contextRoot}/images/work.png" width="220" height="220">
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
	
	<%-- --%>
    <footer id="the_footer">
    <div>
    <div class="socialLink_icon">
    	<a href="/"><img src="${contextRoot}/images/" alt="line"></a> 
    	<a href="/"><img src="${contextRoot}/images/" alt="facebook"></a> 
    	<a href="/"><img src="${contextRoot}/images/" alt="instagram"></a>
    	</div> 
    	<div class="statement">
            © 2021 BY JUMPER
            <br>
            本網站為緯育TibaMe前端設計工程師班第68期學員專題作品，本平台僅供學習、展示之用。
            <br>
            若有侵權疑慮，您可以私訊[TibaMe-前端設計工程師養成班]，後續會由專人協助處理。
        </div>
        </div>
        </footer>

    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>AOS.init();</script>
    <script src="${contextRoot}/js/header_footer.js"></script>
    <script src="${contextRoot}/js/home/home.js"></script>


</body></html>