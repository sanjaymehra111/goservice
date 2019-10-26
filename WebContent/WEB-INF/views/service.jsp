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

<!--For GeoLocaitgon-->
<script src="http://maps.googleapis.com/maps/api/js?v=3.exp&amp;key=AIzaSyAa4ggTa-tkUQEW6Cv5_h8o-WOjiuboiOY&amp;libraries=places"></script>

<!--For Webpage Logo-->
<link rel="shortcut icon" href="/goservice/files/images/logo3-plane.png">

<style>
  .slick-slide
  {
    height: auto;
  }
  
    .contact-text
        {
            width: 100%;
            text-align: center;
            height: 35px;
            font-size: 18px;
        }
        .contact-send-button
        {
            width: 100px;
            height: 30px;
            background-color: rgb(39, 68, 112);
            outline: none;
            border:none;
            color: white;
            float: right;
        }


.slider-text
   {
     text-transform: capitalize;
       font-size: 50px;
       transition: 0.3s;
   }
       .item,
       .active {
           height: 100%;
       }
       
       .carousel
       {
           height: 55%;
           transition: 0.5s;
       }
       
       .carousel-inner {
         height: 100%;
         background: #000;
       }
       
       .carousel-caption
       {
         display: block;
         text-align: center;
         padding-bottom:50px;
       }
       
       
       h2{font-size: 60px;}
       p{padding:10px}
       
       /* Background images are set within the HTML using inline CSS, not here */
       
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

       

.bookmodelbtn
{
    border:none;
    outline: none;
    width:100px;
    border-radius: 100px;
}

.vehicle_text
{
    width: 80%; 
    height: 40px; 
    font-size: 15px; 
    text-align: center;
    border:none;
    outline:none;
    border-bottom:solid 2px rgb(41, 59, 82);
    border-radius: 50px;

}

.vehicle_text::-webkit-calendar-picker-indicator 
  {
	display: none;
  }
  
.list1_img
{
    width:200px;
    height: 200px;
}

.benefits_list
    {
      font-size: 15px; 
      color: gray; 
      margin-left: 50px; 
      margin-top: 40px;
      list-style-image: url('/goservice/files/images/list-type-old2.png');
      
    }

.gofeatures
{
    width:50px;
    height:50px;
}

.feature_list
{
    font-size: 15px;
    color: gray;
    padding-top: 20px;
}


.test-1 
    {
      background-color: rgb(255, 255, 255);
      box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.164);
      transition: 0.3s;
      color: gray;
      border-radius: 5px;
    }
    
    .test-1:hover
    {
      box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.308);
      color: rgb(56, 100, 121);
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

  
    .box  {
  background: #4e83a1;
  color: white;
  padding: 20px;
  border: solid 1px rgb(255, 255, 255);
  margin-top: 5px;
  font-size: 18px;
  cursor: pointer;
}
.draw {
  display: none;
  background: white;
  border: 1px solid #c3c3c3;
  padding: 20px;
  font-size: 15px;
}
.faq_sign
{
    float: right;
    z-index: 1;
    transition: 0.3s;
    font-size: 18px;
    padding: 10px;
}


@media(max-width:975px)
{

    .list1_img
{
    width:30%;
    height: auto;
}

    .benefits_list
    {
      margin-left: 0px; 
      margin-top: 20px;
    }


    .carousel-caption
       {
         padding-bottom:30px;
       }


    .carousel
  {
    height: 50%;
  }
  .btn-large
  {
      transition: 0.3s;
      padding: 5px 10px;
  }

  .user_image
    {
      top:-30;
      left:-5;
    }
   
}


</style>
   
<script>

// $(function(){
// var interval = setInterval(function loop() 
// {
//   var mymodel = $("#myModal").css("display");
//   var time = 1;
  
//        if(mymodel == "none")
//     {
//       $(".servicebooknow").click(); 
//       clearInterval(interval);
//       interval = setInterval(loop, 30000);

//     }
//     else
//     {
//       return true;
//     }
  
// },1000);



// })


