<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.User" %>
<%
User loginUser = (User)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet"  media="all">
<head>
<meta charset="UTF-8">
<title>ツブヤキ</title>
</head>
<body>
<h1>Mainページ</h1>
<p>
<%= loginUser.getName() %>さん、ログイン中
<a href="/tubuyaki/Logout">	ログアウト</a>
</p>

</body>
</html>