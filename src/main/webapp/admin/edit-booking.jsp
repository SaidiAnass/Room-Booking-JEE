<%@ page import="com.miola.roombooking.models.Booking" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Booking booking = (Booking) request.getAttribute("bookingToEdit"); %>
<%@include file="header.jsp"%>
<body>

<form action="save.booking" method="post" enctype="multipart/form-data">
    <div class="modal-header">
        <h4 class="modal-title">Add new Booking</h4>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <label>ClientId</label>
            <input type="text" class="form-control" required name="clientId" value="<%= booking.getClientId() %>"/>
        </div>
        <div class="form-group">
            <label>RoomId</label>
            <input type="text" class="form-control" required name="roomId" value="<%= booking.getRoomId() %>"/>
        </div>
        <div class="form-group">
            <label>Start Date</label>
            <input type="text" class="form-control" required name="startDate" placeholder="mm/dd/yyyy" value="<%= booking.getStartDate() %>"/>
        </div>
        <div class="form-group">
            <label>End Date</label>
            <input type="text" class="form-control" required name="endDate" placeholder="mm/dd/yyyy" value="<%= booking.getEndDate() %>"/>
        </div>
    </div>
    <div class="modal-footer">
        <a href="list.booking" class="btn btn-default">Cancel</a>
        <input type="submit" class="btn btn-success" value="Add">
    </div>
</form>
</body>
</html>
