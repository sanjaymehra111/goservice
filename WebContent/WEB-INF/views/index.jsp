<html>
<head>

<!-- Bootstrap -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<!-- Font Awesome-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Carousel-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">

<!--For slick bar-->         
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css">

<!--For Webpage Logo-->
<link rel="shortcut icon" href="/goservice/files/images/logo3-plane.png">


<!--For GeoLocaitgon-->
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;key=AIzaSyAhJW0BL0uuVzXfhkhiQb3ZXF8f4pQ0vYQ&amp;libraries=places,geometry"></script>

<style>
    .textstyle1
    {
      font-size: 17px;
      font-weight: bold
    }
    
    .image1
    {
      width:80px; 
      height:80px;
    }
    

.sticky 
  {
  position: fixed;
  top: 0;
  width: 100%;
  z-index: 999;
  }

  .sticky + .content
{
  padding-top: 120px;
}


    .slider-text
    {
      text-transform: capitalize;
        font-size: 48px;
        transition: 0.3s;
    }
        .item,
        .active {
            height: 100%;
        }
        
        .carousel
        {
            height: 85%;
            transition: 0.5s;
        }
        
        .carousel-inner {
          height: 100%;
          background: #000;
        }
        
        .carousel-caption
        {
          text-align: right;
          padding-bottom:150px;
          right: 15%;
        }
        .carousel-control .glyphicon-chevron-right, .carousel-control .icon-next
        {
          margin-right: -80px;
        }
        .carousel-control .glyphicon-chevron-left, .carousel-control .icon-prev
        {
          margin-left: -100px;
        }
        
        h2{font-size: 60px;}
        p{padding:10px}
        
        /* Background images are set within the jsp using inline CSS, not here */
        
        .fill {
            width: 100%;
            height: 100%;
            background-position: center;
            background-size: cover;
            opacity:0.4;
        }
        
        
        
        
        /**
         * Button
         */
        .btn-transparent {
          background: transparent;
          color: #fff;
          border: 2px solid #fff;
        }
        .btn-transparent:hover {
          background-color: #fff;
        }
        
        .btn-rounded {
          border-radius: 70px;
        }
        
        .btn-large {
          padding: 11px 45px;
          font-size: 18px;
        }
        
        /**
         * Change animation duration
         */
        .animated {
          animation-duration: 1.5s;
        }
        
        @-webkit-keyframes fadeInRight {
          from {
            opacity: 0;
            -webkit-transform: translate3d(100px, 0, 0);
            transform: translate3d(100px, 0, 0);
          }
        
          to {
            opacity: 1;
            -webkit-transform: none;
            transform: none;
          }
        }
        
        @keyframes fadeInRight {
          from {
            opacity: 0;
            -webkit-transform: translate3d(100px, 0, 0);
            transform: translate3d(100px, 0, 0);
          }
        
          to {
            opacity: 1;
            -webkit-transform: none;
            transform: none;
          }
        }
        
        .fadeInRight {
          -webkit-animation-name: fadeInRight;
          animation-name: fadeInRight;
        }
        
        .home-text1
  {
    height:280;
  }

  .home-text1-2
  {
    height:240;
  }
  .form-button
{
  font-size: 18px;
  font-weight: bold;
  padding: 12px;
  width: 37.5%;
  outline: none;
  border:none;
  background: white;
  color:black;
  transition: 0.5s;
  border:solid 1px black;
  }
.car-form-buttom
{
  background-color: rgb(17, 91, 177);
  color: white;
}
.bike-content
{
  display: none;
}
.car-submit-button, .bike-submit-button
{
  width: 80%; 
  background-color: rgb(17, 91, 177);
  transition: 0.3s;
  color: white;
}

.car-submit-button:hover, .bike-submit-button:hover
{
  background-color: rgb(6, 45, 90);
  color: white;
  box-shadow: 10px 10px 10px  rgba(0, 0, 0, 0.384);
}

.car-submit-button:active, .bike-submit-button:active
{
  transform: scale(0.98);
  box-shadow: 10px 10px 10px  rgba(0, 0, 0, 0.596);
}

.book-form
{
  z-index: 99;
  position: absolute;
  top:180;
  opacity: 10.091;
  transition: 0.5s;
  left: 20;
}

