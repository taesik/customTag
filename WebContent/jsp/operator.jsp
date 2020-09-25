<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h2>
			EL operator
		</h2>
		<hr>
		\${200+100} : ${200+100} <br>  
		\${200-100} : ${200-100} <br>  
		\${200/100} : ${200/100} <br>  
		\${200>100} : ${200>100} <br>  
		\${200==100} : ${200==100} <br>  
		\${200!=100} : ${200==100} <br>  
		\${'10' - 10} : ${'10' - 10} <br>  
		\${10 * "10"} : ${10 * "10"} <br>  
		\${40 mod 5} : ${40 mod 5} <br>  
		\${10 eq 10} : ${10 eq 10} <br>  
		\${10 lt 10} : ${10 lt 10} <br>  
		\${10 gt 10} : ${10 gt 10} <br>  
		\${10 le 10} : ${10 le 10} <br>  
		\${10 ge 10} : ${10 ge 10} <br>  
		\${10 >5?'A':'B'} : ${10 >5?'A':'B'} <br>  
		\${100 +200+300} : ${100 +200+300} <br>  
		\${100 +=200+=300} : ${100 +=200+=300} <br>  
		\${"EL" += 12 += 34 += "-문자열 결합연산"} :
					${"EL" += 12 +=34 += "-문자열 결합연산"}<br>
		전달된 메시지의 존재 여부 : ${!empty param.message} <hr/>			
		전달된 메시지의 내용 : ${param.message} 입니다.<br/>			
		전달된 메시지의 내용 : ${param["message"]} 입니다.<br/>			
		
		<h2>
		EL vari</h2>
		
		<hr>
		name 변수의 값 : ${name}<br>
		<% String name ="Duke"; %>
		name 변수의 값 표현식태그 <%= name %><br>
		name 변수의 값EL ${name}<br> <!--  null이다. 변수를 받는 게 아니라 속성이라서 -->
		<% pageContext.setAttribute("name", "java"); %>
		name vari : ${name}<br>
		pageScope.name vari value ${pageScope.name}<br/>
		<hr>
		<% pageContext.setAttribute("number", 100); %>
		number vari : ${number}<br>
		pageScope.number : ${pageScope.number}<br>
		23 plus : ${number +23} 			 
		
		<h2>저장된 객체 추출</h2>
		<hr>
		<%--
		<%
		pageContext.setAttribute("message", "PageContext 객체에 저장도니 문자열객체");
		request.setAttribute("message", "HttpServletRequest 객체에 저장된 문자열객체");
		session.setAttribute("message", "HttpSession 객체에 저장된 문자열객체");
		application.setAttribute("message", "ServletContext 객체에 저장된 문자열객체");
		%>
		--%>
		pageScope 객체에서 추출 : ${pageScope.message}<br>  
		requestScope 객체에서 추출 : ${requestScope.message}<br>  
		sessionScope 객체에서 추출 : ${sessionScope.message}<br>  
		applicationScope 객체에서 추출 : ${applicationScope.message}<br>
		<hr>
		message 추출 : ${message}<br>   
	</body>
</html>