<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeniorCard.aspx.cs" Inherits="SCProfilingSystem.Pages.SeniorCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>AdminLTE 3 | Contacts</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css" />
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css" />

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
            </nav>

            <aside class="main-sidebar sidebar-dark-primary elevation-4">
              <!-- Brand Logo -->
                  <a href="Home.aspx" class="brand-link">
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
                                <a href="SmsAnnouncement.aspx" class="nav-link">
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

           </div>
        </div>
    </form>


<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>


</body>
</html>
