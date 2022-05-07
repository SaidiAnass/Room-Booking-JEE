<%@ page import="com.miola.roombooking.models.Room" %>
<%@ page import="com.miola.roombooking.models.Booking" %>
<%@ page import="com.miola.roombooking.models.Client" %>
<!DOCTYPE html>
<html lang="en">

<%@include file="./header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% Room room = (Room) request.getAttribute("room"); %>
<% Booking booking = (Booking) request.getAttribute("booking"); %>
<%  Client client = (Client) request.getAttribute("client"); %>

<c:if test="${ booking == null }">
    <c:redirect url="/main"/>
</c:if>

<body>
<section class="parallax-window" data-parallax="scroll" data-image-src="http://www.ansonika.com/citytours/img/slide_hero_2.jpg" data-natural-width="1400" data-natural-height="470">
    <div class="parallax-content-1">
        <div class="animated fadeInDown">
            <h1>Thank you!</h1>
            <p>See ya soon!</p>
        </div>
    </div>
</section>
<!-- End Section -->

<main>
    <div id="position">
        <div class="container">
            <ul>
                <li><a href="#">Home</a>
                </li>
                <li><a href="#">Thank-you</a>
                </li>
                <%--                <li>Page active</li>--%>
            </ul>
        </div>
    </div>
    <!-- End Position -->

    <div class="container margin_60">
        <div class="row">
            <div class="col-lg-8 add_bottom_15">

                <div class="form_title">
                    <h3><strong><i class="icon-ok"></i></strong>Thank you!</h3>
                    <p>

                    </p>
                </div>
                <div class="step">
                    <p>
                        Thank you for your reservation. We’re dedicated to giving you the best experience possible. If you have any questions, feel free to get in touch.
                    </p>
                </div>
                <!--End step -->

                <div class="form_title">
                    <h3><strong><i class="icon-tag-1"></i></strong>Booking summary</h3>
                    <p>
                        Details of your recent booking.
                    </p>
                </div>
                <div class="step">
                    <table class="table table-striped confirm">
                        <tbody>
                        <tr>
                            <td>
                                <strong>Name</strong>
                            </td>
                            <td>
                                <%=client.getFirstName()%> <%=client.getLastName()%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <strong>Check in</strong>
                            </td>
                            <td>
                                <%= booking.getStartDate()%></td>
                        </tr>
                        <tr>
                            <td><strong>Check out</strong>
                            </td>
                            <td>
                                <%= booking.getEndDate()%>
                                <br>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>rooms</strong>
                            </td>
                            <td><%= room.getRoomType()%> room</td>
                        </tr>
                        <tr>
                            <td><strong>Nights</strong>
                            </td>
                            <td><%= booking.getNumberONights()%></td>
                        </tr>
                        <tr>
                            <td>
                                <strong>TOTAL COST</strong>
                            </td>
                            <td>
                               $ <%= (booking.getNumberONights()* room.getPrice())%>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--End step -->
            </div>
            <!--End col -->

            <aside class="col-lg-4">
                <%--                <div class="box_style_1">--%>
                <%--                    <h3 class="inner">Thank you!</h3>--%>
                <%--                    <p>--%>
                <%--                        Nihil inimicus ex nam, in ipsum dignissim duo. Tale principes interpretaris vim ei, has posidonium definitiones ut. Duis harum fuisset ut his, duo an dolor epicuri appareat.--%>
                <%--                    </p>--%>
                <%--                    <hr>--%>
                <%--                    <a class="btn_full_outline" href="invoice.html" target="_blank">View your invoice</a>--%>
                <%--                </div>--%>
                <div class="box_style_4">
                    <i class="icon_set_1_icon-89"></i>
                    <h4>Have <span>questions?</span></h4>
                    <a href="tel://004542344599" class="phone">+212673620344</a>
                    <small>Monday to Friday 9.00am - 7.30pm</small>
                </div>
            </aside>

        </div>
        <!--End row -->
    </div>
    <!-- End Container -->
</main>
<!-- End main -->

<%@include file="./footer.jsp" %>

<script>
    if ($('.prod-tabs .tab-btn').length) {
        $('.prod-tabs .tab-btn').on('click', function (e) {
            e.preventDefault();
            var target = $($(this).attr('href'));
            $('.prod-tabs .tab-btn').removeClass('active-btn');
            $(this).addClass('active-btn');
            $('.prod-tabs .tab').fadeOut(0);
            $('.prod-tabs .tab').removeClass('active-tab');
            $(target).fadeIn(500);
            $(target).addClass('active-tab');
        });

    }
</script>


</body>

</html>