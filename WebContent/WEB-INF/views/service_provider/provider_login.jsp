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

 input[type=number]::-webkit-inner-spin-button, 
			input[type=number]::-webkit-outer-spin-button { 
			  -webkit-appearance: none; 
			  margin: 0; 
			}

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
                <p style="font-size: 30px; color: rgba(255, 255, 255, 0.76)">Become A Partner</p><br>
                <input type="text" maxlength="50" class="user_log_email form-text1" placeholder="User Email Or Contact"><br><br>
                <input type="password" maxlength="50" class="user_log_password form-text1" placeholder="Password">
                <br><br><br>
                <p style="float: right; margin-right: 10%;  font-size: 15px;"><a href="#" style="text-decoration: none;  color: rgba(255, 255, 255, 0.767)">Forgot Password ?</a></p><br><br>
                <button type="submit" class="user-login-button1 user_submit_button1">LOG IN</button>
                <br><br><br><br><br>
            </div>

<script>
$(function(){
	$(".user-login-button1").click(function(){
			var valid_email = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			var email = $(".user_log_email").val();
			var password = $(".user_log_password").val();
			
			if(email == null ||  email== "")
			{
				$(".user_log_email").css({"border":"solid 2px red"});
			}
			
			else if(password == null ||  password== "" || password.length <6)
			{
				$(".user_log_email").css({"border":"solid 0.5px black"});
				$(".user_log_password").css({"border":"solid 2px red"});
			}
			
			else
			{
				$(".user_log_email").css({"border":"solid 0.5px black"});
				$(".user_log_password").css({"border":"solid 0.5px black"});
				
				
				signup(email, password);
			}
			
			
			function signup(email, password)
			{
				$.ajax({
					url:"service_provider_signup",
					data :{email:email, password:password},
					contentType: "text",
					dataType:"text",
			 	  	type: 'get',
			 	  	cashe:false,
				 	success:function(data){
				 		if (data == "status_closed")
				 			{
				 				alert("status closed");
				 			}
				 		else if (data == "incorrect_id_pwd")
			 			{
				 			alert("incorrect id and password");
			 			}
				 		else 
			 			{
			 				window.location.href="service_provider_dashboard";	
			 			}
				 			
				 		},
						error:function(error){alert(error)},
					}) // ajax close
			} // else close
		})
	
		
		var name ="";
		var email ="";
		var password ="";
		var contact ="";
		var GeneOtp ="";
		
	$(".user-signup-button1").click(function(){
		name = $(".user_id").val();
		email = $(".user_email").val();
		password = $(".user_password").val();
		contact = $(".user_contact").val();
		var valid_email = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		
		/* $.ajax({
			url:"OtpGenerator",
			data:{name:name, contact:contact},
			dataType:'text',
			contentType:'text',
			cache:false,
			success:function(otp){
				alert("success");
				},
			error:function(error){alert("error 2")},
		})// ajax close
		 */
		
		if(name == null ||  name == "")
		{
			$(".user_id").css({"border":"solid 2px red"});
		}
		
		else if(contact == null ||  contact== "" || contact.length!=10)
		{
			$(".user_id").css({"border":"solid 0.5px black"});
			$(".user_contact").css({"border":"solid 2px red"});
		}
		
		else if(email == null ||  email== "" || !email.match(valid_email))
		{
			$(".user_id").css({"border":"solid 0.5px black"});
			$(".user_contact").css({"border":"solid 0.5px black"});
			$(".user_email").css({"border":"solid 2px red"});
		}
		
		else if(password == null ||  password== "" || password.length <6)
		{
			$(".user_id").css({"border":"solid 0.5px black"});
			$(".user_contact").css({"border":"solid 0.5px black"});
			$(".user_email").css({"border":"solid 0.5px black"});
			$(".user_password").css({"border":"solid 2px red"});
		}
		
		else
		{
			$(".user_id").css({"border":"solid 0.5px black"});
			$(".user_email").css({"border":"solid 0.5px black"});
			$(".user_password").css({"border":"solid 0.5px black"});
			$(".user_contact").css({"border":"solid 0.5px black"});

				$.ajax({
					url:"OtpGenerator",
					data:{name:name, contact:contact},
					dataType:'text',
					contentType:'text',
					cache:false,
					success:function(otp){alert("OTP Sent")},
					error:function(error){alert("error 2")},
				})// ajax close
				
			$(".otp_button1").click();
				
		} // else close
	})// user-signup-button1 button click close
		
		
		
	$(".check_otp").click(function(){
		
		$.ajax({
			url:"ValidateOtp",
			data :{otp:$(".otp_value").val(),name:name, contact:contact},
			contentType: "text",
			dataType: "text",
	 	  	cache:false,    
		 	success:function(data){
		 		if(data=='success')
		 			signup(name, contact, email, password);
		 		else
		 			alert("Please Try Again");
				},
				
			error:function(error){alert("error")},
		}) // ajax close 
		
		
	/* 	var user_otp = $(".otp_value").val();
		if(user_otp == GeneOtp)
			alert("OTP Match");
			//signup(name, contact, email, password);
		else
			alert("Wrong OTP Please regenerate OTP");
		//console.log(name+","+contact+","+email+","+password); */
		 
	
	})	
	
	
		
		function signup(name, contact, email, password)
		{
			 $.ajax({
				url:"service_provider_signin",
				data :{name:name, contact:contact, email:email, password:password},
				contentType: false,
		 	  	type: 'get',    
			 	success:function(data){
			 		window.location.href="service_provider_dashboard";	
			 		},
				error:function(error){alert("error")},
			}) // ajax close 
		} // signup close
	
})

