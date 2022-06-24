<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者登入頁面</title>
<style>
* {
	margin: 0;
	padding: 0;
	list-style: none;
	text-decoration: none;
	box-sizing: border-box;
	/*outline: 1px solid slategrey;*/
}

body {
	width: 100%;
	height: 100vh;
	background-color: white;
	color: #555;
	font-size: 10px;
}

form.login {
	width: 100%;
	height: 100vh;
	border: 5px solid #666666;
	padding: 5vh 5vh;
	background-color: rgba(255, 255, 255, .8);
	display: flex;
	justify-content: center;
	align-item: center;
}

fieldset {
	max-width: 400px;
	margin: auto; /*center*/
	font-size: 20px;
	border: 1px solid #fff;
}

.lgd {
	font-size: 40px;
}

legend, input {
	padding: 5px;
	border: 1px solid #D2D2D2;
}

input[type="account"] {
	width: 100%;
	height: 38px;
	margin: 10px 0 5px 0;
	padding: 10px;
}

input[type="password"] {
	width: 100%;
	height: 38px;
	margin: 5px 0 5px 0;
	padding: 10px;
}

button[type="submit"] {
	width: 100%;
	margin: 10px 0 0 0;
	background: #00A8FF;
	color: #fff;
	padding: 10px;
}

.btn {
	margin: 0 0 10px 0;
}

.btn:hover {
	opacity: 0.8;
}

#sign a {
	color: #00A8FF;
}

#rmbr {
	padding: 3px 10px 5px 0;
	margin: 0;
}

.member_btn {
	border-top: 1px solid #D2D2D2;
	margin: 10px 0 10px 0;
	padding-top: 10px;
}

.img_btn {
	width: 100%;
	display: inline-flex; /*合併在一起*/
	flex-wrap: wrap; /*合併在一起*/
}

.go {
	margin: 0.001vh;
}
</style>
</head>
<body>
	<!--login會員登入-->
	<div class="container">
	<form class="login" action="managerLogin" method="post">
		<!--one-thirds-->
			<fieldset>
				<!--<div class="fie">-->
				<h1 class="lgd">登入帳號</h1>
				<p>直接輸入您的肉豆公會員帳號密碼登入</p>
				<!--1-->
				<input type="account" id="account" class="account" name="account"
					placeholder="您的帳號" required="required">
				<!--2-->
				<input type="password" id="password" class="password"
					name="password" placeholder="您的密碼" required="required">
				<!--3-->
				<button type="submit" class="btn btn-pimary" id="submit">登入</button>

				<!--</div>-->
			</fieldset>
		<!--two-thirds-->
	</form>
	</div>
	<!-- <script>
		//會員登入------------------
		var attempt = 3; // 可變數來計算嘗試次數。
		function myFormCheck() {// 以下功能單擊登錄按鈕執行。
			var username = document.getElementById("account").value;
			var password = document.getElementById("password").value;
			if (username === "Formget" && password === "formget#123") {
				alert("Login successfully");
				window.location = "memberLogin"; // 重定向到其他頁面。
				return false;
			} else {
				attempt--;// 減少一個。
				alert("You have left " + attempt + " attempt;");
				// 3次嘗試後禁用字段。
				if (attempt === 0) {
					document.getElementById("account").disabled = true;
					document.getElementById("password").disabled = true;
					document.getElementById("submit").disabled = true;
					return false;
				}
			}
		}
		//第種寫法// 記住我 passport remember-me  (NodeJS Express Passport Remember me)
		// app.use( function (req, res, next) {
		//	     if ( req.method === 'POST' && req.url === '/login' ) {
		//	         if ( req.body.rememberme ) {
		//	             req.session.cookie.maxAge = 2592000000; // 30*24*60*60*1000 Rememeber 'me' for 30 days
		//	         } else {
		//	             req.session.cookie.expires = false;
		//	         }
		//	     }
		//	     next();
		// });
		//第二種寫法 // 記住我 passport remember-me:php
		if (JSON && JSON.stringify && JSON.parse)
			var Session = Session || (function() {

				// window object
				var win = window.top || window;

				// session store
				var store = (win.name ? JSON.parse(win.name) : {});

				// save store on page unload
				function Save() {
					win.name = JSON.stringify(store);
				}

				// page unload event
				if (window.addEventListener)
					window.addEventListener("unload", Save, false);
				else if (window.attachEvent)
					window.attachEvent("onunload", Save);
				else
					window.onunload = Save;

				// public methods
				return {

					// set a session variable
					set : function(name, value) {
						store[name] = value;
					},

					// get a session value
					get : function(name) {
						return (store[name] ? store[name] : undefined);
					},

					// clear session
					clear : function() {
						store = {};
					},

					// dump session data
					dump : function() {
						return JSON.stringify(store);
					}

				};

			})();

		// store a session value/object
		Session.set(name, object);

		// retreive a session value/object
		Session.get(name);

		// clear all session data
		Session.clear();

		// dump session data
		Session.dump();
	</script>  -->
</body>
</html>