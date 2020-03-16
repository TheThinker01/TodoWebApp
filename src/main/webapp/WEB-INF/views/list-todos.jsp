<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navbar.jspf" %>
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
    <a href="/add-todo.do" class="btn btn-success">Add ToDo</a>
</div>

<%@ include file="../common/footer.jspf" %>