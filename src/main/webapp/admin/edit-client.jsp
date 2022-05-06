<%@ page import="com.miola.roombooking.models.Client" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Client client = (Client) request.getAttribute("clientToEdit"); %>
<%@include file="header.jsp"%>
<body>
<form action="save.client" method="post" enctype="multipart/form-data">
    <input hidden name="id" value="<%= client.getClientId() %>"/>
    <div class="modal-header">
        <h4 class="modal-title">Edit Client</h4>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <label>First Name</label>
            <input type="text" class="form-control" required name="firstname" value="<%= client.getFirstName() %>"/>
        </div>
        <div class="form-group">
            <label>Last Name</label>
            <input type="text" class="form-control" required name="lastname" value="<%= client.getLastName() %>"/>
        </div>
        <div class="form-group">
            <label>Phone Number</label>
            <input type="text" class="form-control" required name="phonenumber" value="<%= client.getPhoneNumber() %>"/>
        </div>
        <div class="form-group">
            <label>Address</label>
            <input type="text" class="form-control" required name="address" value="<%= client.getAddress() %>"/>
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" class="form-control" required name="email" value="<%= client.getEmail() %>"/>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input class="form-control" type="password" required name="password" value="<%= client.getPassword() %>"/>
        </div>
    </div>
    <div class="modal-footer">
        <a href="list.client" class="btn btn-default">Cancel</a>
        <input type="submit" class="btn btn-info" value="Save">
    </div>
</form>
</body>
</html>
