<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-tw">
<head>
<title>aos</title>
<meta charset="UTF-8">
<meta name="keywords" content="travel, tour, trip, online travel">
<meta name="description" content="online travel website">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link href="${contextRoot}/css/style2.css" rel="stylesheet">
</head>
<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">
	<main>
		<div id="our-service">
			<div class="about">
				<div class="about_container">
					<div class="all_about">
						<div data-aos="fade-down" data-aos-duration="100"
							data-aos-once="false" class="about_2 aos-init">
							<div class="des_2">
								<h3>肉豆公藥局南榮店</h3>
								<h4>各位鄰友好啊~今天是肉豆公藥局的開幕日，感謝大家熱情共襄盛舉，給我們大大的支持與鼓勵~ 開幕期間都有許多優惠，歡迎大家揪團一起來「逗熱鬧」，還有還有......這裡還有提供健保處方領藥的服務喔！非常歡迎大家喔~~~</h4>
							</div>
							<video src="${contextRoot}/video/01.mp4" controls width=600></video>
						</div>
					</div>
				</div>
				<div class="light_bg"></div>
				<div class="fence"></div>
			</div>
		</div>
	</main>
	
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>
	<script src="${contextRoot}/js/header_footer.js"></script>
	<script src="${contextRoot}/js/home.js"></script>
	<script src="${contextRoot}/js/vue.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/vue-router/3.5.2/vue-router.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.js"></script>
</body>
</html>