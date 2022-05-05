<!DOCTYPE html>
<html lang="en">

<%@include file="./header.jsp" %>

<section class="parallax-window" data-parallax="scroll" data-image-src="img/header_bg.jpg" data-natural-width="1400" data-natural-height="470">
    <div class="parallax-content-1">
        <div class="animated fadeInDown">
            <h1>Shopping cart</h1>
            <p>Ridiculus sociosqu cursus neque cursus curae ante scelerisque vehicula.</p>
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
                <li><a href="#">Category</a>
                </li>
                <li>Page active</li>
            </ul>
        </div>
    </div>
    <!-- End Position -->

    <div class="container margin_60">
        <div class="checkout-page">

            <ul class="default-links">
                <li>Exisitng Customer? <a href="#">Click here to login</a>
                </li>
            </ul>

            <div class="row">
                <div class="col-lg-7">

                    <div class="billing-details">
                        <div class="shop-form">
                            <form method="post">
                                <div class="default-title">
                                    <h2>Billing Details</h2>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label>First name <sup>*</sup>
                                        </label>
                                        <input type="text" name="field-name" value="" placeholder="" class="form-control">
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label>Last name <sup>*</sup>
                                        </label>
                                        <input type="text" name="field-name" value="" placeholder="" class="form-control">
                                    </div>
                                    <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                        <label>Company name</label>
                                        <input type="text" name="field-name" value="" placeholder="" class="form-control">
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label>Email Address <sup>*</sup>
                                        </label>
                                        <input type="email" name="field-name" value="" placeholder="" class="form-control">
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label>Phone <sup>*</sup>
                                        </label>
                                        <input type="text" name="field-name" value="" placeholder="" class="form-control">
                                    </div>
                                    <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                        <label>Address <sup>*</sup>
                                        </label>
                                        <input type="text" name="field-name" value="" placeholder="" class="form-control">
                                    </div>

<%--                                    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
<%--                                        <div class="check-box">--%>
<%--                                            <input type="checkbox" name="shipping-option" id="account-option"> &ensp;--%>
<%--                                            <label for="account-option">Create an account?</label>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>

                                </div>
                            </form>
                        </div>
                    </div>
                    <!--End Billing Details-->
                </div>
                <!--End Col-->

                <div class="col-lg-5">
                    <div class="your-order">
                        <div class="default-title">
                            <h2>Your Order</h2>
                        </div>
                        <ul class="orders-table">
                            <li class="table-header clearfix">
                                <div class="col">
                                    <strong>Product</strong>
                                </div>
                                <div class="col">
                                    <strong>Total</strong>
                                </div>
                            </li>
                            <li class="clearfix">
                                <div class="col" style="text-transform:none;">
                                    <img src="assets/img/products/thumb-1.jpg" width="50" height="50" alt=""> World Travel Guide
                                </div>
                                <div class="col second">
                                    $15.00
                                </div>
                            </li>
<%--                            <li class="clearfix">--%>
<%--                                <div class="col" style="text-transform:none;">--%>
<%--                                    SubTotal--%>
<%--                                </div>--%>
<%--                                <div class="col second">--%>
<%--                                    $15.00--%>
<%--                                </div>--%>
<%--                            </li>--%>
                            <li class="clearfix total">
                                <div class="col">
                                    <strong>Order Total</strong>
                                </div>
                                <div class="col second">
                                    <strong>$15.00</strong>
                                </div>
                            </li>
                        </ul>
<%--                        <div class="coupon-code">--%>
<%--                            <div class="form-group">--%>
<%--                                <div class="field-group">--%>
<%--                                    <input type="text" name="code" value="" placeholder="Coupon Code" class="form-control">--%>
<%--                                </div>--%>
<%--                                <div class="field-group btn-field">--%>
<%--                                    <button type="submit" class="btn_cart_outine">Apply</button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                    </div>
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
                        <button type="button" class="btn_full">Place Order <i class="icon-left"></i>
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