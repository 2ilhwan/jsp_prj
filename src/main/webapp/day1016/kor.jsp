<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="한국어 페이지"
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
	<h2>안녕하세요? 한국어 페이지에 방문하셨습니다.</h2>
	입력하신 값은 아래와 같습니다.<br>
	<ul>
		<%-- <li>이름: <%=request.getParameter("name") %></li> 두 방법 모두 사용가능 / 브라우저로 출력만 한다면 ${}이 좋음 --%>
		<li>이름: ${param.name }</li>
		<li>나이: ${param.age }</li>
		<li>주 사용언어: ${param.lang }</li>
	</ul>
</div>
</body>
</html>