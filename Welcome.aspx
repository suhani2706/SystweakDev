<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Systweak.Welcome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Welcome</title>

    <!-- CSS links -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

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
            padding: 20px 0;
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
            width: 100%;
            justify-content: space-between;
        }

        .header h1 a, .header h1 {
            color: var(--bs-white);
            margin-left: 10px;
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

        .header .btn-login,
        .header .btn-signup {
            font-size: 16px;
            padding: 6px 12px;
            border: 2px solid;
            border-radius: var(--bs-border-radius);
            transition: background-color 0.3s;
            margin-left: 20px;
        }

        .header .btn-signup {
            background-color: var(--bs-black);
            color: var(--bs-white);
        }

        .card {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            border: 1px groove #808080;
            margin-top: 100px;
            padding: 20px;
            box-shadow: var(--bs-box-shadow);
        }

        body {
            background-color: var(--bs-body-bg);
        }

        .dropdown-menu {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: rgba(0, 0, 0, 0.8);
            border: 1px solid var(--bs-gray);
            border-radius: var(--bs-border-radius);
            box-shadow: var(--bs-box-shadow);
            z-index: 1000;
        }

        .dropdown-menu a {
            color: var(--bs-white);
            padding: 10px 20px;
            display: block;
            text-decoration: none;
        }

        .dropdown-menu a:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }

        .dropdown:hover .dropdown-menu {
            display: block;
        }

        a.small.text-muted {
            color: #000 !important;
        }

        .btn-custom {
            border-color: black;
        }

        .logo-img {
            width: 100px;
            height: 100px;
            margin-top: 1px;
        }

        .full-height {
            position: relative;
            background-image: url('https://i.pinimg.com/originals/fc/b1/94/fcb194122dffd8f2dabe56d67c768525.gif');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }

        .full-height .content {
            position: relative;
            z-index: 2;
            color: #1F67AF;
        }
        .logo-img {
            width: 100px;
            height: 100px;
        }
        .logo-jiggle {
            display: inline-block; /* Required for animation to work properly */
            transition: transform 0.3s ease; /* Smooth transition effect */
        }

        .logo-jiggle:hover {
            animation: jiggle 0.5s ease infinite; /* Apply the jiggle animation on hover */
        }

        @keyframes jiggle {
            0% { transform: rotate(5deg); }
            50% { transform: rotate(-5deg); }
            100% { transform: rotate(5deg); }
        }
        .btn {
            position: relative;
            z-index: 10;
            background-color: black;
            color: white;
        }
        .btn-custom {
        pointer-events: auto; 
        }
        .btn:hover {
            background-color: white;
            color: black;
            border: 1px solid black;
        }


        .btn:active, .btn:focus {
            background-color: white;
            color: black;
            outline: none;
            border: 1px solid black; 
        }
        
        .navbar .dropdown:hover .dropdown-menu {
            display: block;
        }


        .btn.dropdown-toggle:hover {
            text-decoration: none;
        }

        .dropdown-menu {
            display: none; =
            position: absolute;
            top: 100%;
            left: 0;
            z-index: 1000;
            float: left;
            min-width: 10rem;
            padding: 0.5rem 0;
            margin: 0.125rem 0 0;
            font-size: 1rem;
            color: #212529;
            text-align: left;
            background-color: #fff;
            border: 1px solid rgba(0, 0, 0, 0.15);
            border-radius: 0.25rem;
            box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.175);
        }

        .dropdown-item {
            display: block;
            width: 100%;
            padding: 0.25rem 1.5rem;
            clear: both;
            font-weight: 400;
            color: #212529;
            text-align: inherit;
            white-space: nowrap;
            background-color: transparent;
            border: 0;
        }

        .dropdown-item:hover {
            color: #fff;
            background-color: #007bff;
        }
        .btn-no-bg {
            background-color: transparent; 
            border: 2px solid #000;
            color: black;
            
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header animate__animated animate__fadeInDown">
            <div class="container">
                <div class="inner-container">
                    <h1 class="logo"><a href="Welcome.aspx" style="color:#000;">SUHANI</a></h1>
                    <nav class="navbar">
                        <ul>
                            <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="btn active" OnClick="btnHome_Click" />
                            <asp:Button ID="btnAbout" runat="server" Text="About" CssClass="btn btn-no-bg" OnClick="btnAboutMe_Click" />
                            <asp:Button ID="Button1" runat="server" Text="Resume" CssClass="btn btn-no-bg" OnClick="btnResume_Click" />

                            <li class="dropdown">
                                <asp:Button ID="btnContact" runat="server" Text="Contact" CssClass="btn dropdown-toggle btn-no-bg" data-toggle="dropdown" />
                                <div class="dropdown-menu animate__animated animate__fadeIn">
                                    <asp:Button ID="btnGitHub" runat="server" Text="GitHub" CssClass="dropdown-item" OnClick="btnGitHub_Click" />
                                    <asp:Button ID="btnInstagram" runat="server" Text="Instagram" CssClass="dropdown-item" OnClick="btnInstagram_Click" />
                                    <asp:Button ID="btnLinkedIn" runat="server" Text="LinkedIn" CssClass="dropdown-item" OnClick="btnLinkedIn_Click" />
                                    <asp:Button ID="btnEmail" runat="server" Text="Email" CssClass="dropdown-item" OnClick="btnEmail_Click" />
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <div>
                       
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-outline-dark mr-2 btn-custom btn-no-bg" OnClick="btnLogIn_Click" />
                        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="btn btn-outline-dark mr-2 btn-custom" OnClick="btnSignUp_Click" />
                    </div>
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
                                    <asp:Image ID="imgLogo" runat="server" ImageUrl="~/images/picture.png" CssClass="logo-img logo-jiggle" />

                                </div>
                                <h1 class="mb-4" id="welcomeMessage">Welcome to My Portfolio!</h1>
                                <p class="lead mb-2 animate__animated animate__fadeIn">I'm Suhani Mathur.</p>
                                <p class="lead mb-4 animate__animated animate__fadeIn">I'm a passionate web developer and a UI/UX Designer, specializing in creating innovative and user-friendly web applications. Explore my work and let's connect!</p>
                                <asp:Button ID="btnAboutMe" runat="server" Text="About Me" CssClass="btn btn-outline-dark mr-2 btn-custom" OnClick="btnAboutMe_Click" />
                                <asp:Button ID="btnResume" runat="server" Text="View Resume" CssClass="btn btn-outline-dark btn-custom" OnClick="btnResume_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>

    <!-- JavaScript links -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script>
        AOS.init();
    </script>
</body>
</html>
