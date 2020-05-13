<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/index.css" type="text/css">
<head>
<meta charset="UTF-8">
<title>ツブヤキ</title>
</head>
<body>
<div class="container">
<h1>ツブヤキへようこそ</h1>
<form action="/tubuyaki/Login" method="post">
ユーザー名：<input type = "text" name = "name"><br>
パスワード：<input type = "password" name = "pass"><br>
<input type = "submit" value = "ログイン">
</form>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>