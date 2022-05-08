<!DOCTYPE html>
<html lang="en">

<%@include file="./header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${ roomId == null }">
    <c:redirect url="/main"/>
</c:if>

<section class="parallax-window" data-parallax="scroll" data-image-src="img/header_bg.jpg" data-natural-width="1400" data-natural-height="470">
    <div class="parallax-content-1">
        <div class="animated fadeInDown">
            <h1>Checkout</h1>
            <p>Log in to your account and complete your booking now!</p>
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
                <li><a href="#">Checkout</a>
                </li>
<%--                <li>Page active</li>--%>
            </ul>
        </div>
    </div>
    <!-- End Position -->

    <div class="container margin_60">
        <div class="checkout-page">

            <div class="row">
                <div class="col-lg-7">

                    <div class="billing-details">
                        <div class="shop-form">
                            <form action="login.booking" method="post">
                                <input hidden value="${roomId}" name="roomId"/>
                                <input hidden value="${numberOfNights}" name="numberOfNights"/>
                                <input hidden value="${startDate}" name="startDate"/>
                                <input hidden value="${endDate}" name="endDate"/>


                                <div class="default-title">
                                    <h2>Log in </h2>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label>Email <sup>*</sup>
                                        </label>
                                        <input type="text" name="email" value="" placeholder="" class="form-control">
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label>Password <sup>*</sup>
                                        </label>
                                        <input type="password" name="password" value="" placeholder="" class="form-control">
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12 text-center">
                                        <input type="submit" class="btn_full" value="Sign in and Book the Room">
                                    </div>


                                </div>
                            </form>
                        </div>
                    </div>
                    <!--End Billing Details-->
                    <div class="billing-details">
                        <div class="shop-form">
                            <form action="register.booking" method="post">
                                <input hidden value="${roomId}" name="roomId"/>
                                <input hidden value="${numberOfNights}" name="numberOfNights"/>
                                <input hidden value="${startDate}" name="startDate"/>
                                <input hidden value="${endDate}" name="endDate"/>
                                <div class="default-title">
                                    <h2>Or Create an Account</h2>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label>First Name <sup>*</sup>
                                        </label>
                                        <input type="text" name="firstname" value="" placeholder="" class="form-control" required >
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label>Last Name <sup>*</sup>
                                        </label>
                                        <input type="text" name="lastname" value="" placeholder="" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                        <label>Phone Number<sup>*</sup></label>
                                        <input type="text" name="phonenumber" value="" placeholder="0673620344" class="form-control" required pattern="0[0123456789]{9}$">
                                    </div>
                                    <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                        <label>Address <sup>*</sup>
                                        </label>
                                        <input type="text" name="address" value="" placeholder="" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label>Email Address <sup>*</sup>
                                        </label>
                                        <input type="email" name="email" value="" placeholder="" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label>Password <sup>*</sup>
                                        </label>
                                        <input type="password" name="password" value="" placeholder="" class="form-control" required>
                                    </div>
                                    <div class="form-group col-md-10 col-sm-6 col-xs-12 text-center">
                                        <input type="submit" class="btn_full" value="Create an Account and Book the Room">
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!--End Col-->

<%--                <div class="col-lg-5">--%>
<%--                    <div class="your-order">--%>
<%--                        <div class="default-title">--%>
<%--                            <h2>Your Order</h2>--%>
<%--                        </div>--%>
<%--                        <ul class="orders-table">--%>
<%--                            <li class="table-header clearfix">--%>
<%--                                <div class="col">--%>
<%--                                    <strong>Product</strong>--%>
<%--                                </div>--%>
<%--                                <div class="col">--%>
<%--                                    <strong>Total</strong>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                            <li class="clearfix">--%>
<%--                                <div class="col" style="text-transform:none;">--%>
<%--                                    <img src="assets/img/products/thumb-1.jpg" width="50" height="50" alt=""> World Travel Guide--%>
<%--                                </div>--%>
<%--                                <div class="col second">--%>
<%--                                    $15.00--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--&lt;%&ndash;                            <li class="clearfix">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <div class="col" style="text-transform:none;">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    SubTotal&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <div class="col second">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    $15.00&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </li>&ndash;%&gt;--%>
<%--                            <li class="clearfix total">--%>
<%--                                <div class="col">--%>
<%--                                    <strong>Order Total</strong>--%>
<%--                                </div>--%>
<%--                                <div class="col second">--%>
<%--                                    <strong>$15.00</strong>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
                    <!--End Your Order-->

                    <div class="place-order">
<%--                        <div class="default-title">--%>
<%--                            <h2>Payment Method</h2>--%>
<%--                        </div>--%>
<%--                        <div class="payment-options">--%>
<%--                            <ul>--%>
<%--                                <li>--%>
<%--                                    <div class="radio-option">--%>
<%--                                        <input type="radio" name="payment-group" id="payment-1" checked>--%>
<%--                                        <label for="payment-1">Cheque Payment<span class="small-text">Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</span>--%>
<%--                                        </label>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                    <div class="radio-option">--%>
<%--                                        <input type="radio" name="payment-group" id="payment-2">--%>
<%--                                        <label for="payment-2">Direct Bank Transfer</label>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                                <li>--%>
<%--                                    <div class="radio-option">--%>
<%--                                        <input type="radio" name="payment-group" id="payment-3">--%>
<%--                                        <label for="payment-3">Paypal<img src="img/credit-card-icon.png" alt="">--%>
<%--                                        </label>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                        <button type="button" class="btn_full">Place Order <i class="icon-left"></i>--%>
                        </button>
                    </div>
                    <!--End Place Order-->

                </div>
            </div>
        </div>
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