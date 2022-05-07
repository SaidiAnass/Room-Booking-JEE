<!DOCTYPE html>
<html lang="en">

<%@include file="header.jsp" %>
<main>
    <section id="hero" class="login" style="background-image: url('http://www.ansonika.com/citytours/img/bg_login.jpg')">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
                    <div id="login">
                        <div class="text-center"><img src="assets/img/logo_sticky.png" alt="Image" data-retina="true" ></div>
                        <hr>
                        <form action="client-register.auth" method="post">
                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" class=" form-control"  placeholder="First Name" name="firstname" required>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <input type="text" class=" form-control"  placeholder="Last Name" name="lastname" required>
                            </div>
                            <div class="form-group">
                                <label>Phone Number</label>
                                <input type="text" class=" form-control"  placeholder="Phone Number" name="phonenumber" pattern="0[0123456789]{9}$" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input type="text" class=" form-control"  placeholder="Address" name="address" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class=" form-control" placeholder="Email"n ame="email" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class=" form-control" id="password1" placeholder="Password" name="password" required>
                            </div>
                            <div id="pass-info" class="clearfix"></div>
                            <button class="btn_full">Create an account</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main><!-- End main -->
<%@include file="footer.jsp" %>

</body>
</html>