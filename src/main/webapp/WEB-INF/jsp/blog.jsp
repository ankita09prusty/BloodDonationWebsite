<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation</title>
    <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <style>
      /* General Styles */
      .custom-navbar {
          background-color: #d9534f !important;
          position: sticky;
          top: 0;
          z-index: 1000;
          transition: background-color 0.3s ease;
        }

        .custom-navbar .nav-link {
          color: white !important;
        }

        .logo {
          height: 60px;
      }
      body {
          font-family: Arial, sans-serif;
          color: #333;
          margin: 0;
          padding: 0;
      }

      /* Header */
      header {
          font-family: 'Times New Roman', serif;
          font-size: 22px;
          text-align: center;
           color: rgb(220 53 69);
      }
      /* Dark Mode */
       .dark-mode {
           background-color: black;
           color: white;
       }

       /* Dark Mode Toggle Button */
       .dark-mode-toggle {
           background: none;
           border: none;
           color: white;
           font-size: 20px;
           cursor: pointer;
       }


       #myBtn {
                 display: none;
                 position: fixed;
                 bottom: 20px;
                 right: 30px;
                 z-index: 99;
                 font-size: 18px;
                 border: none;
                 outline: none;
                 background-color: red;
                 color: white;
                 cursor: pointer;
                 padding: 15px;
                 border-radius: 4px;
               }

               #myBtn:hover {
                 background-color: #555;
               }


               /* Footer */
               /* Footer Styles */
               .footer {
                   background: #121212;
                   color: #e0e0e0;
                   padding: 40px 0 20px;
                   font-size: 14px;
               }

               .footer h6 {
                   font-size: 16px;
                   font-weight: bold;
                   margin-bottom: 15px;
                   text-transform: uppercase;
                   color: #00bcd4;
               }

               /* Contact and Quick Links */
               .footer-list {
                   list-style: none;
                   padding: 0;
               }

               .footer-list li {
                   margin-bottom: 10px;
                   font-size: 18px;
                   display: flex;
                   align-items: center;
               }

               .footer-list i {
                   margin-right: 10px;
                   color: #00bcd4;
               }

               /* Quick Links */
               .footer-links {
                   list-style: none;
                   padding: 0;
               }

               .footer-links li {
                   margin-bottom: 8px;
               }

               .footer-links a {
                   text-decoration: none;
                   color: #e0e0e0;
                   transition: color 0.3s ease;
               }

               .footer-links a:hover {
                   color: #00bcd4;
               }

               /* Social Media Icons */
               .social-icons {
                   display: flex;
                   justify-content: center;
                   gap: 15px;
               }

               .social-icons a {
                   color: #e0e0e0;
                   font-size: 20px;
                   transition: color 0.3s ease;
               }

               .social-icons a:hover {
                   color: #00bcd4;
               }

               /* Footer Line */
               .footer-line {
                   border-top: 1px solid #333;
                   margin: 20px 0;
               }

               /* Responsive Design */
               @media (max-width: 768px) {
                   .text-md-end {
                       text-align: center !important;
                   }
               }


    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg custom-navbar">
    <div class="container-fluid">
        <a class="navbar-brand" href="#home"><img src="/images/BloodDonation_Logo.png" alt="Logo" class="logo"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active"  href="${pageContext.request.contextPath}/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" <a href="/about">About</a></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/blog">Blog</a>
                </li>
                <li class="nav-item">
                   <a class="nav-link" href="/activity">Activity</a>

                <li class="nav-item">
                    <a class="nav-link" href="/service">Service</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/contact">Contact</a>
                </li>
            </ul>
        </div>
        <button class="dark-mode-toggle" onclick="toggleDarkMode()">🌙</button>
    </div>
</nav>


<!-- Header -->
<header class="text-red text-center p-4">
    <h1>Blood Donation Saves Lives</h1>
    <p>Be a hero, donate blood today!</p>
