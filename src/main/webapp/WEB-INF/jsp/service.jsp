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
            <a class="nav-link active"  href="${pageContext.request.contextPath}/">Home</a>
          </li>
          <li class="nav-item">
           <a class="nav-link" href="/about">About</a>
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

<!-- Card and Image Section -->
<div class="hero-image">
    <div class="hero-text mt-2 text-center">
      <h1 style="font-size:50px; font-weight: bold;">OUR Services</h1>
    </div>
  </div>

<section class="container my-5">
  <div class="row align-items-center">
    <div class="col-lg-6 col-sm-12 text-center">
      <!-- Embed YouTube Video -->
      <iframe
        width="100%"
        height="315"
        src="https://www.youtube.com/embed/YOUR_VIDEO_ID"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen>
      </iframe>
    </div>
    <div class="col-lg-6 col-sm-12 mb-4 mb-lg-0">
      <div class="card p-4 shadow-lg text-center">
        <h3 class="card-title">Saving lives in all <br> kinds of amazing <br>ways</h3>
        <p class="card-text">
            Although our life-giving role started with blood <br> donations, today we support more people in <br> more ways than ever before. Watch this video to <br> discover how.
        </p>
      </div>
    </div>
  </div>
</section>


<!-- Paragraph Section -->
<section class="container my-5">
  <div class="row">
    <div class="col-md-12">
        <div class="text-content">
            <div class="text-content">
                <h2>Behind the scenes of blood</h2>

                <p>As one of Australia's largest and most experienced providers of blood and biological products, we can help in more ways than you might expect.</p>

                <!-- Testing Section -->
                <div class="dropdown">
                  <h3 class="dropdown-toggle">Testing</h3>
                  <div class="dropdown-content">
                    <p>We have the capacity for over 4 million blood tests every year, including:</p>
                    <ul>
                      <li>Infectious disease</li>
                      <li>Serological screening</li>
                      <li>Nucleic acid testing</li>
                      <li>Blood grouping</li>
                      <li>Phenotyping</li>
                      <li>Human leucocyte antigen testing and more.</li>
                    </ul>
                  </div>
                </div>

                <!-- Specialist Advice Section -->
                <div class="dropdown">
                  <h3 class="dropdown-toggle">Specialist advice</h3>
                  <div class="dropdown-content">
                    <p>We provide specialist advice to health professionals and researchers locally and internationally. Our team of experts includes:</p>
                    <ul>
                      <li>Scientists</li>
                      <li>Microbiologists</li>
                      <li>Transfusion specialists</li>
                      <li>Researchers</li>
                      <li>Quality assurance experts</li>
                      <li>Regulatory affairs experts</li>
                      <li>Nurses and more.</li>
                    </ul>
                    <p>The Lifeblood team gives operational consulting and support as well as advice on how to achieve good manufacturing practice (GMP) and good laboratory practice (GLP). We help develop quality systems, and give advice to organizations operating under biological regulatory frameworks. Understanding validation and regulatory affairs can be tricky, so we want to help where we can to save time.</p>
                    <p>We also help international blood services. We know a thing or two about national policy, accreditation, quality assurance, volunteer donor recruitment, and GLP, and we’re happy to lend our expertise.</p>
                  </div>
                </div>

                <!-- Biological Storage Section -->
                <div class="dropdown">
                  <h3 class="dropdown-toggle">Biological storage</h3>
                  <div class="dropdown-content">
                    <p>Cold chain logistics mean we can transport blood and blood products safely wherever they need to go. We have clean rooms and state-of-the-art technology in our processing centers to keep every donation in tip-top shape. In fact, our manufacturing facilities are licensed by the Therapeutic Goods Administration and our laboratories are accredited by the National Association of Testing Authorities.</p>
                  </div>
                </div>

                <!-- Research and Development Section -->
                <div class="dropdown">
                  <h3 class="dropdown-toggle">Research and development</h3>
                  <div class="dropdown-content">
                    <p>Our research team works hard to find the best ways to do things and to help us better understand what makes up blood. It’s hard to believe a single drop can be so complex! They work on transfusion, immunogenetics, immunohaematology, and more.</p>
                    <p><a href="/our-research">Read more about our research</a></p>
                  </div>
                </div>
              </div>

              <!-- CSS for Dropdown (Collapsible behavior) -->
              <style>
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
                .dropdown {
                  margin-bottom: 20px;
                }

                .dropdown-toggle {
                  cursor: pointer;
                  font-size: 18px;
                  font-weight: bold;
                  color: #007bff;
                  background: none;
                  border: none;
                  text-align: left;
                }

                .dropdown-content {
                  display: none;
                  margin-top: 10px;
                  padding-left: 20px;
                }

                .dropdown-content ul {
                  list-style-type: disc;
                }

                .dropdown-content p {
                  margin: 10px 0;
                }

                /* Show dropdown content when active */
                .dropdown.active .dropdown-content {
                  display: block;
                }

                .dropdown-toggle:hover {
                  color: #0056b3;
                }
              </style>

              <!-- JavaScript for toggling -->
              <script>
                // Get all dropdown elements
                const dropdowns = document.querySelectorAll('.dropdown');

                // Add click event listener to each dropdown
                dropdowns.forEach(dropdown => {
                  const toggle = dropdown.querySelector('.dropdown-toggle');
                  toggle.addEventListener('click', function() {
                    // Toggle active class to show/hide the dropdown content
                    dropdown.classList.toggle('active');
                  });
                });
              </script>

          </div>

    </div>
  </div>
