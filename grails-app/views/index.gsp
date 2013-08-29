<!DOCTYPE html>
<html lang="en"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <!-- Title and other stuffs -->
    <title>Dashboard</title>
   <!-- Stylesheets -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Main stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Responsive style (from Bootstrap) -->
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
</head>

<body>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            %{--<!-- Menu button for smallar screens -->--}%
            %{--<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">--}%
                %{--<span>Menu</span>--}%
            %{--</a>--}%
            %{--<!-- Site name for smallar screens -->--}%
            %{--<a href="#" class="brand hidden-desktop">MacBeath</a>--}%

            <!-- Navigation starts -->
            <div class="nav-collapse collapse">

                <!-- Search form -->
                <form class="navbar-search pull-left">
                    <input class="search-query" placeholder="Search" type="text">
                </form>

                <!-- Links -->
                <ul class="nav pull-right">
                    <li class="dropdown pull-right">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-user"></i> Admin <b class="caret"></b>
                        </a>

                        <!-- Dropdown menu -->
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="icon-user"></i> Profile</a></li>
                            <li><a href="#"><i class="icon-cogs"></i> Settings</a></li>
                            <li><a href="#"><i class="icon-off"></i> Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</div>

<!-- Header starts -->
<header>
    <div class="container-fluid">
        <div class="row-fluid">

            <!-- Logo section -->
            <div class="span4">
                <!-- Logo. -->
                <div class="logo">
                    <h1><a href="#">D<span class="bold">SS</span></a></h1>
                    %{--<p class="meta">Deearwalk Salary System</p>--}%
                </div>
                <!-- Logo ends -->
            </div>

            <div class="span4"></div>
            <!-- Search Section-->

           <div class="span4 pull-right">
               <form class="navbar-search">
                   <input class="search-query" placeholder="Search" type="text">
               </form>
           </div>

        </div>
    </div>
</header>

<!-- Header ends -->

<!-- Main content starts -->

<div class="content">

<!-- Sidebar -->
<div class="sidebar">
    <div class="sidebar-dropdown"><a href="#">Navigation</a></div>

    <!--- Sidebar navigation -->
    <!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
    <ul id="nav">
        <!-- Main menu with font awesome icon -->
        <li><a href="#"><i class="icon-home"></i> Dashboard</a>
            <!-- Sub menu markup
	          <ul>
	            <li><a href="#">Submenu #1</a></li>
	            <li><a href="#">Submenu #2</a></li>
	            <li><a href="#">Submenu #3</a></li>
	          </ul>-->
        </li>
        <li class="has_sub"><a href="#"><i class="icon-list-alt"></i> Widgets  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
            <ul>
                <li><a href="#">Widgets #1</a></li>
                <li><a href="#">Widgets #2</a></li>
                <li><a href="#">Widgets #3</a></li>
            </ul>
        </li>
        <li class="has_sub"><a href="#"><i class="icon-file-alt"></i> Pages #1  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
            <ul>
                <li><a href="#">Post</a></li>
                <li><a href="#">Login</a></li>
                <li><a href="#">Register</a></li>
                <li><a href="#">Support</a></li>
                <li><a href="#">Invoice</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="#">Gallery</a></li>
            </ul>
        </li>
        <li class="has_sub"><a href="#"><i class="icon-file-alt"></i> Pages #2  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
            <ul>
                <li><a href="#">Media</a></li>
                <li><a href="#">Statement</a></li>
                <li><a href="#">Error</a></li>
                <li><a href="#">Error Log</a></li>
                <li><a href="#">Calendar</a></li>
                <li><a href="#">Grid</a></li>
            </ul>
        </li>
        <li><a href="#"><i class="icon-bar-chart"></i> Charts</a></li>
        <li><a href="#" class="open"><i class="icon-table"></i> Tables</a></li>
        <li><a href="#"><i class="icon-tasks"></i> Forms</a></li>
        <li><a href="#"><i class="icon-magic"></i> User Interface</a></li>
    </ul>
</div>

<!-- Sidebar ends -->

<!-- Main bar -->
<div class="mainbar">

<!-- Page heading -->
<div class="page-head">
    <h2 class="pull-left"><i class="icon-table"></i> Tables</h2>

    <!-- Breadcrumb -->
    <div class="bread-crumb pull-right">
        <a href="#"><i class="icon-home"></i> Home</a>
        <!-- Divider -->
        <span class="divider">/</span>
        <a href="#" class="bread-current">Dashboard</a>
    </div>

    <div class="clearfix"></div>

</div>
<!-- Page heading ends -->

<!-- Matter -->

<div class="matter">
<div class="container-fluid">

<!-- Table -->

<div class="row-fluid">

<div class="span12">

<div class="widget">

    <div class="widget-head">
        <div class="pull-left">Tables</div>
        <div class="widget-icons pull-right">
            <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
            <a href="#" class="wclose"><i class="icon-remove"></i></a>
        </div>
        <div class="clearfix"></div>
    </div>

    <div class="widget-content">

        <table class="table table-striped table-bordered table-hover">
            <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Location</th>
                <th>Age</th>
                <th>Education</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>Ashok</td>
                <td>India</td>
                <td>23</td>
                <td>B.Tech</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Kumarasamy</td>
                <td>USA</td>
                <td>22</td>
                <td>BE</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Babura</td>
                <td>UK</td>
                <td>43</td>
                <td>PhD</td>
            </tr>
            <tr>
                <td>4</td>
                <td>Ravi Kumar</td>
                <td>China</td>
                <td>73</td>
                <td>PUC</td>
            </tr>
            <tr>
                <td>5</td>
                <td>Santhosh</td>
                <td>Japan</td>
                <td>43</td>
                <td>M.Tech</td>
            </tr>
            </tbody>
        </table>

        <div class="widget-foot">

            <div class="pagination pull-right">
                <ul>
                    <li><a href="#">Prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>

        </div>

    </div>
</div>



<div class="widget">

    <div class="widget-head">
        <div class="pull-left">Tables</div>
        <div class="widget-icons pull-right">
            <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
            <a href="#" class="wclose"><i class="icon-remove"></i></a>
        </div>
        <div class="clearfix"></div>
    </div>

    <div class="widget-content">

        <table class="table table-striped table-bordered table-hover">
            <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Location</th>
                <th>Date</th>
                <th>Type</th>
                <th>Status</th>
                <th>Control</th>
            </tr>
            </thead>
            <tbody>

            <tr>
                <td>1</td>
                <td>Ravi Kumar</td>
                <td>India</td>
                <td>23/12/2012</td>
                <td>Paid</td>
                <td><span class="label label-success">Active</span></td>
                <td>

                    <button class="btn btn-mini btn-success"><i class="icon-ok"></i> </button>
                    <button class="btn btn-mini btn-warning"><i class="icon-pencil"></i> </button>
                    <button class="btn btn-mini btn-danger"><i class="icon-remove"></i> </button>

                </td>
            </tr>


            <tr>
                <td>2</td>
                <td>Parneethi Chopra</td>
                <td>USA</td>
                <td>13/02/2012</td>
                <td>Free</td>
                <td><span class="label label-important">Banned</span></td>
                <td>

                    <button class="btn btn-mini"><i class="icon-ok"></i> </button>
                    <button class="btn btn-mini"><i class="icon-pencil"></i> </button>
                    <button class="btn btn-mini"><i class="icon-remove"></i> </button>

                </td>
            </tr>

            <tr>
                <td>3</td>
                <td>Kumar Ragu</td>
                <td>Japan</td>
                <td>12/03/2012</td>
                <td>Paid</td>
                <td><span class="label label-success">Active</span></td>
                <td>

                    <div class="btn-group">
                        <button class="btn btn-mini"><i class="icon-ok"></i> </button>
                        <button class="btn btn-mini"><i class="icon-pencil"></i> </button>
                        <button class="btn btn-mini"><i class="icon-remove"></i> </button>
                    </div>

                </td>
            </tr>

            <tr>
                <td>4</td>
                <td>Vishnu Vardan</td>
                <td>Bangkok</td>
                <td>03/11/2012</td>
                <td>Paid</td>
                <td><span class="label label-success">Active</span></td>
                <td>

                    <div class="btn-group">
                        <button class="btn btn-mini btn-success"><i class="icon-ok"></i> </button>
                        <button class="btn btn-mini btn-warning"><i class="icon-pencil"></i> </button>
                        <button class="btn btn-mini btn-danger"><i class="icon-remove"></i> </button>
                    </div>

                </td>
            </tr>

            <tr>
                <td>5</td>
                <td>Anuksha Sharma</td>
                <td>Singapore</td>
                <td>13/32/2012</td>
                <td>Free</td>
                <td><span class="label label-important">Banned</span></td>
                <td>

                    <div class="btn-group1">
                        <button class="btn btn-mini btn-success"><i class="icon-ok"></i> </button>
                        <button class="btn btn-mini btn-warning"><i class="icon-pencil"></i> </button>
                        <button class="btn btn-mini btn-danger"><i class="icon-remove"></i> </button>
                    </div>

                </td>
            </tr>

            </tbody>
        </table>

        <div class="widget-foot">

            <div class="pagination pull-right">
                <ul>
                    <li><a href="#">Prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>

        </div>

    </div>

</div>


</div>

</div>


<div class="row-fluid">

    <div class="span6">
        <div class="widget">

            <div class="widget-head">
                <div class="pull-left">Tables</div>
                <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
                </div>
                <div class="clearfix"></div>
            </div>

            <div class="widget-content">

                <table class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Location</th>
                        <th>Type</th>
                        <th>Status</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td>1</td>
                        <td>Ravi Kumar</td>
                        <td>India</td>
                        <td>Paid</td>
                        <td><span class="label label-success">Active</span></td>

                    </tr>


                    <tr>
                        <td>2</td>
                        <td>Parneethi Chopra</td>
                        <td>USA</td>
                        <td>Free</td>
                        <td><span class="label label-important">Banned</span></td>

                    </tr>

                    <tr>
                        <td>3</td>
                        <td>Kumar Ragu</td>
                        <td>Japan</td>
                        <td>Paid</td>
                        <td><span class="label label-success">Active</span></td>

                    </tr>

                    <tr>
                        <td>4</td>
                        <td>Vishnu Vardan</td>
                        <td>Bangkok</td>
                        <td>Paid</td>
                        <td><span class="label label-success">Active</span></td>

                    </tr>

                    <tr>
                        <td>5</td>
                        <td>Anuksha Sharma</td>
                        <td>Singapore</td>
                        <td>Free</td>
                        <td><span class="label label-important">Banned</span></td>

                    </tr>

                    </tbody>
                </table>

                <div class="widget-foot">

                    <div class="pagination pull-right">
                        <ul>
                            <li><a href="#">Prev</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">Next</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>

                </div>

            </div>

        </div>
    </div>

    <div class="span6">

        <div class="widget">

            <div class="widget-head">
                <div class="pull-left">Tables</div>
                <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
                </div>
                <div class="clearfix"></div>
            </div>

            <div class="widget-content">

                <table class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Location</th>
                        <th>Date</th>
                        <th>Type</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td>1</td>
                        <td>Ravi Kumar</td>
                        <td>India</td>
                        <td>23/12/2012</td>
                        <td>Paid</td>
                    </tr>


                    <tr>
                        <td>2</td>
                        <td>Parneethi Chopra</td>
                        <td>USA</td>
                        <td>13/02/2012</td>
                        <td>Free</td>
                    </tr>

                    </tbody>
                </table>

                <div class="widget-foot">

                    <div class="pagination pull-right">
                        <ul>
                            <li><a href="#">Prev</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">Next</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>

                </div>

            </div>

        </div>

    </div>

</div>

</div>
</div>

<!-- Matter ends -->

</div>

<!-- Mainbar ends -->
<div class="clearfix"></div>

</div>
<!-- Content ends -->

<!-- Footer starts -->
<footer>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <!-- Copyright info -->
                <p class="copy">Copyright © 2012 | <a href="www.deerwalk.com">www.deerwalk.com</a> </p>
            </div>
        </div>
    </div>
</footer>

<!-- Footer ends -->

<!-- Scroll to top -->
<span style="display: none;" class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>

<!-- JS -->
<script src="js/jquery_003.js"></script> <!-- jQuery -->
<script src="js/bootstrap.js"></script> <!-- Bootstrap -->
<script src="js/custom.js"></script> <!-- Custom codes -->



