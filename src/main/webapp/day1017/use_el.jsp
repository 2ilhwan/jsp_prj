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
<h2>연산자</h2>
<ul>
<li>10 + 17 = ${10+17}</li> 
<li>10 % 2 = ${10%2}(${10 mod 2})</li> 
<li>10 &gt; 2 = ${10>2}(${10 gt 2})</li> 
<li>10 &lt; 2 = ${10<2}(${10 lt 2})</li> 
<li>10 &gt;= 10 = ${10>=10}(${10 ge 10})</li> 
<li>10 &lt;= 10 = ${10<=10}(${10 le 10})</li> 
<li>10 == 10 = ${10==10}(${10 eq 10})</li> 
<%-- <li>10 != 10 = ${10!=10}(${10 ne 10})</li> ne가 이클립스 버그로 에러 뜸 정상 작동 함 --%>
<li>10 > 2 && 10 < 11 = ${10>2&&10<11}(${10 gt 2 and 10 lt 11})</li> 
<li>10 > 2 || 10 < 11 = ${10>2||10<11}(${10 gt 2 or 10 lt 11})</li>
<li>10은 ${10 % 2 == 0?"짝수":'홀수'}(${10 mod 2 eq 0?'짝수':"홀수"})</li> 
</ul>






</div>
</body>
</html>