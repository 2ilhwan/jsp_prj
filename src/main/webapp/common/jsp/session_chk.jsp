<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty userData}">
<c:redirect url="http://localhost/jsp_prj/index.jsp"/>
</c:if>
<%
String remoteIp=request.getRemoteAddr();
%>