.book-form:hover
{
  opacity: 2;
}



    .content2
    {
      background-color: rgba(0, 0, 0, 0.048);
    }
  .service-button
  {
    width: 20%;
    font-size: 18px;
    font-weight: bold;;
    border:none;
    outline: none;
    background: none;
    transition: 0.3s;
    color:rgb(79, 114, 153);
    padding: 10px;
    
  }
  
  .service-button-car
  {
    border-bottom: solid 2px rgb(20, 54, 94);
  }
  
  .service-button:hover
  {
    color:rgb(20, 54, 94);
  }
  
  .service1
  {
    border:solid 1px rgba(0, 0, 0, 0.178);
    text-align: center;
    background-color: white;
  }
  .service-buynow-button
  {
    text-align: center;
    outline: none;
    border: none;
    background-color: transparent;
    font-size: 18px;
    font-weight: bold;
    border: solid 2px rgb(20, 54, 94);
    width: 150px;
    padding: 5px;
    color: rgb(20, 54, 94);
    transition: 0.3s;
  }
  
  .service-buynow-button:hover
  {
    background-color:rgb(20, 54, 94);
    color: white;
  }
  
  .service-buynow-button:active
  {
    transform: scale(0.98);
  }
  
  element.style
  {
    height: auto;
  }
  
  
  
  
  .carservices .slick-next, .bikeservices .slick-next
      {
          background-image: url('/goservice/files/images/right.jpg');
          background-size: 100% 100%;
          text-indent: -9999;
          
      } 
      
      .carservices .slick-prev, .bikeservices .slick-prev
      {
          background-image: url('/goservice/files/images/left.jpg');
          background-size: 100% 100%;
          text-indent: -9999;
      } 
      
      .carservices .slick-prev:focus, .bikeservices .slick-prev:focus
      {
          background-image: url('/goservice/files/images/left.jpg');
          background-size: 100% 100%;
          border-radius: 50px;
      }
      
      .carservices .slick-prev:hover, .bikeservices .slick-prev:hover
      {
          background-color: rgba(62, 115, 165, 0.685);
          background-image: url('/goservice/files/images/left.jpg');
          background-size: 100% 100%;
          border-radius: 50px;
          box-shadow: 0px 0px 5px 1px rgb(62, 115, 165, 0.685);
          z-index: 999;
      }
      
      
      .carservices .slick-next:focus , .bikeservices .slick-next:focus 
      {
          background-image: url('/goservice/files/images/right.jpg');
          background-size: 100% 100%;
          border-radius: 50px;
      }
      
      .carservices .slick-next:hover, .bikeservices .slick-next:hover
      {
          background-color: rgb(62, 115, 165, 0.685);
          background-image: url('/goservice/files/images/right.jpg');
          background-size: 100% 100%;
          border-radius: 50px;
          box-shadow: 0px 0px 5px 1px rgb(62, 115, 165, 0.685);
          z-index: 999;
      }
      
      
      
      .carservices .slick-dots li button , .bikeservices .slick-dots li button 
      {
      
          background-color: rgb(26, 69, 110);
          border-radius: 25px;
          width: 12px;
          height: 12px;
          text-indent: -9999px;
          margin-top: 10px;
      }
      
      .carservices .slick-dots li.slick-active, .bikeservices .slick-dots li.slick-active
      {
          transform: scale(1.2);
          opacity: 0.3;
      }
  
  
  .slick-slide
  {
    height: auto;
  }
  
  .bikeservices
  {
    height: 0px;
    overflow: hidden;
    /*display: none;*/
    opacity: 0;
    transition: 0.5s;
    margin-top: -30px;
  }
  
  .carservices
  {
    transition: 0.5s;
  }
  /*
  .carservices {
      opacity: 0;
      display: none;    
      transition: 0.3s;
  }
  
  .carservices.slick-initialized {
      display: block;
      opacity: 1;    
  }
  
  
  .bikeservices {
      opacity: 0;
      display: none;    
      transition: 0.3s;
  }
  
  .bikeservices.slick-initialized {
      opacity: 1;    
  }
  */
  
  .award-list
{
  border:solid 1px rgba(65, 61, 61, 0.493);
  text-align: center;
  background-color: white;
  
}
    .booking-list
    {
      font-size: 20px; 
      color: gray; 
      margin-left: 50px; 
      margin-top: 20px;
      list-style-image: url('/goservice/files/images/list-type.png');
      
    }
    .service_image
    {
      height: 70px;
      width: 70px;
      text-align: center;
    }
    .user_image
    {
      height: 110px;
      width: 110px;
      border-radius: 100px;
      position: absolute;
      top:-60;
      left:35%;
      border: solid 1px white;
      padding: 1px;
      box-shadow: 0px 0px 10px 5px rgba(0, 0, 0, 0.151);
      transition: 0.3s;
    }
    .test-1 
    {
      background-color: rgb(255, 255, 255);
      box-shadow: 10px 10px 30px rgba(0, 0, 0, 0.164);
      transition: 0.3s;
      color: gray;
      border-radius: 5px;
    }
    
    .test-1:hover
    {
      box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.308);
      color: rgb(56, 100, 121);
    }
    
    
    @media(max-width:975px)
  {
    .service-button
      {
        width: 49%;
      }

      .carousel
  {
    height: 65%;
  }
  .carousel-control .glyphicon-chevron-right, .carousel-control .icon-next
  {
    margin-right: -10px;
  }
  
  .carousel-control .glyphicon-chevron-left, .carousel-control .icon-prev
  {
    margin-left: -10px;
  }
        
  .book-form
{
 display: none;
}
  .carousel-caption
    {
      text-align: center;
      padding-bottom:100px;
      right: 10%;
    }
  .slider-text
    {
        font-size: 30px;
    }

  .home-text1, .home-text1-2
  {
    height:auto;
  }

  .mob-view1
    {
      margin-left: 9%;
    }
      .user_image
    {
      top:-30;
      left:-5;
    }
      .hide-win1
      {
        display: none;
      }

  
  }


