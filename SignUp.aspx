<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Systweak.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <meta charset="utf-8" />
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
            background-color: #173c61;
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
            border: 2px solid white;             
            display: inline-block; 
            border-radius: 5px;
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
    <script>
        $(document).ready(function () {
            $('#formSignUp').submit(function (event) {
                event.preventDefault(); // Prevent the default form submission

                if (validatePassword()) {
                    $.ajax({
                        type: "POST",
                        url: "SignUp.aspx/SignUpUser", // AJAX call to the server-side method
                        data: JSON.stringify({ email: $('#<%= txtEmail.ClientID %>').val(), password: $('#<%= txtPassword.ClientID %>').val() }),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (response) {
                            alert(response.d); // Display the server response
                        },
                        error: function (xhr, status, error) {
                            alert("Error: " + xhr.responseText); // Display any error messages
                        }
                    });
                }
            });
        });

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
        <header class="header animate__animated animate__fadeInDown">
            <div class="container">
                <div class="inner-container">
                    <h1 class="logo"><a href="index.html">SUHANI</a></h1>
                    <nav class="navbar">
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="contact.html">Support</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <section class="full-height">
            <div class="container py-5 h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-md-6">
                         <div class="card">
                             <div class="card-body text-center">
                                 <div class="mb-3">
                                     <img src="images/picture.png" alt="Logo" class="logo-img" />
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
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>