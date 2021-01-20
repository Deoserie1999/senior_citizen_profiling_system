<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="SCProfilingSystem.Pages.WebForm4" Async="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="shortcut icon" href="../img/logo.png" />

        <title>Admin Login</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css" />
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css" />
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css" />
</head>

<body class="hold-transition login-page">
<form id="form1" runat="server">
    <div class="login-box">
        <div class="card">
            <div class="card-body login-card-body">

                <div class="card-body login-card-body">
                    <p class="login-box-msg"><b>Senior Citizen Profiling System</b></p>
                    <p class="login-box-msg"><b>Sign In</b></p>
                </div>
            <div class="input-group mb-3">
                <asp:TextBox ID="txtusername" CssClass="form-control" 
                placeholder="Username" runat="server"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fa fa-user"></span>
                        </div>
                    </div>
             </div>

             <div class="input-group mb-3">
                 <asp:TextBox ID="txtpassword" TextMode="Password" CssClass="form-control" 
                 placeholder="Password" runat="server"></asp:TextBox>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
            </div>

            <div class="row">
                <div class="col-8">
                    <div class="icheck-primary">
                        <input type="checkbox" id="remember"/>
                            <label for="remember">
                             Remember Me
                            </label>
                   </div>
                </div>

                <!-- /.col -->
                <div class="col-4">
                    <asp:Button ID="Button1" type="submit" UseSubmitBehavior="True" class="btn btn-primary btn-block" 
                    runat="server" Text="Sign In" />
                </div>
          <!-- /.col -->
           </div>
           </div>

        </div>
    </div>
</form>
  

<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>

</body>
</html>