</style>   
   

<script>


$(function Car_BikeContent(){
$(".bike-form-buttom").click(function BikeShow(){
  $(this).css({"background-color":"rgb(17, 91, 177)", "color":"white"});
  $(".car-form-buttom").css({"background-color":"white" , "color":"black"});
  $(".bike-content").show();
  $(".car-content").hide();
});

$(".car-form-buttom").click(function CarShow(){
  $(this).css({"background-color":"rgb(17, 91, 177)" , "color":"white"});
  $(".bike-form-buttom").css({"background-color":"white" , "color":"black"});
  $(".car-content").show();
  $(".bike-content").hide();
})

});

$(function(){

$(".service-button-car").click(function(){
  $(".slick-prev").click();
  $(this).css({"border-bottom":"solid 2px rgb(20, 54, 94)"});
  $(".service-button-bike").css({"border-bottom":"none"});
  //$(".carservices").show();
  //$(".bikeservices").hide();
  $(".carservices").css({"opacity":"1"});
  $(".bikeservices").css({"opacity":"0"});

  $(".carservices").css({"height":"auto",  "overflow":"inherit"});
  $(".bikeservices").css({"height":"0px", "overflow":"hidden"});
})


$(".service-button-bike").click(function(){
  $(".slick-next").click();
  $(this).css({"border-bottom":"solid 2px rgb(20, 54, 94)"});
  $(".service-button-car").css({"border-bottom":"none"});
  //$(".carservices").hide();
  //$(".bikeservices").show();
  $(".carservices").css({"opacity":"0"});
  $(".bikeservices").css({"opacity":"1"});
  $(".bikeservices").css({"height":"auto",  "overflow":"inherit"});
  $(".carservices").css({"height":"0px", "overflow":"hidden"});
})


$('.carservices').slick({
          
          infinite: true,
          speed: 500,
          slidesToShow: 4,
          slidesToScroll:1,
          autoplay:true,
          arrows: true,
          //centerMode:true,
          dots:true,


 
              responsive: [                        
             {
              breakpoint: 990,
              settings: {
                 slidesToShow: 3,
                 slidesToScroll:1,
                 arrows: false,
                 dots:true,
              }
            },

            {
              breakpoint: 700,
              settings: {
                 slidesToShow: 2,
                 slidesToScroll:1,
                 arrows: false,
                 dots:true,

              }
            },

            {
              breakpoint: 500,
              settings: {
                 slidesToShow: 1,
                 slidesToScroll:1,
                 arrows: false,
                 dots:true,

              }
            },
        ]
          
  });


$('.bikeservices').slick({
          
          infinite: true,
          speed: 500,
          slidesToShow: 4,
          slidesToScroll:1,
          autoplay:true,
          arrows: true,
          //centerMode:true,
          dots:true,


 
              responsive: [                        
             {
              breakpoint: 990,
              settings: {
                 slidesToShow: 3,
                 slidesToScroll:1,
                 arrows: false,
                 dots:true,
              }
            },

            {
              breakpoint: 700,
              settings: {
                 slidesToShow: 2,
                 slidesToScroll:1,
                 arrows: false,
                 dots:true,

              }
            },

            {
              breakpoint: 500,
              settings: {
                 slidesToShow: 1,
                 slidesToScroll:1,
                 arrows: false,
                 dots:true,

              }
            },
        ]
          
  });


})


</script>


</head>
<title>GoService</title>
<body>

<div id="main">

<div class="header">    
    <script>
    $(function(){
        $(".header").load("header-file")
    })
    </script>
</div>

<div class="body-part">

