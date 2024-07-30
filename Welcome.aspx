<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

       <style>
        :root {
            --bs-primary: #0d6efd;
            --bs-secondary: #6c757d;
            --bs-success: #198754;
            --bs-info: #0dcaf0;
            --bs-warning: #ffc107;
            --bs-danger: #dc3545;
            --bs-light: #f8f9fa;
            --bs-dark: #6482AD;
            --bs-gray: #000;
            --bs-white: #fff;
            --bs-black: #000;
            --bs-font-sans-serif: system-ui,-apple-system,"Segoe UI",Roboto,"Helvetica Neue","Noto Sans","Liberation Sans",Arial,sans-serif;
            --bs-font-monospace: SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;
            --bs-body-bg: #F5EDED;
            --bs-body-color: #212529;
            --bs-border-radius: 0.375rem;
            --bs-box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
            
        }
        
        .header {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: var(--bs-dark);
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
            width: 100%;
            justify-content: space-between;
        }
        .header h1 a, header h1 {
            color: var(--bs-white);
            margin: 0;
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
        }
        .card {
            background-color: #e2dad6;            
            border-radius: 1.50rem;
            border: none;             
            min-height: auto;
            margin-top: 100px; 
            padding: 20px;
            backdrop-filter: blur(50px);
            max-height: 90vh;
            overflow-y: auto;
            box-shadow: var(--bs-box-shadow);
        }
        body {
            background-color: var(--bs-body-bg); /* Apply background color */
        }
        a.small.text-muted {
            color: #000 !important;
        }
    </style>
</head>
<body>
    <header class="header">
        <div class="container">
            <div class="inner-container">
                <h1 class="logo"><a href="index.html">Systweak</a></h1>
                <nav class="navbar">
                    <ul>
                        <li><a class="active" href="index.html">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="resume.html">Resume</a></li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </nav>
                <div class="header-social-links">
                    <a href="https://github.com/suhani2706" class="github"><i class="bi bi-github"></i></a>
                    <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                    <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                </div>
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
                                <img src="images/download.png" alt="Logo" class="logo-img" />
                            </div>
                            <h1 class="mb-4" id="welcomeMessage">Welcome to the Web Form!!</h1>
                            <p class="lead mb-4">This is a beautiful landing page made with Bootstrap.</p>
                            <a href="#" class="btn btn-custom" id="getStartedButton" style="border-color:black;">Get Started</a>
                            <div class="footer">
                                <a href="#!" class="small text-muted" style="color:black;">Terms of use. Privacy policy</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-pzjw8f+ua7Kw1TIqN3FZ/77VQ4D0Uz+og4QinKbuXh2JvyVgBO21jA3Uk+P1F7bM" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgEP5QgtxN7L9G5paNd8o+tWm9d3rF8HhSA1UZVYjrUh1tlfK+f" crossorigin="anonymous"></script>
    <!-- Custom JavaScript -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var getStartedButton = document.getElementById('getStartedButton');
            var welcomeMessage = document.getElementById('welcomeMessage');

            getStartedButton.addEventListener('click', function (event) {
                event.preventDefault();
                alert('Thank you for getting started!');
                welcomeMessage.textContent = 'Let\'s Begin Your Journey!';
            });
        });
    </script>
</body>
</html>
