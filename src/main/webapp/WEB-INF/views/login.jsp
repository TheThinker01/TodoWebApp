<%--
  Created by IntelliJ IDEA.
  User: archi
  Date: 13-03-2020
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Welcome</title>
    <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
    <a href="/" class="navbar-brand">ToDo</a>
    <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="/todo.do">Todo</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li ><a href="/login.do">Login</a></li>
    </ul>
</nav>
<div class="container">
    <p style="color:Red;font-size: 30px ">${error}</p>
    <form action="/login.do" method="post">
        <span style="font-size: 20px">Name</span>
        <input name="name" type="text"/>
        <span style="font-size: 20px">Password</span>
        <input type="password" name="password"/>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<%--<footer class="footer">--%>
<%--    <p>footer</p>--%>
<%--</footer>--%>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>