<div class="home-slider">    
                
                      <!-- Full Page Image Background Carousel Header // data-ride="carousel" -->
                      <div id="myCarousel" class="carousel slide" data-ride="carousel" style="z-index: 99">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>
                    
                            <!-- Wrapper for Slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <!-- Set the first background image using inline CSS below. -->
                                    <div class="fill" style="background-image:url('/goservice/files/images/slider1.jpg');"></div>
                                    <div class="carousel-caption">
                                        
                                        <h2 class="animated fadeInLeft slider-text">Fastest And Secure Service</h2>
                                        <p class="animated fadeInUp" style="font-size: 20px; text-transform: capitalize">We Commit To Secure Your Today-Tommrow</p>
                                        <p class="animated fadeInUp"><a data-toggle="modal" data-target="#ServiceForm"  class="btn btn-transparent btn-rounded btn-large">Book Now</a></p>
                                    </div>
                                    
                                </div>
                                <div class="item">
                                    <!-- Set the second background image using inline CSS below. -->
                                    <div class="fill" style="background-image:url('/goservice/files/images/slider2.jpg');"></div>
                                    <div class="carousel-caption">
                                         <h2 class="animated fadeInDown slider-text">An Oil Change Thats Works</h2>
                                         <p class="animated fadeInUp" style="font-size: 20px; text-transform: capitalize">Car Oil Service.</p>
                                         <p class="animated fadeInUp"><a data-toggle="modal" data-target="#ServiceForm" class="btn btn-transparent btn-rounded btn-large">Book Now</a></p>
                                    </div>
                                </div>
                                <div class="item">
                                    <!-- Set the third background image using inline CSS below. -->
                                    <div class="fill" style="background-image:url('/goservice/files/images/slider3.jpg');"></div>
                                    <div class="carousel-caption">
                                         <h2 class="animated fadeInRight slider-text">Recognized Practices &amp; Assent</h2>
                                         <p class="animated fadeInRight" style="font-size: 20px; text-transform: capitalize">Quality is the Best business plan</p>
                                         <p class="animated fadeInRight"><a data-toggle="modal" data-target="#ServiceForm" class="btn btn-transparent btn-rounded btn-large">Book Now</a></p>
                                    </div>
                                </div>
                            </div>
                    
                            <!-- Controls -->
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                <span class="icon-prev"></span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                <span class="icon-next"></span>
                            </a>
                    
                        </div>
                    
</div>

<div class="content">

<div class="col-md-4 book-form">
  <div style="background-color: rgb(255, 255, 255); text-align: center; border-radius: 5px;">
    <p style="font-size: 22px; font-weight: bold;">Book and save upto 50% now!</p>
    <center>
        <button type="button" class="form-button car-form-buttom">Car</button> &nbsp;&nbsp;&nbsp;&nbsp;
        <button type="button" class="form-button bike-form-buttom">Bike</button> 
    </center><br>

      <div class="car-content">
        <input type="text" name="car_name" list="carname" style="width: 80%; height: 40px; font-size: 20px; text-align: center" placeholder="Enter Vehicle">
          <datalist id="carname">
            <option value="Maruti 800" />
            <option value="Cambridge" />
          </datalist>
          <br><br>
          <input type="text" name="car_problem" style="width: 80%; height: 40px; font-size: 20px; text-align: center" placeholder="Problem">
          <br><br>
          <input type="text" name="contact" style="width: 80%; height: 40px; font-size: 20px; text-align: center" placeholder="Contact">
          <br><br>
          <center><button type="button" class="form-button car-submit-button">Book Now</button></center>
          <br><br>
      </div>

      <div class="bike-content">
        <input type="text" name="bike_name" list="bikename" style="width: 80%; height: 40px; font-size: 20px; text-align: center" placeholder="Enter Vehicle">
          <datalist id="bikename">
            <option value="Honda Activa" />
            <option value="Honda Navi" />
          </datalist>
          <br><br>
          <input type="text" name="bike_problem" style="width: 80%; height: 40px; font-size: 20px; text-align: center" placeholder="Problem">
          <br><br>
          <input type="text" name="contact" style="width: 80%; height: 40px; font-size: 20px; text-align: center" placeholder="Contact">
          <br><br>
          <center><button type="button" class="form-button bike-submit-button">Book Now</button></center>
          <br><br>
      </div>

  </div>
</div>
    
</div>


