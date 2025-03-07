<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="표현식(expression)의 사용."
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
<%
	String msg="오늘은 화요일입니다.";

	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd EEEE hh:mm:ss");
%>
오늘의 메시지: <span><%= msg %></span><br>
오늘 날짜: <mark><% sdf.format(new Date());%></mark><br>


</div>
</body>
</html>