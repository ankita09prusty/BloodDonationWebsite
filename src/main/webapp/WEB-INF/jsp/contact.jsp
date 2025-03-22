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
  </div>

  <div class="container3">
    <div class="info-box">
        <h2>About Blood Donation Website</h2>
        <p>A blood donation website is an online platform that provides information and resources related to blood donation. It typically includes details on how to donate blood, eligibility requirements, and locations of blood donation centers or upcoming blood drives. The website may also offer the option to schedule an appointment for donating blood, volunteer opportunities, and educational content on the importance of blood donation. Additionally, it often provides contact information for those seeking further assistance or with specific questions related to donating blood.</p>
        <p>we have to some thing better from them, if any one to donate blood</p>
    </div>
  </div>


    <div class="container">
    <form action="/action_page.php">
        <label for="fname">First Name</label>
        <input type="text" id="fname" name="firstname" placeholder="Your name..">

        <label for="lname">Last Name</label>
        <input type="text" id="lname" name="lastname" placeholder="Your last name..">

        <label for="country">Country</label>
        <select id="country" name="country">
        <option value="australia">india</option>
        <option value="canada">Canada</option>
        <option value="usa">USA</option>
        <option value="usa">Singapur</option>
        <option value="usa">South Koria</option>
        <option value="usa">Pakistan</option>



        </select>

        <label for="subject">Massege</label>
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

        <input type="submit" value="Submit">
    </form>
    </div>

  <div class="container">
    <div class="contact-info">
        <h2>Contact Us</h2>
        <h3>National Health Mission</h3>
        <p><strong>Department of Health & Family Welfare</strong><br>Annex Building of SIHFW, Unit-8, Nayapalli, Bhubaneswar-751012</p>
        <p><strong>Phone No.:</strong> 0674-2392480/88</p>

        <h3>State Blood Transfusion Council, Odisha</h3>
        <p><strong>Health & Family Welfare Department, Govt. Of Odisha</strong><br>1st Floor, Oil Odisha Building, Nayapali, Bhubaneswar-12</p>
        <p><strong>Tel/Fax No.:</strong> 0674-2391747</p>
        <p><strong>Email:</strong> sbtcorissa@yahoo.co.in</p>
    </div>

    <div class="map-container">
        <!-- Embed a map (Google Maps iframe as an example) -->
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2949.701832497861!2d85.81753231434004!3d20.29605830866932!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a19060cc54774c5%3A0x65cfb11b89d1c8cf!2sNayapalli%2C%20Bhubaneswar%2C%20Odisha%2C%20India!5e0!3m2!1sen!2sus!4v1678323241537!5m2!1sen!2sus"
            width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    </div>
  </div>

  <!-- Footer Section -->
  <footer class="bg-dark text-light mt-5 py-4">
    <div class="container1">
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
  </footer>
  <button onclick="topFunction()" id="myBtn" title="Go to top">//\\</button>
  <script>

  <!-- Bootstrap JS (Bundle with Popper) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>




<style>
    /* General Styles */
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

.hero-image {
    background-image: url('img/cont.jpg');
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
    text-align: center;
    min-height: 0px;
    padding: 100px 0;
    margin-bottom: 50px;
}

.container3 {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 100%;
}

.info-box {
    background-color: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    text-align: center;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    max-width: 900px;
    width: 90%;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.info-box:hover {
    transform: translateY(-10px);
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
}

.info-box h2 {
    color: #e74c3c;
    font-size: 28px;
    margin-bottom: 20px;
}

.info-box p {
    color: #333;
    font-size: 16px;
    line-height: 1.6;
    text-align: left;
}

.container {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    width: 80%;
    max-width: 1200px;
    background-color: #fff;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    border-radius: 8px;
    margin-top: 50px;
}

.contact-info {
    width: 45%;
    padding-right: 20px;
}

.contact-info h2 {
    color: #2c3e50;
    margin-bottom: 10px;
}

.contact-info h3 {
    color: #34495e;
    margin-top: 20px;
}

.contact-info p {
    margin-bottom: 10px;
    color: #7f8c8d;
}

.map-container {
    width: 50%;
    border-radius: 8px;
    overflow: hidden;
}

iframe {
    border-radius: 8px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
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



/* Media Queries for responsiveness */

/* For devices with widths of 1024px or smaller */
@media (max-width: 1024px) {
    .container {
        flex-direction: column;
        align-items: center;
        width: 100%;
        padding: 20px;
    }

    .contact-info,
    .map-container {
        width: 100%;
        margin-bottom: 20px;
    }

    .contact-info h2,
    .contact-info h3 {
        font-size: 20px;
    }

    .contact-info p {
        font-size: 14px;
    }

    iframe {
        width: 100%;
        height: 300px;
    }
}

/* For devices with widths of 768px or smaller (tablets and smaller screens) */
@media (max-width: 768px) {
    .info-box {
        padding: 20px;
    }

    .info-box h2 {
        font-size: 24px;
    }

    .info-box p {
        font-size: 14px;
    }

    .hero-image {
        min-height: 400px;
        padding: 50px 0;
    }

    .contact-info {
        width: 100%;
        margin-bottom: 20px;
    }

    .map-container {
        width: 100%;
    }

    iframe {
        width: 100%;
        height: 300px;
    }
}

/* For devices with widths of 576px or smaller (mobile phones) */
@media (max-width: 576px) {
    .container {
        padding: 15px;
    }

    .contact-info {
        width: 100%;
        padding-right: 0;
    }

    .map-container {
        width: 100%;
    }

    .info-box {
        padding: 15px;
    }

    .info-box h2 {
        font-size: 22px;
    }

    .info-box p {
        font-size: 12px;
    }

    iframe {
        width: 100%;
        height: 250px;
    }

    .custom-navbar .navbar-toggler {
        border-color: #fff;
    }

    .custom-navbar .navbar-toggler-icon {
        background-color: #fff;
    }

    .hero-image {
        padding: 30px 0;
        min-height: 300px;
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