<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script src="read.js"></script>
    <title>Главная</title>
</head>
<body>
<div id="layer-1">
    <div id="layer-2">
        <form class="form-1" action="/users">
            <p class="field">
                <input id="login-1" type="text" name="login" placeholder="gefest-95@mail.ru">

            </p>
            <p class="field">
                <input id="password-1" type="password" name="password" placeholder="password">

            </p>
            <p class="submit">
                <input type="submit" class="button" name="submit"  value="" formmethod="get" >
                </input>
            </p>
        </form>
        <a id="restore-1" href="WEB-INF/res.jsp">Забыли пароль?</a>
    </div>
</div>
</body>
</html>