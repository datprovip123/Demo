<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/33a12d68d3.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../Demowebsite(1)/Vendors/css/grid.css">
    <link rel="stylesheet" type="text/css" href="/Vendors/css/style.css">
  <link rel="stylesheet" type="text/css" href="/Resources/bootstrap-5.0.0-beta3-dist/css/bootstrap.min.css">

    <style>
        *{
  margin: 0;
  padding: 0;
}

body{
    background-image: url(https://image4.uhdpaper.com/wallpaper/mountain-scenery-landscape-sunset-uhdpaper.com-4K-4.3289.jpg);
    background-repeat: no-repeat;
    background-size:cover;
}
/*xử lý menu*/
.dropdown{
  position: relative;
  display: inline-block;
}
.dropdown-content{
  display: none;
  position: absolute;
  z-index: 1;
  background-color: #f5f5f5;
}
.dropdown:hover .dropdown-content{
  display: block;
}
/*list product*/
.list-product-title{
  width: 100%;
  text-transform: uppercase;
  margin-left: 5px;
  margin-right: 5px;

}
.list-product-subtitle{
  width: 100%;
  margin-left: 5px;
  margin-right: 5px;
}

/*product card*/
.card-product{
  width: 100%;
  margin-left: 5px;
  margin-right: 5px;
  overflow: hidden; 
}
img.d-block {
  display: block;
  max-width:1920px;
  max-height:530px;
  width: auto;
  height: auto;
  
}
    </style>
    <title>Document</title>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="index.php">Sound Clownz</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
            </div>
          </nav>
    </header>
    <section>
        <div id="carouselExampleIndicators" class="carousel slide mt-1" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img  class="d-block" src="image/b9.jpeg" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                   <h5>About Sound Clownz</h5>
                   <p>As the world’s largest music and audio platform, Sound Clownz lets people discover and enjoy the greatest selection of music from the most diverse creator community on earth.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block" src="image/b8.jpeg" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                   <h5>About Sound Clownz</h5>
                   <p>Since launching in 2021, the platform has become renowned for its unique content and features, including the ability to share music and connect directly with artists, as well as unearth breakthrough tracks, raw demos, podcasts and more. This is made possible by an open platform that directly connects creators and their fans across the globe.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block" src="image/b10.jpeg" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                   <h5>CONTACT ME</h5>
                   <p>Mobile: 0389979662</p>
                   <p>Email: datptbhaf190023@fpt.edu.vn</p>
                   <p>Address: Hoang Mai, Ha Noi</p>
                   <p>Facebook: <a href="https://www.facebook.com/MeooMeow/" style="text-decoration: none;">https://www.facebook.com/MeooMeow/</p>
                </div>
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>