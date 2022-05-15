<%@include file="header.jsp"%>
<body>
<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage <b>Bookings</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add new Booking</span></a>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>BookingId</th>
                    <th>ClientId</th>
                    <th>RoomId</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Number Of Nights</th>
                    <th>Total</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${bookingsList}" var="booking">
                    <tr>
                        <td>${booking.getBookingId()}</td>
                        <td>${booking.getClientId()}</td>
                        <td>${booking.getRoomId()}</td>
                        <td>${booking.getStartDate()}</td>
                        <td>${booking.getEndDate()}</td>
                        <td>${booking.getNumberONights()}</td>
                        <td>${booking.getPrice()}</td>

                        <td>
                            <form action="edit.booking" method="post" >
                                <input hidden value="${booking.getBookingId()}" name="id" />
                                <button type="submit" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>

                            </form>
                            <form action="delete.booking" method="post" >
                                <input hidden value="${booking.getBookingId()}" name="id" />
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
            <form action="add.booking" method="post" enctype="multipart/form-data">
                <div class="modal-header">
                    <h4 class="modal-title">Add new Booking</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>ClientId</label>
                        <input type="text" class="form-control" required name="clientId"/>
                    </div>
                    <div class="form-group">
                        <label>RoomId</label>
                        <input type="text" class="form-control" required name="roomId"/>
                    </div>
                    <div class="form-group">
                        <label>Start Date</label>
                        <input type="text" class="form-control" required name="startDate" placeholder="mm/dd/yyyy"/>
                    </div>
                    <div class="form-group">
                        <label>End Date</label>
                        <input type="text" class="form-control" required name="endDate" placeholder="mm/dd/yyyy"/>
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
