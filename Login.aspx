<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/Login.aspx.cs" Inherits="Systweak.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <style>
        :root {
            --bs-primary: #0d6efd;
            --bs-secondary: #6c757d;
            --bs-success: #198754;
            --bs-info: #0dcaf0;
            --bs-warning: #ffc107;
            --bs-danger: #dc3545;
            --bs-light: #f8f9fa;
            --bs-dark: #1F67AF;
            --bs-gray: #000;
            --bs-white: #fff;
            --bs-black: #000;
            --bs-font-sans-serif: system-ui,-apple-system,"Segoe UI",Roboto,"Helvetica Neue","Noto Sans","Liberation Sans",Arial,sans-serif;
            --bs-font-monospace: SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;
            --bs-body-bg: #B4D4FF;
            --bs-body-color: #212529;
            --bs-border-radius: 0.375rem;
            --bs-box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
    
        }

        .header {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: var(--bs-dark);
            padding: 10px 0;
            z-index: 1000;
            box-shadow: var(--bs-box-shadow);
            color: var(--bs-white);
        }
        .header .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1140px;
            margin: 0 auto;
        }
        .header .inner-container {
            display: flex;
            align-items: center;
            width: 90%;
            justify-content: space-between;
        }
        .header h1 a, header h1 {
            color: var(--bs-white);
            margin-left:10px ;
        }
        .header nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            gap: 20px;
        }
        .header nav ul li {
            margin: 0;
        }
        .header nav ul li a {
            color: var(--bs-white);
            text-decoration: none;
            font-size: 16px;
            padding: 6px 12px;
            border-radius: var(--bs-border-radius);
            transition: background-color 0.3s;
        }
        .header nav ul li a:hover,
        .header nav ul li a.active {
            background-color: var(--bs-gray);
        }
        .header-social-links {
            display: flex;
            align-items: center;
        }
        .header-social-links a {
            color: var(--bs-white);
            margin-left: 10px;
            font-size: 18px;
            text-decoration: none;
            transition: color 0.3s;
        }
        .header-social-links a:hover {
            color: var(--bs-primary);
            margin-right: 50px;
        }
        .card {
            background-color: #EEF5FF;            
            border-radius: 15px;
            border: 1px groove #808080;  
            min-height: auto;
            margin-top: 100px; 
            padding: 20px;
            backdrop-filter: blur(50px);
            max-height: 90vh;
            overflow-y: auto;
            box-shadow: var(--bs-box-shadow);
            box-sizing: border-box;
        }
        body {
            background-color: var(--bs-body-bg); /* Apply background color */
        }
        a.small.text-muted {
            color: #000 !important;
        }
        .logo-img {
             width: 100px; 
             height: 100px;            
             margin-top: 1px;
        }
    </style>    
</head>
<body>
    <form id="form1" runat="server">
        <section class="full-height">
            <div class="container py-5 h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body text-center">
                                <div class="mb-3">
                                    <img src="images/picture.png" alt="Logo" class="logo-img" />
                                </div>
                                <h4 class="fw-normal mb-4">Login</h4> 
                                
                                <div class="form-group">
                                    <label for="txtEmail" class="col-form-label" style="text-align: left; width: 100%;"><strong>Email address</strong></label>
                                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email" CssClass="form-control form-control-lg" required="required"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtPassword"class="col-form-label" style="text-align:left; width: 100%;"><strong>Password</strong></label>
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter Password" CssClass="form-control form-control-lg" required="required"></asp:TextBox>
                                </div>
                                
                                     <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-dark btn-lg btn-block" OnClick="btnLogin_Click" />
                                 
                                <div class="form-row mt-3">
                                    <div class="form-group col">
                                        <div class="form-check text-left">
                                            <asp:CheckBox ID="chkRemember" runat="server" CssClass="form-check-input" Checked="true" />
                                            <label class="form-check-label" for="chkRemember">Remember me</label>
                                        </div>
                                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label> 
                                    </div>
                                    <div class="form-group col text-right">
                                        <a class="small text-muted" href="ForgotPassword.aspx" style="color: black;">Forgot password?</a>
                                    </div>
                                </div>
                                   <p class="mb-3 pb-lg-2" style="color:black;">Don't have an account? <a href="SignUp.aspx" style="color: black;">Sign Up</a></p>

                                 <div class="text-center mt-3" id="txtVerifyContainer" runat="server">
                                     <label for="txtVerify">Enter OTP:</label>
                                     <asp:TextBox ID="txtVerify" runat="server" CssClass="form-control mb-2"></asp:TextBox>
                                     <asp:Button ID="btnVerify" runat="server" Text="Verify OTP" CssClass="btn small-button" OnClick="btnVerify_Click" />
                                 </div>
                                <div class="text-center mt-3">
                                    <a href="#!" class="small text-muted" style="color: #333333;">Terms of use. Privacy policy</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>      
    </form>

    <!-- Bootstrap JS and dependencies (place at the end of the body for faster page load) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXlJ/Mu3thO+hPmCr5tyO5Ck9czPjqI+Pq0IM+7VDaOB63pr2h9ZZOr1Rm8p" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgGAKV7nU1H1BOE77MiGwdg6sFLz0BGFh3jqSrL04D+XWJ0tjNL" crossorigin="anonymous"></script>
</body>
</html>