<div class="content2">
  <div class="service-buttons"><br><br>
  <div style="text-align: center"><h1> Our Services </h1></div>
  <center><div style="border-bottom: solid 3px rgb(20, 54, 94); width: 100px; text-align: center"></div>
    <br><br>
  <button class="service-button service-button-car">Car Services</button>
  <button class="service-button service-button-bike">Bike Services</button>
  </center>
  </div>

  <br><br>

  <div class="StartServices">
  <div class="container-fluid" style="width: 95%">

    <div class="carservices">
      
        <div class="col-md-1">
          <div class="service1 ">
            <center><img src="/goservice/files/images/car-service.jpg" style="width:100%; height: 180px;"></center>
            <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Express Car Service</p>
            <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
            <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 2155 </span><br>
            <span style="font-size: 18px;">1257 Have Availed </span><br><br>
            <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
          </div>
        </div>
      
        <div class="col-md-1">
          <div class="service1 ">
            <center><img src="/goservice/files/images/car-service1.jpg" style="width:100%; height: 180px;"></center>
            <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Complete Car Detailing</p>
            <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
            <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 1399 </span><br>
            <span style="font-size: 18px;">852 Have Availed </span><br><br>
            <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
          </div>
        </div>
      
        <div class="col-md-1">
            <div class="service1 ">
              <center><img src="/goservice/files/images/car-service2.jpg" style="width:100%; height: 180px;"></center>
              <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Car Ac Service</p>
              <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
              <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 2449 </span><br>
              <span style="font-size: 18px;">1255 Have Availed </span><br><br>
              <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
            </div>
          </div>
      
          

        <div class="col-md-1">
          <div class="service1 ">
            <center><img src="/goservice/files/images/car-service3.jpg" style="width:100%; height: 180px;"></center>
            <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Car Meachine Service</p>
            <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
            <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 2300 </span><br>
            <span style="font-size: 18px;">4587 Have Availed </span><br><br>
            <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
          </div>
        </div>
      

        <div class="col-md-1">
          <div class="service1 ">
            <center><img src="/goservice/files/images/car-service4.jpg" style="width:100%; height: 180px;"></center>
            <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Car Dent Removal</p>
            <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
            <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 1200 </span><br>
            <span style="font-size: 18px;">699 Have Availed </span><br><br>
            <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
          </div>
        </div>

        <div class="col-md-1">
          <div class="service1 ">
            <center><img src="/goservice/files/images/car-service5.jpg" style="width:100%; height: 180px;"></center>
            <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Car Oil Service</p>
            <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
            <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 2200 </span><br>
            <span style="font-size: 18px;">588 Have Availed </span><br><br>
            <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
          </div>
        </div>

        <div class="col-md-1">
          <div class="service1 ">
            <center><img src="/goservice/files/images/car-service6.jpg" style="width:100%; height: 180px;"></center>
            <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Car Monitoring Service</p>
            <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
            <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 1500 </span><br>
            <span style="font-size: 18px;">3688 Have Availed </span><br><br>
            <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
          </div>
        </div>
      



    </div>

    <div class="bikeservices">
      
  
        <div class="col-md-1">
          <div class="service1 ">
            <center><img src="/goservice/files/images/bike-service1.jpg" style="width:100%; height: 180px;"></center>
            <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">General Service</p>
            <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
            <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 1500 </span><br>
            <span style="font-size: 18px;">1277 Have Availed </span><br><br>
            <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
          </div>
        </div>
      
        <div class="col-md-1">
            <div class="service1 ">
              <center><img src="/goservice/files/images/bike-service2.jpg" style="width:100%; height: 180px;"></center>
              <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">General Service & Polish</p>
              <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
              <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 3449 </span><br>
              <span style="font-size: 18px;">1857 Have Availed </span><br><br>
              <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
            </div>
          </div>
      
          

        <div class="col-md-1">
          <div class="service1 ">
            <center><img src="/goservice/files/images/bike-service3.jpg" style="width:100%; height: 180px;"></center>
            <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Bike Engine Service</p>
            <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
            <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 3999 </span><br>
            <span style="font-size: 18px;">1367 Have Availed </span><br><br>
            <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
          </div>
        </div>
      

        <div class="col-md-1">
          <div class="service1 ">
            <center><img src="/goservice/files/images/bike-service4.jpg" style="width:100%; height: 180px;"></center>
            <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Bike Polish</p>
            <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
            <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 2499 </span><br>
            <span style="font-size: 18px;">1273 Have Availed </span><br><br>
            <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
          </div>
        </div>

        <div class="col-md-1">
          <div class="service1 ">
            <center><img src="/goservice/files/images/bike-service5.jpg" style="width:100%; height: 180px;"></center>
            <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Bike Ceramic Coating</p>
            <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
            <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 1500 </span><br>
            <span style="font-size: 18px;">1200 Have Availed </span><br><br>
            <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
          </div>
        </div>


        <div class="col-md-1">
          <div class="service1 ">
            <center><img src="/goservice/files/images/bike-service6.jpg" style="width:100%; height: 180px;"></center>
            <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Bike Detailing</p>
            <hr style="border:solid 1px rgb(20, 54, 94); text-align: center; width: 50%; margin-top: -10px;">
            <span style="color:rgb(20, 54, 94); font-weight: bold; font-size: 20px;">&#8377; 2100 </span><br>
            <span style="font-size: 18px;">1257 Have Availed </span><br><br>
            <div style="text-align: center"><a href="service" style="text-decoration:none"><button class="service-buynow-button">Buy Now</button></a></div><br>
          </div>
        </div>
      



    </div>



    <br><br>  <br><br>
  </div>  
  </div>



