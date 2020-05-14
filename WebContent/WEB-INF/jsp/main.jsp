<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--JSTLの使用 --%><!-- JSTLとEL式の場合 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 通常の場合 -->
<%--@ page import = "model.User, model.Mutter, java.util.List" --%>
<%--
User loginUser = (User)session.getAttribute("loginUser");

List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList");
String errorMsg = (String) request.getAttribute("errorMsg");
--%>
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
<%--= loginUser.getName() --%><!--さん、ログイン中-->
<!-- JSTLとEL式の場合 -->
<c:out value="${loginUser.name }"></c:out>さん、ログイン中
<a href="/tubuyaki/Logout">	ログアウト</a>
</p>
<p><a href="/tubuyaki/Main">更新</a></p>
<form action="/tubuyaki/Main" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>
<!-- 通常の場合 -->
<%--
<% if(errorMsg != null) { %>
	<p><%= errorMsg %></p>
<% } %>
<% for(Mutter mutter : mutterList) { %>
	<p><%= mutter.getUserName() %> : <%= mutter.getText() %></p>
<% } %>
--%>

<!-- JSTLとEL式の場合 -->
<c:if test="${not empty errorMsg}">
	<p>${errorMsg }</p>
</c:if>
<c:forEach var="mutter" items="${mutterList }">
	<p><c:out value="${mutter.userName}"></c:out>:<c:out value="${mutter.text }"></c:out></p>
</c:forEach>
</body>
</html>




