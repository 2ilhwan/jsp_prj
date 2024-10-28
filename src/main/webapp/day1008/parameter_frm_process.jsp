<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="HTML Form Control에 입력값을 받는 일"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title</title>
<link rel="shorcut icon"
   href="http://192.168.10.225/jsp_prj/common/images/favicon.ico">
<link rel="stylesheet" type="text/css"
   href="http://192.168.10.223/jsp_prj/common/CSS/main_20240911.css">
   <!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
   <!-- bootstrap CDN 끝 -->
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
<%String method=request.getMethod();%>
<h2><%=method %>방식의 요청</h2>
<%
//POST 방식일 때만 동작한다. : 입력스트림의 모든 charset을 변환 //GET방식(request.getParameter) 전에 사용해야 작동함
request.setCharacterEncoding("UTF-8");

//이름이 유일한 web parameter받기(request 내장객체를 사용)
//http://localhost/jsp_prj/day1008/parameter_frm_process.jsp?text=asdf&pass=asdf&chk=on&hid=%EC%88%A8%EA%B9%80%EA%B0%92&sel=JDBC&ta=asdf
String text=request.getParameter("text");//<input type="text"
String pass=request.getParameter("pass");//<input type="password"
String chk=request.getParameter("chk");//<input type="checkbox"
String hid=request.getParameter("hid");//<input type="hidden"
String sel=request.getParameter("sel");//<select>
String ta=request.getParameter("ta");//<textarea>
//업무로직, 유효성검증
//POST방식일 때 한글변환(GET은 안해줘도 됨)
/* if("POST".equals(method)){
	//String class를 사용한 변환 (문자열을 byte[]로 쪼개서 인코딩 수행)
	text=new String(text.getBytes("8859_1"),"UTF-8");
	//URLEncoder, URLDecoder
	hid=URLDecoder.decode(URLEncoder.encode(hid,"8859_1"), "UTF-8");
}
*/ //위쪽에서 메소드로 한 번에 변환해주기 때문에 이런방식으로 쓰지 않는다. 코딩량 너무 많기 때문에, 인코딩 두 번 일어나면 모두 ???로 뜬다 조심 
%>

<ul>
   	<li>입력값</li>
   	<li>text:<%=text %></li>
   	<li>password:<%=pass %></li>
   	<li>checkbox:<%=chk %></li>
   	<li>hidden:<%=hid %></li>
   	<li>select:<%=sel %></li>
   	<li>textarea:<%=ta %></li>
</ul>
<input type="text" value="<%=text %>">
</div>
</body>
</html>