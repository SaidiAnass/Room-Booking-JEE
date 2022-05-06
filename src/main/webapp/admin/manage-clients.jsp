<%@include file="header.jsp"%>
<body>
<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage <b>Clients</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Client</span></a>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone Number</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${clientsList}" var="client">
                    <tr>
                        <td>${client.getClientId()}</td>
                        <td>${client.getFirstName()}</td>
                        <td>${client.getLastName()}</td>
                        <td>${client.getPhoneNumber()}</td>
                        <td>${client.getAddress()}</td>
                        <td>${client.getEmail()}</td>

                        <td>
                            <form action="edit.client" method="post" >
                                <input hidden value="${client.getClientId()}" name="id" />
                                <button type="submit" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>

                            </form>
                            <form action="delete.client" method="post" >
                                <input hidden value="${client.getClientId()}" name="id" />
                                <button type="submit" class="delte" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></button>

                            </form>
                        </td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>
<!-- Add Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="add.client" method="post" enctype="multipart/form-data">
                <div class="modal-header">
                    <h4 class="modal-title">Add CLient</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>First Name</label>
                        <input type="text" class="form-control" required name="firstname"/>
                    </div>
                    <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" class="form-control" required name="lastname"/>
                    </div>
                    <div class="form-group">
                        <label>Phone Number</label>
                        <input type="text" class="form-control" required name="phonenumber"/>
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <input type="text" class="form-control" required name="address"/>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" required name="email"/>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input class="form-control" type="password" required name="password" />
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-success" value="Add">
                </div>
            </form>
        </div>
    </div>
</div>


</body>
</html>