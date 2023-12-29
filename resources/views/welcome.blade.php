<!DOCTYPE html>
<html>
<head>
<title>Landing Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

body, html {
  height: 100%;
  line-height: 1.8;
  background-color: #343a40;
}

/* Full height image header */
.bgimg-1 {
  background-position: center;
  background-size: cover;
  background-image: url("../img/fstuin.jpg");
  
  min-height: 600px;
}
img.icon{
    width: 50px; 
    height: auto; 
    margin: 10px;
}

.w3-bar .w3-button {
  padding: 20px;
}
</style>
</head>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <img class="icon" src="{{ asset('img/logouin.png') }}">
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="{{ route('login') }}" class="w3-bar-item w3-button"> Login  </a>
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Header with full-height image -->
<header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-left w3-text-white" style="padding:48px">
    <span class="w3-jumbo w3-hide-small"></span><br>
    <span class="w3-xxlarge w3-hide-large w3-hide-medium"></span><br>
  </div> 
  <div class="w3-display-bottomleft w3-text-grey w3-large" style="padding:24px 48px">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</header>

<!-- Promo Section - "We know design" -->
<div class="w3-container w3-light-grey" style="padding:128px 16px">
  <div class="w3-row-padding">
      <div class="w3-col m6">
          <h3>Aufa kocok.</h3>
          <p>Dikocok kocok aufa dikocok kocok Dikocok kocok aufa dikocok kocok Dikocok kocok aufa dikocok kocok</p>
          <p><a href="#work" class="w3-button w3-black w3-round-large"><i class="fa fa-th"> </i> Lihat Karya Kami</a></p>
      </div>
      <!-- Tambahan: Animasi pada gambar atau elemen lainnya -->
      <div class="w3-col m6">
          <img class="w3-image w3-round-large" src="{{ asset('img/gedunguin.jpg') }}" alt="Buildings" width="700" height="394">
      </div>
  </div>
</div>  



<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <a href="https://www.youtube.com/@informatikauinbandung2413"><i class="fa fa-youtube w3-hover-opacity"></i></a>
    <a href="https://instagram.com/ifuinbandung?igshid=MzMyNGUyNmU2YQ=="><i class="fa fa-instagram w3-hover-opacity"></i></a>
    <a href="https://if.uinsgd.ac.id"><i class="fa fa-globe w3-hover-opacity"></i></a>
   
  </div>
  <p>Powered by <a href="https://if.uinsgd.ac.id" title="W3.CSS" target="_blank" class="w3-hover-text-green">Teknik Informatika</a></p>
</footer>

</body>
</html>
