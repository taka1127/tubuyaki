<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.User, model.Mutter, java.util.List" %>
<%
User loginUser = (User)session.getAttribute("loginUser");

List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList");
String errorMsg = (String) request.getAttribute("errorMsg");
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
<p><a href="/tubuyaki/Main">更新</a></p>
<form action="/tubuyaki/Main" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>
<% if(errorMsg != null) { %>
	<p><%= errorMsg %></p>
<% } %>
<% for(Mutter mutter : mutterList) { %>
	<p><%= mutter.getUserName() %> : <%= mutter.getText() %></p>
<% } %>
</body>
</html>