<%@ page import="com.miola.roombooking.models.Room" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<% Room room = (Room) request.getAttribute("room"); %>


<c:if test="${ room.getName() == null }">
    <c:redirect url="/main"/>
</c:if>


<<%@include file="./header.jsp" %>
<section class="parallax-window" data-parallax="scroll" data-image-src="http://www.ansonika.com/citytours/img/single_hotel_bg_1.jpg" data-natural-width="1400" data-natural-height="470">
    <div class="parallax-content-2">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <span class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class=" icon-star-empty"></i></span>
                    <h1><%= room.getName()%></h1>
                </div>
                <div class="col-md-4">
                    <div id="price_single_main" class="hotel">
                        from/per night <span><sup>$</sup><%=room.getPrice()%></span>
                    </div>
                </div>
            </div>
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
                <li><a href="#">Rooms</a>
                </li>
                <li><%= room.getName()%></li>
            </ul>
        </div>
    </div>
    <!-- End Position -->


    <div class="container margin_60">
        <div class="row">
            <div class="col-lg-8" id="single_tour_desc">
                <div id="single_tour_feat">
                    <ul>
                        <li><i class="icon_set_2_icon-116"></i>Plasma TV</li>
                        <li><i class="icon_set_1_icon-86"></i>Free Wifi</li>
                        <li><i class="icon_set_2_icon-110"></i>Poll</li>
                        <li><i class="icon_set_1_icon-59"></i>Breakfast</li>
                        <li><i class="icon_set_1_icon-22"></i>Pet allowed</li>
                        <li><i class="icon_set_1_icon-13"></i>Accessibiliy</li>
                        <li><i class="icon_set_1_icon-27"></i>Parking</li>
                    </ul>
                </div>
                <p class="d-none d-md-block d-block d-lg-none"><a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
                </p>
                <!-- Map button for tablets/mobiles -->
                <div id="Img_carousel" class="slider-pro">
                    <div class="sp-slides">
                        <c:if test="${ (room.getRoomType().equals(\"lux\") )}">
                            <div class="sp-slide">
                                <img alt="Image" class="sp-image" src="https://i.pinimg.com/originals/d7/1f/79/d71f79e1e76221f35f5911488aeb8f0c.jpg" />
                            </div>
                            <div class="sp-slide">
                                <img alt="Image" class="sp-image" src="https://media.cntraveler.com/photos/5f678a747557491753645012/master/w_4000,h_2666,c_limit/w-doha-qatar-suite.jpg" />
                            </div>
                        </c:if>

                    </div>
                    <div class="sp-thumbnails">
                        <c:if test="${ (room.getRoomType().equals(\"lux\") )}">
                            <img alt="Image" class="sp-thumbnail" src="https://i.pinimg.com/originals/d7/1f/79/d71f79e1e76221f35f5911488aeb8f0c.jpg">
                            <img alt="Image" class="sp-thumbnail" src="https://media.cntraveler.com/photos/5f678a747557491753645012/master/w_4000,h_2666,c_limit/w-doha-qatar-suite.jpg">
                        </c:if>
                    </div>
                </div>

                <hr>

                <div class="row">
                    <div class="col-lg-3">
                        <h3>Description</h3>
                    </div>
                    <div class="col-lg-9">
                        <p>
                            ${room.getDescription()}
                        </p>
                        <h4>Hotel facilities</h4>
                        <p>
                            Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi.
                        </p>
                        <div class="row">
                            <div class="col-md-6">
                                <ul class="list_ok">
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>No scripta electram necessitatibus sit</li>
                                    <li>Quidam percipitur instructior an eum</li>
                                    <li>Ut est saepe munere ceteros</li>
                                    <li>No scripta electram necessitatibus sit</li>
                                    <li>Quidam percipitur instructior an eum</li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <ul class="list_ok">
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>No scripta electram necessitatibus sit</li>
                                    <li>Quidam percipitur instructior an eum</li>
                                    <li>No scripta electram necessitatibus sit</li>
                                </ul>
                            </div>
                        </div>
                        <!-- End row  -->
                    </div>
                    <!-- End col-md-9  -->
                </div>
                <!-- End row  -->

                <hr>

                <div class="row">
                    <div class="col-lg-3">
                        <h3>Rooms Types</h3>
                    </div>



                    <div class="col-lg-9">
                        <c:if test="${ (room.getRoomType().equals(\"lux\") )}">
                            <h4>Lux Room</h4>
                            <p>
                                Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi.
                            </p>

                            <div class="row">
                                <div class="col-md-6">
                                    <ul class="list_icons">
                                        <li><i class="icon_set_1_icon-86"></i> Free wifi</li>
                                        <li><i class="icon_set_2_icon-116"></i> Plasma Tv</li>
                                        <li><i class="icon_set_2_icon-106"></i> Safety box</li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <ul class="list_ok">
                                        <li>Lorem ipsum dolor sit amet</li>
                                        <li>No scripta electram necessitatibus sit</li>
                                        <li>Quidam percipitur instructior an eum</li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End row  -->
                            <div class="owl-carousel owl-theme carousel-thumbs-2 magnific-gallery">
                                <div class="item">
                                    <a href="https://purewows3.imgix.net/images/articles/2019_08/Grand_Velas.jpeg?auto=format,compress&cs=strip" data-effect="mfp-zoom-in"><img src="https://purewows3.imgix.net/images/articles/2019_08/Grand_Velas.jpeg?auto=format,compress&cs=strip" alt="Image">
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="https://media.cntraveler.com/photos/53da5aa96dec627b149e509d/master/w_1024,h_768,c_limit/royal-ethiad-suite-jumeirah-abu-dhabi-2.jpg" data-effect="mfp-zoom-in"><img src="https://media.cntraveler.com/photos/53da5aa96dec627b149e509d/master/w_1024,h_768,c_limit/royal-ethiad-suite-jumeirah-abu-dhabi-2.jpg" alt="Image">
                                    </a>
                                </div>
                            </div>
                            <!-- End photo carousel  -->

                            <hr>
                        </c:if>
                        <c:if test="${ (room.getRoomType().equals(\"single\")) }">
                            <h4>Single Room</h4>
                            <p>
                                Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi.
                            </p>

                            <div class="row">
                                <div class="col-md-6">
                                    <ul class="list_icons">
                                        <li><i class="icon_set_1_icon-86"></i> Free wifi</li>
                                        <li><i class="icon_set_2_icon-116"></i> Plasma Tv</li>
                                        <li><i class="icon_set_2_icon-106"></i> Safety box</li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <ul class="list_ok">
                                        <li>Lorem ipsum dolor sit amet</li>
                                        <li>No scripta electram necessitatibus sit</li>
                                        <li>Quidam percipitur instructior an eum</li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End row  -->
                            <div class="owl-carousel owl-theme carousel-thumbs-2 magnific-gallery">
                                <div class="item">
                                    <a href="https://webbox.imgix.net/images/owvecfmxulwbfvxm/c56a0c0d-8454-431a-9b3e-f420c72e82e3.jpg" data-effect="mfp-zoom-in"><img src="https://webbox.imgix.net/images/owvecfmxulwbfvxm/c56a0c0d-8454-431a-9b3e-f420c72e82e3.jpg" alt="Image">
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="http://hotel-elhidhab.com/wp-content/uploads/2019/10/single.jpg" data-effect="mfp-zoom-in"><img src="http://hotel-elhidhab.com/wp-content/uploads/2019/10/single.jpg" alt="Image">
                                    </a>
                                </div>
                            </div>
                        </c:if>
                        <!-- End photo carousel  -->
                        <c:if test="${ (room.getRoomType().equals(\"double\")) }">
                            <h4>Double Room</h4>
                            <p>
                                Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi.
                            </p>

                            <div class="row">
                                <div class="col-md-6">
                                    <ul class="list_icons">
                                        <li><i class="icon_set_1_icon-86"></i> Free wifi</li>
                                        <li><i class="icon_set_2_icon-116"></i> Plasma Tv</li>
                                        <li><i class="icon_set_2_icon-106"></i> Safety box</li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <ul class="list_ok">
                                        <li>Lorem ipsum dolor sit amet</li>
                                        <li>No scripta electram necessitatibus sit</li>
                                        <li>Quidam percipitur instructior an eum</li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End row  -->
                            <div class="owl-carousel owl-theme carousel-thumbs-2 magnific-gallery">
                                <div class="item">
                                    <a href="https://media-cdn.tripadvisor.com/media/photo-s/05/eb/3a/81/jeju-oriental-hotel.jpg" data-effect="mfp-zoom-in"><img src="https://media-cdn.tripadvisor.com/media/photo-s/05/eb/3a/81/jeju-oriental-hotel.jpg" alt="Image">
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="https://cdn.traveltripper.io/site-assets/512_863_12597/media/2018-02-22-041437/large_DDBDB.jpg" data-effect="mfp-zoom-in"><img src="https://cdn.traveltripper.io/site-assets/512_863_12597/media/2018-02-22-041437/large_DDBDB.jpg" alt="Image">
                                    </a>
                                </div>
                                <div class="item">
                                    <a href="https://www.hotel7dublin.com/wp-content/uploads/Hotel-7-Dublin-family-room-with-2-double-beds.jpg" data-effect="mfp-zoom-in"><img src="https://www.hotel7dublin.com/wp-content/uploads/Hotel-7-Dublin-family-room-with-2-double-beds.jpg" alt="Image">
                                    </a>
                                </div>
                            </div>
                        </c:if>
                    </div>
                    <!-- End col-md-9  -->
                </div>
                <!-- End row  -->

                <hr>

                <div class="row">
                    <div class="col-lg-3">
