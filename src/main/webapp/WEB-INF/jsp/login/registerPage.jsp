<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>這裡是註冊頁面</title>
</head>
<body>
	<h1>這裡是註冊頁面</h1>
	
<!--bootstrap5 浮動要加 placeholder -->

<div class="row justify-content-center">

		<div class="col-8 container">
			<img class="rounded mx-auto d-block" src="${contextRoot }/images/registerImg.png">	
		</div>

		<div class="w-100 mb-10">
			<br>
			<br>
		</div>

		<div class="col-4 mb-5 card">
			
			<form action="membersRegister" method="post">

				<div>Email Address</div>
				<div class="form-floating">
					<input type="email" class="form-control" name="email" id="email" placeholder="aaa@gmail.com">
					<label for="email">請輸入email</label>
					<div class="form-text">*必填</div>
				</div>
				<div id="emailError" style="display:none; color: red;">Email 格式錯誤</div>

				<br>

				<div>Cellphone Number</div>
				<div class="form-floating">
					<input type="text" class="form-control" name="phone" id="phone" placeholder="0900000000">
					<label for="phone">請輸入手機號碼</label>
					<div class="form-text">*必填 &nbsp&nbsp 請輸入09XXXXXXXX</div>
				</div>
				<div id="phoneError" style="display:none; color: red;">手機格式錯誤</div>

				<br>

				<button id="register1" disabled="true">下一步</button>
			</form>
		</div>	

</div>
<!-- ----------------------------------------------------------------------------------------------------------------------------- -->

	<script>
		$(function(){
			
			let pattern = /^([A-Za-z0-9_\-\.\u4e00-\u9fa5])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,8})$/;
			let patternNumber = /^09\d{8}$/;
			let emailFormat = $("#email").val();
			let phone = $("#phone").val();
			let emailOk = false;
			let phoneOk = false;

			$("#email").bind("input propertychange", function(){
				emailIsOk();
				nextTip();
			});

			$("#phone").bind("input propertychange", function(){
				phoneIsOk();
				nextTip();
			});


			function emailIsOk(){
				emailFormat = $("#email").val();
				if(pattern.test(emailFormat)){
					$("#emailError").hide();
					emailOk = true;
				}else{
					$("#emailError").show();
					emailOk = false;
				}
			}

			function phoneIsOk(){
				phone = $("#phone").val();
				if(patternNumber.test(phone)){
					$("#phoneError").hide();
					phoneOk = true;
				}else{
					$("#phoneError").show();
					phoneOk = false;
				}
			}

			function nextTip(){
				if(emailOk && phoneOk){
					$("#register1").prop("disabled",false);
				}else{
					$("#register1").prop("disabled",true);
				}
			}

		});
	</script>




    
</body>
</html>

