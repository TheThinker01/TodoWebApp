<%@include file="../common/header.jspf"%>
<%@include file="../common/navbar.jspf"%>
<div class="container">
<form method="post" action="/add-todo.do">
    <fieldset class="form-group">
        <label>Description</label>
        <input type="text" name="tname" class="form-control"/>
    </fieldset>
    <fieldset class="form-group">
        <label>Category</label>
        <input class="form-control" type="text" name="category"/>
    </fieldset>
    <button type="submit" class="btn btn-success">Add TODO</button>
</form>
</div>
<%@include file="../common/footer.jspf"%>