<%--                        <h3>Reviews</h3>--%>
<%--                        <a href="#" class="btn_1 add_bottom_30" data-toggle="modal" data-target="#myReview">Leave a review</a>--%>
                    </div>
                    <div class="col-lg-9">
                        <div id="score_detail"><span>7.5</span>Good <small>(Based on 34 reviews)</small>
                        </div>
                        <!-- End general_rating -->
                        <div class="row" id="rating_summary">
                            <div class="col-md-6">
                                <ul>
                                    <li>Position
                                        <div class="rating">
                                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
                                        </div>
                                    </li>
                                    <li>Comfort
                                        <div class="rating">
                                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <ul>
                                    <li>Price
                                        <div class="rating">
                                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
                                        </div>
                                    </li>
                                    <li>Quality
                                        <div class="rating">
                                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- End row -->
                        <hr>
                    </div>
                </div>
            </div>
            <!--End  single_tour_desc-->

            <aside class="col-lg-4">
<%--                <p class="d-none d-xl-block d-lg-block d-xl-none">--%>
<%--                    <a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>--%>
<%--                </p>--%>
                <div class="box_style_1 expose">
                    <h3 class="inner">Book this room</h3>
                    <form action="book.room" method="post">
                        <input hidden name="roomId" value="${room.getRoomId()}" />
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><i class="icon-calendar-7"></i> Check in</label>
                                    <input class="date-pick form-control" data-date-format="M d, D" type="text" name="start">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label><i class="icon-calendar-7"></i> Check out</label>
                                    <input class="date-pick form-control" data-date-format="M d, D" type="text" name="end">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Number of Nights</label>
                                    <div class="numbers-row">
                                        <input type="text" value="1" id="numberofnights" class="qty2 form-control" name="numberofnights">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <input type="submit" class="btn_full" value="Book"/>
                    </form>

