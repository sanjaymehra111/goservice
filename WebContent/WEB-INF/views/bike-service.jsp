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

<link rel="shortcut icon" href="/goservice/files/images/logo3-plane.png">

<style>
    .service-background1
    {
        width:28%;
        margin-left: 40px;
        margin-right: 20px; 
        margin-top: 50px;
        background-size: 100% 100%; 
        height: 350px;
        border: solid 1px black; 
        transition: 0.3s;
        box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.418);
    }

    .service-background1:hover
    {
        box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.438);
    }

    .service-image1
    {
        width: 100%;
        height: 350px;
        overflow: hidden;

    }
    .service-text1
    {
        position: absolute;
        bottom: 0px;
        right: 0;
        width: 100%;
        text-align: center;
        overflow: hidden;
        background-color: rgba(0, 0, 0, 0.705);
        color: rgb(182, 179, 179);
        padding-top: 15px;
        padding-bottom: 15px;
    }
    .service-price
    {
        height: 0px;
        
        margin-top: 0px;
        font-size: 0px; 
        font-weight: bold; 
        color: rgb(228, 114, 21);
        transition: 0.3s;
        opacity: 0;
    }
    .service-background1:hover .service-price
    {
        height: auto;
        margin-top: 10px;
        font-size: 20px; 
        opacity: 1;
    }

    .service-booknow-button
    {
        margin-top: 10px;
        outline: none;
        border: none;
        background-color: transparent;
        color:white;
        border: solid 2px white;
        border-radius: 50px;
        width: 150px;
        padding: 5px;
        
    }

    .service-booknow-button:hover
    {
        background-color: rgba(250, 250, 250, 0.979);
        color:black;
        transition: 0.3s;
    }

    .service-booknow-button:active
    {
        transform: scale(0.981);
        transition: 0.3s;
    }

    @media(max-width:975px)
    { 
        .service-background1
        {
            width:100%;
            margin-left: 0px;
            margin-right: 0px;

        
        }
    }
</style>


</head>
<title>GoService</title>
<!--style="font-family: bookmanold"-->
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
<div class="about-us-tag" style="background-image: url('/goservice/files/images/bike-service.jpg');  background-size: 100% 100%;">
    <div style="background-color: rgba(0, 0, 0, 0.658)">
        <div style="padding:80px; text-align: center; color: white;">
            <p style="font-size: 30px; text-transform: capitalize; font-weight: bold;">Bike Service</p>
            <center><div style="border-bottom: solid 3px rgb(216, 72, 72); width: 100px; text-align: center"></div></center>
        </div>
    </div>
</div>
<br><br>


<div class="content1">
    <div class="container-fluid">    
 <center>       
        <div class="col-md-3 col-xs-12 service-background1" style="background-image: url('/goservice/files/images/bike-service1.jpg')">
        <div class="service">
            <!--<img src="images/car-service.jpg" class="service-image1">-->
                <div class="service-text1">
                    <div style="font-size: 20px; font-weight: bold; color: white; ">General Service</div>
                    <div style="margin-top: 10px;">1277 Have Availed</div>
                    <div class="service-price"> &#8377; 1500 <br>
                        <a href="service" style="text-decoration:none"><button type="button" class="service-booknow-button">Book Now</button></a>
                    </div>
                </div>
        </div>
        </div>

           <div class="col-md-3 col-xs-12 service-background1" style="background-image: url('/goservice/files/images/bike-service2.jpg')">
        <div class="service">
            <!--<img src="images/car-service.jpg" class="service-image1">-->
                <div class="service-text1">
                    <div style="font-size: 20px; font-weight: bold; color: white; ">General Service & Polish</div>
                    <div style="margin-top: 10px;">1857 Have Availed</div>
                    <div class="service-price"> &#8377; 3499 <br>
                        <a href="service" style="text-decoration:none"><button type="button" class="service-booknow-button">Book Now</button></a>
                    </div>
                </div>
        </div>
        </div>

           <div class="col-md-3 col-xs-12 service-background1" style="background-image: url('/goservice/files/images/bike-service3.jpg')">
        <div class="service">
            <!--<img src="images/car-service.jpg" class="service-image1">-->
                <div class="service-text1">
                    <div style="font-size: 20px; font-weight: bold; color: white; ">Bike Engine Service</div>
                    <div style="margin-top: 10px;">1367 Have Availed</div>
                    <div class="service-price"> &#8377; 3999 <br>
                        <a href="service" style="text-decoration:none"><button type="button" class="service-booknow-button">Book Now</button></a>
                    </div>
                </div>
        </div>
        </div>

           <div class="col-md-3 col-xs-12 service-background1" style="background-image: url('/goservice/files/images/bike-service4.jpg')">
        <div class="service">
            <!--<img src="images/car-service.jpg" class="service-image1">-->
                <div class="service-text1">
                    <div style="font-size: 20px; font-weight: bold; color: white; ">Bike Polish</div>
                    <div style="margin-top: 10px;">1273 Have Availed</div>
                    <div class="service-price"> &#8377; 2499 <br>
                        <a href="service" style="text-decoration:none"><button type="button" class="service-booknow-button">Book Now</button></a>
                    </div>
                </div>
        </div>
        </div>

           <div class="col-md-3 col-xs-12 service-background1" style="background-image: url('/goservice/files/images/bike-service5.jpg')">
        <div class="service">
            <!--<img src="images/car-service.jpg" class="service-image1">-->
                <div class="service-text1">
                    <div style="font-size: 20px; font-weight: bold; color: white; ">Bike Ceramic Coating</div>
                    <div style="margin-top: 10px;">14200 Have Availed</div>
                    <div class="service-price"> &#8377; 1500 <br>
                        <a href="service" style="text-decoration:none"><button type="button" class="service-booknow-button">Book Now</button></a>
                    </div>
                </div>
        </div>
        </div>

           <div class="col-md-3 col-xs-12 service-background1" style="background-image: url('/goservice/files/images/bike-service6.jpg')">
        <div class="service">
            <!--<img src="images/car-service.jpg" class="service-image1">-->
                <div class="service-text1">
                    <div style="font-size: 20px; font-weight: bold; color: white; ">Bike Detailing</div>
                    <div style="margin-top: 10px;">1257 Have Availed</div>
                    <div class="service-price"> &#8377; 2100 <br>
                        <a href="service" style="text-decoration:none"><button type="button" class="service-booknow-button">Book Now</button></a>
                    </div>
                </div>
        </div>
        </div>

      
    </center>    
    </div>
</div>

</div>

<br><br><br><br>

<div class="footer">    
        <script>
        $(function(){
            $(".footer").load("footer-file")
        })
        </script>
</div>

</div>
</body>
</html>