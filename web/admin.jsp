<%-- 
    Document   : admin
    Created on : May 13, 2021, 10:53:26 PM
    Author     : jatin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Admin Dashboard</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-witdh, initial-scale=1.0" />
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css" />

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600;700&display=swap" rel="stylesheet">


</head>

<body>
    <section id="sidebar">
        <div class="sidebar-brand">
            <h2><span> E-Wire</span></h2>
        </div>
        <div class="sidebar-menu">
            <ul>
                <li><a href="#"><i class="fa fa-desktop"></i> <span>Dashboard</span></a></li>
                <li><a href="#"><i class="fa fa-users"></i> <span>Customers</span></a></li>
                <li><a href="#"><i class="fa fa-file"></i> <span>Products</span></a></li>
                <li><a href="#"><i class="fa fa-file-pdf-o"></i> <span>Orders</span></a></li>
                <li><a href="#"><i class="fa fa-money"></i> <span>Income</span></a></li>
                <li><a href="#"><i class="fa fa-user"></i> <span>Account</span></a></li>
                <li><a href="#"><i class="fa fa-sign-out"></i> <span>Logout</span></a></li>
            </ul>
        </div>
    </section>

    <Section id="main-content">
        <header>
            <div class="header-left">
                <h2 class="toggle-btn">
                    <i class="fa fa-bars"></i> Dashboard
                </h2>
            </div>
            <div class="header-left header-serach">
                <div class="serach-par">
                    <input class="search" type="text" placeholder="Search Here...">
                    <i class="fa fa-search"></i>
                </div>
            </div>
            <div class="header-left header-profile">
                <img src="images/user.png" class="img-responsive" />
                <h3>E-wire</h3>
                <p>Admin</p>
            </div>
            <div class="clear"></div>
        </header>
        <div class="clear"></div>
        <div class="main-content-info container">
            <div class="card">
                <h2 class="cus-num cus-h">130</h2>
                <p>Customers</p>
            </div>
            <div class="card">
                <h2 class="cus-num cus-pro">250</h2>
                <p>Products</p>
            </div>
            <div class="card">
                <h2 class="cus-num cus-ord">155</h2>
                <p>Orders</p>
            </div>
            <div class="card">
                <h2 class="cus-num cus-inc">100k</h2>
                <p>Income</p>
            </div>
            <div class="clear"></div>
        </div>
        <div class="content-pro-par container">
            <div class="pro-table">
                <div class="recent-project">
                    <div class="rec-pro-h">
                        <h2>Catalog of Products</h2>
                        <h5>(Recent Products)</h5>
                    </div>
                    <div class="see-all">
                        <button>See all</button>
                    </div>
                    <div class="clear"></div>
                </div>
                <table style="width:100%">
                    <tr>
                        <th>Product Title</th>
                        <th>Variety</th>
                        <th>Quantity</th>
                        <th>Status</th>
                    </tr>
                    <tr>
                        <td>PVC Multistrand Copper Wire</td>
                        <td>1.0 mm, 1.5mm, 2.5mm</td>
                        <td>100</td>
                        <td>In Stock</td>
                    </tr>
                    <tr>
                        <td>Industrial Round Cables Copper</td>
                        <td>1.0 mm, 1.5mm, 2.5mm</td>
                        <td> - </td>
                        <td>Out of Stock</td>
                    </tr>
                    <tr>
                        <td>Submersible Copper Wire</td>
                        <td>1.5 mm, 2.5mm, 4.0mm</td>
                        <td>Pending</td>
                        <td>Pending</td>
                    </tr>
                    <tr>
                        <td>1/18 VIR Copper Wire</td>
                        <td>1/29 1/36 1/40</td>
                        <td>100</td>
                        <td>In Stock</td>
                    </tr>
                    <tr>
                        <td>1/18 ALU Wire</td>
                        <td>2.5mm, 4.0mm, 6.0mm</td>
                        <td>100</td>
                        <td>In Stock</td>
                    </tr>
                    <tr>
                        <td>PVC Tape</td>
                        <td>Insulated</td>
                        <td>100</td>
                        <td>In Stock</td>
                    </tr>
                    <tr>
                        <td>Cooler Leadt</td>
                        <td>7FT 7.5FT 9FT</td>
                        <td>Pending</td>
                        <td>Pending</td>
                    </tr>
                </table>
            </div>
            <div class="pro-cus">
                <div class="recent-project">
                    <div class="rec-pro-h">
                        <h2>All Customers</h2>
                        <h5>(Recent Customers)</h5>
                    </div>
                    <div class="see-all">
                        <button>See all</button>
                    </div>
                    <div class="clear"></div>
                </div>
                <table style="width:100%">
                    <tr>
                        <th>Pic</th>
                        <th>Name</th>
                        <th>Contact</th>
                    </tr>
                    <tr>
                        <td><img class="table-img" src="images/user.png" /></td>
                        <td>Nayan Sharma</td>
                        <td class="cnt-info-td"><a href="tel:9800121212"><i class="fa fa-phone"></i></a><a
                                href="tel:9800121212"><i class="fa fa-envelope"></i></a><a href="tel:9800121212"><i
                                    class="fa fa-map-marker"></i></a></td>
                    </tr>
                    <tr>
                        <td><img class="table-img" src="images/user.png" /></td>
                        <td>Kushal Tripathi</td>
                        <td class="cnt-info-td"><a href="tel:9800121212"><i class="fa fa-phone"></i></a><a
                                href="tel:9800121212"><i class="fa fa-envelope"></i></a><a href="tel:9800121212"><i
                                    class="fa fa-map-marker"></i></a></td>
                    </tr>
                    <tr>
                        <td><img class="table-img" src="images/user.png" /></td>
                        <td>Sameer Agrawal</td>
                        <td class="cnt-info-td"><a href="tel:9800121212"><i class="fa fa-phone"></i></a><a
                                href="tel:9800121212"><i class="fa fa-envelope"></i></a><a href="tel:9800121212"><i
                                    class="fa fa-map-marker"></i></a></td>
                    </tr>
                    <tr>
                        <td><img class="table-img" src="images/user.png" /></td>
                        <td>Rahul Kulkarni</td>
                        <td class="cnt-info-td"><a href="tel:9800121212"><i class="fa fa-phone"></i></a><a
                                href="tel:9800121212"><i class="fa fa-envelope"></i></a><a href="tel:9800121212"><i
                                    class="fa fa-map-marker"></i></a></td>
                    </tr>
                </table>
            </div>
            <div class="clear"></div>
        </div>
    </Section>
    <div class="clear"></div>




    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/external.js"></script>
</body>

</html>