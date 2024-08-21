<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyWork.aspx.cs" Inherits="Systweak.Otp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Projects</title>
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
            background-color: rgba(255,255,255,0);
            top: 0;
            width: 100%;
            padding: 20px 0;
            z-index: 500;
            box-shadow: var(--bs-box-shadow);
            color: var(--bs-white);
            margin-bottom: 5px;
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

        h2 {
            color: black;
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
            position: relative;
            width: 600px;
            z-index: 1;
            margin-bottom: 10px;
            margin-top: 1px;
            margin-right: -50px;
        }

        .full-height {
            background-image: url('../images/MyWork.png');
            background-position: center;
            background-size: cover;
            min-height: 120vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            max-height: auto;
            flex-direction: column;
        }

        body {
            background-color: var(--bs-body-bg);
        }

        .image-container {
            position: relative;
            padding: 10px;            
            flex: 0 0 400px; 
            margin-right: 0;
            padding-left: 0;
            position: relative; 
            left: -50px; 
        }
        .content {
            position: relative;
            margin-left: 20px;
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
            border: 2px solid #000;
            color: black;
        }

        .ellipse {
            position:absolute;
            width: 470px;
            height: 300px;
            background-color: #908DA8;
            border-radius: 50%;
            z-index: -1;
            top: 50%;
            left: 40%;
            transform: translate(-50%, -50%);
        }
        
        .mockup {
            position: relative;
            z-index: 1;
        }

        h2 {
            align-content: center;
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
                            <asp:Button ID="btnAbout" runat="server" Text="About" CssClass="btn btn-no-bg" OnClick="btnAbout_Click" />
                            <asp:Button ID="btnMyWork" runat="server" Text="My Work" CssClass="btn active" OnClick="btnMyWork_Click" />

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
        <section class="full-height" data-aos="fade-in" data-aos-duration="500">
           
            <h2>BeMyself</h2>
            <div class="d-flex align-items-start">
                <!-- Column for Image -->
                <div class="image-container">
                    <div class="ellipse"></div>
                    <asp:Image ID="imgMe" runat="server" ImageUrl="~/images/Mockup-5.png" CssClass="img-fluid" Width="300" Height="420" AlternateText="Your description here" />
                </div>
                <!-- Column for Content -->
                <div class="content">
                    <div class="card" data-aos="zoom-in" data-aos-delay="500" style="margin-top: 50px; width: 600px;">
                        <h4>About</h4>
                        <p class="fst-italic">
                            "BeMyself" is a mental health app designed to promote self-care and emotional well-being. The user interface (UI) emphasizes simplicity, with a calming design to create a supportive environment for users. Features of the app include tools for tracking mood, daily affirmations, meditation exercises, and a journaling space. "BeMyself" encourages mindfulness and personal growth, providing users with resources to maintain their mental health and embrace self-awareness.
                        </p>
                    </div>
                </div>
            </div>
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
