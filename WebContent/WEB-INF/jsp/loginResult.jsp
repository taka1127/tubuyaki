<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "model.User" %>
<%
User loginUser = (User)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<link href="${pageContext.request.contextPath}/css/loginResult.css" rel="stylesheet"  media="all">
<head>
<meta charset="UTF-8">
<title>ツブヤキ</title>
</head>
<body>
<h1>ツブヤキログイン</h1>
<% if(loginUser != null) { %>
	<p>ログインに成功しました</p>
	<p>ようこそ<%= loginUser.getName() %>さん</p>
	<a href="/tubuyaki/Main">ツブヤキ投稿・一覧へ</a>
<% } else { %>
	<p>ログインに失敗しました</p>
	<a href="/tubuyaki/">TOPへ</a>
<% } %>
</body>
</html>






