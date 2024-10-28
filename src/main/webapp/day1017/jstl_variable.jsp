<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="JSTL 변수의 사용"
%>
<!-- 1. 지시자 선언 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %> JSP가 없는 URI을 사용하면 EL이 되지 않는다. --%>
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
<%-- 2. Tag Lib 에서 제공하는 태그를 사용 --%>
<%-- 변수 선언 --%>
<c:set var="msg" value="오늘은 목요일입니다."/>
<c:set var="day" value="17"/>

<%-- 출력 → EL사용 --%>
<h2>변수 출력</h2>
${msg}<br>
<c:out value="msg"/><br> <%-- EL을 사용하지 않으면 그냥 msg 자체가 출력 --%>
<c:out value="${msg}"/><br>
<c:out value="${day}"/>일<br>
<c:out value="${day+1}"/>일<br>
<%-- <c:out value="${day++}"/>일<br> 단항 연산자는 지원하지 않는다. EL--%>

<%-- 변수 삭제 --%>
<h2>변수 삭제 후 출력</h2>
<%-- 삭제 후 변수를 출력하면 아무것도 출력되지 않는다. --%>
<c:remove var="msg" />
msg: <c:out value = "${msg}"/><br>
day: <c:out value = "${day}"/><br>

<h2>태그 출력</h2>
<c:set var="tag" value="오늘은 <strong>목요일</strong>입니다."/>
EL: ${tag}<br>
<c:out value="${tag}"/><br> <%-- 태그가 그냥 출력 --%>
<c:out value="${tag}" escapeXml="false"/><br> <%-- escapeXml의 기본값은 true / 태그를 반영하여 출력 --%>

<c:set var="name" value="이인혁"/>
<input type="checkbox" value="${name}"><c:out value = "${name}"/><br>
<%-- 사용자에게 노출되지 않는 정보는 보통 c:out을 사용하지 않는다. → EL만 사용
보통 사용자에게 토출되는 값에만 c:out을 사용 → EL과 c:out 모두 사용 --%>





</div>
</body>
</html>