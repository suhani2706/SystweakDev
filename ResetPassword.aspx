<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Systweak.ResetPassword" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />

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
           
            padding: 10px 0;
            z-index: 1000;
            box-shadow: var(--bs-box-shadow);
            color: var(--bs-white);
        }
        .header .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1160px;
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
            gap: 30px;
        }
        .header nav ul li {
            margin: 0px;
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
            color: var(--bs-white);
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
            background-color: rgba(255, 255, 255, 0.7); 
            border-radius: 15px;
            border: 1px groove #808080;
            margin-top: 100px;
            padding: 20px;
            backdrop-filter: blur(70px);
            box-shadow: var(--bs-box-shadow);
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
        .full-height {
            position: relative;
            background-image: url('https://wallpapers.com/images/hd/minimalist-nature-r17v20du803pf0x1.jpg');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover; /* Ensure the image covers the entire area */
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;            
        }
    </style>
</head>
<body>
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
    <form id="form1" runat="server">
         <header class="header animate__animated animate__fadeInDown">
        <div class="container">
            <div class="inner-container">
                <h1 class="logo"><a href="index.html">SUHANI</a></h1>
                <nav class="navbar">
                    <ul>
                        <li><a href="Welcome.aspx" class="btn btn-outline-light">Home</a></li>
                        <li><a href="contact.html" class="btn btn-outline-light">Support</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
         <section class="full-height" data-aos="fade-in" data-aos-duration="1000">
             <div class="container py-5 h-100">
                 <div class="row justify-content-center align-items-center h-100">
                     <div class="col-md-8 text-center">
                         <div class="card" data-aos="zoom-in" data-aos-delay="500">
                             <div class="card-body">
                                 <div class="mb-4">
                                     <img src="images/picture.png" alt="Logo" class="logo-img" />
                                 </div>
                                <h4 class="fw-normal mb-4">Reset Password</h4>
                                <div class="form-group">
                                    <label for="txtNewPassword" class="col-form-label" style="text-align: left; width: 100%;"><strong>Enter new password:</strong></label>
                                    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" placeholder="Enter new password" CssClass="form-control form-control-lg" required="required"></asp:TextBox>
                                </div>
                                <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" CssClass="btn btn-dark btn-lg btn-block" OnClick="btnResetPassword_Click" />
                                <asp:Label ID="lblMessage" runat="server" CssClass="mt-3" ForeColor="Red"></asp:Label>
                                <div class="footer mt-3">
                                    <a href="#!" class="small text-muted">Terms of use. Privacy policy</a>
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