</header>


 <style>
        * {box-sizing: border-box;}
        body {font-family: Verdana, sans-serif; margin: 0;}
        .mySlides {display: none;}
        img {vertical-align: middle; width: 100%;}

        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

        .prev:hover, .next:hover {
            background-color: rgba(0,0,0,0.8);
        }

        .message {
            position: absolute;
            bottom: 5%;
            left: 50%;
            transform: translateX(-50%);
            background-color: rgba(255, 0, 0, 0.8);
            color: white;
            padding: 10px 20px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 5px;
        }

        .dot-container {
            text-align: center;
            margin-top: 10px;
        }

        .dot {
            cursor: pointer;
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

        .active, .dot:hover {
            background-color: #717171;
        }
    </style>
</head>
<body>

<div class="slideshow-container">
    <div class="mySlides">
        <img src="/images/Blog1.jpg">
        <div class="message">Donate Blood, Save Lives!</div>
    </div>
    <div class="mySlides">
        <img src="/images/Blog2.webp">
        <div class="message">Your Donation Can Help 3 People!</div>
    </div>
    <div class="mySlides">
        <img src="/images/Blog4.webp">
        <div class="message">Be a Hero – Donate Today!</div>
    </div>

    <a class="prev" onclick="plusSlides(-1)">❮</a>
    <a class="next" onclick="plusSlides(1)">❯</a>
</div>

<div class="dot-container">
    <span class="dot" onclick="currentSlide(1)"></span>
    <span class="dot" onclick="currentSlide(2)"></span>
    <span class="dot" onclick="currentSlide(3)"></span>
</div>

<script>
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {slideIndex = 1;}
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 3000);
    }
</script>



<!-- Blog Content -->
<div class="container mt-5">
    <section class="row">
        <div class="col-lg-8">
            <h2 class="text-danger">Why Donate Blood?</h2>
            <p>Blood donation is a noble act that saves lives. Every drop counts, and your donation can help patients suffering from severe conditions.</p>
            <button class="btn btn-danger">Donate Now</button>
        </div>
        <aside class="col-lg-4">
            <h3 class="text-danger">Benefits of Blood Donation</h3>
            <ul>
                <li>Reduces the risk of heart disease</li>
                <li>Stimulates new blood cell production</li>
                <li>Helps save lives in emergencies</li>
                <li>Promotes overall well-being</li>
            </ul>
        </aside>
    </section>
</div>

<!-- Footer -->
<!-- Footer -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <!-- Contact Section -->
            <div class="col-md-4 mb-4">
                <h6>📞 Contact Us</h6>
                <ul class="footer-list">
                    <li><i class="fas fa-envelope"></i> greetgrowth@wearepi.in</li>
                    <li><i class="fas fa-phone"></i> 7809945425</li>
                    <li><i class="fas fa-map-marker-alt"></i> We Are Pi, behind Aditya Hyundai, BJB Nagar, Bhubaneswar, Odisha 751014</li>
                </ul>
            </div>

            <!-- Quick Links -->
            <div class="col-md-4 mb-4">
                <h6>🔗 Quick Links</h6>
                <ul class="footer-links">
                   <li> <a  href="${pageContext.request.contextPath}/">Home</a></li>
                           <li> <a href="/about">About</a></li>
                           <li> <a href="/blog">Blog</a></li>
                           <li> <a href="/activity">Activity</a></li>
                           <li> <a href="/service">Service</a></li>
                            <li><a href="/contact">Contact</a></li>
                </ul>

            </div>

            <!-- Social Media -->
            <div class="col-md-4 mb-4 text-md-end text-center">
                <h6>🌍 Follow Us</h6>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
        </div>

        <!-- Copyright Section -->
        <hr class="footer-line">
        <div class="text-center small">
            <p class="mb-0">&copy; 2025 We Are Pi . All rights reserved.</p>
        </div>
    </div>
</footer>

<button onclick="topFunction()" id="myBtn" title="Go to top">//\\</button>
<script>
// Toggle dark mode
    function toggleDarkMode() {
        document.body.classList.toggle("dark-mode");
        var btn = document.querySelector(".dark-mode-toggle");
        btn.innerHTML = document.body.classList.contains("dark-mode") ? "☀️" : "🌙";
    }

const scrollTopBtn = document.getElementById("scrollTopBtn");
const scrollBottomBtn = document.getElementById("scrollBottomBtn");

    window.onscroll = function() {
      const scrollPosition = document.documentElement.scrollTop || document.body.scrollTop;
      const windowHeight = document.documentElement.scrollHeight - document.documentElement.clientHeight;

      if (scrollPosition > 20) {
        scrollTopBtn.style.display = "block";
      } else {
        scrollTopBtn.style.display = "none";
      }

      if (scrollPosition < windowHeight - 20) {
        scrollBottomBtn.style.display = "block";
      } else {
        scrollBottomBtn.style.display = "none";
      }
    };

    function scrollToTop() {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    }

    function scrollToBottom() {
      window.scrollTo({ top: document.documentElement.scrollHeight, behavior: 'smooth' });
    }
    // Get the button
    let mybutton = document.getElementById("myBtn");

    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        mybutton.style.display = "block";
      } else {
        mybutton.style.display = "none";
      }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    }


   </script>


</body>
</html>
