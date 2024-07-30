<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Systweak.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
            max-height:auto;
        }
        .form-control {
            border-radius: 0.50rem;           
            background-color: rgba(0, 0, 0, 0);            
            color: #FFFFFF;            
            border-color:black;
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
            max-height: auto;
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
            left:195px;
            
        }
        .error-message {
            color: red;
            display: none;
            margin-top: 5px;
            text-align: left;
        }
    </style>
    <script>
        function validatePassword() {
            var password = document.getElementById('<%= txtPassword.ClientID %>').value;
            var confirmPassword = document.getElementById('<%= txtConfirmPassword.ClientID %>').value;
        var passwordError = document.getElementById('<%= lblPasswordError.ClientID %>');
            var confirmPasswordError = document.getElementById('<%= lblConfirmPasswordError.ClientID %>');
            var passwordPattern = /^(?=.*[A-Z])(?=.*[0-9])(?=.*[\W_]).{8,}$/;

            passwordError.style.display = 'none';
            confirmPasswordError.style.display = 'none';

            // Validate password length and complexity
            if (!passwordPattern.test(password)) {
                passwordError.textContent = 'Password must be at least 8 characters long, include an uppercase letter, a number, and a special character.';
                passwordError.style.display = 'block';
                return false;
            }

            // Validate password match
            if (password !== confirmPassword) {
                confirmPasswordError.textContent = 'Passwords do not match';
                confirmPasswordError.style.display = 'block';
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <form id="formSignUp" runat="server">
        <section class="full-height">
            <div class="container py-5 h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-md-6">
                         <div class="card">
                             <div class="card-body text-center">
                                 <div class="mb-3">
                                     <img src="images/download.png" alt="Logo" class="logo-img" />
                                 </div>

                                 <h4 class="fw-normal mb-4">Sign Up</h4>

                                 <div class="form-group">
                                     <label for="txtEmail" class="col-form-label" style="text-align: left; width: 100%;"><strong>Email address</strong></label>
                                     <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email" CssClass="form-control form-control-lg" required="required"></asp:TextBox>
                                 </div>

                                 <div class="form-group">
                                     <label for="txtPassword" class="col-form-label" style="text-align:left; width: 100%;"><strong>Password</strong></label>
                                     <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter Password" CssClass="form-control form-control-lg" required="required"></asp:TextBox>
                                    <asp:Label ID="lblPasswordError" runat="server" CssClass="error-message"></asp:Label>
                                 </div>
                                 

                                 <div class="form-group">
                                     <label for="txtConfirmPassword" class="col-form-label text-left" style="text-align: left; width: 100%;"><strong>Confirm Password</strong></label>
                                     <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password" CssClass="form-control form-control-lg" required="required"></asp:TextBox>
                                     <asp:Label ID="lblConfirmPasswordError" runat="server" CssClass="error-message"></asp:Label>
                                 </div>
                                  

                                 <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="btn btn-dark btn-lg btn-block" OnClick="btnSignUp_Click" OnClientClick="return validatePassword();" />

                                 <a class="small text-muted" href="ForgotPassword.aspx" style="color: black">Forgot password?</a>
                                 <p class="mb-3 pb-lg-2" style="color:black;">Already have an account? <a href="Login.aspx" style="color: black;">Log in</a></p>
                                 <div class="footer">
                                     <a href="#!" class="small text-muted">Terms of use.</a> <a href="#!" class="small text-muted">Privacy policy</a>
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
   <script src="js/script.js"></script>
</body>
</html>