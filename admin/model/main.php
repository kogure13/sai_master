<!DOCTYPE html>
<html lang="en">
<head>
    <?= $main->getHead() ?>
</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col menu_fixed">
                <div class="left_col scroll-view">
                    <div class="navbar nav_title" style="border: 0;">
                        <a href="index.php" class="site_title">
                          <!-- <img src="theme/images/asset.png"> -->
                          <i class="fa fa-history"></i>
                          <span><?= side_title ?></span>
                      </a>
                  </div>
                  <div class="clearfix"></div>
                  <!-- menu profile quick info -->
                  <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="theme/images/img.jpg" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>Name login user</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->
                <br />
                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <?= $main->getMenu() ?>

                </div>
                <!-- /sidebar menu -->
                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Profile" href="?page=profile">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Lock">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Logout" href="?page=logout">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>
        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <img src="theme/images/img.jpg" alt="">Name login user
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="?page=profile&user_id="><i class="fa fa-user-circle pull-right"></i> Profile</a></li>                    
                                <li>
                                    <a href="#" id="version" data-toggle="modal" data-target="#version_model">
                                        <i class="fa fa-question-circle-o pull-right"></i>
                                        Help
                                    </a>
                                </li>
                                <li><a href="?page=logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>              
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->
        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <?= $main->getPage() ?>
            </div>
        </div>
        <!-- /page content -->
        <div id="version_model" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Application version</h4>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-success">
                            <i class="fa fa-question-circle-o fa-3x pull-right"></i>
                            <h4><?=app_name?></h4>
                            <span>V.<?=version?></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer content -->
        <footer>
            <?= $main->getFooter() ?>
        </footer>
        <!-- /footer content -->
    </div>
</div>
<!-- jQuery -->      
<script src="vendors/jquery/dist/jquery.min.js"></script>    
<script src="vendors/jquery/dist/jquery-ui.js"></script>
<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="vendors/fastclick/lib/fastclick.js"></script>    
<script src="vendors/nprogress/nprogress.js"></script>
<!-- ECharts -->
<script src="vendors/echarts/dist/echarts.min.js"></script>
<script src="vendors/echarts/map/js/world.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="vendors/moment/min/moment.min.js"></script>
<!-- bootstrap-datetimepicker -->    
<script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<!-- Datatables -->
<script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script src="vendors/jszip/dist/jszip.min.js"></script>
<script src="vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="vendors/pdfmake/build/vfs_fonts.js"></script>
<!-- Custom Theme Scripts -->    
<script src="vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<!--sweetalert-->
<script src="vendors/sweetalert/sweetalert.min.js"></script>
<!-- PNotify -->
<script src="vendors/pnotify/dist/pnotify.js"></script>
<!-- Multiple Select -->
<script src="vendors/multiple-select-master/multiple-select.js"></script>
<!-- tinyMCE -->
<script src="vendors/tinymce/tinymce.min.js"></script>

<script src="build/js/jquery.validate.min.js"></script>
<script src="build/js/custom.min.js"></script>
<?= $main->getActScript() ?>    
<script type="text/javascript">
    $(document).ready(function() {
        $('.ui-pnotify').remove();
    });
</script>
</body>
</html>