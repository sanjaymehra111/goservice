<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<button class="caret-up"><i class="fa fa-caret-up"></i></button>

<style>
  #main
  {
    z-index: 9999999999;
  }
  .caret-up
  {
    z-index: 99;
    position: fixed;
    bottom: 10;
    right: 20;
    border-radius: 100px;
    width:40px;
    height:40px;
    font-size: 20px;
    outline:none;
    border:none;
    color:white;
    background-color:#2798a7;
    opacity: 0.6;
    transition: 0.3s;
    display: none;
  }

  .caret-up:hover
  {
    opacity: 1;
  }
  html
  {
    scroll-behavior: smooth;
  }
  .sticky
  {
  position: fixed;
  top: 0;
  width: 100%;
  z-index: 999;
  }
  .sticky2
  {
    opacity: 0.0;
    padding: 0px;
    transition: 0.5s;
  }

  .sticky2:hover
  {
    opacity: 1;
  }

  .sticky + .header-part
  {
    padding-top: 70px;
  }


.menu1
{
  background-color: rgb(255, 255, 255);
    box-shadow: 5px 4px 5px rgba(0, 0, 0, 0.103);
}

.main-logo
{
    transition: 0.3s;
    width: 100px;
    height: 70px;
}

.site-logo
{
    padding-top: 5px;
    font-size: 30px;
    font-weight: bold;
    color:white;
    transition: 0.3s;
}


#menu2
{
    z-index: 9999999!important;
    background-color: #26313f;
    box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.24);
    border-bottom: 2px groove rgba(0, 0, 0, 0.171);
    transition: 0.3s;
    padding: 5px;
}


#site-menus-desktop
{
    display: block;
    padding: 15px;
    transition: 0.5s;
}


.site-menu
{
    font-size: 16px;
    font-weight: 500;
    margin-right: 40px;
    color:rgba(255, 255, 255, 0.808);
    text-transform: uppercase;
    transition: 0.3s;
}


.site-menu:hover
{
    color:white;
    border-bottom:solid 2px white;
    padding-bottom:5px;
}


.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 999;
  top: 0;
  right: 0;
  background-color: rgba(17, 17, 17, 0.945);
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 17px;
  font-weight: 520;
  color: #818181;
  display: block;
  transition: 0.3s;
  text-transform: uppercase;


}

.sidenav a:hover {
  color: #f1f1f1;
  border-bottom:solid 2px rgb(92, 15, 92);
}

.sidenav .closebtn {
  position: absolute;
  top: 10px;
  right: 30px;
  font-size: 40px;
  border-radius: 100px;
  text-align: center;
  cursor: pointer;
  color: #818181;
  transform: 0.3s;
}

.sidenav .closebtn:hover {
  color: rgb(153, 26, 26);
  transform: scale(1.5);

}
#main {
  transition:0.5s;
  overflow: hidden;
}

.mobile-menu-button
{
  cursor:pointer;
  float: right;
  display: none;
  transition: 0.5s;
  color:rgba(255, 255, 255, 0.705);
}

.mobile-menu-button:hover
{
  transform: scale(1.1);
  color:white;
}


.go-site-logo
{
  padding: 10px;
  text-align: left;
}

.selected-location
{
  padding-left: 5px;
  font-size: 20px;
}

.location-selected-button
{
  float: right;
  background-color: transparent;
  border:none;
  outline: none;
  width: 200px;
  padding: 5px;
  padding-top: 15px;
  transition: 0.3s;
  border-radius: 2px;
  color: rgba(89, 95, 105, 0.64);
}


.location-selected-button:hover
{
  background-color: rgba(180, 180, 180, 0.301);
}

.location-selected-button:active
{
  background-color: rgba(180, 180, 180, 0.911);
  color: white;
}

.fixbutton
{
  outline:none;
  border:none;
  background-color: transparent;
}
.call-button
{
  color: rgba(89, 95, 105, 0.64);
  padding: 15px;
  float:right;
  font-size: 17px;
}
.go-logo
{
  width: 250px;
  height: 50px;
  transition: 0.3s;
}
@media(max-width:975px)
{

  .call-button
{
 display: none;
}
  .go-logo
{
  width: 140px;
  height: 30px;
}
  .selected-location
{
  font-size: 17px;
}

  .location-selected-button
{
  padding-top: 0px;
  padding: 2px;
}
/*
  #menu2
{
    background-color: rgba(255, 255, 255);
 }
 

.go-site-logo
{
  text-align: center;
}
*/

#site-menus-desktop{display: none;}
.mobile-menu-button{display: block;}

.site-logo { font-size: 25px;}

}

