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
                    <div id="tools">
                        <div class="row">
                            <div class="col-lg-2 col-md-3 col-6">
                                <div class="styled-select-filters">
                                    <select name="sort_type" id="sort_type">
                                        <option value="" selected>Sort by type</option>
                                        <option value="tours">Tours</option>
                                        <option value="hotels">Hotels</option>
                                        <option value="transfers">Transfers</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-3 col-6">
                                <div class="styled-select-filters">
                                    <select name="sort_date" id="sort_date">
                                        <option value="" selected>Sort by date</option>
                                        <option value="oldest">Oldest</option>
                                        <option value="recent">Recent</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/tools -->

                    <div class="strip_booking">
                        <div class="row">
                            <div class="col-lg-2 col-md-2">
                                <div class="date">
                                    <span class="month">Dec</span>
                                    <span class="day"><strong>23</strong>Sat</span>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-5">
                                <h3 class="hotel_booking">Hotel Mariott Paris<span>2 Adults / 2 Nights</span></h3>
                            </div>
                            <div class="col-lg-2 col-md-3">
                                <ul class="info_booking">
                                    <li><strong>Booking id</strong> 23442</li>
                                    <li><strong>Booked on</strong> Sat. 23 Dec. 2015</li>
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

                    <div class="strip_booking">
                        <div class="row">
                            <div class="col-lg-2 col-md-2">
                                <div class="date">
                                    <span class="month">Dec</span>
                                    <span class="day"><strong>27</strong>Fri</span>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-5">
                                <h3 class="tours_booking">Louvre Museum<span>2 Adults / 2 Childs</span></h3>
                            </div>
                            <div class="col-lg-2 col-md-3">
                                <ul class="info_booking">
                                    <li><strong>Booking id</strong> 23442</li>
                                    <li><strong>Booked on</strong> Sat. 20 Dec. 2015</li>
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

                    <div class="strip_booking">
                        <div class="row">
                            <div class="col-lg-2 col-md-2">
                                <div class="date">
                                    <span class="month">Dec</span>
                                    <span class="day"><strong>28</strong>Fri</span>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-5">
                                <h3 class="tours_booking">Tour Eiffel<span>2 Adults</span></h3>
                            </div>
                            <div class="col-lg-2 col-md-3">
                                <ul class="info_booking">
                                    <li><strong>Booking id</strong> 23442</li>
                                    <li><strong>Booked on</strong> Sat. 20 Dec. 2015</li>
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

                    <div class="strip_booking">
                        <div class="row">
                            <div class="col-lg-2 col-md-2">
                                <div class="date">
                                    <span class="month">Dec</span>
                                    <span class="day"><strong>30</strong>Fri</span>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-5">
                                <h3 class="transfers_booking">Orly Airport<span>2 Adults / 2Childs</span></h3>
                            </div>
                            <div class="col-lg-2 col-md-3">
                                <ul class="info_booking">
                                    <li><strong>Booking id</strong> 23442</li>
                                    <li><strong>Booked on</strong> Sat. 20 Dec. 2015</li>
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

                </section>
                <!-- End section 1 -->

                <section id="section-4">
                    <div class="row">
                        <div class="col-md-6">
                            <h4>Your profile</h4>
                            <ul id="profile_summary">
                                <li>Username <span>info@clara.com</span>
                                </li>
                                <li>First name <span>Clara</span>
                                </li>
                                <li>Last name <span>Tomson</span>
                                </li>
                                <li>Phone number <span>+00 032 42366</span>
                                </li>
                                <li>Date of birth <span>13/04/1975</span>
                                </li>
                                <li>Street address <span>24 Rue de Rivoli</span>
                                </li>
                                <li>Town/City <span>Paris</span>
                                </li>
                                <li>Zip code <span>002843</span>
                                </li>
                                <li>Country <span>France</span>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <p>
                                <img src="img/tourist_guide_pic.jpg" alt="Image" class="img-fluid styled profile_pic">
                            </p>
                        </div>
                    </div>
                    <!-- End row -->

                    <div class="divider"></div>

                    <div class="row">
                        <div class="col-md-12">
                            <h4>Edit profile</h4>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>First name</label>
                                <input class="form-control" name="first_name" id="first_name" type="text">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Last name</label>
                                <input class="form-control" name="last_name" id="last_name" type="text">
                            </div>
                        </div>
                    </div>
                    <!-- End row -->

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Phone number</label>
                                <input class="form-control" name="email_2" id="email_2" type="text">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Date of birth <small>(dd/mm/yyyy)</small>
                                </label>
                                <input class="form-control" name="email" id="email" type="text">
                            </div>
                        </div>
                    </div>
                    <!-- End row -->

                    <hr>
                    <div class="row">
                        <div class="col-md-12">
                            <h4>Edit address</h4>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Street address</label>
                                <input class="form-control" name="first_name" id="first_name" type="text">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>City/Town</label>
                                <input class="form-control" name="last_name" id="last_name" type="text">
                            </div>
                        </div>
                    </div>
                    <!-- End row -->

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Zip code</label>
                                <input class="form-control" name="email" id="email" type="text">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Country</label>
                                <select id="country" class="form-control" name="country">
                                    <option value="">Select...</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- End row -->

                    <hr>
                    <h4>Upload profile photo</h4>
                    <div class="form-inline upload_1">
                        <div class="form-group">
                            <input type="file" name="files[]" id="js-upload-files" multiple>
                        </div>
                        <button type="submit" class="btn_1 green" id="js-upload-submit">Upload file</button>
                    </div>
                    <!-- Drop Zone -->
                    <h5>Or drag and drop files below</h5>
                    <div class="upload-drop-zone" id="drop-zone">
                        Just drag and drop files here
                    </div>
                    <!-- Progress Bar -->
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                            <span class="sr-only">60% Complete</span>
                        </div>
                    </div>
                    <!-- Upload Finished -->
                    <div class="js-upload-finished">
                        <h5>Processed files</h5>
                        <div class="list-group">
                            <a href="#" class="list-group-item list-group-item-success"><span class="badge alert-success pull-right">Success</span>image-01.jpg</a>
                        </div>
                    </div>
                    <!-- End Hidden on mobiles -->

                    <hr>
                    <button type="submit" class="btn_1 green">Update Profile</button>
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