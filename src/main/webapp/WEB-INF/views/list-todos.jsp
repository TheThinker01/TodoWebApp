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
        <li ><a href="#">Home</a></li>
        <li class="active"><a href="/todo.do">Todo</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li ><a href="/logout.do">Logout</a></li>
    </ul>
</nav>
<div class="container">
<h1>Welcome ${name}</h1>
<h2>Your Todos are:</h2>
    <table class="table table-hover">
        <thead>
        <th>Description</th>
        <th>Category</th>
        <th>Actions</th>
        </thead>
        <tbody>
        <c:forEach items="${todos}" var="todo">
            <tr>
                <td>${todo.name}</td>
                <td>${todo.category}</td>
                <td><a class="btn btn-danger" href="/delete-todo.do?name=${todo.name}">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

<h3>Want To Add A New Todo?</h3>
<form method="post" action="/add-todo.do">
    <fieldset class="form-group">
        <label>Description</label>
    <input type="text" name="tname" class="form-control"/>
    </fieldset>
    <fieldset class="form-group">
        <label>Category</label>
        <input class="form-control" type="text" name="category"/>
    </fieldset>
    <button type="submit" class="btn btn-primary">Add TODO</button>
</form>
</div>
<%--<footer class="footer">--%>
<%--    <p>footer</p>--%>
<%--</footer>--%>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
