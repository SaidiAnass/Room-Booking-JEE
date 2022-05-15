<%@include file="header.jsp"%>
<body>
<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage <b>Rooms</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add new Room</span></a>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Room Name</th>
                    <th>Description</th>
                    <th>Type</th>
                    <th>Price($)</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${roomsList}" var="room">
                    <tr>
                        <td>${room.getRoomId()}</td>
                        <td>${room.getName()}</td>
                        <td>${room.getDescription()}</td>
                        <td>${room.getRoomType()}</td>
                        <td>${room.getPrice()}</td>
                        <td>
                            <form action="edit.room" method="post" >
                                <input hidden value="${room.getRoomId()}" name="id" />
                                <button type="submit" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>

                            </form>
                            <form action="delete.room" method="post" >
                                <input hidden value="${room.getRoomId()}" name="id" />
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
            <form action="add.room" method="post" enctype="multipart/form-data">
                <div class="modal-header">
                    <h4 class="modal-title">Add new Room</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Room Name</label>
                        <input type="text" class="form-control" required name="name"/>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea class="form-control" required name="description" rows="5" cols="33"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Room Image</label>
                        <input type="text" class="form-control" required name="image" pattern="^(?:http(s)?:\/\/)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$"/>
                    </div>
                    <div class="form-group">
                        <label>Room Type</label>
                        <input type="text" class="form-control" required name="type" placeholder="single- double - lux"/>
                    </div>
                    <div class="form-group">
                        <label>Price($)</label>
                        <input type="number" class="form-control" required name="price"/>
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