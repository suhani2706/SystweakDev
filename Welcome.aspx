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
            width:auto;
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


         .full-height {
            background-size: 100% 100%;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            width: 100%;
            margin: 0;
            padding: 0;
        }

        /* Dynamic Backgrounds for Different Times of Day */
        .morning {
            background-image: url('https://e0.pxfuel.com/wallpapers/901/168/desktop-wallpaper-relaxing-to-work-better-and-to-be-more-productive-concentration-pc.jpg');
        }
        .afternoon {
            background-image: url('https://img.freepik.com/premium-vector/minimalist-collection-modern-abstract-mountain-with-landscape-bohemian-style_236657-214.jpg');
        }
        .evening {
            background-image: url('https://static.vecteezy.com/system/resources/previews/015/639/644/non_2x/abstract-minimal-modern-landscape-sunset-illustration-background-vector.jpg');
        }
        .night {
            background-image: url('https://wallpapercave.com/wp/wp8667455.png');
        }

        .header .logo a {
            color: black; 
            text-decoration: none;
            font-size: 30px;
            font-weight: bold; 
            font-family: 'Arial', sans-serif;
            transition: color 0.3s ease; 
        }

        .logo a:hover {
            color: #555; /* Optional: Change color on hover */
        }
        .logo-img {
            width: 100px;
            height: 100px;
            margin-top: 1px;
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
            background-color: transparent;
            color: black; 
            border: 2px solid black;
        }
        .btn-custom {
            pointer-events: auto;
            background-color: black;
            color: white;
            border: 1px solid white;
        }
        .btn:hover {
            background-color: white;
            color: black;
            border: 1px solid black;
        }
        .btn-active{
            background-color: black;
            color: white;
            border: 3px solid black;
        }

        .btn:active , btn:focus{
            background-color: black;
            color: white;
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
        .greeting {
            font-size: 30px;
            color: #000; /* Assuming a light text color for dark backgrounds */
            font-weight: bold;
            margin-bottom: 10px;
        }

        .header.night-mode {
            background-color: transparent; /* White background color */
            color: #000000; /* Dark text color */
        }

        .header.night-mode .logo a {
            color: #ffffff; 
        }

        .header.night-mode .navbar {
            background-color: transparent; /* White background color */
        }

        .header.night-mode .navbar .btn {
            background-color: transparent; /* Transparent background */
            color: #000000; /* Dark text color */
        }

        .header.night-mode .navbar .dropdown-menu {
            background-color: #000000; /* White background color */
            color: #000000; /* Dark text color */
        }

        .header.night-mode .navbar .dropdown-item {
            color: #ffffff; /* Dark text color */
        }

        .header.night-mode .btn.btn-outline-dark {
            border-color: #ffffff; /* White border color */
            color: #ffffff; /* Dark text color */
        }
        .header.night-mode .btn.active{
            background-color: #ffffff;
            color: #000000;
        }
        .header.night-mode .btn:hover{
            background-color: black;
            color: white;
            border: 1px solid white;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header animate__animated animate__fadeInDown">
            <div class="container">
                <div class="inner-container">
                    <h1 class="logo"><a href="Welcome.aspx">SUHANI</a></h1>
                    <nav class="navbar">
                        <ul>
                            <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="btn btn-active" OnClick="btnHome_Click" />
                            <asp:Button ID="btnAbout" runat="server" Text="About" CssClass="btn btn-outline-dark" OnClick="btnAboutMe_Click" />
                           <asp:Button ID="btnMyWork" runat="server" Text="My Work" CssClass="btn btn-outline-dark" OnClick="btnMyWork_Click" />

                            <li class="dropdown">
                                <asp:Button ID="btnContact" runat="server" Text="Contact" CssClass="btn btn-outline-dark dropdown-toggle btn-no-bg" data-toggle="dropdown"/>
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
                                <div class="greeting" id="greetingMessage"></div>
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

        // JavaScript for dynamic background based on the time of day
        window.onload = function () {
            var currentHour = new Date().getHours();
            var bodyClass = '';
            var greetingMessage = '';
            var header = document.querySelector('.header');

            if (currentHour >= 0 && currentHour < 12) {
                bodyClass = 'morning'; // Morning time (6 AM to 12 PM)
                greetingMessage = 'Good Morning!';
                header.classList.remove('night-mode');
            } else if (currentHour >= 12 && currentHour < 18) {
                bodyClass = 'afternoon'; // Afternoon time (12 PM to 6 PM)
                greetingMessage = 'Good Afternoon!';
                header.classList.remove('night-mode');
            } else if (currentHour >= 18 && currentHour < 21) {
                bodyClass = 'evening'; // Evening time (6 PM to 9 PM)
                greetingMessage = 'Good Evening!';
                header.classList.remove('night-mode');
            } else {
                bodyClass = 'night'; // Night time (9 PM to 6 AM)
                greetingMessage = 'Good Evening!';
                header.classList.add('night-mode');
            }



            var backgroundSelection = document.querySelector('.full-height');
            backgroundSelection.classList.add(bodyClass);

            var greetingElement = document.getElementById('greetingMessage');
            greetingElement.textContent = greetingMessage;
        };
    </script>
</body>
</html>
