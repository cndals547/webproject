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

   <section id = "searching1">
   <form name="form1" id = "searching2" method="POST" action="Search.jsp">
      <H1>���ǰ˻�</H1>
         <select id="collegeType1" name="collegeType" onClick="javascript:collegeTypeEvent(this)">
            <option  value="�����ϼ���"selected>�����ϼ���.</option>
            <option  value="õ��ķ�۽�">õ��ķ�۽�</option>
            <option  value="�Ű�ķ�۽�">�Ű�ķ�۽�</option>
            <option  value="����ķ�۽�">����ķ�۽�</option>
         </select>
                            
         <select id="area3Combobox" name="area3Combobox" onClick="javascript:area3Event(this)">
            <option value=""><%= rs.getString(0) %></option>
         </select>
         
         <select id="area4Combobox" name="area4Combobox" onClick="javascript:area4Event(this)">
            <option value="">�����ϼ���.</option>
         </select>
                                        
         <input type="text" id="search" class="form-control" name="search" placeholder="���Ǹ��� �˻��� �� �ֽ��ϴ�.">
         <input type = "submit" id ="sm1" name = "searchsm" value = "�˻�" >
         </form>
         </section>
         
         <section class = "tablebox">
            <table class = "tablebox1" style="text-align: center; border: 1px solid #dddddd;">
            <thead>
            <tr>
               <th colspan="8"><h4>�˻� ��� (�� ����: 0��)</h4></th>
            </tr>
            
            <tr>
               <th width = "50" style="text-align: center; background-color: #fafafa; color: #000000;"><h5>�г�</h5></th>
               <th style="text-align: center; background-color: #fafafa; color: #000000;"><h5>����</h5></th>
               <th style="text-align: center; background-color: #fafafa; color: #000000;"><h5>����</h5></th>
               <th style="text-align: center; background-color: #fafafa; color: #000000;"><h5>����</h5></th>
               <th style="text-align: center; background-color: #fafafa; color: #000000;"><h5>�й�</h5></th>
               <th style="text-align: center; background-color: #fafafa; color: #000000;"><h5>���� �ð�</h5></th>
               <th style="text-align: center; background-color: #fafafa; color: #000000;"><h5>��û��</h5></th>
            </tr>
            
            </thead>
            
            <tbody>
            </tbody>
            
            </table>
            </section>
            
         <footer id="foot">
               <p>������: ������ ����� �ڻ��</p>
           </footer>
</body>
</html>