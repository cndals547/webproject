<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<meta name="viewport" content="width=device-width", initial-scale="1">
	<title>KNU_천안캠퍼스 모의수강신청</title>
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>
	<%
		if(userID == null){
	%>
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
	<%
		} else{
	%>
	<header id="menusection">
		<center>
            <nav id="menubar">
                <ul id="menulist">
                    <li><a href="Main.jsp" class="menu_link">HOME</a></li>
                    <li><a href="timesetting.jsp" class="menu_link">시간표 신청</a></li>
                    <li><a href="time.jsp" class="menu_link">내 시간표</a></li>
                    <li><a href="bbs.jsp" class="menu_link">소통의 방</a></li>
                    <li><a href="logoutAction.jsp" class="menu_link">로그아웃</a></li>
                </ul>
            </nav>
        </center>
        <nav id="main_img">
            <img src="image/logo.png">
            <img src="image/logo_text.png">
        </nav>
        </header>
	<%
		}
	%>
       <section id="main_content">
        <section id="content">
                <section id="notice">
                <h2>공지사항</h2>
            <nav id="notice_image">
                <ul>
                <li><img src="image/notice.png"></li>
                <li><img src="image/notice.png"></li>
                </ul>
            </nav>
            <nav id="notice_text">
                    <p>웹프로그래밍 최종발표</p>
                    <p>2017년 12월 21일</p>
                    
                    <p>만든이 : 충민&상원&진희</p>
                    <p>2017년 12월  20일</p>
                </nav>
                </section>
                <section id="go_time">
                <h3>회원가입 후 자유롭게 시간표를 작성해보세요</h3><br>
                <%
					String url = "jdbc:mysql://localhost:3306/final";
					String user = "root";
					String pwd = "dh!34679";
					Class.forName("com.mysql.jdbc.Driver");
					Connection connection = DriverManager.getConnection(url, user, pwd);
				    Statement stmt = connection.createStatement();
				    ResultSet resultSet = stmt.executeQuery("SELECT COUNT(*) FROM user");
				    resultSet.next();
				    int rowcount = resultSet.getInt(1);
				%>
                <p>현재 이용중인 사용자 : <%= rowcount %>명</p><br>
              <hr>
                <img src="image/time.png"><h2><a href="time.jsp" class="a_link">시간표 관리</a></h2>
                </section>
            </section>
            <section id="video">
                <nav id="section">
                    <iframe width="640" height="360" src="https://www.youtube.com/embed/E6gzDZkB9v8" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                    <h1>KNU_SUGANG</h1>
                    <p>공주대학교 천안캠퍼스 컴퓨터 공학과 모의수강신청 사이트 입니다.</p><br>
                </nav>
                </section>
                <section id="photo">
                    <ul>
                    <li><nav id="cheon">
                       <img src="image/cheonan.png">
                       <h1>천안캠퍼스</h1> 
                       <p>천안캠퍼스 풍경입니다.</p>
                    </li>
                    </nav>
                   <li><nav id="kong">
                        <img src="image/kongju.jpg">
                        <h1>공주캠퍼스</h1>
                        <p>공주캠퍼스 풍경입니다.</p>
                    </li>
                    </nav>
                    <li><nav id="yea">
                        <img src="image/yeasan.jpg">
                        <h1>예산캠퍼스</h1>
                        <p>예산캠퍼스 풍경입니다.</p>
                    </li>
                    </nav>
                </ul>
                </section>
            </section>
        <footer id="foot">
            <p>개발자: 신진희 이충민 박상원</p>
        </footer>
</body>
</html>