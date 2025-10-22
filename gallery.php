<?php
include("connection.php");
?>
<!DOCTYPE html>
<html lang="zxx">

<head>

    <title> Gallery - Rythmic Vibes </title>

    <?php include('inner-header.php'); ?>
    <!--Header End-->

    </div>
    <!--Full width header End-->

    <!-- Main content Start -->
    <div class="main-content">
        <!-- Breadcrumbs Start -->
        <div class="rs-breadcrumbs breadcrumbs-overlay">
            <div class="breadcrumbs-img">
                <img src="assets/images/bg/camera-capture-photograph-media-light(1).jpg" alt="Breadcrumbs Image">
            </div>
            <div class="breadcrumbs-text white-color">
                <h1 class="page-title">Gallery</h1>
                <ul>
                    <li>
                        <a class="active" href="index.php">Home</a>
                    </li>
                    <li>Gallery</li>
                </ul>
            </div>
        </div>
        <!-- Breadcrumbs End -->

        <!-- Events Section Start -->
        <div class="rs-gallery pt-100 pb-100 md-pt-70 md-pb-70">
            <div class="container">
                <div class="row">
                    
                    <?php
                        $sql = "SELECT * FROM tblgallery ORDER BY upload_date DESC";
                        $result = $con->query($sql);
                        while ($row = mysqli_fetch_array($result)) {
                    ?>
                                                
                    <div class="col-lg-4 mb-30 col-md-6">
                        <div class="gallery-img">
                            <a class="image-popup" href="admin/images/gallery/<?php echo $row['image1']; ?>">
                                <img src="admin/images/gallery/<?php echo $row['image1']; ?>" alt="<?php echo $row['image1']; ?>">
                            </a>
                        </div>
                    </div>
                    
                    <?php } ?>
                    
                </div>
            </div>
        </div>
        <!-- Events Section End -->

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

    <!-- magnific popup -->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>

    <!-- Menu js -->
    <script src="assets/js/rsmenu-main.js"></script>

    <!-- op nav js -->
    <script src="assets/js/jquery.nav.js"></script>

    <!-- wow js -->
    <script src="assets/js/wow.min.js"></script>

    <!-- plugins js -->
    <script src="assets/js/plugins.js"></script>

    <!-- contact form js -->
    <script src="assets/js/contact.form.js"></script>

    <!-- main js -->
    <script src="assets/js/main.js"></script>

    </body>

</html>