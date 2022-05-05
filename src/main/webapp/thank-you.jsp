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
        <div class="row">
            <div class="col-lg-8 add_bottom_15">

                <div class="form_title">
                    <h3><strong><i class="icon-ok"></i></strong>Thank you!</h3>
                    <p>
                        Mussum ipsum cacilds, vidis litro abertis.
                    </p>
                </div>
                <div class="step">
                    <p>
                        Lorem ipsum dolor sit amet, nostrud nominati vis ex, essent conceptam eam ad. Cu etiam comprehensam nec. Cibo delicata mei an, eum porro legere no. Te usu decore omnium, quem brute vis at, ius esse officiis legendos cu. Dicunt voluptatum at cum. Vel et facete equidem deterruisset, mei graeco cetero labores et. Accusamus inciderint eu mea.
                    </p>
                </div>
                <!--End step -->

                <div class="form_title">
                    <h3><strong><i class="icon-tag-1"></i></strong>Booking summary</h3>
                    <p>
                        Mussum ipsum cacilds, vidis litro abertis.
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
                                Jhon Doe
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <strong>Check in</strong>
                            </td>
                            <td>
                                10 April 2015</td>
                        </tr>
                        <tr>
                            <td><strong>Check out</strong>
                            </td>
                            <td>
                                12 April 2015
                                <br>
                            </td>
                        </tr>
                        <tr>
                            <td><strong>rooms</strong>
                            </td>
                            <td>1 double room</td>
                        </tr>
                        <tr>
                            <td><strong>Nights</strong>
                            </td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td><strong>Adults</strong>
                            </td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td><strong>Childs</strong>
                            </td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td>
                                <strong>Payment type</strong>
                            </td>
                            <td>
                                Credit card
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <strong>TOTAL COST</strong>
                            </td>
                            <td>
                                $154
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--End step -->
            </div>
            <!--End col -->

            <aside class="col-lg-4">
                <div class="box_style_1">
                    <h3 class="inner">Thank you!</h3>
                    <p>
                        Nihil inimicus ex nam, in ipsum dignissim duo. Tale principes interpretaris vim ei, has posidonium definitiones ut. Duis harum fuisset ut his, duo an dolor epicuri appareat.
                    </p>
                    <hr>
                    <a class="btn_full_outline" href="invoice.html" target="_blank">View your invoice</a>
                </div>
                <div class="box_style_4">
                    <i class="icon_set_1_icon-89"></i>
                    <h4>Have <span>questions?</span></h4>
                    <a href="tel://004542344599" class="phone">+45 423 445 99</a>
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