</div>


<div class="content8" style="background-color: rgb(255, 255, 255);"><br><br>
  <div class="container">
    <p style="text-align: center; font-size: 30px; font-weight: bold;">How we work ?</p>
    <center><div style="border-bottom: solid 3px rgb(20, 54, 94); width: 100px; text-align: center"></div>
    <p style="color:gray; font-size: 15.5px;"><br> Simplified car and bike service and repair at your fingertips. <br>
        We believe in Transparency and Quality Service.</p>
    </center>
    <br><br>
<style>
.service-text1
{
  text-align: center; 
  font-size: 20px; 
  font-weight: bold;
  color: rgba(0, 0, 0, 0.767);
}
.service-text2
{
  color: gray;
  text-align: center; 
  font-size: 15px; 
  margin-top: -20px;
}
</style>

<center>
    <div class="col-md-3 col-xs-6">
    <div class="test-2">  
      <img src="/goservice/files/images/service1-1.png" class="service_image"><br>
        <p class="service-text1" >Book Your Service</p>
        <p class="service-text2" >Call or Website</p><br>
    </div> <br>
    </div>

    <div class="col-md-3 col-xs-6">
    <div class="test-2">  
      <img src="/goservice/files/images/phone1-1.png" class="service_image"><br>
        <p class="service-text1" >We Will Call You</p>
        <p class="service-text2" >Technician or Mechanic</p><br>
    </div> <br>
    </div>

    <div class="col-md-3 col-xs-6">
    <div class="test-2">  
      <img src="/goservice/files/images/doorstep1-1.png" class="service_image"><br>
        <p class="service-text1"  >At Your Door Step</p>
        <p class="service-text2" >In 20 to 40 Minutes</p><br>
    </div> <br>
    </div>

    <div class="col-md-3 col-xs-6">
    <div class="test-2">  
      <img src="/goservice/files/images/problem1-1.png" class="service_image"><br>
        <p class="service-text1" >Minor / Major Problem</p>
        <p class="service-text2" >Resolve @ DoorStep/WorkShop   (Free Pickup)</p><br>
    </div> <br>
    </div>

    <div class="col-md-3 col-xs-6">
    <div class="test-2">  
      <img src="/goservice/files/images/delivery1-1.png" class="service_image"><br>
        <p class="service-text1" >Diagnosis Report</p>
        <p class="service-text2" >With Estimation</p><br>
    </div> <br>
    </div>

    <div class="col-md-3 col-xs-6">
    <div class="test-2">  
      <img src="/goservice/files/images/approve1-1.png" class="service_image"><br>
        <p class="service-text1" >You Approve the Invoice</p>
        <p class="service-text2" >We Proceed</p><br>
    </div> <br>
    </div>

    <div class="col-md-3 col-xs-6">
    <div class="test-2">  
      <img src="/goservice/files/images/delivery1-1.png" class="service_image"><br>
        <p class="service-text1" >Delivery @ DoorStep</p>
        <p class="service-text2" >With Return Of Old Parts(if any)</p><br>
    </div> <br>
    </div>

    <div class="col-md-3 col-xs-6">
    <div class="test-2">  
      <img src="/goservice/files/images/pay1-1.png" class="service_image"><br>
        <p class="service-text1">Pay On Delivery</p>
        <p class="service-text2" >Secured Payment with Multiple Options   (Free Delivery)</p><br>
    </div> <br>
    </div>



    
</center>

  </div><br>
</div>




<div class="content3" style="background-color: rgba(0, 0, 0, 0.048);"><br>
  <div class="container"><br>
    <p style="text-align: center; font-size: 30px; font-weight: bold;">Uber quick 3-step booking</p>
    <center><div style="border-bottom: solid 3px rgb(20, 54, 94); width: 100px; text-align: center"></div></center>

    <div class="col-md-12">
      <div><br>
        <div class="col-md-4" style="text-align: center">
            <img src="/goservice/files/images/service1.jpg " class="image1">
            <p class="textstyle1">Choose the required service</p><br><br>
        </div>
        <div class="col-md-4" style="text-align: center">
            <img src="/goservice/files/images/location2.png" class="image1">
            <p class="textstyle1">Enter your locality & contact details</p><br><br>
        </div>
        <div class="col-md-4" style="text-align: center">
            <img src="/goservice/files/images/working1.svg" class="image1">
            <p class="textstyle1">Leave the rest to GoService experts</p><br><br>
        </div>
        <!-- <ul class="booking-list"> 
          <li style="padding: 10px;">Choose the required service</li>
          <li style="padding: 10px;">Enter your locality & contact details</li>
          <li style="padding: 10px;">Leave the rest to GoService experts</li>
        </ul> -->
      </div>
    </div>
    <div class="col-md-4 hide-win1 hidden">
        <center><img src="/goservice/files/images/step3.jpg" style="width:250px; height: 250px;"><br><br></center>
      <br><br>
    </div>



  </div>  <br><br>
