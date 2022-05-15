<%@ page import="com.miola.roombooking.models.Room" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Room room = (Room) request.getAttribute("roomToEdit"); %>
<%@include file="header.jsp"%>
<body>
<form action="save.room" method="post" enctype="multipart/form-data">
  <input hidden name="id" value="<%= room.getRoomId() %>"/>
  <div class="modal-header">
    <h4 class="modal-title">Edit Room </h4>
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  </div>
  <div class="modal-body">
    <div class="form-group">
      <label>Room Name</label>
      <input type="text" class="form-control" required name="name" value="<%= room.getName() %>"/>
    </div>
    <div class="form-group">
      <label>Description</label>
      <input type="text" class="form-control" required name="description" value="<%= room.getDescription() %>"/>
     </div>
    <div class="form-group">
      <label>Room Image</label>
      <input type="text" class="form-control" required name="image" value="<%= room.getImage() %>" pattern="^(?:http(s)?:\/\/)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$"/>
    </div>
    <div class="form-group">
      <label>Room Type</label>
      <input type="text" class="form-control" required name="type" placeholder="single- double - lux" value="<%= room.getRoomType() %>"/>
    </div>
    <div class="form-group">
      <label>Price($)</label>
      <input type="number" class="form-control" required name="price" value="<%= room.getPrice() %>"/>
    </div>
  </div>
  <div class="modal-footer">
    <a href="list.room"  class="btn btn-default" data-dismiss="modal" >Cancel</a>
    <input type="submit" class="btn btn-success" value="Edit">
  </div>
</form>
</body>
</html>