@media (max-width: 450px) {
  .go-logo {
  width: 100px;
  height: 20px;
}
.selected-location {
    font-size: 15px;
}
}
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
  

}


</style>


<script>

  $(function(){
    $(".location-selected-button").click(function(){
      $(".content2_1").css({"height":"100%"});
      $(".content2_1").css({"position":"fixed"});
      $(".content2_1-main").css({"height":"550px"});

    });

    $(".location-selected-button-close").click(function(){
      $(".content2_1").css({"height":"0px"});
      $(".content2_1").css({"position":"absolute"});

    })

  })

  </script>

<script>
        function openNav() {
          document.getElementById("mySidenav").style.width = "100%";
          document.getElementById("main").style.marginRight = "0%";
          document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        }

        function closeNav() {
          document.getElementById("mySidenav").style.width = "0";
          document.getElementById("main").style.marginRight= "0";
          document.body.style.backgroundColor = "white";
        }


        $(window).scroll(function() {
          if ($(window).scrollTop() > 300) {
            $(".caret-up").show();
          } else {
            $(".caret-up").hide();
          }
        });

        $(function(){
          $(".caret-up").on("click", function() {
          $("body").scrollTop(100);
          });
        })


</script>


<div class="menu1">
    <div class="container-fluid">
    <div class="col-md-12 go-site-logo">
        <a href="index" style="text-decoration: none"><img src="/goservice/files/images/logo3.png" class="go-logo"></a>
        <button type="button" class="location-selected-button"><i class="fa fa-street-view" style="font-size: 25px;"></i> <span class="selected-location"> Delhi </span></button>
        <a href="tel:+123456789" style="text-decoration: none"><button type="button" class="fixbutton call-button"><i class="fa fa-mobile" style="font-size: 25px;"></i> +1234567890 </button></a>
      </div>
</div>
</div>

<style>
.insurance_type
{
  position: absolute;
  background-color: #26313fe1;
  z-index: 9999999;
  left: 400px;
  width: 150px;
  height: 0px;
  padding-left: 20px;
  overflow: hidden;
  transition: 0.5s;
}
.select_insurance
{
  cursor: pointer;
}
.insurance_type:hover
{
  height: 130px;
  padding: 20px;
}

.select_insurance:hover+.insurance_type
{
  height: 130px;
  padding: 20px;
}
.insurance_type_mobile
{
  height: 0px;
  overflow: hidden;
  transition: 0.5s;
  margin-left: 20px;
  width: 90%;
}
.insurance_type_mobile:hover
{
  height: 150px;
}
.select_insurance_mobile
{
  cursor: pointer;
}
.select_insurance_mobile:hover+.insurance_type_mobile
{
  height: 150px;
}
</style>

<div class="header-scroll" id="myHeader">
  <div id="menu2">
        <div class="container-fluid">
        <div class="col-md-12 main-menu">
            <div class="col-md-12" id="site-menus-desktop">
                    <a href="index" class="site-menu" style="text-decoration: none">Home</a>
                    <a href="car-service" class="site-menu" style="text-decoration: none">Car Service</a>
                    <a href="bike-service" class="site-menu" style="text-decoration: none">Bike Service</a>
                    <!-- <a href="about-us" class="site-menu" style="text-decoration: none">About us</a> -->
                    <a class="site-menu select_insurance" style="text-decoration: none">Insurance</a>
                    <div class="insurance_type"><br>
                        <a href="car-insurance" style="text-decoration: none"><div class="site-menu" style="width: 100%; text-align: left;">Car</div></a><br>
                        <a href="bike-insurance" style="text-decoration: none"><div class="site-menu" style="width: 100%; text-align: left">Bike</div></a><br>
                    </div>
                    
                    <c:if test="${fn:length(sessionData.user_id) != 0}">
                     	<a href="service_provider_dashboard" class="site-menu" style="text-decoration: none; ">Dashboard</a> 
                    </c:if> 
                    
                    <!-- <a href="admin_dashboard" class="site-menu" style="text-decoration: none; ">Admin</a>
                    <a href="user_dashboard" class="site-menu" style="text-decoration: none; ">User</a> -->
                    
                    <a href="login" class="site-menu" style="text-decoration: none; float: right;">Log In</a>
                 
            </div>
            <div class="site-logo">
                <!--<span><a href="index"><img class="main-logo" src="/goservice/files/images/ample logo.png"></a></span>-->
                <span onclick="openNav()" class="mobile-menu-button">&#9776;</span>
            </div>


            <div class="col-md-8 site-menus-mobile">
                    <div id="mySidenav" class="sidenav">
                            <span class="closebtn" onclick="closeNav()">&times;</span>
                            <a href="login" class="site-menu-mobile" style="text-decoration: none; ">Log In</a>
                            <a href="admin_dashboard" class="site-menu-mobile" style="text-decoration: none; ">Admin</a>
                            <a href="service_provider_dashboard" class="site-menu-mobile" style="text-decoration: none; ">Partner</a>
                            <a href="user_dashboard" class="site-menu-mobile" style="text-decoration: none; ">User</a>
                            <a href="index" class="site-menu-mobile" style="text-decoration: none">Home</a>
                            <a href="car-service" class="site-menu-mobile" style="text-decoration: none">Car Service</a>
                            <a href="bike-service" class="site-menu-mobile" style="text-decoration: none">Bike Service</a>
                            <!-- <a href="about-us" class="site-menu-mobile" style="text-decoration: none">About us</a> -->
                            
                            <a class="site-menu-mobile select_insurance_mobile" style="text-decoration: none">Insurance</a>
                            <div class="insurance_type_mobile"><br>
                                <a href="car-insurance" style="text-decoration: none;"><div class="site-menu-mobile" style="width: 100%; text-align: left;">Car</div></a><br>
                                <a href="bike-insurance" style="text-decoration: none;"><div class="site-menu-mobile" style="width: 100%; text-align: left">Bike</div></a><br>
                            </div>
                            <!-- <a href="contact-us" class="site-menu-mobile" style="text-decoration: none">Contact</a> -->
                    </div>
            </div>
        </div>
        </div>
  </div>
