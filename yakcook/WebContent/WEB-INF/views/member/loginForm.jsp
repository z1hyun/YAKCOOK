<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #div-main{
        width: 50vw;
        height: 50vh;
        margin: auto;
        background-color: cadetblue;
        text-align: center;
    }
</style>
</head>
<body>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resouce/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resouce/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resouce/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resouce/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resouce/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resouce/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resouce/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resouce/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resouce/CSS/util.css">
	<link rel="stylesheet" type="text/css" href="resouce/CSS/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form action="login" method = "post" class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-32">
						Account Login
					</span>

					<span class="txt1 p-b-11">
						Userid
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "UserId is required">
						<input class="input100" type="text" name="id" >
						<span class="focus-input100"></span>
					</div>
					
					<span class="txt1 p-b-11">
						Password
					</span>
					<div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
						<span class="btn-show-pass">
							<i class="fa fa-eye"></i>
						</span>
						<input class="input100" type="password" name="pwd" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m w-full p-b-48">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
							<a href="findId" class="txt3">
								Forgot Id /
							</a>
							<a href="findPwd" class="txt3">
								Forgot Password 
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<input type ="submit"  value="Login">
					</div>
					<a href="join" class="txt3">
						Join
					</a>
				</form>
			</div>
		</div>
	</div>
	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="resouce/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resouce/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resouce/vendor/bootstrap/js/popper.js"></script>
	<script src="resouce/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resouce/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resouce/vendor/daterangepicker/moment.min.js"></script>
	<script src="resouce/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resouce/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="resouce/JS/main.js"></script>
</body>
</html>
