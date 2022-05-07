<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="./header.jsp" %>
<c:if test="${ rooms == null }">
    <c:redirect url="/get-all.room"/>
</c:if>

<section class="parallax-window" data-parallax="scroll" data-image-src="assets/img/hotels_bg.jpg" data-natural-width="1400" data-natural-height="470">
    <div class="parallax-content-1">
        <div class="animated fadeInDown">
            <h1>Paris Hotels</h1>
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
                <li><a href="#">All Rooms</a>
                </li>
<%--                <li>Page active</li>--%>
            </ul>
        </div>
    </div>
    <!-- Position -->


    <div class="container margin_60">

        <div class="row">
                <div class="box_style_2">
                    <i class="icon_set_1_icon-57"></i>
                    <h4>Need <span>Help?</span></h4>
                    <a href="tel://0673620344" class="phone">+212673620344</a>
                    <small>Monday to Friday 9.00am - 7.30pm</small>
                </div>
            </aside>
            <!--End aside -->

            <div class="col-lg-9">

                <c:forEach items="${rooms}" var="room">
                    <div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
                        <div class="row">
                            <div class="col-lg-4 col-md-4">
                                <div class="ribbon_3 popular"><span>Popular</span>
                                </div>
                                <div class="img_list">
                                    <a href="details.room?id=${room.getRoomId()}"><img src="${room.getImage()}" alt="Image">
                                        <div class="short_info"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="tour_list_desc">
                                    <div class="score">Superb<span>9.0</span>
                                    </div>
                                    <div class="rating"><i class="icon-star voted"></i><i class="icon-star  voted"></i><i class="icon-star  voted"></i><i class="icon-star  voted"></i><i class="icon-star-empty"></i>
                                    </div>
                                    <h3><strong>${room.getName()}</strong> Hotel</h3>
                                    <p>${room.getDescription()}</p>
                                    <ul class="add_info">
                                        <li>
                                            <a href="javascript:void(0);" class="tooltip-1" data-placement="top" title="Free Wifi"><i class="icon_set_1_icon-86"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="tooltip-1" data-placement="top" title="Plasma TV with cable channels"><i class="icon_set_2_icon-116"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="tooltip-1" data-placement="top" title="Swimming pool"><i class="icon_set_2_icon-110"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="tooltip-1" data-placement="top" title="Fitness Center"><i class="icon_set_2_icon-117"></i></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="tooltip-1" data-placement="top" title="Restaurant"><i class="icon_set_1_icon-58"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-2">
                                <div class="price_list">
                                    <div><sup>$</sup>${room.getPrice()}<small>*From/Per night</small>
                                        <p><a href="details.room?id=${room.getRoomId()}" class="btn_1">Details</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End strip -->
                </c:forEach>

                <hr>

<%--                <nav aria-label="Page navigation">--%>
<%--                    <ul class="pagination justify-content-center">--%>
<%--                        <li class="page-item">--%>
<%--                            <a class="page-link" href="#" aria-label="Previous">--%>
<%--                                <span aria-hidden="true">&laquo;</span>--%>
<%--                                <span class="sr-only">Previous</span>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="page-item active"><span class="page-link">1<span class="sr-only">(current)</span></span>--%>
<%--                        </li>--%>
<%--                        <li class="page-item"><a class="page-link" href="#">2</a></li>--%>
<%--                        <li class="page-item"><a class="page-link" href="#">3</a></li>--%>
<%--                        <li class="page-item">--%>
<%--                            <a class="page-link" href="#" aria-label="Next">--%>
<%--                                <span aria-hidden="true">&raquo;</span>--%>
<%--                                <span class="sr-only">Next</span>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </nav>--%>
                <!-- end pagination-->

            </div>
            <!-- End col lg-9 -->
        </div>
        <!-- End row -->
    </div>
    <!-- End container -->
</main>
<!-- End main -->

<%@include file="./footer.jsp" %>

<!-- Check box and radio style iCheck -->
<script>
    $('input').iCheck({
        checkboxClass: 'icheckbox_square-grey',
        radioClass: 'iradio_square-grey'
    });
</script>


</body>

</html>