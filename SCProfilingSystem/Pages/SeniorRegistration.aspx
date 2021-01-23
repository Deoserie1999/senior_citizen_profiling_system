<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeniorRegistration.aspx.cs" Inherits="SCProfilingSystem.Pages.WebForm1" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

        <title>Senior Citizen Registration Form</title>

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
            </nav>

            <aside class="main-sidebar sidebar-dark-primary elevation-4">
              <!-- Brand Logo -->
                  <a href="Home" class="brand-link">
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
                                <a href="#" class="nav-link">
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
                                <a href="pages/layout/top-nav-sidebar.html" class="nav-link">
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
                                <a href="pages/layout/top-nav.html" class="nav-link">
                                    <p>Send SMS Announcement</p>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="pages/layout/top-nav-sidebar.html" class="nav-link">
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
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Senior Citizen Registration Form</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
                                    <li class="breadcrumb-item active">Register Senior Citizen</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </section>


                <!-- Main content -->
                <section class="content">
                    <div class="container-fluid">
                        <div class="card card-default">
                            <div class="card-header">
                                <h3 class="card-title">Register Senior Citizen</h3>
                            </div>

                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                            <label class="lead" for="SeniorID">Senior Citizen ID No.</label>
                                            <asp:TextBox ID="txtseniorID" placeholder="Senior Citizen ID No" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-11">
                                            <div class="form-group">
                                                <label class="lead" for="txtfirstname">Full Name</label>
                                                <asp:TextBox ID="txtfirstname"  placeholder="First Name" class="form-control" runat="server"></asp:TextBox>
                                            </div>

                                            <div class="form-group">
                                                <asp:TextBox ID="txtmiddlename"  placeholder="Middle Name" class="form-control" runat="server"></asp:TextBox>
                                            </div>

                                            <div class="form-group">
                                                <asp:TextBox ID="txtlastname"  placeholder="Last Name" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                 <div class="form-group">
                                                    <label for="rblGender" class="lead">Gender</label>
                                                    <asp:RadioButtonList  runat="server" ID="rblGender" RepeatDirection="Horizontal" CellSpacing="1" CellPadding="1" RepeatColumns="2">
                                                        <asp:ListItem>MALE</asp:ListItem>
                                                        <asp:ListItem>FEMALE</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="txtDob" class="lead">Date of Birth:</label>
                                                 <asp:TextBox runat="server" ID="txtDob" TextMode="Date"></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                 <div class="form-group">
                                                    <label for="rblMS" class="lead">Maritial Status</label>
                                                    <asp:RadioButtonList  runat="server" ID="rblMS" RepeatDirection="Horizontal" CellSpacing="1" CellPadding="1" RepeatColumns="2">
                                                        <asp:ListItem>SINGLE</asp:ListItem>
                                                        <asp:ListItem>MARRIED</asp:ListItem>
                                                        <asp:ListItem>WIDOW/WIDOWER</asp:ListItem>
                                                        <asp:ListItem>ANNULED</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="lead" for="contactnum">Contact Number</label>
                                                    <asp:TextBox ID="txtcontactnum" placeholder="Contact Number" class="form-control" 
                                                    runat="server"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="lead" for="religion">Religion</label>
                                                    <asp:TextBox ID="txtreligion" placeholder="Religion" class="form-control" 
                                                    runat="server"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="lead" for="Address">Occupation</label>
                                                    <asp:TextBox ID="txtoccupation" placeholder="Occupation" class="form-control" 
                                                    runat="server"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="lead" for="Address">Complete Address</label>
                                                    <asp:TextBox ID="txtbarangay" placeholder="Barangay" class="form-control" 
                                                    runat="server"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtmunicipality" placeholder="Municipality" class="form-control" 
                                                    runat="server"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtprovince" placeholder="Province" class="form-control" 
                                                    runat="server"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <label for="fuPhoto" class="lead">File input</label>
                                                    <asp:FileUpload ID="fuPhoto" runat="server" />
                                            </div>

                                            <div class="form-group">
                                                  <div class="col-12">
                                                     <asp:Button ID="btnregister" class="btn btn-success" 
                                                     Style="float: right;" runat="server" Text="Register" OnClick="btnRegister_Onclick"/>                                                    
                                                  </div>
                                             </div>

                                        </div>
                                    
                                    </div>
                                </div>
                            </div>

                            </div>
                        </section>
                     </div>
                </div>
            </div>
    </form>

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Select2 -->
<script src="../../plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="../../plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="../../plugins/moment/moment.min.js"></script>
<script src="../../plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- date-range-picker -->
<script src="../../plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="../../plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="../../plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- BS-Stepper -->
<script src="../../plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- dropzonejs -->
<script src="../../plugins/dropzone/min/dropzone.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>

<script>
$(function () {
  bsCustomFileInput.init();
});
</script>

</body>
</html>
