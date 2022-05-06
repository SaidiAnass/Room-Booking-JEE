<%@ page import="com.miola.roombooking.models.Admin" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Admin admin = (Admin) request.getAttribute("adminToEdit"); %>
<%@include file="header.jsp"%>
<body>
<form action="save.admin" method="post" enctype="multipart/form-data">
    <input hidden name="id" value="<%= admin.getAdminId() %>"/>
    <div class="modal-header">
        <h4 class="modal-title">Edit Admin</h4>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <label>First Name</label>
            <input type="text" class="form-control" required name="firstname" value="<%= admin.getFirstName() %>"/>
        </div>
        <div class="form-group">
            <label>Last Name</label>
            <input type="text" class="form-control" required name="lastname" value="<%= admin.getLastName() %>"/>
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" class="form-control" required name="email" value="<%= admin.getEmail() %>"/>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input class="form-control" type="password" required name="password" value="<%= admin.getPassword() %>"/>
        </div>
    </div>
    <div class="modal-footer">
        <a href="list.admin" class="btn btn-default">Cancel</a>
        <input type="submit" class="btn btn-info" value="Save">
    </div>
</form>
</body>
</html>
