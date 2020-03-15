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
        <li><a href="#">Todo</a></li>
        <li><a href="#">In28Minutes</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li ><a href="#">Login</a></li>
    </ul>
</nav>
<div class="container">
<h1>Welcome ${name}</h1>
<h2>Your Todos are:</h2>
<ol>
    <c:forEach items="${todos}" var="todo">
        <li>${todo.name} &nbsp;&nbsp;&nbsp;<a href="/delete-todo.do?name=${todo.name}">Delete</a></li>
    </c:forEach>
</ol>
<h3>Want To add a new todo?</h3>
<form method="post" action="/add-todo.do">
    <input type="text" name="tname"/>
    <button type="submit" class="btn btn-primary">Add TODO</button>
</form>
</div>
<footer class="footer">
    <p>footer</p>
</footer>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
