<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*" errorPage=""%>
<%
	DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
	
	DocumentBuilder db = dbf.newDocumentBuilder();
	
	Document doc = db.parse("C:/Users/chungmin/Desktop/final.xml");
	
	NodeList code = doc.getElementsByTagName("code");
	NodeList class_num = doc.getElementsByTagName("class_num");
	NodeList class_name = doc.getElementsByTagName("class_name");
	NodeList campus = doc.getElementsByTagName("campus");
	NodeList division = doc.getElementsByTagName("division");
	NodeList grade = doc.getElementsByTagName("grade");
	NodeList day = doc.getElementsByTagName("day");
	NodeList credit = doc.getElementsByTagName("credit");
	NodeList limit = doc.getElementsByTagName("limit");
	NodeList major = doc.getElementsByTagName("major");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
   <link rel="stylesheet" href="css/main.css">
   <link rel="stylesheet" href="css/join.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/time.css">
    <link rel="stylesheet" href="css/timesetting.css">
   <title>KNU_õ��ķ�۽� ���Ǽ�����û</title>

<script type="text/javascript">
         function setSelectedValue(selectObj, valueToSet) {
             for (var i = 0; i < selectObj.options.length; i++) {
                 if (selectObj.options[i].value == valueToSet) {
                     selectObj.options[i].selected = true;
                     return;
                 }
             }
         }
         function collegeTypeEvent(collegeType) {
            var selected = collegeType.options[collegeType.selectedIndex].text;
            if(selected == "õ��ķ�۽�") {
               document.getElementById("area3Combobox").innerHTML = "<option value=''>�����ϼ���.</option><option value='����'>����</option><option value='����'>����</option>";
               
         }
            
            else if(selected == "�Ű�ķ�۽�") {
               document.getElementById("area3Combobox").innerHTML = "<option value=''>�����ϼ���.</option><option value='����'>����</option><option value='����'>����</option>";
               
            }
            
               
            else if(selected == "����ķ�۽�") {
               document.getElementById("area3Combobox").innerHTML = "<option value=''>�����ϼ���.</option><option value='����'>����</option><option value='����'>����</option>";
            }
         }
               function area3Event(area3) {
                  var selected1 = document.form1.collegeType.options[document.form1.collegeType.selectedIndex].text;
                  var selected = area3.options[area3.selectedIndex].text;
                  if(selected1 == "õ��ķ�۽�" && selected == "����") {
                     document.getElementById('area4Combobox').disabled = 0;
                     document.getElementById("area4Combobox").innerHTML = "<option value='��ü'>��ü</option>"
                        + "<option value='�Ǽ�ȯ����к�'>�Ǽ�ȯ����к�</option>"
                        + "<option value='�Ǽ�ȯ����к� ���á������������'>�Ǽ�ȯ����к� ���á������������</option>"
                        + "<option value='�Ǽ�ȯ����к� ���ȯ���������'>�Ǽ�ȯ����к� ���ȯ���������</option>"
                        + "<option value='�����к� �����������'>�����к� �����������</option>"
                        + "<option value='�����к� ����������'>�����к� ����������</option>"
                        + "<option value='���б���'>���б���</option>"
                        + "<option value='�����а�'>�����а�</option>"
                        + "<option value='������'>������</option>"
                        + "<option value='�������а�'>�������а�</option>"
                        + "<option value='����������а�(��)'>����������а�(��)</option>"
                        + "<option value='����ڵ������к�'>����ڵ������к�</option>"
                        + "<option value='����ڵ������к� ����������'>����ڵ������к� ����������</option>"
                        + "<option value='����ڵ������к� ��輳���������'>����ڵ������к� ��輳���������</option>"
                        + "<option value='����ڵ������к� ���ý��۰�������'>����ڵ������к� ���ý��۰�������</option>"
                        + "<option value='����ڵ������к� �ڵ�����������'>����ڵ������к� �ڵ�����������</option>"
                        + "<option value='����ڵ������к�(��)'>����ڵ������к�(��)</option>"
                        + "<option value='��īƮ�δн����а�'>��īƮ�δн����а�</option>"
                        + "<option value='���̿�������а�'>���̿�������а�</option>"
                        + "<option value='�ݵ�ü�����а�'>�ݵ�ü�����а�</option>"
                        + "<option value='����濵���а�'>����濵���а�</option>"
                        + "<option value='��������ΰ��к� �ð�����������Ʈ��'>��������ΰ��к� �ð�����������Ʈ��</option>"
                        + "<option value='��������ΰ��к� ��ǰ������Ʈ��'>��������ΰ��к� ��ǰ������Ʈ��</option>"
                        + "<option value='����ý��۰��а�(��)'>����ý��۰��а�(��)</option>"
                        + "<option value='��������а�'>��������а�</option>"
                        + "<option value='���������а�'>���������а�</option>"
                        + "<option value='����Ʈ����������а�'>����Ʈ����������а�</option>"
                        + "<option value='�ż�����к� ����ڰ�������'>�ż�����к� ����ڰ�������</option>"
                        + "<option value='�ż�����к� ��������������'>�ż�����к� ��������������</option>"
                        + "<option value='�ż�����к� �ż���ý��۰�������'>�ż�����к� �ż���ý��۰�������</option>"
                        + "<option value='���հ濵�а�'>���հ濵�а�</option>"
                        + "<option value='�������ڰ��а�'>�������ڰ��а�</option>"
                        + "<option value='��������������а�'>��������������а�</option>"
                        + "<option value='��������������к�'>��������������к�</option>"
                        + "<option value='��������������к� �����������'>��������������к� �����������</option>"
                        + "<option value='��������������к� ���ڰ��С����������������� ������������Ʈ��'>��������������к� ���ڰ��С����������������� ������������Ʈ��</option>"
                        + "<option value='��������������к� ���ڰ��С����������������� ���ڰ���Ʈ��'>��������������к� ���ڰ��С����������������� ���ڰ���Ʈ��</option>"
                        + "<option value='��������������к� ���������������'>��������������к� ���������������</option>"
                        + "<option value='��������������к�(��)'>��������������к�(��)</option>"
                        + "<option value='������Ű��к�'>������Ű��к�</option>"
                        + "<option value='������Ű��к� ���İ�������'>������Ű��к� ���İ�������</option>"
                        + "<option value='������Ű��к� ������Ű�������'>������Ű��к� ������Ű�������</option>"
                        + "<option value='��ǻ�Ͱ��к� ��ǻ�Ͱ�������'>��ǻ�Ͱ��к� ��ǻ�Ͱ�������</option>"
                        + "<option value='��ǻ�Ͱ��к� ��ǻ�ͼ���Ʈ�����������'>��ǻ�Ͱ��к� ��ǻ�ͼ���Ʈ�����������</option>"
                        + "<option value='ȭ�а��к�'>ȭ�а��к�</option>"
                        + "<option value='ȭ�а��к� ����ȭ������'>ȭ�а��к� ����ȭ������</option>"
                        + "<option value='ȭ�а��к� ȭ�а�������'>ȭ�а��к� ȭ�а�������</option>"
                        + "<option value='ȯ����а�'>ȯ����а�</option>"
                  }
                  
                  if(selected1 == "�Ű�ķ�۽�" && selected == "����") {
                     document.getElementById('area4Combobox').disabled = 0;
                     document.getElementById("area4Combobox").innerHTML = "<option value='��ü'>��ü</option>"

                        + "<option value='��ȣ�а�'>��ȣ�а�</option>"
                        + "<option value='��ȣ�а�(��)'>��ȣ�а�(��)</option>"
                        + "<option value='���ӵ������а�'>���ӵ������а�</option>"
                        + "<option value='�濵�а�(��)'>�濵�а�(��)</option>"
                        + "<option value='��������к�'>��������к�</option>"
                        + "<option value='��������к� ����������'>��������к� ����������</option>"
                        + "<option value='��������к� �������������'>��������к� �������������</option>"
                        + "<option value='�����������'>�����������</option>"
                        + "<option value='�����к�'>�����к�</option>"
                        + "<option value='�����к� �����濵������'>�����к� �����濵������</option>"
                        + "<option value='�����к� ���������뿪������'>�����к� ���������뿪������</option>"
                        + "<option value='�����а�'>�����а�</option>"
                        + "<option value='�������'>�������</option>"
                        + "<option value='�����к�'>�����к�</option>"
                        + "<option value='�����к� ����������������'>�����к� ����������������</option>"
                        + "<option value='������'>������</option>"
                        + "<option value='����������'>����������</option>"
                        + "<option value='���������������'>���������������</option>"
                        + "<option value='�����а�'>�����а�</option>"
                        + "<option value='������а�'>������а�</option>"
                        + "<option value='��ȭ�ִϸ��̼��к�'>��ȭ�ִϸ��̼��к�</option>"
                        + "<option value='��ȭ�ִϸ��̼��к� �ִϸ��̼�����'>��ȭ�ִϸ��̼��к� �ִϸ��̼�����</option>"
                        + "<option value='��ȭ�ִϸ��̼��к� ī���ڹͽ�����'>��ȭ�ִϸ��̼��к� ī���ڹͽ�����</option>"
                        + "<option value='�����а�'>�����а�</option>"
                        + "<option value='��������������'>��������������</option>"
                        + "<option value='��ȭ�纸�����а�'>��ȭ�纸�����а�</option>"
                        + "<option value='����������'>����������</option>"
                        + "<option value='�����а�'>�����а�</option>"
                        + "<option value='�̼�������'>�̼�������</option>"
                        + "<option value='���а�'>���а�</option>"
                        + "<option value='���������а�'>���������а�</option>"
                        + "<option value='�Ҿ�ҹ��а�'>�Ҿ�ҹ��а�</option>"
                        + "<option value='���а�'>���а�</option>"
                        + "<option value='��ȸ�����а�'>��ȸ�����а�</option>"
                        + "<option value='�������������'>�������������</option>"
                        + "<option value='������а�'>������а�</option>"
                        + "<option value='����������'>����������</option>"
                        + "<option value='��Ȱü�������а�'>��Ȱü�������а�</option>"
                        + "<option value='���б�����'>���б�����</option>"
                        + "<option value='���米����'>���米����</option>"
                        + "<option value='�����а�'>�����а�</option>"
                        + "<option value='�������'>�������</option>"
                        + "<option value='������а�'>������а�</option>"
                        + "<option value='���Ʊ�����'>���Ʊ�����</option>"
                        + "<option value='����������'>����������</option>"
                        + "<option value='���Ǳ�����'>���Ǳ�����</option>"
                        + "<option value='���ޱ����а�'>���ޱ����а�</option>"
                        + "<option value='������а�'>������а�</option>"
                        + "<option value='�Ƿ������а�'>�Ƿ������а�</option>"
                        + "<option value='�Ƿ���ǰ�а�'>�Ƿ���ǰ�а�</option>"
                        + "<option value='�Ϲݻ�ȸ������'>�Ϲݻ�ȸ������</option>"
                        + "<option value='�����������к�'>�����������к�</option>"
                        + "<option value='�����������к� ����͵���������'>�����������к� ����͵���������</option>"
                        + "<option value='�����������к� �־󸮵���������'>�����������к� �־󸮵���������</option>"
                        + "<option value='�����������к� �۴�ó����������'>�����������к� �۴�ó����������</option>"
                        + "<option value='�߾��߹��а�'>�߾��߹��а�</option>"
                        + "<option value='�������б�����'>�������б�����</option>"
                        + "<option value='����������'>����������</option>"
                        + "<option value='�����а�'>�����а�</option>"
                        + "<option value='����ȯ����а�'>����ȯ����а�</option>"
                        + "<option value='â������ǽ���������'>â������ǽ���������</option>"
                        + "<option value='ü��������'>ü��������</option>"
                        + "<option value='���������'>���������</option>"
                        + "<option value='��ǻ�ͱ�����'>��ǻ�ͱ�����</option>"
                        + "<option value='Ÿ�����а�'>Ÿ�����а�</option>"
                        + "<option value='Ư��������'>Ư��������</option>"
                        + "<option value='�ѹ�������'>�ѹ�������</option>"
                        + "<option value='�����а�'>�����а�</option>"
                        + "<option value='ȭ�а�'>ȭ�а�</option>"
                        + "<option value='ȭ�б�����'>ȭ�б�����</option>"
                        + "<option value='ȯ�汳����'>ȯ�汳����</option>"

                  }
                  
                  if(selected1 == "����ķ�۽�" && selected == "����") {
                     document.getElementById('area4Combobox').disabled = 0;
                     document.getElementById("area4Combobox").innerHTML = "<option value='��ü'>��ü</option>"
                        + "<option value='����â������'>����â������</option>"
                        + "<option value='�����ڿ��а�'>�����ڿ��а�</option>"
                        + "<option value='�긲�ڿ��а�'>�긲�ڿ��а�</option>"
                        + "<option value='��������а�'>��������а�</option>"
                        + "<option value='����������к�'>����������к�</option>"
                        + "<option value='����������к� �����������������'>����������к� �����������������</option>"
                        + "<option value='����������к� �����Ǽ���������'>����������к� �����Ǽ���������</option>"
                        + "<option value='�Ĺ��ڿ��а�'>�Ĺ��ڿ��а�</option>"
                        + "<option value='�Ĺ��ڿ��а�(��)'>�Ĺ��ڿ��а�(��)</option>"
                        + "<option value='��ǰ���а�'>��ǰ���а�</option>"
                        + "<option value='��ǰ���к�'>��ǰ���к�</option>"
                        + "<option value='��ǰ���к� ��ǰ����������'>��ǰ���к� ��ǰ����������</option>"
                        + "<option value='��ǰ���к� �ܽĻ�ǰ������'>��ǰ���к� �ܽĻ�ǰ������</option>"
                        + "<option value='�����а�'>�����а�</option>"
                        + "<option value='�����а�'>�����а�</option>"
                        + "<option value='���������к�'>���������к�</option>"
                        + "<option value='���������к� �ε���������'>���������к� �ε���������</option>"
                        + "<option value='���������к� ������ȸ����������'>���������к� ������ȸ����������</option>"
                        + "<option value='Ư�������а�'>Ư�������а�</option>"
                        
                  }
                  
                  if(selected == "����") {
                     document.getElementById('area4Combobox').disabled = 1;
                     document.getElementById("area4Combobox").innerHTML = "<option value='���þȵ�'>----------------------------------------------------��������� �˻� �� �ֽñ� �ٶ��ϴ�.-------------------------------------------------------------</option>"
                  }
               }
            
         function searchSetting(search) {
            document.getElementById("search").value = search;
         }
      </script>
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
            <option value="">�����ϼ���.</option>
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
</body>
</html>