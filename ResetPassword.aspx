<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Systweak.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
   <meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" /> 
<style>
    .full-height {
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
        border-color: black;
    }
    .form-control::placeholder {
        color: #36454F; 
    }
    .btn-block {
        width: 100%;
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
    .footer {
        position: absolute;            
        width: fit-content;
        text-align: center;
        background: rgba(0, 0, 0, 0);
        left: 195px;
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
                                <h4 class="fw-normal mb-4">Reset Password</h4>
                                <div class="form-group">
                                    <label for ="txtNewPassword" class="col-form-label" style="text-align: left; width:100%;"><strong>Enter new password:</strong></label>
                                    <asp:TextBox ID ="txtNewPassword" runat ="server" TextMode="Password" placeholder ="Enter new password" CssClass="form-control form-control-lg" required ="required"></asp:TextBox>            
                                </div>
                                    <asp:Button ID="btnResetPassword" runat="server" Text ="Reset Password" CssClass="btn btn-dark btn-lg btn-block" OnClick="btnResetPassword_Click" />
                                    <asp:Label ID="lblMessage" runat="server" CssClass="mt-3" ForeColor="Red"></asp:Label>
                                <div class="footer">
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
