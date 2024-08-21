<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resume.aspx.cs" Inherits="Systweak.Resume" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Resume</title>
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
        <div>
        </div>
    </form>
</body>
</html>