</section>

<section class="container my-5">
    <h2 class="text-center mb-4">Our Services</h2>
    <div class="row">
      <!-- Service 1 -->
      <div class="col-md-3 col-sm-12 mb-4">
        <div class="card shadow-lg text-center p-4">
          <img src="/images/service1.jpg" alt="Service 1" class="img-fluid mb-3" style="height: 100px; width: 100px; object-fit: cover;">
          <h4 class="card-title">Emergency Response</h4>
          <p class="card-text">
            We provide immediate blood supply during medical emergencies, ensuring quick and efficient response to save lives.
          </p>
        </div>
      </div>

      <!-- Service 2 -->
      <div class="col-md-3 col-sm-12 mb-4">
        <div class="card shadow-lg text-center p-4">
          <img src="/images/service2.jpg" alt="Service 2" class="img-fluid mb-3" style="height: 100px; width: 100px; object-fit: cover;">
          <h4 class="card-title">Blood Screening</h4>
          <p class="card-text">
            We perform comprehensive screening for various diseases to ensure safe and high-quality blood for transfusions.
          </p>
        </div>
      </div>

      <!-- Service 3 -->
      <div class="col-md-3 col-sm-12 mb-4">
        <div class="card shadow-lg text-center p-4">
          <img src="/images/service3.jpg" alt="Service 3" class="img-fluid mb-3" style="height: 100px; width: 100px; object-fit: cover;">
          <h4 class="card-title">Volunteer Recruitment</h4>
          <p class="card-text">
            Our team works to recruit and educate volunteer blood donors to ensure a constant supply of life-saving donations.
          </p>
        </div>
      </div>

      <!-- Service 4 -->
      <div class="col-md-3 col-sm-12 mb-4">
        <div class="card shadow-lg text-center p-4">
          <img src="/images/service4.jpg" alt="Service 4" class="img-fluid mb-3" style="height: 100px; width: 100px; object-fit: cover;">
          <h4 class="card-title">Blood Transportation</h4>
          <p class="card-text">
            We ensure safe and timely transportation of blood to hospitals and clinics through our secure cold chain logistics.
          </p>
        </div>
      </div>
    </div>
  </section>



<!-- Footer Section -->
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


<style>
  body {
    background: rgb(255, 247, 249);
  }

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

  .hero-image {
    background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('/images/servicemain.jpg');
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
    text-align: center;
    min-height: 500px; /* Increase this value for a taller hero section */
    padding: 100px 0; /* Adjust padding if needed */
}


  .hero-text h1 {
    color: white;
  }

  .card {
    height: 400px; /* Adjust the height of the card */
    min-height: 400px; /* Optional: If you want a minimum height */
    display: flex; /* Use flexbox to center content */
    flex-direction: column; /* Stack the content vertically */
    justify-content: center; /* Vertically center the content */
    align-items: center; /* Horizontally center the content */
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.333), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    border-radius: 15px;
    background-color: rgb(255, 255, 240);
    }

    .card .card-title,
    .card .card-text {
        text-align: left; /* Center the text horizontally */
        margin: 0; /* Remove any extra margin */
    }

    .card-title {
        align-items: left;
        margin-bottom: 15px;
        font-weight: bold; /* Optional: Set card title to bold */
        font-size: 1.5rem; /* Optional: Adjust font size of card title */
    }

    .card-text {
        font-size: 1rem; /* Optional: Adjust font size of card text */
    }


  .bg-light {
    background-color: #f8f9fa !important;
  }

  .carousel-inner img {
    max-height: 400px;
    object-fit: cover;
  }

  #scrollTopBtn, #scrollBottomBtn {
    display: none;
    position: fixed;
    right: 30px;
    z-index: 99;
    background-color: #422af8;
    color: white;
    cursor: pointer;
    padding: 15px;
    border-radius: 50%;
    font-size: 16px;
  }


  .text-content {
    font-family: Arial, sans-serif;
    color: #333;
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
  }

  h2 {
    text-align: center;
    color: black;
    font-size: 32px;
    font-weight: 700;
    margin-bottom: 20px;
  }

  .dropdown {
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 10px;
    transition: all 0.3s ease;
    background-color: #f9f9f9;
  }

  .dropdown-toggle {
    cursor: pointer;
    font-size: 20px;
    font-weight: bold;
    color: #007bff;
    background: none;
    border: none;
    text-align: left;
    padding: 10px;
    display: block;
    width: 100%;
    transition: color 0.3s ease, padding 0.3s ease;
  }

  .dropdown-content {
    display: none;
    margin-top: 10px;
    padding-left: 20px;
    padding-top: 10px;
    padding-bottom: 10px;
    background-color: #f0f0f0;
    border-radius: 4px;
  }

  .dropdown-content ul {
    list-style-type: disc;
    padding-left: 20px;
  }

  .dropdown-content p {
    margin: 10px 0;
    line-height: 1.6;
  }

  /* Hover Effects */
  .dropdown:hover {
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    background-color: #f2f9ff;
  }

  .dropdown-toggle:hover {
    color: #0056b3;
    padding-left: 15px;
    transition: padding 0.3s ease;
  }

  /* Show dropdown content when active */
  .dropdown.active .dropdown-content {
    display: block;
  }

  .dropdown-toggle:after {
    content: '+';
    float: right;
    font-size: 20px;
    font-weight: bold;
    margin-top: -5px;
  }

  .dropdown.active .dropdown-toggle:after {
    content: '-';
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

  }

</style>


</body>
</html>