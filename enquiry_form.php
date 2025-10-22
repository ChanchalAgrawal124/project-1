<?php

include("connection.php");

if (isset($_POST['submit'])) {
   
    $customer_name = $_POST['customer_name'];
    $customer_email = $_POST['customer_email'];
    $customer_phone = $_POST['customer_phone'];
    $customer_message = $_POST['customer_message'];
    
    $c_subject = "Enquiry from  " . $customer_name;

    $query = "INSERT INTO enquiry_form (customer_name, customer_email, customer_phone, customer_message) VALUES ('$customer_name', '$customer_email', '$customer_phone', '$customer_message')";

    $to = "sonambenawat@gmail.com";

    $txt = " Candidate Name = " . $customer_name . "\r\n Candidate Mobile = " . $customer_phone . "\r\n Candidate Email ID = " . $customer_email . "\r\n Candidate Message = " . $customer_message;

    $headers = "From: " . $customer_email;

    mail($to, $c_subject, $txt, $headers);

    if (mysqli_query($con, $query)) {
        $msg = "Your Enquiry Has Been Sent Successfully.";
    } else {
        $msg = "Something Went Wrong. Please try again.";
    }
}

?>
<!DOCTYPE html>
<html lang="zxx">

<head>

    <title>Enquiry Form - Rythmic Vibe</title>

    <!-- header -->
    <?php include('inner-header.php'); ?>
    <!--Header End-->
    </div>
    <!--Full width header End-->

    <!-- Main content Start -->
    <div class="main-content">
        
        <!-- Breadcrumbs Start -->
        <div class="rs-breadcrumbs breadcrumbs-overlay ">
            <div class="breadcrumbs-img">
                <img src="assets/images/bg/enquiry.jpg" alt="Breadcrumbs Image">
            </div>
        </div>
        <!-- Breadcrumbs End -->

        <!-- Contact Section Start -->
        <div class="contact-page-section pt-5 pb-100 md-pt-70 md-pb-70">
            <div class="container">
               
                <div class="rs-quick-contact">
                    <div class="inner-part text-center mb-50">
                        <h2 class="title mb-15">Enquiry Form</h2>
                    </div>

                    <div id="form-messages" style = "color:red;"> <?php echo @$msg; ?></div>

                    <form method="post">
                        <div class="row">
                            
                            <div class="col-lg-4 mb-35 col-md-12">
                                <input type="text" name="customer_name" id="customer_name" class="form-control" placeholder="Enter Full Name" required>
                            </div>
                            
                            <div class="col-lg-4 mb-35 col-md-12">
                                <input type="email" name="customer_email" id="customer_email" class="form-control" placeholder="Email ( eg: example@gmail.com )" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                            </div>
                            <div class="col-lg-4 mb-35 col-md-12">
                                <input type="tel" name="customer_phone" id="customer_phone" required pattern="[0-9]{3}[0-9]{3}[0-9]{4}" class="form-control" placeholder="Phone">
                            </div>

                            <div class="col-lg-12 mb-50">
                                <textarea name="customer_message" class="form-control" id="customer_message" cols="30" rows="8" placeholder="Help me understand how I can help you ?" required></textarea>
                            </div>
                        </div>
                        <div class="form-group mb-0">
                            <button type="submit" name="submit" class="btn-send">
                                Send Message
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Contact Section End -->
        
        <?php include('float_buttons.php'); ?>
        
    </div>
    <!-- Main content End -->

    <!-- Footer Start -->
    <?php include('footer.php'); ?>
    <!-- Footer End -->

    <!-- modernizr js -->
    <script src="assets/js/modernizr-2.8.3.min.js"></script>

    <!-- jquery latest version -->
    <script src="assets/js/jquery.min.js"></script>

    <!-- Bootstrap v4.4.1 js -->
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Menu js -->
    <script src="assets/js/rsmenu-main.js"></script>

    <!-- op nav js -->
    <script src="assets/js/jquery.nav.js"></script>

    <!-- owl.carousel js -->
    <script src="assets/js/owl.carousel.min.js"></script>

    <!-- Slick js -->
    <script src="assets/js/slick.min.js"></script>

    <!-- isotope.pkgd.min js -->
    <script src="assets/js/isotope.pkgd.min.js"></script>

    <!-- imagesloaded.pkgd.min js -->
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>

    <!-- wow js -->
    <script src="assets/js/wow.min.js"></script>

    <!-- Skill bar js -->
    <script src="assets/js/skill.bars.jquery.js"></script>

    <script src="assets/js/jquery.counterup.min.js"></script>

    <!-- counter top js -->
    <script src="assets/js/waypoints.min.js"></script>

    <!-- video js -->
    <script src="assets/js/jquery.mb.YTPlayer.min.js"></script>

    <!-- magnific popup js -->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>

    <!-- tilt js -->
    <script src="assets/js/tilt.jquery.min.js"></script>

    <!-- plugins js -->
    <script src="assets/js/plugins.js"></script>

    <!-- contact form js -->
    <script src="assets/js/contact.form.js"></script>

    <!-- main js -->
    <script src="assets/js/main.js"></script>


    </body>

</html>