<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="web parameter를 useBean 표준액션을 사용하여 VO로 손쉽게 받기"
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
<%request.setCharacterEncoding("UTF-8");%>

	<%-- 1.객체를 생성 --%>
	<jsp:useBean id="fcVO" class="day1016.FormControlVO" scope="page"/>
	
	<%-- 2.setter method 호출(*설정하면 web parameter 명과 CO의 instance variable 명이 일치하는 setter method를 자동으로 호출해 준다.) --%>
	<jsp:setProperty property="*" name="fcVO"/>
	
	<h2>입력 값</h2>
	<ul>
	<li>이름: <jsp:getProperty property="name" name="fcVO"/></li>
	<%-- <li>이름: <%=fcVO.getName() %></li> 결과는 똑같지만 권장하는 부분이 다르다 --%>
	<li>나이: <jsp:getProperty property="age" name="fcVO"/></li>
	<li>성별: <jsp:getProperty property="gender" name="fcVO"/></li>
	<li>취미: <%-- <jsp:getProperty property="hobby" name="fcVO"/> 안됨, 안보여짐--%>
			<%-- <%=Arrays.toString(fcVO.getHobby()) %></li> --%>
			<%
			String[]hobby=fcVO.getHobby();
			if(hobby==null){
				out.println("<strong>선택한 취미가 없습니다.</strong>");
			}else{		
				for(String temp : hobby){
					out.print(temp);
					out.println("<br>");
				}//end for
			}//end if
			
			%>
	</ul>
	
	
	
	

</div>
</body>
</html>