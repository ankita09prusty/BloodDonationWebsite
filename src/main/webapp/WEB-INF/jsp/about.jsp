<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Blood Donation</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
            <a class="nav-link active"   href="${pageContext.request.contextPath}/">Home</a>
          </li>
          <li class="nav-item">
            <a  class="nav-link" href="/about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/blog">Blog</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/activity">Activity</a>
          </li>

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


  <h2 class="text-center" style="font-family: 'Times New Roman', Times, serif;">About</h2>

  <!-- Card and Image Section -->
  <section class="custom-container my-5">
    <div class="row align-items-center">
      <div class="col-lg-6 col-sm-12 mb-4 mb-lg-0">
        <div class="card p-4 shadow-lg">
          <h3 class="card-title text-center">Donate Blood, Save Lives</h3>
          <p class="card-text">
            Blood donation is a simple, safe way to save lives. By donating blood, you can make a significant difference in the lives of patients who need blood transfusions. “Give blood, give plasma, share life, share often.”
          </p>
          <button class="btn btn-primary w-100">Learn More</button>
        </div>
      </div>
      <div class="col-lg-6 col-sm-12">
        <img src="/images/about.jpg" alt="Blood Donation" class="img-fluid rounded shadow-lg">
      </div>
    </div>
  </section>

  <!-- Paragraph Section -->
  <section class="custom-container my-5">
    <div class="row">
      <div class="col-md-12">
        <div class="p-4 bg-light rounded shadow-lg">
          <h2 class="text-center mb-4">Why Blood Donation Matters</h2>
          <p class="text-justify">
            Blood donation is a selfless act that provides the gift of life to countless individuals in need. The demand for blood is constant, as it is required during surgeries, cancer treatments, childbirth, and for treating numerous medical conditions. One donation can save up to three lives.
          </p>
        </div>
      </div>
    </div>
  </section>

  <!-- Image Slider Section -->
  <section class="custom-container my-5">
    <div id="donationSlider" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="/images/about1.jpg" class="d-block w-100 rounded" alt="Blood Donation Event 1">
        </div>
        <div class="carousel-item">
          <img src="/images/about2.jpg" class="d-block w-100 rounded" alt="Blood Donation Event 2">
        </div>
        <div class="carousel-item">
          <img src="/images/about3.jpg" class="d-block w-100 rounded" alt="Blood Donation Event 3">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#donationSlider" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#donationSlider" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
      </button>
    </div>
  </section>

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

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

  <style>
    body {
      background: rgb(253, 237, 240);
    }

    /* Navbar */
    .custom-navbar {
      background-color: #d9534f !important;
      position: sticky;
      top: 0;
      z-index: 1000;
    }

    .custom-navbar .nav-link {
      color: white !important;
    }

    .logo {
      height: 60px;
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

    /* Custom container for wider sections */
    .custom-container {
      width: 90%;
      max-width: 1700px;
      margin: auto;
    }

    /* Card Section */
    /* Card Section */
  .card {
    min-height: 400px; /* Increased height */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.333);
    border-radius: 15px;
    background-color: rgb(255, 255, 240);
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }

  .card:hover {
    transform: translateY(-5px);
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
  }

  .card-title {
    text-align: center;
  }


    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
    }

    .card-title {
      text-align: center;
    }

    /* Content Section */
    .bg-light {
      background-color: #f8f9fa !important;
    }

    .text-justify {
      text-align: justify;
    }

    /* Image Slider */
    .carousel-inner img {
      max-height: 400px;
      object-fit: cover;
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



</body>
</html>