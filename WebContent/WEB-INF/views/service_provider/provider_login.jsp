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




</head>
<title>GoService</title>
<body>

<div id="main" style="background-color: rgba(200, 206, 204, 0.212)">

<div class="provider_header">    
    <script>
    $(function(){
        $(".provider_header").load("header-file")
    })
    </script>
</div>
<br><br>

<style>
.form-main
{
    background-color: rgba(19, 35, 47, 0.9);
    color: rgb(194, 194, 194);
    box-shadow:  10px 5px 10px rgba(0, 0, 0, 0.699);
}
.user-form-button1
{
    border:none;
    outline: none;
    background-color: transparent;
    width: 40%;
    padding: 15px;
    font-size: 20px;
    text-transform: uppercase;
    transition: 0.3s;
    background-color: #a3a3a32d;
    color:rgba(255, 255, 255, 0.767)
}

.login-button1
{
    background-color: #1c7db6;
    color: white;
}

.form-text1
{
    width: 81%;
    padding: 15px;
    border: solid 0.5px black;
    background-color: transparent;
    color: white;
    font-size: 18px;
    outline: solid 1px rgba(255, 255, 255, 0.767);
}

.form-text1:focus
{
    outline: solid 3px #1c7db6;
}

.form-text1::placeholder
{
    color: rgba(255, 255, 255, 0.767);
}

.user_submit_button1
{
    clear: both;
    width: 81.5%;
    padding: 15px;
    border: solid 0.5px black;
    background-color: #1c7db6;
    color: white;
    font-size: 25px;
    font-weight: bold;
    outline: none;
    transition: 0.3s;
}
.user_submit_button1:hover
{
    border: none;
    box-shadow: 7px 7px 7px rgba(0, 0, 0, 0.418);
}
.user_submit_button1:active
{
    background-color: #255069;
    transform: scale(0.99);
}

.user_login_section, .user_signup_section 
{
    transition: 1.0s;
}

.user_signup_section 
{
    opacity: 0.1;
}

@media(max-width:975px)
{
    .user-form-button1
{
    width: 40.5%;
    padding: 10px;
    font-size: 20px;
    text-transform: uppercase;
}
}
</style>

<script>

$(function login_sigup_section(){
    $(".login-button1").click(function(){
        $(this).css({"background-color":"#1c7db6","color":"white"});
        $(".signup-button1").css({"background-color":"#a3a3a32d","color":"rgba(255, 255, 255, 0.767)"});
        $(".user_login_section").show();
        $(".user_signup_section").hide();
        $(".user_signup_section").css({"opacity":"0.1"});
        $(".user_login_section").css({"opacity":"1"});
    });
    $(".signup-button1").click(function(){
        $(this).css({"background-color":"#1c7db6","color":"white"});
        $(".login-button1").css({"background-color":"#a3a3a32d","color":"rgba(255, 255, 255, 0.767)"});
        $(".user_login_section").hide();
        $(".user_signup_section").show();
        $(".user_signup_section").css({"opacity":"1"});
        $(".user_login_section").css({"opacity":"0.1"});
    })
})

</script>


<div class="body-part">

    <div class="user_form">
    <div class="col-md-12" style="text-align: center">    
        <div class="col-md-2"></div>
        <div class="col-md-8 form-main">
            <br><br><br>
            <div class="user-form-head">    
                <button type="button" class="user-form-button1 login-button1">Log In</button>
                <button type="button" class="user-form-button1 signup-button1">Sign Up</button>
            </div>
            <br><br>

            <div class="user_login_section">
                <p style="font-size: 30px; color: rgba(255, 255, 255, 0.76)">Partner Login</p><br>
                <input type="text" maxlength="30" class="user_log_id form-text1" placeholder="User Id"><br><br>
                <input type="password" maxlength="30" class="user_log_password form-text1" placeholder="Password">
                <br><br><br>
                <p style="float: right; margin-right: 10%;  font-size: 15px;"><a href="#" style="text-decoration: none;  color: rgba(255, 255, 255, 0.767)">Forgot Password ?</a></p><br><br>
                <button type="submit" class="user-login-button1 user_submit_button1">LOG IN</button>
                <br><br><br><br><br>
            </div>

            <div class="user_signup_section" style="display: none">
                <p style="font-size: 30px; color: rgba(255, 255, 255, 0.76)">Sign Up for Free</p><br>
                <input type="text" maxlength="30" class="user_id form-text1" placeholder="Name"><br><br>
                <input type="email" maxlength="30" class="user_email form-text1" placeholder="Email"><br><br>
                <input type="password" maxlength="30" class="user_password form-text1" placeholder="Password"><br><br>
                <input type="text" maxlength="10" class="user_contact form-text1" placeholder="Contact">                
                <br><br><br><br>    
                <button type="submit" class="user-signup-button1 user_submit_button1">SIGN UP</button>
                <br><br><br><br><br>
            </div>

        </div>
    </div>
    </div>
 
</div>



<div class="container"></div>
<br><br><br>
<div class="provider_footer">    
        <script>
        $(function(){
            $(".provider_footer").load("footer-file")
        })
        </script>
</div>

</div>
</body>
</html>