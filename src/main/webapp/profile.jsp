<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">


<c:if test="${ (loggedIn == null )}">
    <c:redirect url="/main"/>
</c:if>


<<%@include file="./header.jsp" %>
<section class="parallax-window" data-parallax="scroll" data-image-src="https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470" data-natural-width="1400" data-natural-height="470">
    <div class="parallax-content-1">
        <div class="animated fadeInDown">
            <h1>Hello ${loggedIn.getFirstName()}!</h1>
            <p>Ridiculus sociosqu cursus neque cursus curae ante scelerisque vehicula.</p>
        </div>
    </div>
</section>
<!-- End section -->

<main>
    <div id="position">
        <div class="container">
            <ul>
                <li><a href="#">Home</a>
                </li>
                <li><a href="#">Profile</a>
                </li>
            </ul>
        </div>
    </div>
    <!-- End Position -->

    <div class="margin_60 container">
        <div id="tabs" class="tabs">
            <nav>
                <ul>
                    <li><a href="#section-1" class="icon-booking"><span>Bookings</span></a>
                    </li>
                    <li><a href="#section-4" class="icon-profile"><span>Profile</span></a>
                    </li>
                </ul>
            </nav>
            <div class="content">

                <section id="section-1">
<%--                    <div id="tools">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-lg-2 col-md-3 col-6">--%>
<%--                                <div class="styled-select-filters">--%>
<%--                                    <select name="sort_type" id="sort_type">--%>
<%--                                        <option value="" selected>Sort by type</option>--%>
<%--                                        <option value="tours">Tours</option>--%>
<%--                                        <option value="hotels">Hotels</option>--%>
<%--                                        <option value="transfers">Transfers</option>--%>
<%--                                    </select>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-lg-2 col-md-3 col-6">--%>
<%--                                <div class="styled-select-filters">--%>
<%--                                    <select name="sort_date" id="sort_date">--%>
<%--                                        <option value="" selected>Sort by date</option>--%>
<%--                                        <option value="oldest">Oldest</option>--%>
<%--                                        <option value="recent">Recent</option>--%>
<%--                                    </select>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!--/tools -->--%>
                <c:if test = "${bookingsExist}">
                    <c:forEach items="${bookings}" var="booking">
                        <div class="strip_booking">
                            <div class="row">
                                <div class="col-lg-2 col-md-2">
                                    <div class="date">
                                        <span class="month">${booking.getStartDate()}</span>
                                        <span class="day"><strong>${booking.getStartDate().split("/")[1]}</strong>${booking.getStartDate().split("/")[0]}</span>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-5">
                                    <c:forEach items="${rooms}" var="room">
                                        <c:if test = "${room.getRoomId() == booking.getRoomId()}">
                                            <h3 class="hotel_booking">${room.getName()}<span>For ${booking.getNumberONights()} night(s).</span></h3>
                                        </c:if>

                                    </c:forEach>
                                </div>
                                <div class="col-lg-2 col-md-3">
                                    <ul class="info_booking">
                                        <li><strong>Booking id</strong>${booking.getBookingId()}</li>
                                        <li><strong>Booked on</strong> ${booking.getStartDate()}</li>
                                        <li><strong>To</strong> ${booking.getEndDate()}</li>
                                    </ul>
                                </div>
                                <div class="col-lg-2 col-md-2">
                                    <div class="booking_buttons">
                                        <a href="#0" class="btn_2">Edit</a>
                                        <a href="#0" class="btn_3">Cancel</a>
                                    </div>
                                </div>
                            </div>
                            <!-- End row -->
                        </div>
                        <!-- End strip booking -->
                    </c:forEach>
                </c:if>

                </section>
                <!-- End section 1 -->

                <section id="section-4">
<%--                    <div class="row">--%>
<%--                        <div class="col-md-6">--%>
<%--                            <h4>Your profile</h4>--%>
<%--                            <ul id="profile_summary">--%>
<%--                                <li>Username <span>info@clara.com</span>--%>
<%--                                </li>--%>
<%--                                <li>First name <span>Clara</span>--%>
<%--                                </li>--%>
<%--                                <li>Last name <span>Tomson</span>--%>
<%--                                </li>--%>
<%--                                <li>Phone number <span>+00 032 42366</span>--%>
<%--                                </li>--%>
<%--                                <li>Date of birth <span>13/04/1975</span>--%>
<%--                                </li>--%>
<%--                                <li>Street address <span>24 Rue de Rivoli</span>--%>
<%--                                </li>--%>
<%--                                <li>Town/City <span>Paris</span>--%>
<%--                                </li>--%>
<%--                                <li>Zip code <span>002843</span>--%>
<%--                                </li>--%>
<%--                                <li>Country <span>France</span>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-6">--%>
<%--                            <p>--%>
<%--                                <img src="img/tourist_guide_pic.jpg" alt="Image" class="img-fluid styled profile_pic">--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End row -->--%>

                    <div class="divider"></div>
                    <form action="edit-profile">
                        <div class="row">
                            <div class="col-md-12">
                                <h4>Edit profile</h4>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>First name</label>
                                    <input class="form-control" name="firstName" type="text" value="${loggedIn.getFirstName()}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Last name</label>
                                    <input class="form-control" name="lastName" type="text" value="${loggedIn.getLastName()}">
                                </div>
                            </div>
                        </div>
                        <!-- End row -->

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Phone number</label>
                                    <input class="form-control" name="phoneNumber"  type="text" value="${loggedIn.getPhoneNumber()}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Address <small></small>
                                    </label>
                                    <input class="form-control" name="address" type="text" value="${loggedIn.getAddress()}">
                                </div>
                            </div>
                        </div>
                        <!-- End row -->

                        <hr>

                        <button type="submit" class="btn_1 green">Update Profile</button>
                    </form>

                </section>
                <!-- End section 4 -->

            </div>
            <!-- End content -->
        </div>
        <!-- End tabs -->
    </div>
    <!-- end container -->
</main>
<!-- End main -->
<!-- End main -->
<%@include file="./footer.jsp" %>

<!-- Common scripts -->
<script src="assets/js/jquery-2.2.4.min.js"></script>
<script src="assets/js/common_scripts_min.js"></script>
<script src="assets/js/functions.js"></script>

<!-- Specific scripts -->
<script src="assets/js/tabs.js"></script>
<script>
    new CBPFWTabs(document.getElementById('tabs'));
</script>
<script>
    $('.wishlist_close_admin').on('click', function (c) {
        $(this).parent().parent().parent().fadeOut('slow', function (c) {});
    });
</script>

</body>

</html>