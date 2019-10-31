<html lang="en">
  <head>
<!-- Bootstrap -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<!-- Font Awesome-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--For Webpage Logo-->
<link rel="shortcut icon" href="/goservice/files/images/logo3-plane.png">

<!--For Multiple Select-->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
 --> 
<style>

    * {
      padding: 0;
      margin: 0;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      box-sizing: border-box;
      font-family: 'Droid Sans', sans-serif;
      outline: none;
    }
    ::-webkit-scrollbar {
      background: transparent;
      width: 5px;
      height: 5px;
    }
    ::-webkit-scrollbar-thumb {
      background-color: #888;
    }
    ::-webkit-scrollbar-thumb:hover {
      background-color: rgb(78, 75, 75);
    }
    body {background-color: #2a2b3d}
    #contents {
      position: relative;
      transition: .3s;
      margin-left: 290px;
      background-color: #2a2b3d;
    }
    .margin {
      margin-left: 0 !important;
    }
    /* Start side navigation bar  */
    
    .side-nav {
      z-index: 999;
      float: left;
      height: 100%;
      width: 290px;
      background-color: #252636;
      color: #CCC;
      -webkit-transform: translateX(0);
      -moz-transform: translateX(0);
      transform: translateX(0);
      -webkit-transition: all .3s ease-in-out;
      -moz-transition: all .3s ease-in-out;
      transition: .3s;
      position: fixed;
      top: 0;
      left: 0;
      overflow: auto;
    }
    .side-nav .close-aside {
      position: absolute;
      top: 7px;
      right: 7px;
      cursor: pointer;
      color: #EEE;
    }
    .side-nav .heading {
      background-color: #252636;
      padding: 15px 15px 15px 30px;
      overflow: hidden;
      border-bottom: 1px solid #2a2b3c
    }
    .side-nav .heading > img {
      border-radius: 50%;
      float: left;
      width: 28%;
    }
    .side-nav .info {
      float: left;
      /*width: 69%;*/
      margin-left: 3%;
    }
    .side-nav .heading .info > h3 {margin: 0 0 5px}
    .side-nav .heading .info > h3 > a {
      color: #EEE;
      font-weight: 100;
      margin-top: 4px;
      display: block;
      text-decoration: none;
      font-size: 18px;
    }
    .side-nav .heading .info > h3 > a:hover {
      color: #FFF;
    }
    .side-nav .heading .info > p {
      color: #BBB;
      font-size: 13px;
    }
    /* End heading */
    /* Start search */
    .side-nav .search {
      text-align: center;
      padding: 15px 30px;
      margin: 15px 0;
      position: relative;
    }
    .side-nav .search > input {
      width: 100%;
      background-color: transparent;
      border: none;
      border-bottom: 1px solid #23262d;
      padding: 7px 0 7px;
      color: #DDD
    }
    .side-nav .search > input ~ i {
      position: absolute;
      top: 22px;
      right: 40px;
      display: block;
      color: #2b2f3a;
      font-size: 19px;
    }
    /* End search */
    
    .side-nav .categories > li {
      padding: 17px 40px 17px 30px;
      overflow: hidden;
      border-bottom: 1px solid rgba(255, 255, 255, 0.02);
      cursor: pointer;
    }
    .side-nav .categories > li > a {
      color: #AAA;
      text-decoration: none;
    }
    /* Start num: there are three options primary, danger and success like Bootstrap */
    .side-nav .categories > li > a > .num {
      line-height: 0;
      border-radius: 3px;
      font-size: 14px;
      color: #FFF;
      padding: 0px 5px
    }
    .dang {background-color: #f35959}
    .prim {background-color: #0275d8}
    .succ {background-color: #5cb85c}
    /* End num */
    .side-nav .categories > li > a:hover {
      color: #FFF
    }
    .side-nav .categories > li > i {
      font-size: 18px;
      margin-right: 5px
    }
    .side-nav .categories > li > a:after {
      content: "\f053";
      font-family: fontAwesome;
      font-size: 11px;
      line-height: 1.8;
      float: right;
      color: #AAA;
      -webkit-transition: all .3s ease-in-out;
      -moz-transition: all .3s ease-in-out;
      transition: all .3s ease-in-out;
    }
    .side-nav .categories .opend > a:after {
      -webkit-transform: rotate(-90deg);
      -moz-transform: rotate(-90deg);
      transform: rotate(-90deg);
    }
    /* End categories */
    /* Start dropdown menu */
    .side-nav .categories .side-nav-dropdown {
      padding-top: 10px;
      padding-left: 30px;
      list-style: none;
      display: none;
      
    }
    .side-nav .categories .side-nav-dropdown > li > a {
      color: #AAA;
      text-decoration: none;
      padding: 7px 0;
      display: block;
    }
    .side-nav .categories .side-nav-dropdown > li > a:hover
    {
      color: white;
    }
    .side-nav .categories p {
      margin-left: 30px;
      color: #535465;
      margin-top: 10px;
    }
    
    /* End dropdown menu */
    
    .show-side-nav {
      transform: translateX(-290px);
    }
    
    
    /* Start media query */
    @media (max-width: 767px) {
      
    
      .side-nav .categories > li {
        padding-top: 12px;
        padding-bottom: 12px;
      }
      .side-nav .search {
        padding: 10px 0 10px 30px
      }
    }
    
    /* End side navigation bar  */
    /* Start welcome */
    
    .welcome {
      color: #CCC;
    }
    .welcome .content {
      background-color: #313348;
      padding: 15px;
      margin-top: 25px;
    }
    .welcome h2 {
      font-family: Calibri;
      font-weight: 100;
      margin-top: 0
    }
    .welcome p {
      color: #999;
    }
    
    
    /* Start statistics */
    .statistics {
      margin-top: 25px;
      color: #CCC;
    }
    .statistics .box {
      background-color: #313348;
      padding: 15px;
      overflow: hidden;
    }
    .statistics .box > i {
      float: left;
      color: #FFF;
      border-radius: 50%;
      width: 60px;
      height: 60px;
      line-height: 60px;
      font-size: 22px;
    }
    .statistics .box .info {
      float: left;
      width: auto;
      margin-left: 10px;
    }
    .statistics .box .info h3 {
      margin: 5px 0 5px;
      display: inline-block;
    }
    .statistics .box .info p {color:#BBB}
    
    /* End statistics */
    /* Start charts */
    .charts {
      margin-top: 25px;
      color: #BBB
    }
    .charts .chart-container {
      background-color: #313348;
      padding: 15px;
    }
    .charts .chart-container h3 {
      margin: 0 0 10px;
      font-size: 17px;
    }
    
    /* Start users */
    
    .admins {
      margin-top: 25px;
    }
    .admins .box {
    
    }
    .admins .box > h3 {
      color: #ccc;
      font-family: Calibri;
      font-weight: 300;
      margin-top: 0;
    }
    .admins .box .admin {
      margin-bottom: 20px;
      overflow: hidden;
      background-color: #313348;
      padding: 10px;
    }
    .admins .box .admin .img {
      width: 20%;
      margin-right: 5%;
      float: left;
    }
    .admins .box .admin .img img {
      border-radius: 50%;
    }
    .admins .box .info {
      width: 75%;
      color: #EEE;
      float: left;
    }
    .admins .box .info h3 {font-size: 19px}
    .admins .box .info p {color: #BBB}
    
    /* End users */
    /* Start statis */
    
    .statis {
      color: #EEE;
      margin-top: 15px;
    }
    .statis .box {
      position: relative;
      padding: 15px;
      overflow: hidden;
      border-radius: 3px;
      margin-bottom: 25px;
    }
    .statis .box h3:after {
      content: "";
      height: 2px;
      width: 70%;
      margin: auto;
      background-color: rgba(255, 255, 255, 0.12);
      display: block;
      margin-top: 10px;
    }
    .statis .box i {
      position: absolute;
      height: 70px;
      width: 70px;
      font-size: 22px;
      padding: 15px;
      top: -25px;
      left: -25px;
      background-color: rgba(255, 255, 255, 0.15);
      line-height: 60px;
      text-align: right;
      border-radius: 50%;
    }
    
    /*chart*/
    .chrt3 {
      padding-bottom: 50px;
    }
    .chrt3 .chart-container {
      height: 350px;
      padding: 15px;
      margin-top: 25px;
    }
    .chrt3 .box {
      padding: 15px;
    }
    
    
    .main-color {
      color: #ffc107
    }
    .warning {background-color: #f0ad4e}
    .danger {background-color: #d9534f}
    .success {background-color: #5cb85c}
    .inf {background-color: #5bc0de}
    
    
    
    /* Start bootstrap */
    .navbar-right .dropdown-menu {
      right: auto !important;
      left: 0 !important;
    }
    .navbar-default {
      background-color: #6f6486 !important;
      border: none !important;
      border-radius: 0 !important;
      margin: 0 !important
    }
    .navbar-default .navbar-nav>li>a {
      color: #EEE !important;
      line-height: 55px !important;
      padding: 0 10px !important;
    }
    .navbar-default .navbar-brand {color:#FFF !important}
    .navbar-default .navbar-nav>li>a:focus,
    .navbar-default .navbar-nav>li>a:hover {color: #EEE !important}
    
    .navbar-default .navbar-nav>.open>a,
    .navbar-default .navbar-nav>.open>a:focus,
    .navbar-default .navbar-nav>.open>a:hover {background-color: transparent !important; color: #FFF !important}
    
    .navbar-default .navbar-brand {line-height: 55px !important; padding: 0 !important}
    .navbar-default .navbar-brand:focus,
    .navbar-default .navbar-brand:hover {color: #FFF !important}
    .navbar>.container .navbar-brand, .navbar>.container-fluid .navbar-brand {margin: 0 !important}
    @media (max-width: 767px) {
      .navbar>.container-fluid .navbar-brand {
        margin-left: 15px !important;
      }
      .navbar-default .navbar-nav>li>a {
        padding-left: 0 !important;
      }
      .navbar-nav {
        margin: 0 !important;
      }
      .navbar-default .navbar-collapse,
      .navbar-default .navbar-form {
        border: none !important;
      }
    
    }
    
    .navbar-default .navbar-nav>li>a {
      float: left !important;
    }
    .navbar-default .navbar-nav>li>a>span:not(.caret) {
      background-color: #e74c3c !important;
      border-radius: 50% !important;
      height: 25px !important;
      width: 25px !important;
      padding: 2px !important;
      font-size: 11px !important;
      position: relative !important;
      top: -10px !important;
      right: 5px !important
    }
    .dropdown-menu>li>a {
      padding-top: 5px !important;
      padding-right: 5px !important;
    }
    .navbar-default .navbar-nav>li>a>i {
      font-size: 18px !important;
    }
    
    
    
    
    /* Start media query */
    
    @media (max-width: 767px) {
      #contents {
        margin: 0 !important
      }
      .statistics .box {
        margin-bottom: 25px !important;
      }
      .navbar-default .navbar-nav .open .dropdown-menu>li>a {
        color: #CCC !important
      }
      .navbar-default .navbar-nav .open .dropdown-menu>li>a:hover {
        color: #FFF !important
      }
      .navbar-default .navbar-toggle{
        border:none !important;
        color: #EEE !important;
        font-size: 18px !important;
      }
      .navbar-default .navbar-toggle:focus, .navbar-default .navbar-toggle:hover {background-color: transparent !important}
    }
    
    
</style>
    
<script>
    /*global $, console*/
    /*
      By Mostafa Omar
      https://www.facebook.com/MostafaOmarIbrahiem
    */
    $(function () {
    
    'use strict';
    
    (function () {
    
      var aside = $('.side-nav'),
    
          showAsideBtn = $('.show-side-btn'),
    
          contents = $('#contents');
    
      showAsideBtn.on("click", function () {
    
    $("#" + $(this).data('show')).toggleClass('show-side-nav');
          contents.toggleClass('margin');
      });
    
      if ($(window).width() <= 767) {
    
        aside.addClass('show-side-nav');

        $(".hide_sidebar_button").click(function(){
            $(".close-aside").click();
          })
    
      }
      $(window).on('resize', function () {
    
        if ($(window).width() > 767) {
    
          aside.removeClass('show-side-nav');

        }
    
      });
    
      // dropdown menu in the side nav
      var slideNavDropdown = $('.side-nav-dropdown');
    
      $('.side-nav .categories li').on('click', function () {
    
        $(this).toggleClass('opend').siblings().removeClass('opend');
    
        if ($(this).hasClass('opend')) {
    
          $(this).find('.side-nav-dropdown').slideToggle('fast');
    
          $(this).siblings().find('.side-nav-dropdown').slideUp('fast');
    
        } else {
    
          $(this).find('.side-nav-dropdown').slideUp('fast');
    
        }
    
      });
    
      $('.side-nav .close-aside').on('click', function () {
    
        $('#' + $(this).data('close')).addClass('show-side-nav');
    
        contents.removeClass('margin');
    
      });
    
    }());
    
    });
    
    </script>
    
    <script>
    
    
    $(function ImportPage(){
        $(".ImportPage").load("provider_home");
        $(document).on("click",".import_provider", function(){
        var pn = $(this).attr("pagename");
        var tn = $(this).attr("textname");
        $(".pagename").html(tn);
        var a = $(".ImportPage").load("provider_"+pn);
        //$(".provider_service").hide();
      });

/*     $(".import_provider_service").click(function(){
        $(".pagename").html($(this).attr("textname"));
        $(".ImportPage").load("blank");
        $(".provider_service").show();
    });
     */
    })
 </script>
 

  </head>
      
  <body>

    <aside class="side-nav" id="show-side-navigation1">
      <i class="fa fa-bars close-aside hidden-sm hidden-md hidden-lg" data-close="show-side-navigation1" style="margin-top: 10px;"></i>
      <div class="heading">
        <img src="https://uniim1.shutterfly.com/ng/services/mediarender/THISLIFE/021036514417/media/23148907008/medium/1501685726/enhance" alt="">
        <div class="info" style="margin-left: 20px; margin-top: 10px;">
          <h3><a href="#">Sachin Maurya</a></h3>
          <p>GoServices Pvt.Ltd.</p>
        </div>
      </div>

      <!-- <div class="search">
        <input type="text" placeholder="Type here"><i class="fa fa-search"></i>
      </div> -->

      <ul class="categories">
        <li ><i class="fa fa-home fa-fw" aria-hidden="true"></i><a> Dashboard </a>
        <ul class="side-nav-dropdown">
            <li class="import_provider hide_sidebar_button import_provider_dashboard" pagename="home" textname="Dashboard"><a href="#">Home</a></li>
            <li class="import_provider hide_sidebar_button" pagename="profile" textname="Profile"><a>Profile</a></li>
          </ul>
        </li>

        <li ><i class="fa fa-support fa-fw"></i><a> Our Service</a>
          <ul class="side-nav-dropdown">
            <li class="import_provider hide_sidebar_button" pagename="create_service" textname="Service"><a>My Service</a></li>
            <!-- <li class="import_provider_service hide_sidebar_button" pagename="create_service" textname="Service"><a>My Service</a></li> -->
          </ul>
        </li>

        <li ><i class="fa fa-users fa-fw"></i><a> Our team</a>
          <ul class="side-nav-dropdown">
            <li class="import_provider hide_sidebar_button" pagename="create_team" textname="New Team Member"><a href="#">Create New Team</a></li>
            <li class="import_provider hide_sidebar_button" pagename="team" textname="Team"><a href="#">All Team</a></li>
          </ul>
        </li>

        <!--
        
          <li><i class="fa fa-envelope fa-fw"></i><a href="#"> Contact us</a>
          <ul class="side-nav-dropdown">
            <li><a href="#">Lorem ipsum</a></li>
            <li><a href="#">ipsum dolor</a></li>
            <li><a href="#">dolor ipsum</a></li>
            <li><a href="#">amet consectetur</a></li>
            <li><a href="#">ipsum dolor sit</a></li>
          </ul>
        </li> 

         <li><i class="fa fa-bolt fa-fw"></i><a href="#"> Testimonials</a>
          <ul class="side-nav-dropdown">
            <li><a href="#">Lorem ipsum</a></li>
            <li><a href="#">ipsum dolor</a></li>
            <li><a href="#">dolor ipsum</a></li>
            <li><a href="#">amet consectetur</a></li>
            <li><a href="#">ipsum dolor sit</a></li>
          </ul>
        </li> 

         <p>Example:</p>
        <li><i class="fa fa-envelope-open-o fa-fw"></i><a href="#"> Messages <span class="num dang">56</span></a></li>
        <li><i class="fa fa-wrench fa-fw"></i><a href="#"> Settings <span class="num prim">6</span></a>
          <ul class="side-nav-dropdown">
            <li><a href="#">Lorem ipsum</a></li>
            <li><a href="#">ipsum dolor</a></li>
            <li><a href="#">dolor ipsum</a></li>
            <li><a href="#">amet consectetur</a></li>
            <li><a href="#">ipsum dolor sit</a></li>
          </ul>
        </li>
        <li><i class="fa fa-laptop fa-fw"></i><a href="#"> About UI &amp; UX <span class="num succ">43</span></a></li>
        <li><i class="fa fa-comments-o fa-fw"></i><a href="#"> Something else</a></li> -->

      </ul>
    </aside>

    <section id="contents">


      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <i class="fa fa-align-right"></i>
            </button>
            <a class="navbar-brand" href="#">My <span class="main-color pagename">Dashboard</span></a>
          </div>
          <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Dashboard <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li class="import_provider" pagename="profile" textname="Profile"><a href="#"><i class="fa fa-user-o fw"></i> My Profile</a></li>
                  <li><a href="#"><i class="fa fa-envelope-o fw"></i> My inbox</a></li>
                  <li><a href="#"><i class="fa fa-question-circle-o fw"></i> Help</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="index"><i class="fa fa-sign-out"></i> Log out</a></li>
                </ul>
              </li>
              <li><a href="#"><i class="fa fa-comments"></i><span>23</span></a></li>
              <li><a href="#"><i class="fa fa-bell-o"></i><span>98</span></a></li>
              <li style="margin-top: 15px;"><a href="#"><i data-show="show-side-navigation1" class="fa fa-bars show-side-btn"></i></a></li>
            </ul>
          </div>
        </div>
      </nav>


       


<div class="ImportPage">

</div>

<div class="container-fluid"></div>
<br><br><br><br>

      </section>
    </body>
    

    </html>
  
  