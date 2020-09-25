<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.User, java.util.ArrayList" %> <%-- , test.TestBean,date.Today --%>
<%
	User member = new User();
	member.setUname("홍길동");
	member.setUid("goodday");
	member.setUnum(19010001);
%>    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta charset="utf-8" />
		<!-- html4 : 파일의 인코딩 방식 지정 -->
		<!--<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />-->

		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
		<!-- 브라우저의 호환성 보기 모드를 막고, 해당 브라우저에서 지원하는 가장 최신 버전의 방식으로 HTML 보여주도록 설정.-->
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
		<!--viewport : 화면에 보이는 영역을 제어하는 기술. width는 device-width로 설정(브라우저 너비를 장치 너비에 맞추어 표시). initial-scale는 초기비율(보이는 영역과 웹 페이지를 맞춤). user-scalable는 사용자가 화면축소를 하지 못하도록 설정.-->
      			
		<link rel="shortcut icon" href="../image/icon.png" />
		<link rel="apple-touch-icon" href="../image/icon.png" />
				
		<!-- IE8 이하에서 HTML5를 인식시키기 위해 아래의 패스필터를 적용-->
		<!--[if lt IE 9]>
			<script src="../js/html5shiv.js"></script>
		<![endif]-->

<title>Insert title here</title>
	</head>
	<body>
	<h2>접근자로 데이터 출력- 표현식 이용</h2>
		<label>Uname : </label> <%=member.getUname() %> <br/>
		<label>uid : </label> <%=member.getUid() %><br/>
		<label > unum : </label> <%=member.getUnum() %><br/>
	<h2>표현언어에서 자바빈즈 이용()자바빈즈 이용</h2>
		<jsp:useBean id="user" class="member.User" /> <!-- class=  풀경로 줘야함 -->
		
		<jsp:setProperty name="user" property="uname" value="Todd Pakker" /> 		
		<jsp:setProperty name="user" property="uid" value="todd95" /> 		
		<jsp:setProperty name="user" property="unum" value="19050001" />
		<!-- Uname이렇게 대문자를 주지않고 소문자로 줘야함 -->
		${user.getUname()}
		${user.getUid()}
		${user.getUnum()} s
		
	<h2>액션태그에서 자바빈즈 getter 호출</h2>
	<label>uname :</label>
	<jsp:getProperty property="uname" name="user"/> <br/>
	<label>uid : </label>
	<label>uname :</label>
	<jsp:getProperty name="user" property="uname" /> <br/>
	<label > uid : </label>
	<jsp:getProperty property="uid" name="user"/>	
		 		
	</body>
</html>