</div>


<div class="content4" ><br>
  <div class="container"><br><br>
    <p style="text-align: center; font-size: 30px; font-weight: bold;">Trusted Mechanics</p>
    <center><div style="border-bottom: solid 3px rgb(20, 54, 94); width: 100px; text-align: center"></div></center>

    <div class="col-md-4 hide-win1 hidden">
        <center><img src="/goservice/files/images/garage1.jpg" style="width:220px; height: 200px; transform: scaleX(-1)"><br><br></center>
      <br><br>
    </div>

    <div class="col-md-12">
      <div><br>
        <div class="col-md-4" style="text-align: center">
            <img src="/goservice/files/images/carmeachine1.png" class="image1">
            <p class="textstyle1">Expert mechanics for your every need</p><br><br>
        </div>
        <div class="col-md-4" style="text-align: center">
            <img src="/goservice/files/images/quality1.png" class="image1" style="width: 120px;">
            <p class="textstyle1">Best-in-class workmanship</p><br><br>
        </div>
        <div class="col-md-4" style="text-align: center">
            <img src="/goservice/files/images/equipment2.png" class="image1">
            <p class="textstyle1">Top of the line equipment</p><br><br>
        </div>
        <!-- <ul class="booking-list" > 
          <li style="padding: 10px;">Expert mechanics for your every need</li>
          <li style="padding: 10px;">Best-in-class workmanship</li>
          <li style="padding: 10px;">Top of the line equipment for the best service experience</li>
        </ul> -->
      </div>
    </div>

  </div>
  <br><br>
</div>


<div class="content5" style="background-color: rgba(0, 0, 0, 0.048);"><br>
  <div class="container"><br><br>
    <p style="text-align: center; font-size: 30px; font-weight: bold;">Track your service in real time</p>
    <center><div style="border-bottom: solid 3px rgb(20, 54, 94); width: 100px; text-align: center"></div></center>

    <div class="col-md-12">
      <div><br>
        <div class="col-md-4" style="text-align: center">
            <img src="/goservice/files/images/message1.png" class="image1">
            <p class="textstyle1">Live SMS updates to keep a track on vehicle status</p><br><br>
        </div>
        <div class="col-md-4" style="text-align: center">
            <img src="/goservice/files/images/update1.png" class="image1">
            <p class="textstyle1">Photo updates right from vehicle check-in to delivery</p><br><br>
        </div>
        <div class="col-md-4" style="text-align: center">
            <img src="/goservice/files/images/transparency.png" class="image1">
            <p class="textstyle1">100% transparency in service</p><br><br>
        </div>

        <!-- <ul class="booking-list"> 
          <li style="padding: 10px;">Live SMS updates to keep a track on vehicle status</li>
          <li style="padding: 10px;">Photo updates right from vehicle check-in to delivery</li>
          <li style="padding: 10px;">	100% transparency in service</li>
        </ul> -->
      </div><br><br>
    </div>

    <div class="col-md-4 hide-win1 hidden">
        <center><img src="/goservice/files/images/mobile1.jpg" style="width:200px; height: 200px;"><br><br></center>
      <br><br>
    </div>
  </div><br><br>
</div>


<!-- Hidden Area Award and Recoginations-->

