<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!doctype html>
<html lang="zxx">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Hari Om Electricals</title>
        <!-- Template CSS -->
        <jsp:include page="include/css_js.jsp"/>
    </head>
    <body>

        <%
//            response.setHeader("Cache-Control", "no-cache");
//            response.setHeader("Cache-Control", "no-store");
//            response.setHeader("Pragma", "no-cache");
//            response.setDateHeader("Expires", 0);

        %>

        <!--w3l-banner-slider-main-->
        <section class="w3l-banner-slider-main">
           
            <div class="top-header-content">
                <header class="tophny-header">
                    <div class="container-fluid">
                        <div class="top-right-strip row">

                            <!--/left-->
                            <!--    if user registered or login ,show username on screen-->
                            <jsp:include page="include/showUserName.jsp"/>
                            <!--    if user registered or login ,show username on screen-->
                            <!--//left-->

                            <!--/top-right-->
                            <!--  including user login & logout icon-->
                            <jsp:include page="include/user_icon.jsp"/>
                            <!--  including user login & logout icon-->
                            <!--/top-right-->

                            <!--//including login- Register here-->
                            <jsp:include page="include/login_register.jsp"/>
                            <!--//including login- Register here-->
                        </div>
                    </div>	


                    <!--include navigation bar here-->
                    <jsp:include page="include/navbar.jsp"/>
                    <!--include navigation bar here-->

                    <!-- include login register message here-->
                    <jsp:include page="include/message.jsp"/>
                    <!-- include login register message here-->
                
                </header>
            </div>
                    
            <div class="bannerhny-content">
                <!--/banner-slider-->
                <div class="content-baner-inf">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="container">
                                    <div class="carousel-caption">
                                        <h3>ROUND CABLE COPPER<br>
                                            30% Off</h3>
                                        <a href="#" class="shop-button btn">
                                            Shop Now
                                        </a>

                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item item2">
                                <div class="container">
                                    <div class="carousel-caption">
                                        <h3>Single Core
                                            Aluminium
                                            <br>40% Off</h3>
                                        <a href="#" class="shop-button btn">
                                            Shop Now
                                        </a>

                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item item3">
                                <div class="container">
                                    <div class="carousel-caption">
                                        <h3>Submersible
                                            Copper Wire
                                            <br>50% Off</h3>
                                        <a href="#" class="shop-button btn">
                                            Shop Now
                                        </a>

                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item item4">
                                <div class="container">
                                    <div class="carousel-caption">
                                        <h3>1/18 VIR
                                            Copper wire
                                            <br>40% Off</h3>
                                        <a href="#" class="shop-button btn">
                                            Shop Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <!--//banner-slider-->
                <!--//banner-slider-->
                <div class="right-banner">
                    <div class="right-1">
                        <h4>
                            Multi Strand  Wire
                            <br>
                            30% Off</h4>
                        <a href="#" class="shop-button btn">
                            Shop Now
                        </a>
                    </div>
                </div>

            </div>
        </section>

        <section class="w3l-grids-hny-2" id="Products-display">
            <!-- /content-6-section -->
            <div class="grids-hny-2-mian py-5">
                <div class="container py-lg-5">

                    <h3 class="hny-title mb-0 text-center">Shop With <span>Us</span></h3>
                    <p class="mb-4 text-center">Handpicked Favourites just for you</p>
                    <div class="welcome-grids row mt-5">
                        <div class="col-lg-2 col-md-4 col-6 welcome-image">
                            <div class="boxhny13">
                                <a href="#URL">
                                    <img src="assets/images/grid1.jpg" class="img-fluid" alt="" />
                                    <div class="boxhny-content">
                                        <h3 class="title">Product
                                    </div>
                                </a>
                            </div>
                            <h4><a href="#URL">Multi Strand Copper</a></h4>

                        </div>

                        <div class="col-lg-2 col-md-4 col-6 welcome-image">
                            <div class="boxhny13">
                                <a href="#URL">
                                    <img src="assets/images/grid3.jpg" class="img-fluid" alt="" />
                                    <div class="boxhny-content">
                                        <h3 class="title">Product</h3>
                                    </div>
                                </a>
                            </div>
                            <h4><a href="#URL">
                                    Industrial Round Cable Copper</a></h4>


                        </div>
                        <div class="col-lg-2 col-md-4 col-6 welcome-image">
                            <div class="boxhny13">
                                <a href="#URL">
                                    <img src="assets/images/grid2.jpg" class="img-fluid" alt="" />
                                    <div class="boxhny-content">
                                        <h3 class="title">Product</h3>
                                    </div>
                                </a>
                            </div>
                            <h4><a href="#URL">Submersible Wire Copper</a></h4>


                        </div>
                        <div class="col-lg-2 col-md-4 col-6 welcome-image">
                            <div class="boxhny13">
                                <a href="#URL">
                                    <img src="assets/images/grid4.jpg" class="img-fluid" alt="" />
                                    <div class="boxhny-content">
                                        <h3 class="title">Product</h3>
                                    </div>
                                </a>
                            </div>
                            <h4><a href="#URL">1/18 VIR Copper & Alu Wire</a></h4>

                        </div>
                        <div class="col-lg-2 col-md-4 col-6 welcome-image">
                            <div class="boxhny13">
                                <a href="#URL">
                                    <img src="assets/images/grid5.jpg" class="img-fluid" alt="" />
                                    <div class="boxhny-content">
                                        <h3 class="title">Product</h3>
                                    </div>
                                </a>
                            </div>
                            <h4><a href="#URL">
                                    Aluminium Single Core Heavy</a></h4>


                        </div>
                        <div class="col-lg-2 col-md-4 col-6 welcome-image">
                            <div class="boxhny13">
                                <a href="#URL">
                                    <img src="assets/images/grid6.jpg" class="img-fluid" alt="" />
                                    <div class="boxhny-content">
                                        <h3 class="title">Product</h3>
                                    </div>
                                </a>
                            </div>
                            <h4><a href="#URL">
                                    Service Wire 2 Core Aluminium</a></h4>


                        </div>
                        <div class="col-lg-2 col-md-4 col-6 welcome-image">
                            <div class="boxhny13">
                                <a href="#URL">
                                    <img src="assets/images/grid7.jpg" class="img-fluid" alt="" />
                                    <div class="boxhny-content">
                                        <h3 class="title">Product</h3>
                                    </div>
                                </a>
                            </div>
                            <h4><a href="#URL">
                                    Flexible Wire Copper & Aluminium</a></h4>


                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- //content-6-section -->

        <jsp:include page="include/footer.jsp"/>