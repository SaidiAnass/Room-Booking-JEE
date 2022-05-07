<!DOCTYPE html>
<html lang="en">

<%@include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String error = (String) request.getAttribute("error");%>

<section id="hero" style="background-image: url('http://www.ansonika.com/citytours/img/header_bg.jpg')">
    <div class="intro_title error">
        <c:if test="${error == null}">
            <h1 class="animated fadeInDown">404</h1>
            <p class="animated fadeInDown">Oops!! Page not found</p>
        </c:if>
        <c:if test="${error != null}">
            <h1 class="animated fadeInDown">ERROR</h1>
            <p class="animated fadeInDown"><%=error%></p>
        </c:if>

        <a href="index.jsp" class="animated fadeInUp button_intro">Back to home</a> <a href="all-rooms-list.jsp" class="animated fadeInUp button_intro outline">View all rooms</a>
    </div>

</section>
<!-- End hero -->

<%--<main>--%>
<%--    <div class="container margin_60">--%>

<%--        <div class="banner colored add_bottom_30">--%>
<%--            <h4>Discover our Top tours <span>from $34</span></h4>--%>
<%--            <p>--%>
<%--                Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in.--%>
<%--            </p>--%>
<%--            <a href="single_tour.html" class="btn_1 white">Read more</a>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-3 col-md-6 text-center">--%>
<%--                <p>--%>
<%--                    <a href="#"><img src="img/bus.jpg" alt="Pic" class="img-fluid">--%>
<%--                    </a>--%>
<%--                </p>--%>
<%--                <h4><span>Sightseen tour</span> booking</h4>--%>
<%--                <p>--%>
<%--                    Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.--%>
<%--                </p>--%>
<%--            </div>--%>
<%--            <div class="col-lg-3 col-md-6 text-center">--%>
<%--                <p>--%>
<%--                    <a href="#"><img src="img/transfer.jpg" alt="Pic" class="img-fluid">--%>
<%--                    </a>--%>
<%--                </p>--%>
<%--                <h4><span>Transfer</span> booking</h4>--%>
<%--                <p>--%>
<%--                    Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.--%>
<%--                </p>--%>
<%--            </div>--%>
<%--            <div class="col-lg-3 col-md-6 text-center">--%>
<%--                <p>--%>
<%--                    <a href="#"><img src="img/guide.jpg" alt="Pic" class="img-fluid">--%>
<%--                    </a>--%>
<%--                </p>--%>
<%--                <h4><span>Tour guide</span> booking</h4>--%>
<%--                <p>--%>
<%--                    Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.--%>
<%--                </p>--%>
<%--            </div>--%>
<%--            <div class="col-lg-3 col-md-6 text-center">--%>
<%--                <p>--%>
<%--                    <a href="#"><img src="img/hotel.jpg" alt="Pic" class="img-fluid">--%>
<%--                    </a>--%>
<%--                </p>--%>
<%--                <h4><span>Hotel</span> booking</h4>--%>
<%--                <p>--%>
<%--                    Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.--%>
<%--                </p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!-- End row -->--%>
<%--    </div>--%>
<%--    <!-- End container -->--%>
<%--</main>--%>
<!-- End main -->
<%@include file="footer.jsp" %>

</body>

</html>