<div class="content6" style="background-color: rgba(0, 0, 0, 0.048); display: none;"><br>
  
    <div class="container">
    <p style="text-align: center; font-size: 25px; font-weight: bold;">Awards and Recognitions</p>
    <center><div style="border-bottom: solid 3px rgb(20, 54, 94); width: 100px; text-align: center"></div></center>

    

    <div class="col-md-3 col-xs-10 mob-view1">
      <div class="award-list">
        <img src="/goservice/files/images/award1.jpg" style="width:100%; height: 180px;"><hr>
        <span style="font-size: 20px; font-weight: bold;">"Best Startup Award"</span><br>
        <span style="font-size: 17px;  color: gray">at CII Startupreneurs, 2016</span><br><br>
      </div><br><br>
    </div>

    <div class="col-md-3 col-xs-10 mob-view1">
      <div class="award-list">
        <img src="/goservice/files/images/award2.jpg" style="width:100%; height: 180px;"><hr>
        <span style="font-size: 20px; font-weight: bold;">"Customer Service"</span><br>
        <span style="font-size: 17px;  color: gray">presented by Frost and Sullivan</span><br><br>
      </div><br><br>
    </div>

    <div class="col-md-3 col-xs-10 mob-view1">
      <div class="award-list">
        <img src="/goservice/files/images/award3.jpg" style="width:100%; height: 180px;"><hr>
        <span style="font-size: 20px; font-weight: bold;">"Inqbaate Award"</span><br>
        <span style="font-size: 17px;  color: gray">presented by Bosch</span><br><br>
      </div><br><br>
    </div>

    <div class="col-md-3 col-xs-10 mob-view1">
      <div class="award-list">
        <img src="/goservice/files/images/award4.png" style="width:100%; height: 180px;"><hr>
        <span style="font-size: 20px; font-weight: bold;">"Significant Contributor"</span><br>
        <span style="font-size: 17px;  color: gray">at Meeting of AIAWA</span><br><br>
      </div><br><br>
    </div>

  </div>
  
</div>




<div class="content7"><br>
  <div class="container"><br>
    <p style="text-align: center; font-size: 30px; font-weight: bold;">In The News</p>
    <center><div style="border-bottom: solid 3px rgb(20, 54, 94); width: 100px; text-align: center"></div></center>
    <br><br>
    <div class="col-md-3 col-xs-6">
        <center><img src="/goservice/files/images/news1.png" style="width:150px; height: 150px; border: solid 1px rgba(0, 0, 0, 0.151);"><br><br></center>
      <br><br>
    </div>

    <div class="col-md-3 col-xs-6">
        <center><img src="/goservice/files/images/news2.jpg" style="width:150px; height: 150px; border: solid 1px rgba(0, 0, 0, 0.151);"><br><br></center>
      <br><br>
    </div>

    <div class="col-md-3 col-xs-6">
        <center><img src="/goservice/files/images/news3.png" style="width:150px; height: 150px; border: solid 1px rgba(0, 0, 0, 0.151);"><br><br></center>
      <br><br>
    </div>

    <div class="col-md-3 col-xs-6">
        <center><img src="/goservice/files/images/news4.jpg" style="width:150px; height: 150px; border: solid 1px rgba(0, 0, 0, 0.151);"><br><br></center>
      <br><br>
    </div>



  </div>
</div>


<div class="content8" style="background-color: rgba(0, 0, 0, 0.048);"><br><br>
  <div class="container">
    <p style="text-align: center; font-size: 30px; font-weight: bold;">Testimonials</p>
    <center><div style="border-bottom: solid 3px rgb(20, 54, 94); width: 100px; text-align: center"></div></center>
    <br><br><br><br>
		
		<style>.Testimonials-height{padding:5px; max-height:100px;min-height:100px;overflow:hidden;}</style>
		
    <div class="col-md-4">
    <div class="test-1">  
      <img src="/goservice/files/images/user1.png" class="user_image"><br><br><br>
        <p style="text-align: center; font-size: 20px; font-weight: bold;">Rakesh Kumar</p>
        <div style="text-align: center; font-size: 18px;" class="Testimonials-height">Good service done for my bike, it is running smoother after service. </div><br>
    </div> <br><br>
    </div>

    <div class="col-md-4">
    <div class="test-1">  
      <img src="/goservice/files/images/user2.png" class="user_image"><br><br><br>
        <p style="text-align: center; font-size: 20px; font-weight: bold;">Nitin Pawar</p>
        <div style="text-align: center; font-size: 18px;" class="Testimonials-height">Thanks for responding quick and resolving problems which I have mentioned... I appreciate that... </div><br>
    </div><br><br>
    </div>

    <div class="col-md-4">
    <div class="test-1">  
      <img src="/goservice/files/images/user3.png" class="user_image"><br><br><br>
        <p style="text-align: center; font-size: 20px; font-weight: bold;">Arjun Singh</p>
        <div style="text-align: center; font-size: 18px;" class="Testimonials-height">Easy to use and great response and follow by the team, highly recommended. !!! Value for money.. !!!</div><br>
    </div><br><br>
    </div>

  </div><br><br><br><br>
</div>


</div>
<div class="container"></div>
<div class="footer">    
        <script>
        $(function(){
            $(".footer").load("footer-file")
        })
        </script>
</div>

<!-- Import Service Popup Start -->
<div class="service-pop">    
    <script>
    $(function(){
        $(".service-pop").load("serviceformpopup")
    })
    </script>
</div>
<!-- Import Service Popup End-->

</div>







</body>
</html>