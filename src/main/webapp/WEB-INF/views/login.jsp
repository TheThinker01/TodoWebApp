<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navbar.jspf" %>

<div class="container">
    <p style="color:Red;font-size: 30px ">${error}</p>
    <form action="/login.do" method="post">
        <fieldset class="form-group">
        <label >Name</label>
        <input name="name" type="text" class="form-control"/>
        </fieldset>
        <fieldset class="form-group">
            <label>Password</label>
            <input name="password" type="password" class="form-control"/>
        </fieldset>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<%@ include file="../common/footer.jspf" %>
