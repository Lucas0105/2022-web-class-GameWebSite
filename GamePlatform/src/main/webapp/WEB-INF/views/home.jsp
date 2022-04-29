<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!-- jstl : java server pages standard tag library : 커스텀 태그 라이브러리-->
<!-- c:set 변수를 설정한다 pageContext.request.contextPath : 상대 경로를 지정해줌-->
<c:set var="path" value="${pageContext.request.contextPath}"/>

<link href="${path}/resources/css/test.css" rel="stylesheet"/> 	

<html>
<head>
	<title>GamePlatform</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
