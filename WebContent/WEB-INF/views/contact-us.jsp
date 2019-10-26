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
        .contact-text
        {
            width: 100%;
            text-align: center;
            height: 35px;
            font-size: 15px;
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
        
</style>


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
<div class="contact-us-tag" style="background-image: url('/goservice/files/images/contact-us.jpg');  background-size: 100% 100%;">
    <div style="background-color: rgba(0, 0, 0, 0.658)">
        <div style="padding:80px; text-align: center; color: white;">
            <p style="font-size: 30px; text-transform: capitalize; font-weight: bold;">Contact Us</p>
            <center><div style="border-bottom: solid 3px rgb(216, 72, 72); width: 100px; text-align: center"></div></center>
        </div>
    </div>
</div>
<br><br>
<br><br>
<div class="content1">
    <div class="container">    
        <div class="col-md-8">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.892477303679!2d77.08043511455891!3d28.60300229216885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d1b47d76866b3%3A0xf9b15c4ae0e5a7f1!2sPalam%20-%20Dabri%20Marg%2C%20Delhi!5e0!3m2!1sen!2sin!4v1568281971614!5m2!1sen!2sin" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
        <br><br><br><br>
        </div>

        <div class="col-md-4">
            <p style=" font-size: 20px; text-align: center">Call Back Request </p>
            <form name="contact-form">
            <input class="contact-text" type="text" name="name" placeholder="Name"><br><br>
            <input class="contact-text" type="emial" name="email" placeholder="Email"> <br><br>
            <input class="contact-text" type="number" name="contact" placeholder="Contact"> <br><br>
            <textarea class="contact-text" style="height: 100px; resize: none" name="message"  placeholder="Message"></textarea>
                <br><br>
                <button class="contact-send-button" type="submit">Send</button>
                <br><br><br>
            </form>
        </div>

   
            

</div>


    </div>
</div>

</div>



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