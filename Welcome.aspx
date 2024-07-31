<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <!-- Animate.css for animations -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">


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
            margin-left:10px;
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
            border-radius: var(--bs-border-radius);
            transition: background-color 0.3s;
            margin-left: 20px;
        }
        .header .btn-signup {
            background-color: var(--bs-black);
            color: var(--bs-white);
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
            background-color: var(--bs-body-bg);
            
        }
        .dropdown-menu {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: rgba(0, 0, 0, 0.8); /* Black background with 80% opacity */
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
            background-color: rgba(255, 255, 255, 0.2); /* Light hover effect with 20% opacity */
        }
        .dropdown:hover .dropdown-menu {
            display: block;
        }
        a.small.text-muted {
            color: #000 !important;
        }
        .btn-custom{
            border-color: black;
        }
        @keyframes jiggles {
            0% { transform: rotate(0deg); }
            25% { transform: rotate(5deg); }
            50% { transform: rotate(-5deg); }
            75% { transform: rotate(5deg); }
            100% { transform: rotate(0deg); }
        }

        /* Logo styles */
        .logo-img {
            width: 100px;
            height: 100px;
            margin-top: 1px;
            transition: transform 0.3s ease;
        }

        .logo-img:hover {
            animation: jiggles 0.5s ease-in-out;
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
        .full-height::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
             /* Slightly opaque white overlay */
            z-index: 1;
        }
        .full-height .content {
            position: relative;
            z-index: 2;
            color: #1F67AF; /* Text color contrasting with the overlay */
        }
        #welcomeMessage {
            color: #000000; /* Darker color for the heading */
        }
        .lead {
            color: #000000; /* Slightly lighter but still dark for the paragraphs */
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
                        <li><a class="active" href="index.html">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="resume.html">Resume</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Contact</a>
                            <div class="dropdown-menu animate__animated animate__fadeIn">
                                <a class="dropdown-item" href="https://github.com/suhani2706" target="_blank">GitHub</a>
                                <a class="dropdown-item" href="https://instagram.com/yourusername" target="_blank">Instagram</a>
                                <a class="dropdown-item" href="https://linkedin.com/in/yourusername" target="_blank">LinkedIn</a>
                                <a class="dropdown-item" href="mailto:your-email@example.com">Email</a>
                            </div>
                        </li>
                    </ul>
                </nav>
                <div>
                    <a href="login.html" class="btn btn-outline-light mr-2 btn-login animate__animated animate__fadeInRight">Log In</a>
                    <a href="signup.html" class="btn btn-signup animate__animated animate__fadeInRight">Sign Up</a>
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
                            <img src="images/picture.png" alt="Logo" class="logo-img" />
                        </div>
                        <h1 class="mb-4" id="welcomeMessage">Welcome to My Portfolio!</h1>
                        <p class="lead mb-2 animate__animated animate__fadeIn" style="margin-bottom: 0.5rem;">I'm Suhani Mathur.</p>
                        <p class="lead mb-4 animate__animated animate__fadeIn">I'm a passionate web developer and a UI/UX Designer, specializing in creating innovative and user-friendly web applications. Explore my work and let's connect!</p>
                        <a href="about.aspx" class="btn btn-custom" id="getStartedButton" style="border-color:black; background-color: #132640; color: var(--bs-white);">About Me</a>
                        <div class="footer mt-4">
                            <a href="terms.html" class="small text-muted" style="color:black; margin-right: 15px;">Terms of Use</a>
                            <a href="privacy.html" class="small text-muted" style="color:black;">Privacy Policy</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script>
        AOS.init();
    </script>
</body>
</html>
