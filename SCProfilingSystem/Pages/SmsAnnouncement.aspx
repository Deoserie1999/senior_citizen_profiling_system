<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SmsAnnouncement.aspx.cs" Inherits="SCProfilingSystem.Pages.SmsAnnouncement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>SMS Announcement</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css" />
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css" />
  <!-- iCheck -->
  <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css" />
  <!-- JQVMap -->
  <link rel="stylesheet" href="../plugins/jqvmap/jqvmap.min.css" />
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css" />
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css" />
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css" />
  <!-- summernote -->
  <link rel="stylesheet" href="../plugins/summernote/summernote-bs4.min.css" />
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <form id="form1" runat="server">
          <div class="wrapper">
            <div class="sidebar">
            <!-- Navbar -->
            <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                    </li>
                </ul>

                <ul class="navbar-nav ml-auto">
                    <li class="dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#" aria-expanded="false">
                            <i class="fa fa-user"></i> <%= Session["Username"] %> <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear"></i> Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="/Pages/Logout.aspx"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            

              <aside class="main-sidebar sidebar-dark-primary elevation-4">
              <!-- Brand Logo -->
                  <a href="#" class="brand-link">
                     <img src="../img/logo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8" />
                        <span class="brand-text font-weight-light"><b>Sapian</b></span>
                  </a>
            
              <!-- Sidebar -->
              <div class="sidebar">
                  <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                        <li class="nav-item">
                            <a href="#" class="nav-link">
                            <i class="fas fa-users"></i>
                            <p>
                            Senior Citizen Account
                            <i class="fas fa-angle-left right"></i>
                            </p>
                            </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="SeniorRegistration.aspx" class="nav-link">
                                    <p>Register Senior Citizen</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="RegisteredSenior.aspx" class="nav-link">
                                    <p>Registered Senior Citizen List</p>
                                </a>
                            </li>
                          </ul>

                          </li>

                          <li class="nav-item">
                            <a href="#" class="nav-link">
                            <i class="fas fa-calculator"></i>
                            <p>
                            Budgeting
                            <i class="fas fa-angle-left right"></i>
                            </p>
                            </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="pages/layout/top-nav.html" class="nav-link">
                                    <p>Update Pension</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="ViewBudget.aspx" class="nav-link">
                                    <p>View Monthly Budget</p>
                                </a>
                            </li>
                          </ul>
                          </li>

                          <li class="nav-item">
                            <a href="#" class="nav-link">
                            <i class="fas fa-scroll"></i>
                            <p>
                            Post Announcement
                            <i class="fas fa-angle-left right"></i>
                            </p>
                            </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="SmsAnnounce.aspx" class="nav-link">
                                    <p>Send SMS Announcement</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="CalendarPension.aspx" class="nav-link">
                                    <p>Schedule of Receiving Pension</p>
                                </a>
                            </li>
                          </ul>
                          </li>

                      </ul>
                  </nav>
              </div>

            </aside>

                <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                    <div class="content-header">
                        <div class="container-fluid">
                            <div class="row mb-2">
                                <div class="col-sm-6">
                                    <h1 class="m-0">SMS Announcement</h1>
                                </div><!-- /.col -->

                                <div class="col-sm-6">
                                    <ol class="breadcrumb float-sm-right">
                                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                                            <li class="breadcrumb-item active">Sms Announcement</li>
                                    </ol>
                                </div><!-- /.col -->
                            </div><!-- /.row -->
                      </div><!-- /.container-fluid -->
                  </div>
  <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="card card-outline card-info">
            <div class="card-header">
              <h3 class="card-title">
                Create SMS Announcement
              </h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <textarea id="summernote">
                Place <em>some</em> <u>text</u> <strong>here</strong>
              </textarea>
                <div class="form-group">
                    <asp:Button ID="Send" runat="server" Text="Send" />
                </div>
            </div>
          </div>
        </div>
        <!-- /.col-->
      </div>
      <!-- ./row -->
</section>

              </div>

            </div>
        </div>
    </form>


<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- Summernote -->
<script src="../../plugins/summernote/summernote-bs4.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
    $(function () {
        // Summernote
        $('#summernote').summernote()

        // CodeMirror
        CodeMirror.fromTextArea(document.getElementById("codeMirrorDemo"), {
            mode: "htmlmixed",
            theme: "monokai"
        });
    })
</script>

</body>
</html>
