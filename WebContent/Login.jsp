<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src=js.bootstrap.js></script>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<meta name="viewport" content="width=device-width", initial-scale="1">
	<title>KNU_ȸ������</title>
	
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
                    <li><a href="timesetting.jsp" class="menu_link">�ð�ǥ ��û</a></li>
                    <li><a href="time.jsp" class="menu_link">�� �ð�ǥ</a></li>
                    <li><a href="Login.jsp" class="menu_link">�α���</a></li>
                    <li><a href="Register.jsp" class="menu_link">ȸ������</a></li>
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
	            <h1>�α���</h1><br><hr>
	            <p>�й�</p><input type="text" placeholder="Student Number" id="stu_num" name="userID" height="20px" maxlength="20"><br>
	            <br><p>��й�ȣ</p><input type="password" placeholder="Password" id="pw" name="userPassword"><br>
	            <br><hr><br>
	            <input type="submit" value="�α���" id="login" class="btn btn-primary form-control"><br><br>
	        </form> 
	        </nav>
	    </center>
	 </section>
</body>
</html>