</script>

            <div class="user_signup_section" style="display: none">
            
            
                <p style="font-size: 30px; color: rgba(255, 255, 255, 0.76)">Sign Up for a Free</p><br>
                <input type="text" maxlength="50" class="user_id form-text1" placeholder="Name"><br><br>
                <input type="number" maxlength="10" class="user_contact form-text1" onKeyPress="if(this.value.length==10) return false;" placeholder="Contact"><br><br>          
                <input type="email" maxlength="50" class="user_email form-text1" placeholder="Email ID"><br><br>
                <input type="password" maxlength="50" class="user_password form-text1" placeholder="Password">
                <br><br><br><br>    
                <button type="submit" class="user-signup-button1 user_submit_button1">SIGN UP</button>
                <button type="button" class="otp_button1 hide" data-toggle="modal" data-target="#myOtpModal">otp</button>
                	
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

    <style>
    .otp_value
    {
    	border:none;
    	outline:none;
    	border-bottom:solid 2px #0000001c;
    	text-align:center;
    	font-size:18px;
    	transition:0.3s; 
    }
    
    .otp_value:focus
    {
    	border-bottom:solid 2px green;
    }
    
    .modal-dialog
    {
    	top:20%;
    }	
    .otp_button2
    {
    	width: 160px;
	    padding: 7px;
	    background: #17699a;
	    border: none;
	    outline: none;
	    color: white;
	    text-transform: uppercase;
	    transition:0.3s;
	}
	.otp_button2:hover
	{
		background: #172933;
	}
	.otp_button2:active {
	transition:0.1s;
	transform:scale(0.95);
	}
    </style>  
    
 <div class="modal fade" id="myOtpModal" role="dialog">
      <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-body" style="text-align:center;">
          <h4>ENTER OTP</h4>
		    <input type="number" class="otp_value" onKeyPress="if(this.value.length==6) return false;">
		    <br><br>
		    <button class="otp_button2">Regenrate OTP</button>
		    <button class="otp_button2 check_otp">Submit</button>
		    <br><br>
		    </div>
        </div>
      </div>
    </div>
    


</div>
</body>
</html>