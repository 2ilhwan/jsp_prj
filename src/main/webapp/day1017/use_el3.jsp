<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="EL 사용"
    isELIgnored="false"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title</title>
<link rel="shorcut icon"
href="http://192.168.10.223/jsp_prj/common/images/paka.jpg">
<link rel="stylesheet" type="text/css"
href="http://192.168.10.223/jsp_prj/common/CSS/main_20240911.css">
<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
   
} );//ready
</script>
</head>
<body>
<div id="wrap">
<h2>scope 객체의 사용</h2>
<%
	String msg="오늘은 목요일 입니다.";
%>
<h3>EL에서는 변수에 직접 접근할 수 없다.</h3>
EL: ${msg}<br>
Expression: <%=msg %><br>
<%
//EL에서 변수를 사용하려면 변수를 scope 객체에 저장하고 scope 객체에 저장된 이름을 사용하여 변수를 사용한다.

//1. scope 객체에 저장
pageContext.setAttribute("m", msg);

%>

2. EL에서 scope 객체를 사용한 접근: <strong>${pageScope.m}</strong>
	${m}<%-- scope 객체 생략도 가능하다. --%>

<%
pageContext.setAttribute("pMsg", "page 메시지");
request.setAttribute("rMsg", "request 메시지");
session.setAttribute("sMsg", "session 메시지");
application.setAttribute("aMsg", "application 메시지");
%>
scope 객체를 사용한 접근<br>
pageScope: ${pageScope.pMsg}<br>(${pMsg})<br>
requestScope: ${requestScope.rMsg}<br>(${rMsg})<br>
sessionScope: ${sessionScope.sMsg}<br>(${sMsg})<br>
applicationScope: ${applicationScope.aMsg}<br>(${aMsg})<br>


<%
pageContext.setAttribute("test", "page 메시지");
request.setAttribute("test", "request 메시지");
session.setAttribute("test", "session 메시지");
application.setAttribute("test", "application 메시지");
%>
scope 객체에 같은 이름이 존재<br>
<%-- scope 객체를 생략하고 이름만 사용하면 가장 생명이 짧은 객체부터 사용한다. --%>
pageScope: ${pageScope.test}<br>(${test})<br>
requestScope: ${requestScope.test}<br>(${test})<br>
sessionScope: ${sessionScope.test}<br>(${test})<br>
applicationScope: ${applicationScope.test}<br>(${test})<br>


</div>
</body>
</html>