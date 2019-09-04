<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");
	String code = request.getParameter("code");
	
	String url = "jdbc:mysql://localhost:3306/class";
	String user = "root";
	String pwd = "dh!34679";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url, user, pwd);
	
	String sql = "select timecolumn from class where code = ?";
	
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, code);
	ResultSet rs = ps.executeQuery();
%>
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

   <section id = "searching1">
   <form name="form1" id = "searching2" method="POST" action="Search.jsp">
      <H1>강의검색</H1>
         <select id="collegeType1" name="collegeType" onClick="javascript:collegeTypeEvent(this)">
            <option  value="선택하세요"selected>선택하세요.</option>
            <option  value="천안캠퍼스">천안캠퍼스</option>
            <option  value="신관캠퍼스">신관캠퍼스</option>
            <option  value="예산캠퍼스">예산캠퍼스</option>
         </select>
                            
         <select id="area3Combobox" name="area3Combobox" onClick="javascript:area3Event(this)">
            <option value=""><%= rs.getString(0) %></option>
         </select>
         
         <select id="area4Combobox" name="area4Combobox" onClick="javascript:area4Event(this)">
            <option value="">선택하세요.</option>
         </select>
                                        
         <input type="text" id="search" class="form-control" name="search" placeholder="강의명을 검색할 수 있습니다.">
         <input type = "submit" id ="sm1" name = "searchsm" value = "검색" >
         </form>
         </section>
         
         <section class = "tablebox">
            <table class = "tablebox1" style="text-align: center; border: 1px solid #dddddd;">
            <thead>
            <tr>
               <th colspan="8"><h4>검색 결과 (총 갯수: 0개)</h4></th>
            </tr>
            
            <tr>
               <th width = "50" style="text-align: center; background-color: #fafafa; color: #000000;"><h5>학년</h5></th>
               <th style="text-align: center; background-color: #fafafa; color: #000000;"><h5>강의</h5></th>
               <th style="text-align: center; background-color: #fafafa; color: #000000;"><h5>교수</h5></th>
               <th style="text-align: center; background-color: #fafafa; color: #000000;"><h5>학점</h5></th>
               <th style="text-align: center; background-color: #fafafa; color: #000000;"><h5>분반</h5></th>
               <th style="text-align: center; background-color: #fafafa; color: #000000;"><h5>강의 시간</h5></th>
               <th style="text-align: center; background-color: #fafafa; color: #000000;"><h5>신청자</h5></th>
            </tr>
            
            </thead>
            
            <tbody>
            </tbody>
            
            </table>
            </section>
            
         <footer id="foot">
               <p>개발자: 신진희 이충민 박상원</p>
           </footer>
</body>
</html>