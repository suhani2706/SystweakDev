<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/Login.aspx.cs" Inherits="Systweak.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <style>
        .full-height{
            min-height: 100vh;
            background-image: url('https://wallpapergod.com/images/hd/minimalist-3840X2160-wallpaper-5fc2dalaakntatt7.jpeg');
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            justify-content: center;
        }
         .form-control {
             border-radius: 0.50rem;           
             background-color: rgba(0, 0, 0, 0);            
             color: #FFFFFF;            
             border-color:black;
         }
       .form-control::placeholder {
            color: #000;
        }
        .btn-primary {
            background-color: forestgreen;
            border-color: forestgreen;
        }
        .btn-primary:hover {
            background-color: darkgreen;
            border-color: darkgreen;
        }
        .btn-danger {
            background-color: #f44336;
            border-color: #f44336;
        }
        .btn-danger:hover {
            background-color: darkred;
            border-color: darkred;
        }
        .avatar {
            width: 20%;
            border-radius: 50%;
        }
        .small-button {
            background-color:red ;
            color: white;
            padding: 8px 16px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            font-size: medium;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .small-button:hover {
            opacity: 0.8;
        }
        .card {
            background-color: rgba(0, 0, 0, 0);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 1.50rem;
            border: none;             
            min-height: auto;
            margin-top: -5px; 
            padding: 20px;
            backdrop-filter: blur(50px);
            max-height: 90vh;
            overflow-y: auto;
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
                                    <img src="images/download.png" alt="Logo" class="logo-img" />
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
