<%@ page language="java" contentType="text/html; charset= utf-8"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= utf-8">
   <link rel="stylesheet" href="css/main.css">
   <link rel="stylesheet" href="css/join.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/time.css">
<title>KNU_õ��ķ�۽� ���Ǽ�����û</title>
</head>
<body>
<script>

function test(){

   var table1 = document.getElementById("table1");
   table1.rows[7].cells[1].innerHTML = "�����α׷���";
   table1.rows[8].cells[1].innerHTML = "�����α׷���";
   table1.rows[6].cells[4].innerHTML = "�����α׷���";
   table1.rows[5].cells[5].innerHTML = "�����α׷���";
}
</script>
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

<table id="table1" border = "1px" bordercolor = "gray" cellspacing="0" cellpadding="10" align = "center">

   <tr id = "timetable1">

      <td width="150"><span style = "color: white">�ð�</span></td>
   
      <td width="150"><span style = "color: white">��</span></td>
      
      <td width="150"><span style = "color: white">ȭ</span></td>
   
      <td width="150"><span style = "color: white">��</span></td>
      
      <td width="150"><span style = "color: white">��</span></td>
   
      <td width="150"><span style = "color: white">��</span></td>

   </tr>

   <tr id = "timetable2">
       <th height="50">1 </th>

        <th height="50"> </th>
      
        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>
       </tr>
       
    <tr id = "timetable3">
       <th height="50">2 </th>

        <th height="50"> </th>
      
        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>
       </tr>
       
       <tr id = "timetable4">
       <th height="50">3 </th>

        <th height="50"> </th>
      
        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>
       </tr>
       
       <tr id = "timetable5">
       <th height="50">4 </th>

        <th height="50"> </th>
      
        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>
       </tr>
       
       <tr id = "timetable6">
       <th height="50">5 </th>

        <th height="50"> </th>
      
        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>
       </tr>
       
       <tr id = "timetable7">
       <th height="50">6 </th>

        <th height="50"> </th>
      
        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>
       </tr>
       
       <tr id = "timetable8">
       <th height="50">7 </th>

        <th height="50"> </th>
      
        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>
       </tr>
       
       <tr id = "timetable9">
       <th height="50">8 </th>

        <th height="50"> </th>
      
        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>
       </tr>
       
       <tr id = "timetable10">
       <th height="50">9 </th>

        <th height="50"> </th>
      
        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>

        <th height="50"> </th>
       </tr>
</table>

<input type="button" id = "bt1" value="�ҷ�����" onClick="test();"/>

</body>

</html>