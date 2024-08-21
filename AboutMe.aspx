<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutMe.aspx.cs" Inherits="Systweak.AboutMe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Me</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" />
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
            --bs-body-bg: #01111E;
            --bs-body-color: #212529;
            --bs-border-radius: 0.375rem;
            --bs-box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
        }

        .header {
            position: fixed;
            background-color: rgba(12, 76, 133, 1);
            top: 0;
            width: 100%;
            padding: 20px 0;
            z-index: 500;
            box-shadow: var(--bs-box-shadow);
            color: var(--bs-white);
            margin-bottom:5px;
        }

        .header .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1140px;
            margin: 0 auto;
            margin-top: 10px;
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

        .header nav ul li a {
            color: var(--bs-white);
            text-decoration: none;
            font-size: 16px;
            padding: 6px 12px;
            border-radius: var(--bs-border-radius);
            transition: background-color 0.3s;
            display: inline-block;
        }

        .header nav ul li a:hover,
        .header nav ul li a.active {
            background-color: var(--bs-gray);
        }

        .card {
            background-color: #EEF5FF;
            border-radius: 15px;
            border: 1px groove #808080;            
            padding: 20px;
            backdrop-filter: blur(50px);
            box-shadow: var(--bs-box-shadow);
            max-height: auto;
            position:relative;
            max-width:1200px;
            z-index:1;
            margin-bottom:10px;
            
        }

        .full-height {
            background-image: url('https://i.pinimg.com/originals/3c/80/36/3c80363c0c2aea38673b3f0cfefa9180.gif');
            background-position: center;
            background-size: cover;
            min-height: 120vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            max-height: auto;
            flex-direction: column;  
            padding-top: 200px;
        }

        body {
            background-color: var(--bs-body-bg);           
        }

        .image-container {
            position: relative;
            padding: 10px;
            margin-right: -50px;
            
        }

        .img-fluid:hover + .ellipse-overlay {
            opacity: 1;
        }

        .img-fluid {
            position: relative;
            z-index: 2;
        }

        .content {
            position: relative;
        }
        
        .btn {
            background-color: black;
            color: white;
            margin-right: 5px;
            transition: background-color 0.3s, color 0.3s;
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
            display: none; 
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
            border: 2px solid #fff;
            color: white;
    
        }
        .skill-sec {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            width:750px;
        }

        .skill-box {
            background-color: #f0f0f0;
            border-radius: 8px;
            padding: 10px 15px;
            text-align: center;
            font-weight: bold;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .skill-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        .image-backg{
            position: relative;
            display: inline-block;
            background-color: rgba(12, 76, 133, 1);
            padding: 10px; 
            border-radius: 8px; 
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); 
        }

        .image-background img {
            display: block; 
        }


    </style>
</head>

<body>
    <form id="form1" runat="server">
        <header class="header animate__animated animate__fadeInDown">
            <div class="container">
                <div class="inner-container">
                    <h2>SUHANI</h2>
                    <nav class="navbar">
                        <ul>
                            <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="btn btn-no-bg" OnClick="btnHome_Click" />
                            <asp:Button ID="btnAbout" runat="server" Text="About" CssClass="btn active" OnClick="btnAbout_Click" />
                            
                             <asp:Button ID="btnMyWork" runat="server" Text="My Work" CssClass="btn btn-outline-dark mr-2 btn-custom btn-no-bg" OnClick="btnMyWork_Click" />

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
                       <asp:Button ID="btnResume" runat="server" Text="Resume" CssClass="btn btn-no-bg" OnClick="btnResume_Click" />
                    </div>
                </div>
            </div>
        </header>
        <section class="full-height" data-aos="fade-in" data-aos-duration="500" style="margin-top:10px;">
            <div class="card" data-aos="zoom-in" data-aos-delay="500">
                <div class="row">
                    <!-- Column for Image -->
                    <div class="col-lg-4 image-container" >
                        <asp:Image ID="imgMe" runat="server" ImageUrl="~/images/MyImage.png" CssClass="img-fluid" Width="280" Height="350" style="margin-left:10px;" AlternateText="Your description here" />
                    </div>
                    <!-- Column for Content -->
                    <div class="col-lg-8 pt-4 pt-lg-0 content">
                        <h3 >UI/UX Designer</h3>
                        <p class="fst-italic" >
                            I am dedicated to staying up-to-date with the latest industry trends and best practices, constantly honing my skills to deliver cutting-edge solutions. Adaptable and collaborative, I excel in dynamic team environments and enjoy collaborating with designers and back-end developers to achieve project goals efficiently.
                        </p>
                        <div class="row" style="margin-left: 10px;">
                            <div class="col-lg-4">
                                <ul>
                                    <li><strong>Full Name:</strong> Suhani Mathur</li>
                                    <li><strong>Birthday:</strong> 27 June 2005</li>
                                    <li><strong>Phone:</strong> 8949511209</li>
                                    <li><strong>City:</strong> Jaipur, India</li>
                                </ul>
                            </div>
                            <div class="col-lg-6">
                                <ul>
                                    <li><strong>Age:</strong> 19</li>
                                    <li><strong>Degree:</strong> Pursuing B.Tech</li>
                                    <li><strong>Email:</strong> suhanim2705@gmail.com</li>
                                    <li><strong>Freelance:</strong> Available</li>
                                </ul>
                            </div>
                        </div>
                        <p class="fst-italic" >
                             I’m a UI/UX designer with a genuine passion for crafting user-friendly and visually appealing digital experiences. Working primarily in Figma, I enjoy bringing ideas to life by designing clean, modern interfaces that people love to interact with. Currently, I’m in my 3rd year of BTech, where I’m diving deeper into both the technical and creative aspects of design. I’m always excited to learn new things and take on challenges that allow me to push my creative boundaries and make something truly impactful.
                        </p>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div class="card" data-aos="zoom-in" data-aos-delay="10" style="margin-bottom:20px;" >
                <div class="row">
                    <!-- Column for Image -->
                    <div class="col-lg-8 pt-4 pt-lg-0 content left">
                         <h3>Skills</h3><br />
                         <p class="fst-italic" style="width:700px;" >
                             With a strong foundation in UI/UX design and a growing expertise in frontend web development, I bring a unique blend of creativity and technical proficiency. Below, you'll find a snapshot of the skills I've developed to create engaging, user-friendly interfaces and seamless web experiences.                         </p>
                        <br /> 
                        <div class="skill-sec" style="margin-left: 10px;">
                             <div class="skill-box">Figma</div>    
                             <div class="skill-box">User-Centerd Design</div>
                             <div class="skill-box">Wireframing</div>
                             <div class="skill-box">Prototyping</div>
                             <div class="skill-box">Responsive design</div>
                             <div class="skill-box">Typography</div>
                             <div class="skill-box">Color Theory</div>
                             <div class="skill-box">HTML</div>
                             <div class="skill-box">CSS</div>
                             <div class="skill-box">Javascript</div>
                             <div class="skill-box">ASP.NET</div>
                         </div>
                    </div>
                    <!-- Column for Content -->
                    <div class="col-lg-4 image-container right" >
                        <div class="image-backg">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Skills.gif" CssClass="img-fluid" Width="500" Height="260" style="margin-left:10px;" AlternateText="Your description here" />
                       </div>
                    </div>
                </div>
            </div><br />
             <asp:Button ID="Resume" runat="server" Text="Go To My Resume" CssClass="btn" OnClick="btnHome_Click" /><br /><br />
        </section>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
        <script>
            AOS.init();
        </script>
    </form>
</body>
</html>
