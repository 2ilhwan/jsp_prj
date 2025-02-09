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
<h2>web parameter 의 출력</h2>
<form action="use_el2.jsp">
<input type="text" name="name" placeholder="이름"><br>
<input type="text" name="addr" placeholder="주소"><br>

<label>취미</label><br>
<input type="checkbox" name="hobby" value="등산">등산<br>
<input type="checkbox" name="hobby" value="낚시">낚시<br>
<input type="checkbox" name="hobby" value="독서">독서<br>
<input type="checkbox" name="hobby" value="운동">운동<br>

<input type="submit" value="전송" class="btn btn-outline-primary"><br>
</form>

<div>
입력값<br>
이름: ${param.name eq '' or param.name eq null?"이름을 입력":param.name}<br>
주소: ${empty param.addr?"주소를 입력":param.addr}<br> <%-- 위 코드와 아래 코드가 동일함 empty는 null, '', list에 값이 없음 을 모두 비교함 --%>
<%-- 배열은 선택된 개수만큼 반복해야 한다. → JSTL의 <c:forEach> 와 함께 사용 --%>
취미: ${paramValues.hobby[0]}<br>
</div>
<div>
<%-- nick이 없다면 아래 링크를 클릭 해 주세요 를 웹 브라우저로 출력하고 nick이 존재한다면 nick과 age에 설정된 값을 웹 브라우저에 출력 --%>
${empty param.nick?"아래 링크를 클릭 해 주세요":param.nick}
${param.age}


<div>
<%-- 요청 링크를 클릭했을 때 nick의 값으로 test를, 
age를 20으로 설정하여 현재 페이지로 요청하는 URL과 Query String을 작성 --%>
<a href="http://localhost/jsp_prj/day1017/use_el2.jsp?nick=test&age=20">요청</a>
<a href="use_el2.jsp?nick=test&age=20">요청</a><%-- 같은 디렉토리면 앞에 생략 가능 --%>
</div>
</div>
<%
String msg="오늘은 목요일";
%>
<%-- EL에서는 변수에 직접 접근할 수 없다. → 변수를 scope 객체에 저장하여 사용 --%>
%{msg}
%{temp}
</div>
</body>
</html>