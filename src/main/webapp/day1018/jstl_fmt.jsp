<%@page import="day1018.productVO"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<%
	int num=20141018;
	pageContext.setAttribute("num", num);
	
	Date date=new Date();
	pageContext.setAttribute("date", date);
	
	productVO pVO=new productVO(1241,"img2.jpg", 1500000, new Date());
	pageContext.setAttribute("itemNo", pVO.getItemNo());
	pageContext.setAttribute("price", pVO.getPrice());
	pageContext.setAttribute("date2", pVO.getDate());
	
%>
<c:out value="${num}"/><br>
0패턴 <fmt:formatNumber value="${num}" pattern="0,000,000,000"/><br>
#패턴 <fmt:formatNumber value="${num}" pattern="#,###,###,###"/><br>
<div>
<fmt:formatDate value="${date}" pattern="yyyy-MM-dd a HH(hh):mm:ss"/>
</div>


<img src="../common/images/img2.jpg"><br>
NO: <fmt:formatNumber value="${itemNo}" pattern="####"/><br>
가격: <fmt:formatNumber value="${price}" pattern="#,###,###,###"/><br>
발행일:<fmt:formatDate value="${date2}" pattern="yyyy-MM-dd"/><br>



</div>
</body>
</html>