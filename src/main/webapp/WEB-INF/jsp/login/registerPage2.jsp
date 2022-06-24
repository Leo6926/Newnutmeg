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
<title>這裡是註冊頁面-2</title>
</head>
<body>
	<h1>這裡是註冊頁面-2</h1>
	
<div class="row justify-content-center">

	<div class="col-8 container">
		<img class="rounded mx-auto d-block" src="${contextRoot }/images/registerImg.png">	
	</div>

	<div class="w-100 mb-10">
		<br>
		<br>
	</div>
	
	<div class="col-4 card">
		<form action="membersRegister2" method="post">

			<div>Account Number</div>
			<div class="form-floating">
				<input type="text" class="form-control" name="account" id="account" placeholder="account123">
				<label for="account">請輸入帳號</label>
				<div class="form-text">*必填 &nbsp&nbsp 帳號長度至少6位</div>
			</div>
			<div id="accountError" style="display:none; color: red;">帳號格式錯誤</div>

			<br>

			<div>Password</div>
			<div class="form-floating">
				<input type="password" class="form-control" name="password" id="password" placeholder="PassWord123">
				<label for="password">請輸入密碼</label>
				<div class="form-text">*必填 &nbsp&nbsp 密碼長度至少8位(須包含至少一個大寫字母、小寫字母、數字)</div>
			</div>
			<div id="passwordError" style="display:none; color: red;">密碼格式錯誤</div>

			<br>

			<div>Confirm Password</div>
			<div class="form-floating">
				<input type="password" class="form-control" name="confirmPwd" id="confirmPwd" placeholder="PassWord123">
				<label for="confirmPwd">請再次輸入密碼</label>
				<div class="form-text">*必填</div>
			</div>
			<div id="confirmPwdError" style="display:none; color: red;">密碼不一致，請重新輸入</div>

			<br>

			<button id="register2" disabled="true">下一步</button>
		</form>
	</div>
</div>		

<!-- ------------------------------------------------------------------------------------------------------------------------------------------------ -->
	<script>
		$(function(){
			
			let pattern =  /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[^]{8,16}$/;
			let account = $("#account").val();
			let password = $("#password").val();
			let confirmPwd = $("#confirmPwd").val();

			let accountOK = false;
			let passwordOK = false;
			let confirmPwdOK = false;

			$("#account").bind("input propertychange", function(){
				accountIsOk();
				nextTip2();
			});


			$("#password").bind("input propertychange", function(){
				pwdIsOk();
				pwdIsSame();
				nextTip2();
			});

			$("#confirmPwd").bind("input propertychange", function(){
				pwdIsSame();
				nextTip2();
			});

			function accountIsOk(){
				account = $("#account").val();
				if(account.length >= 6 ){
					$("#accountError").hide();
					accountOK = true;
				}else{
					$("#accountError").show();
					accountOK = false;
				}
			}
			
			function pwdIsOk(){
				password = $("#password").val();
				if(pattern.test(password)){
					$("#passwordError").hide();
					passwordOK = true;
				}else{
					$("#passwordError").show();
					passwordOK = false;
				}
			}

			function pwdIsSame(){
				password = $("#password").val();
				confirmPwd = $("#confirmPwd").val();

				if(password == confirmPwd){
					$("#confirmPwdError").hide();
					confirmPwdOK = true;
				}else{
					$("#confirmPwdError").show();
					confirmPwdOK = false;
				}
			}

			function nextTip2(){
				if(accountOK && passwordOK && confirmPwdOK){
					$("#register2").prop("disabled",false);
				}else{
					$("#register2").prop("disabled",true);
				}
			}




		});
	</script>




    
</body>
</html>

