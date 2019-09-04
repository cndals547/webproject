<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<meta name="viewport" content="width=device-width", initial-scale="1">
	<title>KNU_õ��ķ�۽� ���Ǽ�����û</title>
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
	<%
		} else{
	%>
	<header id="menusection">
		<center>
            <nav id="menubar">
                <ul id="menulist">
                    <li><a href="Main.jsp" class="menu_link">HOME</a></li>
                    <li><a href="timesetting.jsp" class="menu_link">�ð�ǥ ��û</a></li>
                    <li><a href="time.jsp" class="menu_link">�� �ð�ǥ</a></li>
                    <li><a href="bbs.jsp" class="menu_link">������ ��</a></li>
                    <li><a href="logoutAction.jsp" class="menu_link">�α׾ƿ�</a></li>
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
                <h2>��������</h2>
            <nav id="notice_image">
                <ul>
                <li><img src="image/notice.png"></li>
                <li><img src="image/notice.png"></li>
                </ul>
            </nav>
            <nav id="notice_text">
                    <p>�����α׷��� ������ǥ</p>
                    <p>2017�� 12�� 21��</p>
                    
                    <p>������ : ���&���&����</p>
                    <p>2017�� 12��  20��</p>
                </nav>
                </section>
                <section id="go_time">
                <h3>ȸ������ �� �����Ӱ� �ð�ǥ�� �ۼ��غ�����</h3><br>
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
                <p>���� �̿����� ����� : <%= rowcount %>��</p><br>
              <hr>
                <img src="image/time.png"><h2><a href="time.jsp" class="a_link">�ð�ǥ ����</a></h2>
                </section>
            </section>
            <section id="video">
                <nav id="section">
                    <iframe width="640" height="360" src="https://www.youtube.com/embed/E6gzDZkB9v8" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                    <h1>KNU_SUGANG</h1>
                    <p>���ִ��б� õ��ķ�۽� ��ǻ�� ���а� ���Ǽ�����û ����Ʈ �Դϴ�.</p><br>
                </nav>
                </section>
                <section id="photo">
                    <ul>
                    <li><nav id="cheon">
                       <img src="image/cheonan.png">
                       <h1>õ��ķ�۽�</h1> 
                       <p>õ��ķ�۽� ǳ���Դϴ�.</p>
                    </li>
                    </nav>
                   <li><nav id="kong">
                        <img src="image/kongju.jpg">
                        <h1>����ķ�۽�</h1>
                        <p>����ķ�۽� ǳ���Դϴ�.</p>
                    </li>
                    </nav>
                    <li><nav id="yea">
                        <img src="image/yeasan.jpg">
                        <h1>����ķ�۽�</h1>
                        <p>����ķ�۽� ǳ���Դϴ�.</p>
                    </li>
                    </nav>
                </ul>
                </section>
            </section>
        <footer id="foot">
            <p>������: ������ ����� �ڻ��</p>
        </footer>
</body>
</html>