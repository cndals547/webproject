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
   <title>KNU_천안캠퍼스 모의수강신청</title>

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
            if(selected == "천안캠퍼스") {
               document.getElementById("area3Combobox").innerHTML = "<option value=''>선택하세요.</option><option value='교양'>교양</option><option value='전공'>전공</option>";
               
         }
            
            else if(selected == "신관캠퍼스") {
               document.getElementById("area3Combobox").innerHTML = "<option value=''>선택하세요.</option><option value='교양'>교양</option><option value='전공'>전공</option>";
               
            }
            
               
            else if(selected == "예산캠퍼스") {
               document.getElementById("area3Combobox").innerHTML = "<option value=''>선택하세요.</option><option value='교양'>교양</option><option value='전공'>전공</option>";
            }
         }
               function area3Event(area3) {
                  var selected1 = document.form1.collegeType.options[document.form1.collegeType.selectedIndex].text;
                  var selected = area3.options[area3.selectedIndex].text;
                  if(selected1 == "천안캠퍼스" && selected == "전공") {
                     document.getElementById('area4Combobox').disabled = 0;
                     document.getElementById("area4Combobox").innerHTML = "<option value='전체'>전체</option>"
                        + "<option value='건설환경공학부'>건설환경공학부</option>"
                        + "<option value='건설환경공학부 도시·교통공학전공'>건설환경공학부 도시·교통공학전공</option>"
                        + "<option value='건설환경공학부 토목환경공학전공'>건설환경공학부 토목환경공학전공</option>"
                        + "<option value='건축학부 건축공학전공'>건축학부 건축공학전공</option>"
                        + "<option value='건축학부 건축학전공'>건축학부 건축학전공</option>"
                        + "<option value='공학기초'>공학기초</option>"
                        + "<option value='광공학과'>광공학과</option>"
                        + "<option value='군사학'>군사학</option>"
                        + "<option value='금형공학과'>금형공학과</option>"
                        + "<option value='금형설계공학과(주)'>금형설계공학과(주)</option>"
                        + "<option value='기계자동차공학부'>기계자동차공학부</option>"
                        + "<option value='기계자동차공학부 기계공학전공'>기계자동차공학부 기계공학전공</option>"
                        + "<option value='기계자동차공학부 기계설계공학전공'>기계자동차공학부 기계설계공학전공</option>"
                        + "<option value='기계자동차공학부 기계시스템공학전공'>기계자동차공학부 기계시스템공학전공</option>"
                        + "<option value='기계자동차공학부 자동차공학전공'>기계자동차공학부 자동차공학전공</option>"
                        + "<option value='기계자동차공학부(주)'>기계자동차공학부(주)</option>"
                        + "<option value='메카트로닉스공학과'>메카트로닉스공학과</option>"
                        + "<option value='바이오산업공학과'>바이오산업공학과</option>"
                        + "<option value='반도체기계공학과'>반도체기계공학과</option>"
                        + "<option value='산업경영공학과'>산업경영공학과</option>"
                        + "<option value='산업디자인공학부 시각정보디자인트랙'>산업디자인공학부 시각정보디자인트랙</option>"
                        + "<option value='산업디자인공학부 제품디자인트랙'>산업디자인공학부 제품디자인트랙</option>"
                        + "<option value='산업시스템공학과(주)'>산업시스템공학과(주)</option>"
                        + "<option value='생산기계공학과'>생산기계공학과</option>"
                        + "<option value='생산기술공학과'>생산기술공학과</option>"
                        + "<option value='소프트웨어응용공학과'>소프트웨어응용공학과</option>"
                        + "<option value='신소재공학부 고분자공학전공'>신소재공학부 고분자공학전공</option>"
                        + "<option value='신소재공학부 나노재료공학전공'>신소재공학부 나노재료공학전공</option>"
                        + "<option value='신소재공학부 신소재시스템공학전공'>신소재공학부 신소재시스템공학전공</option>"
                        + "<option value='융합경영학과'>융합경영학과</option>"
                        + "<option value='전기전자공학과'>전기전자공학과</option>"
                        + "<option value='전기전자응용공학과'>전기전자응용공학과</option>"
                        + "<option value='전기전자제어공학부'>전기전자제어공학부</option>"
                        + "<option value='전기전자제어공학부 전기공학전공'>전기전자제어공학부 전기공학전공</option>"
                        + "<option value='전기전자제어공학부 전자공학·나노정보공학전공 나노정보공학트랙'>전기전자제어공학부 전자공학·나노정보공학전공 나노정보공학트랙</option>"
                        + "<option value='전기전자제어공학부 전자공학·나노정보공학전공 전자공학트랙'>전기전자제어공학부 전자공학·나노정보공학전공 전자공학트랙</option>"
                        + "<option value='전기전자제어공학부 제어계측공학전공'>전기전자제어공학부 제어계측공학전공</option>"
                        + "<option value='전기전자제어공학부(주)'>전기전자제어공학부(주)</option>"
                        + "<option value='정보통신공학부'>정보통신공학부</option>"
                        + "<option value='정보통신공학부 전파공학전공'>정보통신공학부 전파공학전공</option>"
                        + "<option value='정보통신공학부 정보통신공학전공'>정보통신공학부 정보통신공학전공</option>"
                        + "<option value='컴퓨터공학부 컴퓨터공학전공'>컴퓨터공학부 컴퓨터공학전공</option>"
                        + "<option value='컴퓨터공학부 컴퓨터소프트웨어공학전공'>컴퓨터공학부 컴퓨터소프트웨어공학전공</option>"
                        + "<option value='화학공학부'>화학공학부</option>"
                        + "<option value='화학공학부 공업화학전공'>화학공학부 공업화학전공</option>"
                        + "<option value='화학공학부 화학공학전공'>화학공학부 화학공학전공</option>"
                        + "<option value='환경공학과'>환경공학과</option>"
                  }
                  
                  if(selected1 == "신관캠퍼스" && selected == "전공") {
                     document.getElementById('area4Combobox').disabled = 0;
                     document.getElementById("area4Combobox").innerHTML = "<option value='전체'>전체</option>"

                        + "<option value='간호학과'>간호학과</option>"
                        + "<option value='간호학과(주)'>간호학과(주)</option>"
                        + "<option value='게임디자인학과'>게임디자인학과</option>"
                        + "<option value='경영학과(주)'>경영학과(주)</option>"
                        + "<option value='경제통상학부'>경제통상학부</option>"
                        + "<option value='경제통상학부 경제학전공'>경제통상학부 경제학전공</option>"
                        + "<option value='경제통상학부 국제통상학전공'>경제통상학부 국제통상학전공</option>"
                        + "<option value='공통과학전공'>공통과학전공</option>"
                        + "<option value='관광학부'>관광학부</option>"
                        + "<option value='관광학부 관광경영학전공'>관광학부 관광경영학전공</option>"
                        + "<option value='관광학부 관광영어통역학전공'>관광학부 관광영어통역학전공</option>"
                        + "<option value='교육학과'>교육학과</option>"
                        + "<option value='국어교육과'>국어교육과</option>"
                        + "<option value='국제학부'>국제학부</option>"
                        + "<option value='국제학부 국제금융공학전공'>국제학부 국제금융공학전공</option>"
                        + "<option value='군사학'>군사학</option>"
                        + "<option value='금융학전공'>금융학전공</option>"
                        + "<option value='기술·가정교육과'>기술·가정교육과</option>"
                        + "<option value='대기과학과'>대기과학과</option>"
                        + "<option value='독어독문학과'>독어독문학과</option>"
                        + "<option value='만화애니메이션학부'>만화애니메이션학부</option>"
                        + "<option value='만화애니메이션학부 애니메이션전공'>만화애니메이션학부 애니메이션전공</option>"
                        + "<option value='만화애니메이션학부 카툰코믹스전공'>만화애니메이션학부 카툰코믹스전공</option>"
                        + "<option value='무용학과'>무용학과</option>"
                        + "<option value='문헌정보교육과'>문헌정보교육과</option>"
                        + "<option value='문화재보존과학과'>문화재보존과학과</option>"
                        + "<option value='물리교육과'>물리교육과</option>"
                        + "<option value='물리학과'>물리학과</option>"
                        + "<option value='미술교육과'>미술교육과</option>"
                        + "<option value='법학과'>법학과</option>"
                        + "<option value='보건행정학과'>보건행정학과</option>"
                        + "<option value='불어불문학과'>불어불문학과</option>"
                        + "<option value='사학과'>사학과</option>"
                        + "<option value='사회복지학과'>사회복지학과</option>"
                        + "<option value='상업정보교육과'>상업정보교육과</option>"
                        + "<option value='생명과학과'>생명과학과</option>"
                        + "<option value='생물교육과'>생물교육과</option>"
                        + "<option value='생활체육지도학과'>생활체육지도학과</option>"
                        + "<option value='수학교육과'>수학교육과</option>"
                        + "<option value='역사교육과'>역사교육과</option>"
                        + "<option value='영상학과'>영상학과</option>"
                        + "<option value='영어교육과'>영어교육과</option>"
                        + "<option value='영어영문학과'>영어영문학과</option>"
                        + "<option value='유아교육과'>유아교육과</option>"
                        + "<option value='윤리교육과'>윤리교육과</option>"
                        + "<option value='음악교육과'>음악교육과</option>"
                        + "<option value='응급구조학과'>응급구조학과</option>"
                        + "<option value='응용수학과'>응용수학과</option>"
                        + "<option value='의료정보학과'>의료정보학과</option>"
                        + "<option value='의류상품학과'>의류상품학과</option>"
                        + "<option value='일반사회교육과'>일반사회교육과</option>"
                        + "<option value='조형디자인학부'>조형디자인학부</option>"
                        + "<option value='조형디자인학부 세라믹디자인전공'>조형디자인학부 세라믹디자인전공</option>"
                        + "<option value='조형디자인학부 주얼리디자인전공'>조형디자인학부 주얼리디자인전공</option>"
                        + "<option value='조형디자인학부 퍼니처디자인전공'>조형디자인학부 퍼니처디자인전공</option>"
                        + "<option value='중어중문학과'>중어중문학과</option>"
                        + "<option value='지구과학교육과'>지구과학교육과</option>"
                        + "<option value='지리교육과'>지리교육과</option>"
                        + "<option value='지리학과'>지리학과</option>"
                        + "<option value='지질환경과학과'>지질환경과학과</option>"
                        + "<option value='창업현장실습교육센터'>창업현장실습교육센터</option>"
                        + "<option value='체육교육과'>체육교육과</option>"
                        + "<option value='취업지원실'>취업지원실</option>"
                        + "<option value='컴퓨터교육과'>컴퓨터교육과</option>"
                        + "<option value='타대학학과'>타대학학과</option>"
                        + "<option value='특수교육과'>특수교육과</option>"
                        + "<option value='한문교육과'>한문교육과</option>"
                        + "<option value='행정학과'>행정학과</option>"
                        + "<option value='화학과'>화학과</option>"
                        + "<option value='화학교육과'>화학교육과</option>"
                        + "<option value='환경교육과'>환경교육과</option>"

                  }
                  
                  if(selected1 == "예산캠퍼스" && selected == "전공") {
                     document.getElementById('area4Combobox').disabled = 0;
                     document.getElementById("area4Combobox").innerHTML = "<option value='전체'>전체</option>"
                        + "<option value='농산업창업전공'>농산업창업전공</option>"
                        + "<option value='동물자원학과'>동물자원학과</option>"
                        + "<option value='산림자원학과'>산림자원학과</option>"
                        + "<option value='산업유통학과'>산업유통학과</option>"
                        + "<option value='생물산업공학부'>생물산업공학부</option>"
                        + "<option value='생물산업공학부 생물산업기계공학전공'>생물산업공학부 생물산업기계공학전공</option>"
                        + "<option value='생물산업공학부 지역건설공학전공'>생물산업공학부 지역건설공학전공</option>"
                        + "<option value='식물자원학과'>식물자원학과</option>"
                        + "<option value='식물자원학과(주)'>식물자원학과(주)</option>"
                        + "<option value='식품공학과'>식품공학과</option>"
                        + "<option value='식품과학부'>식품과학부</option>"
                        + "<option value='식품과학부 식품영양학전공'>식품과학부 식품영양학전공</option>"
                        + "<option value='식품과학부 외식상품학전공'>식품과학부 외식상품학전공</option>"
                        + "<option value='원예학과'>원예학과</option>"
                        + "<option value='조경학과'>조경학과</option>"
                        + "<option value='지역개발학부'>지역개발학부</option>"
                        + "<option value='지역개발학부 부동산학전공'>지역개발학부 부동산학전공</option>"
                        + "<option value='지역개발학부 지역사회개발학전공'>지역개발학부 지역사회개발학전공</option>"
                        + "<option value='특수동물학과'>특수동물학과</option>"
                        
                  }
                  
                  if(selected == "교양") {
                     document.getElementById('area4Combobox').disabled = 1;
                     document.getElementById("area4Combobox").innerHTML = "<option value='선택안됨'>----------------------------------------------------교양과목은 검색 해 주시기 바랍니다.-------------------------------------------------------------</option>"
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
            <option value="">선택하세요.</option>
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
</body>
</html>