<%--                    <a class="btn_full_outline" href="#"><i class=" icon-heart"></i> Add to whislist</a>--%>
                </div>
                <!--/box_style_1 -->

                <div class="box_style_4">
                    <i class="icon_set_1_icon-90"></i>
                    <h4><span>Book</span> by phone</h4>
                    <a href="tel://004542344599" class="phone">+45 423 445 99</a>
                    <small>Monday to Friday 9.00am - 7.30pm</small>
                </div>

            </aside>
        </div>
        <!--End row -->
    </div>
    <!--End container -->

    <div id="overlay"></div>
    <!-- Mask on input focus -->

</main>
<!-- End main -->
<%@include file="./footer.jsp" %>



<!-- Common scripts -->
<script src="assets/js/jquery-2.2.4.min.js"></script>
<script src="assets/js/common_scripts_min.js"></script>
<script src="assets/js/functions.js"></script>

<!-- Date and time pickers -->
<script src="assets/js/jquery.sliderPro.min.js"></script>
<script type="text/javascript">
    $(document).ready(function ($) {
        $('#Img_carousel').sliderPro({
            width: 960,
            height: 500,
            fade: true,
            arrows: true,
            buttons: false,
            fullScreen: false,
            smallSize: 500,
            startSlide: 0,
            mediumSize: 1000,
            largeSize: 3000,
            thumbnailArrows: true,
            autoplay: false
        });
    });
</script>

<!-- Date and time pickers -->
<script>
    $('input.date-pick').datepicker('setDate', 'today');
</script>

<!-- Map -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="assets/js/map.js"></script>
<script src="assets/js/infobox.js"></script>

<!-- Carousel -->
<script>
    $('.carousel-thumbs-2').owlCarousel({
        loop:false,
        margin:5,
        responsiveClass:true,
        nav:false,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:4,
                nav:false
            }
        }
    });
</script>

<!--Review modal validation -->
<script src="assets/validate.js"></script>


</body>

</html>