$(function(){



$('.go_features').slick({
          
          infinite: true,
          speed: 500,
          slidesToShow: 5,
          slidesToScroll:2,
          autoplay:true,
          arrows: false,
          //centerMode:true,
          dots:true,


 
              responsive: [                        
             {
              breakpoint: 990,
              settings: {
                 slidesToShow: 3,
                 slidesToScroll:2,
                 dots:true,
              }
            },

            {
              breakpoint: 700,
              settings: {
                 slidesToShow: 2,
                 slidesToScroll:1,
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

$(".box").click(function(){
  $(this).next().slideToggle("fast");
  $(this).find(".faq_sign").css({"transform":"rotate(45deg)"});
  var a = $(this).find(".faq_sign").css("transform");
  if(a == "matrix(1, 0, 0, 1, 0, 0)")
  $(this).find(".faq_sign").css({"transform":"rotate(45deg)"});
  else
  $(this).find(".faq_sign").css({"transform":"rotate(0deg)"});
});  


}); // end function

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


<div class="content1">
<div class="service-slider">    
                
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
                      <div class="fill" style="background-image:url('/goservice/files/images/bike-service3.jpg');"></div>
                      <div class="carousel-caption">
                          <!-- <h2 class="animated fadeInLeft slider-text">Fastest And Secure Service</h2>
                          <p class="animated fadeInUp" style="font-size: 20px; text-transform: capitalize">We Commit To Secure Your Today-Tommrow</p> -->
                          <p class="animated fadeInUp"><a data-toggle="modal" data-target="#ServiceForm" class="servicebooknow btn btn-transparent btn-rounded btn-large">Book Now</a></p>
                      </div>
                  </div>
                  <div class="item">
                      <!-- Set the second background image using inline CSS below. -->
                      <div class="fill" style="background-image:url('/goservice/files/images/bike-service4.jpg');"></div>
                      <div class="carousel-caption">
                           <!-- <h2 class="animated fadeInDown slider-text">An Oil Change Thats Works</h2>
                           <p class="animated fadeInUp" style="font-size: 20px; text-transform: capitalize">Car Oil Service.</p> -->
                           <p class="animated fadeInUp"><a data-toggle="modal" data-target="#ServiceForm"class="btn btn-transparent btn-rounded btn-large">Book Now</a></p>
                      </div>
                  </div>
                  <div class="item">
                      <!-- Set the third background image using inline CSS below. -->
                      <div class="fill" style="background-image:url('/goservice/files/images/bike-service6.png');"></div>
                      <div class="carousel-caption">
                           <!-- <h2 class="animated fadeInRight slider-text">Recognized Practices &amp; Assent</h2>
                           <p class="animated fadeInRight" style="font-size: 20px; text-transform: capitalize">Quality is the Best business plan</p> -->
                           <p class="animated fadeInUp"><a data-toggle="modal" data-target="#ServiceForm"    class="btn btn-transparent btn-rounded btn-large">Book Now</a></p>
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

</div>


<div class="content2" style="background-color: rgba(128, 128, 128, 0.089)">
<br><br><br><br>
<p style="font-size: 30px; font-weight: bold; text-align: center">Included Benefits</p> 
<div class="container">
    <div class="col-md-3 col-xs-12">
       <center> <img src="/goservice/files/images/list1.svg" class="list1_img"></center>
    </div>
    <div class="col-md-9 col-xs-12">
        <ul class="benefits_list">

          <div class="col-md-6 col-xs-6">
              <li>Complete General Service Includes Engine Oil Change</li>    
          </div>
          <div class="col-md-6 col-xs-6">
              <li>Brakes Check and Clean</li>
          </div>
          <div class="col-md-6 col-xs-6">
              <li>Brakes Check and Clean</li>
          </div>
          <div class="col-md-6 col-xs-6">
              <li>Clutch Play Adjustment</li>
          </div>
          <div class="col-md-6 col-xs-6">
              <li>Chain Lubrication and Adjustment</li>
          </div>
          <div class="col-md-6 col-xs-6">
              <li>Spark Plug Clean</li>
          </div>
          <div class="col-md-6 col-xs-6">
              <li>Clutch Play Adjustment</li>
          </div>

        </ul>
    </div>
</div>
<br><br>
</div>


<div class="content3"><br><br>
    <p style="font-size: 30px; font-weight: bold; text-align: center">Go Service Feature</p> <br><br>
<center>  
    <div class="go_features">
        <div class="col-md-2">
            <center><img src="/goservice/files/images/map1.png" class="gofeatures">
            <p class="feature_list">Multiple locations in India</p>
            </center>
        </div>    
        <div class="col-md-2">
            <center><img src="/goservice/files/images/pricing.png" class="gofeatures">
            <p class="feature_list">Transparent pricing</p>
            </center>
        </div>    
        <div class="col-md-2">
            <center><img src="/goservice/files/images/payonline1.png" class="gofeatures">
            <p class="feature_list">Pay online, via card, UPI</p>
            </center>
        </div>    
        <div class="col-md-2">
            <center><img src="/goservice/files/images/spareparts2.png" class="gofeatures">
            <p class="feature_list">Genuine spare parts for replacement</p>
            </center>
        </div>    
        <div class="col-md-2">
            <center><img src="/goservice/files/images/quality.jpg" class="gofeatures">
            <p class="feature_list">Quality workmanship</p>
            </center>
        </div>    
    </div>
</center>
</div>

<br><br>



<div class="content4" style="background-color: rgba(128, 128, 128, 0.089)">


<div class="container">
<br><br>
<p style="font-size: 30px; font-weight: bold; text-align: center">Frequently Asked Questions</p> <br>

<section class="box">
    What's Include <span class="faq_sign"><i class="fa fa-plus"></i></span>
</section>
<section class="draw">
        General Service includes air filter cleaning, oil filter cleaning, carburettor cleaning, clutch play adjustment, chain adjustment and lubrication, brake shoes cleaning and exterior foam wash.
</section>

<section class="box">
   Pricing <span class="faq_sign"><i class="fa fa-plus"></i></span>
</section>
<section class="draw">
        Pricing includes all the services mentioned above. In addition to this, oil (manufacturer recommended / equivalent grade) change will be done at the same cost. Spares and consumables are chargeable. All prices mentioned in the website are exclusive of taxes.
</section>

<section class="box">
   Time For Delivery <span class="faq_sign"><i class="fa fa-plus"></i></span>
</section>
<section class="draw">
        General service usually takes between 5 - 6 hours for the entire process.If any additional repairs / replacements are involved, the time taken may vary.
</section>

<section class="box">
   Reliability <span class="faq_sign"><i class="fa fa-plus"></i></span>
</section>
<section class="draw">
        Our service partners use only OEM spare parts (or equivalent grade). There will be no compromise in the quality of workmanship. In case of any queries, you can reach out to us at 123456789. Alternatively, you can send an e-mail to abc@goservice.com
</section>



</div>
<br><br><br><br>
</div>



<div class="content5" style="background-color: rgba(92, 92, 92, 0.144);"><br><br>
  <div class="container">
    <p style="text-align: center; font-size: 30px; font-weight: bold;">Testimonials</p>
    <br><br><br><br>

    <div class="col-md-4">
    <div class="test-1">  
      <img src="/goservice/files/images/user1.png" class="user_image"><br><br><br>
        <p style="text-align: center; font-size: 20px; font-weight: bold;">Brian Maxweel</p>
        <p style="text-align: center; font-size: 18px; ">Integer id ante eu est gravida volutpat. vel consequat tellus dignissim vel. Cscipit et. Curabitur eu lobortis dui.</p><br>
    </div> <br><br>
    </div>

    <div class="col-md-4">
    <div class="test-1">  
      <img src="/goservice/files/images/user2.png" class="user_image"><br><br><br>
        <p style="text-align: center; font-size: 20px; font-weight: bold;">Hayden Frland</p>
        <p style="text-align: center; font-size: 18px; ">Integer id ante eu est gravida volutpat. vel consequat tellus dignissim vel. Cscipit et. Curabitur eu lobortis dui.</p><br>
    </div><br><br>
    </div>

    <div class="col-md-4">
    <div class="test-1">  
      <img src="/goservice/files/images/user3.png" class="user_image"><br><br><br>
        <p style="text-align: center; font-size: 20px; font-weight: bold;">Luke Pierce</p>
        <p style="text-align: center; font-size: 18px; ">Integer id ante eu est gravida volutpat. vel consequat tellus dignissim vel. Cscipit et. Curabitur eu lobortis dui.</p><br>
    </div><br><br>
    </div>



  </div><br><br><br><br>
</div>






<!--Book Now Model-->

<!-- <div class="boonowmodel">
<div class="container">
  
  <!-- Modal 
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content 
      <div class="modal-content" style="width: 100%">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="text-align: center">Book Service</h4>
        </div>
        <div class="modal-body" style="text-align: center">

          <input type="text" name="vehicle_name" list="Vehiclename" class="vehicle_text" placeholder="Enter Vehicle">
          <datalist id="Vehiclename">
            <option value="Honda Activa">
            <option value="Honda Navi">
          </datalist>
          <br><br>
          <input type="text" name="vehicle_location" list="location" class="vehicle_text" placeholder="Location">
          <datalist id="location">
            <option value="Patel Nagar">
            <option value="Moti Nagar">
            <option value="Rajouri Garden">   
            <option value="Uttam Nagar">
            <option value="Janak Puri">
          </datalist>
          <br><br>
          <input type="text" name="user_contact" class="vehicle_text" placeholder="Contact">
          <br><br>
        
        </div>
        <div class="modal-footer">
          <button type="button" style="outline: none;" class="btn btn-default btn-danger bookmodelbtn" data-dismiss="modal">Close</button>
          <button type="button" style="outline: none;" class="btn btn-default btn-success bookmodelbtn" data-dismiss="modal">Book Now</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

</div> -->

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