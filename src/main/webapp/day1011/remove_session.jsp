<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="t세션의 값 삭제"
%>
<% 
//세션 값 삭제 (세션은 존재하고 값 삭제)
session.removeAttribute("age");
session.removeAttribute("name");

//세션 자체 무효화
session.invalidate();

//System.out.println(session.getAttribute("name"));//null 발생 무효화하고 값을 얻으면 안됨 error

response.sendRedirect("get_session.jsp");
%>