</div>


<div class="header-part">
</div>

  <script>
      window.onscroll = function() {myFunction()};

      var header = document.getElementById("myHeader");
      var sticky = header.offsetTop;

      function myFunction() {
        if (window.pageYOffset > sticky) {
          header.classList.add("sticky");
          document.getElementById("menu2").classList.add("sticky2");
          document.getElementById("site-menus-desktop").style.padding = "10px";
        } else {
          header.classList.remove("sticky");
          document.getElementById("menu2").classList.remove("sticky2");
          document.getElementById("site-menus-desktop").style.padding = "15px";
        }
      }
  </script>


<!--Select Location -->

<div class="main_location_select">

    <style>

.content2_1
{
  background-color: rgba(0, 0, 0, 0.37);
  position: absolute;
  top: 0px;
  z-index: 999;
  width: 100%;
  height: 0px;
  overflow: hidden;
  transition: 0.3s;

}


.location_field
  {
    width: 450px;
    height: 40px;
    font-size: 20px;
    text-align: center;
    border: none;
    outline: none;
    border-bottom: solid 1px rgb(117, 116, 116);
    appearance: none;
    background: rgb(240, 240, 240);
    transition: 0.3s;
  }

  .location_field::-webkit-calendar-picker-indicator
  {
	display: none;
  }


.select_delhi, .select_mumbai
{
  text-align: center;
  background-color: white;
  border-radius: 15px;
  height:250px;
  overflow: hidden;
  transition: 0.5s;
}

.body1-item
{
  transform: scale(0.9);
}

.body1-item:hover
{
  transform: scale(1);
  box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.205);
}

.location-selected-button-close
{
  float: right;
  margin-right: 20px;
  margin-top: -10px;
  color:rgb(148, 65, 65);
  cursor: pointer;
  transition: 0.5s;
  padding: 8px;
}

.location-selected-button-close:hover
{
  background-color: rgb(194, 193, 193);
  color:rgb(219, 28, 28);
}

