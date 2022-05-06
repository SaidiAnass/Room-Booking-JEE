<%@include file="header.jsp"%>
<body>
<div class="container-xl">
  <div class="table-responsive">
    <div class="table-wrapper">
      <div class="table-title">
        <div class="row">
          <div class="col-sm-6">
            <h2>Manage <b>Admins</b></h2>
          </div>
          <div class="col-sm-6">
            <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Admin</span></a>
          </div>
        </div>
      </div>
      <table class="table table-striped table-hover">
        <thead>
        <tr>
          <th>Id</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${adminsList}" var="admin">
          <tr>
            <td>${admin.getAdminId()}</td>
            <td>${admin.getFirstName()}</td>
            <td>${admin.getLastName()}</td>
            <td>${admin.getEmail()}</td>

            <td>
              <form action="edit.admin" method="post" >
                <input hidden value="${admin.getAdminId()}" name="id" />
                <button type="submit" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>

              </form>
<%--              <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>--%>
              <form action="delete.admin" method="post" >
                <input hidden value="${admin.getAdminId()}" name="id" />
                <button type="submit" class="delte" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></button>

              </form>

            <%--              <a href="#editEmployeeModal" class="edit" data-toggle="modal" onclick="${adminToEdit = admin}"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>--%>
<%--              <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>--%>
            </td>
              <%--                        <td>--%>
              <%--                            <a href="editUser.php?id=${u.id}" class="btn_1 small">Edit</a>--%>
              <%--                            <a href="deleteUser.php?id=${u.id}" class="btn_1 small">Delete</a>--%>
              <%--                        </td>--%>
          </tr>
        </c:forEach>
        </tbody>
      </table>
<%--      <div class="clearfix">--%>
<%--        <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>--%>
<%--        <ul class="pagination">--%>
<%--          <li class="page-item disabled"><a href="#">Previous</a></li>--%>
<%--          <li class="page-item"><a href="#" class="page-link">1</a></li>--%>
<%--          <li class="page-item"><a href="#" class="page-link">2</a></li>--%>
<%--          <li class="page-item active"><a href="#" class="page-link">3</a></li>--%>
<%--          <li class="page-item"><a href="#" class="page-link">4</a></li>--%>
<%--          <li class="page-item"><a href="#" class="page-link">5</a></li>--%>
<%--          <li class="page-item"><a href="#" class="page-link">Next</a></li>--%>
<%--        </ul>--%>
<%--      </div>--%>
    </div>
  </div>
</div>
<!-- Add Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <form action="add.admin" method="post" enctype="multipart/form-data">
        <div class="modal-header">
          <h4 class="modal-title">Add Employee</h4>
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