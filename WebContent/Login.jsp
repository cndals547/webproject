<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src=js.bootstrap.js></script>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<meta name="viewport" content="width=device-width", initial-scale="1">
	<title>KNU_회원가입</title>
	
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/join.css">
	<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<header id="menusection">
		<center>
	    	<nav id="menubar">
	        	<ul id="menulist">
	        		<li><a href="Main.jsp" class="menu_link">HOME</a></li>
                    <li><a href="timesetting.jsp" class="menu_link">시간표 신청</a></li>
                    <li><a href="time.jsp" class="menu_link">내 시간표</a></li>
                    <li><a href="Login.jsp" class="menu_link">로그인</a></li>
                    <li><a href="Register.jsp" class="menu_link">회원가입</a></li>
	            </ul>
	        </nav>
	    </center>
	    <nav id="main_img">
	    	<img src="image/logo.png">
	    	<img src="image/logo_text.png">
	    </nav>
	 </header>
	 <section id="joinus">
	 	<center>
	 		<img src="image/login_background.jpg" align="left">
	 		<nav id="join_text">
	 		<form method = "post" action="loginAction.jsp">
	            <h1>로그인</h1><br><hr>
	            <p>학번</p><input type="text" placeholder="Student Number" id="stu_num" name="userID" height="20px" maxlength="20"><br>
	            <br><p>비밀번호</p><input type="password" placeholder="Password" id="pw" name="userPassword"><br>
	            <br><hr><br>
	            <input type="submit" value="로그인" id="login" class="btn btn-primary form-control"><br><br>
	        </form> 
	        </nav>
	    </center>
	 </section>
</body>
</html>