.text1
{color: rgb(61, 59, 59); font-size:30px; transition: 0.3s;}


    .body1-items .slick-slide
    {
        cursor: pointer;
        height: 300px;
        width:100%;
    }


    .body1-items .slick-next
    {
        background-image: url('images/right.jpg');
        background-size: 100% 100%;
        text-indent: -9999;

    }

    .body1-items .slick-prev
    {
        background-image: url('images/left.jpg');
        background-size: 100% 100%;
        text-indent: -9999;
    }

    .body1-items .slick-prev:focus
    {
        background-image: url('images/left.jpg');
        background-size: 100% 100%;
        border-radius: 50px;
    }

    .body1-items .slick-prev:hover
    {
        background-color: white;
        background-image: url('images/left.jpg');
        background-size: 100% 100%;
        border-radius: 50px;
        box-shadow: 0px 0px 10px 1px rgb(255, 255, 255);
        z-index: 999;

    }


    .body1-items .slick-next:focus
    {
        background-image: url('images/right.jpg');
        background-size: 100% 100%;
        border-radius: 50px;
    }

    .body1-items .slick-next:hover
    {
        background-color: white;
        background-image: url('images/right.jpg');
        background-size: 100% 100%;
        border-radius: 50px;
        box-shadow: 0px 0px 10px 1px rgb(255, 255, 255);
        z-index: 999;
    }



    .body1-items .slick-dots li button
    {

        background-color: rgb(82, 73, 73);
        border-radius: 25px;
        width: 12px;
        height: 12px;
        text-indent: -9999px;
    }

    .body1-items .slick-dots li.slick-active
    {
        transform: scale(1.2);
        opacity: 0.3;
    }


    @media(max-width:975px)
{
  .location-selected-button-close {margin-right: 0px;}

  .location_field  {font-size: 15px; width: 300px;}

  .text1 {font-size:20px;}

}

    </style>

    <script>

    $(function(){

      $('.body1-items').slick({

                 infinite: true,
                 speed: 500,
                 slidesToShow: 4,
                 slidesToScroll:2,
                 autoplay:true,
                 arrows: true,
                 //centerMode:true,
                 dots:true,



                     responsive: [
                    {
                     breakpoint: 990,
                     settings: {
                        slidesToShow: 3,
                        slidesToScroll:2,
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

     });

     $(function(){

       $(".select_delhi").click(function(){
         $(".location_field").attr("list","delhilocationname");
         $(".location_field").val("");
         $(".location_field").focus();
       })

       $(".select_mumbai").click(function(){
        $(".location_field").attr("list","mumbailocationame");
        $(".location_field").val("");
         $(".location_field").focus();
       })


      $(".location_field").on("change", function(){
        var LocValue = $(this).val();
        var LocValueL = $(this).val().length;
        var AllOption = "Andheri,Bandra,Dadar,Mandavi,Saki Naka,Patel Nagar,Moti Nagar,Rajouri Garden,Uttam Nagar,Janak Puri"
        if(LocValue == "" || AllOption.indexOf(LocValue) == -1)
        {
          return false;
        }
        else
        {
          $(".location-selected-button-close").click()
          $(".selected-location").html(LocValue);
          return true;
        }
      });

     });

    $(function(){
      $(".body1-item").click(function(){
        $(".body1-item").css({"background-color":"white"});
        $(this).css({"background-color":"rgb(38, 56, 65)"});
        $(this).css({"color":"gray"});
      })
    });


    </script>

<div class="content2_1" >

<div class="content2_1-main" style="background-color: rgb(240, 240, 240)">

  <div class="select-location" style="text-align: center">

    <br>
    <p class="text1"> <span class="location-selected-button-close"><i class="fa fa-close" style="font-size: 30px"></i></span> Please let us know your locality to find service centers near you  </p>

    <input class="location_field" type="text" name="bike_name" list="mumbailocationame" placeholder="Enter Location, City...">


    <datalist class="location_option" id="mumbailocationame">
        <option value="Andheri" />
        <option value="Bandra" />
        <option value="Dadar" />
        <option value="Mandavi" />
        <option value="Saki Naka" />
    </datalist>
          <datalist class="location_option" id="delhilocationname">
            <option value="Patel Nagar" />
            <option value="Moti Nagar" />
            <option value="Rajouri Garden" />
            <option value="Uttam Nagar" />
            <option value="Janak Puri" />
          </datalist>



    <div class="location_city">

    <br><br>

    <div class="body1">
      <div class="container">


      <center>
      <div class="body1-items" style="width:100%;">

      <div class="col-md-1">
      <div class="body1-item select_delhi">
      <center><img src="/goservice/files/images/delhi.png" style="width:150px; height: 150px;"></center>
      <hr style="border:solid 0.5px rgb(153, 187, 29); text-align: center; width: 50%;">

      <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Delhi</p>

      </div>
      </div>

      <div class="col-md-1 ">
      <div class="body1-item select_mumbai">
      <br><center><img src="/goservice/files/images/mumbai.png" style="width:130px; height: 130px;"></center>
      <hr style="border:solid 0.5px rgb(153, 187, 29); text-align: center; width: 50%;">

      <p style="text-align: center; color:gray; font-size: 20px; font-weight: bold">Mumbai</p>

      </div>
      </div>


    </div>
    </center>

          <br><br><br>
      </div>
      </div>


    </div>

  </div>

</div>

</div>

</div>

