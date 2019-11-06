	<div class="provider_profile">
        <br><br><br>

        <style>
        
        
        .test-1 
            {
              background-color: rgba(255, 255, 255, 0.932);
              box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.308);
              transition: 0.3s;
              color: #2a2b3d;
              border-radius: 5px;
            }
            
            .user_image
            {
              height: 150px;
              width: 150px;
              border-radius: 100%;
              border: solid 1px white;
              padding: 2px;
              box-shadow: 0px 0px 10px 5px rgba(0, 0, 0, 0.151);
            }
        
            .text_field1
            {
              border: none;
              outline: none;
              border-bottom: solid 1px #2a2b3d;
              background: transparent;
              width: 45%;
              padding: 10px;
              font-size: 15px;
              text-align: center;
              padding-left: 35px;
              cursor: default;
              transition: 0.3s;
            }
        
            .text_field1:focus
            {
              border-bottom: solid 1px rgb(9, 156, 156);
            }
            .fa_text_fonts
            {
              font-size: 20px;
              position: absolute;
              margin-top: 10px;
              margin-left:5px;
              color: #6f6486;
              transition: 0.3s;
            }
            .provider_address1
            {
              width: 93%;
            }
            .profile_edit_button1
            {
              width: 200px;
              padding: 10px;
              border: none;
              outline: none;
              background: transparent;
              text-transform: uppercase;
              color: white;
              font-size: 17px;
              background:#6f6486 ;
              transition: 0.5s;
              border-top-left-radius: 30px;
              border-bottom-right-radius: 30px;
              border-top-right-radius: 0px;
              border-bottom-left-radius: 0px;
        
            }
            .profile_edit_button2:hover, .profile_cancel_button2:hover, .profile_save_button2:hover
            {
              background: #2a2b3d;
              box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.596);
            }
         
             .profile_edit_button2:active, .profile_cancel_button2:active, .profile_save_button2:active
            {
              transition: 0.2s;
              transform: scale(0.98);
              box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.178);
            }
            .profile_buttons
            {
              transition: 0.5s;
              opacity: 0;
            }

            .camera_icon1
            {
              display: none;
              position: absolute;
              width: 40px;
              width: 40px;
              margin-top: -5%;
              margin-left: 53%;
              border-radius: 100%;
              transition: 0.3s;
              cursor: pointer;
            }
            .camera_icon1:hover
            {
              border: solid 2px rgb(255, 255, 255);
              transform: scale(1.05);
              box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.329);
            }
            .camera_icon1:active
            {
              transform: scale(1);
              box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.644);
            }
                        .spacea
            {	
            	display: none;
            }
            
            @media(max-width:975px)
            {
            .space
            {	
            	display: none;
            }
            .spacea
            {	
            	display: block;
            }
              .profile_edit_button1
              {
                width: 45%;
              }
              .provider_address1
            {
              width: 100%;
            }
              .camera_icon1
            {
              transition: 0.0s;
              margin-top: -7%;
              margin-left: 53%;
            }
              .fa_text_fonts
            {
              margin-top: 8px;
              font-size: 15px;
            }
        
              .text_field1
            {
              text-align: left;
              padding: 5px;
              font-size: 15px;
              width: 100%;
              padding-left: 35px;
            }
        
            }
        
            @media(max-width:575px)
            {
            .camera_icon1
            {
              transition: 0.0s;
              margin-top: -10%;
              margin-left: 53%;
            }
            }
        
        </style>
        
        
        <script>

          
        $(function(){
          $(".text_field1").focus(function(){
            $(".fa_text_fonts1").css({"color":"#6f6486"});
            $(this).prev(".fa_text_fonts").css({"color":"rgb(9, 156, 156)"});
          })
        })


        $(function(){
            $(".profile_edit_button2").click(function(){
              $(this).hide();
              $(this).css({"opacity":"0"});
              $(".profile_buttons").show();
              $(".camera_icon1").show();
              $(".profile_buttons").css({"opacity":"1"});
              $(".text_field1").attr("readonly",false);
              $(".text_field1").css({"cursor":"auto"});

            });
        
            $(".profile_cancel_button2, .profile_save_button2").click(function(){
              $(".profile_buttons").hide();
              $(".camera_icon1").hide();
              $(".profile_edit_button2").show();
              $(".profile_buttons").css({"opacity":"0"});
              $(".profile_edit_button2").css({"opacity":"1"});
              $(".text_field1").attr("readonly",true);
              $(".text_field1").css({"cursor":"default"});
            })

            $(".camera_icon1").click(function(){
              $(".user_profile1").click();
            });


			$(".user_profile1").change(function() {
			  readURL(this);
			});
			
			function readURL(input) {
			  if (input.files && input.files[0]) {
			    var reader = new FileReader();
			    
			    reader.onload = function(e) {
			      $('.user_image').attr('src', e.target.result);
			     // alert("src : " + e.target.result);
			    }
			    
			    reader.readAsDataURL(input.files[0]);
			  }
			}
			
        })
        </script>
        
        
  
<script>
$(function(){
	$.ajax({
		url:"GetProviderProfile",
		data:{id:$("#provider_id").val()},
		dataType:"json",
		contentType:"json",
		type:"get",
		success:function(data)
		{
			console.log(data);
			$("#provider_name").val(data[0].name);
			$("#provider_contact").val(data[0].contact);
			$("#provider_email").val(data[0].email);
			$("#provider_shop_name").val(data[0].shop_name);
			$("#provider_address").val(data[0].address);
			$(".user_image").attr('src', "/goservice/files/service_provider_images/images/"+data[0].image);
			
		},
		error:function(error){alert("error"); console.log(error)},
	})
	
/* Update Profile Details */

$(".profile_save_button2").click(function()
		{
			var data = new FormData();
			var url = "";
			var u_imgl = $(".user_image").attr('src').length;
			
			 if(u_imgl  < 1000)
			 	{var url = "update_service_provider_no_img";}	
			else
				{var url = "update_service_provider_img";}
				
			
			data.append("name", $("#provider_name").val());
			data.append("contact", $("#provider_contact").val());
			data.append("email", $("#provider_email").val());
			data.append("shop_name", $("#provider_shop_name").val());
			data.append("address", $("#provider_address").val());
			data.append("provider_id", $("#provider_id").val());
			data.append("file", $(".user_profile1")[0].files[0]);
			console.log(data);
		    $.ajax({
				 	url:url,
				 	data: data,
			 		enctype: 'multipart/form-data',
				 	processData: false,
				 	contentType: false,
			 	  	type: 'Post',    
				 	cache: false,
				 	success : function(){alert("Update Success")},
				 	error : function(){alert("Error Found")}

		});//ajax close 
	}); // button closed
})	

$(function(){
	$(".btnbtn").click(function(){
		var a = $(".user_profile1")[0].files[0];
		console.log(a)		
	})	
})


</script>
   
        
            <div class="col-md-1"></div>
            <div class="col-md-10">
            <div class="test-1">  <br><br>
              <center><img src="" class="user_image"></center>
              <img src="/goservice/files/service_provider_images/camera_icon1.png" class="camera_icon1">
              
              <input type="file" class="user_profile1 hide" accept="image/png, image/jpeg">
              <br><br>
              <div class="col-md-1"></div>
              <div class="col-md-10" style="text-align: center;">
        
                <i class="fa fa-user fa_text_fonts fa_text_fonts1"></i>
                <input type="text" value="" name="provider_name" class="text_field1" maxlength="50" id="provider_name" placeholder="Provider Name" readonly>
                  
                  <span class="space">&nbsp;&nbsp;&nbsp;&nbsp;</span>
                  <span class="spacea"><br><brr></span>
                  
                <i class="fa fa-phone fa_text_fonts fa_text_fonts1"></i>
                <input type="number" value="" name="provider_contact" class="text_field1" maxlength="10" id="provider_contact" placeholder="Provider Contact" readonly>
                  
                <br><br>
        
                <i class="fa fa-envelope fa_text_fonts fa_text_fonts1"></i>
                <input type="text" value="" name="provider_mail" class="text_field1" maxlength="50"  id="provider_email" placeholder="Provider Email"readonly>
                  
                  <span class="space">&nbsp;&nbsp;&nbsp;&nbsp;</span>
                  <span class="spacea"><br><brr></span>
                  
                <i class="fa fa-home fa_text_fonts fa_text_fonts1"></i>
                <input type="text" value="" name="provider_store_name" class="text_field1" maxlength="100" id="provider_shop_name" placeholder="Provider Store Name" readonly>
                  
                <br><br>
              
                <i class="fa fa-map-marker fa_text_fonts fa_text_fonts1"></i>
                <input type="text" value="" name="provider_address" class="text_field1 provider_address1" maxlength="200" id="provider_address"  placeholder="Provider Address" readonly>
                <br><br><br>
        		<input type="text" value="${sessionData.user_id}" class="hide" id="provider_id">
        		<button class="profile_edit_button1 profile_edit_button2">Edit</button>
                <div class="profile_buttons" style="display: none;">
                    <button class="profile_edit_button1 profile_cancel_button2">Cancel</button> &nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="profile_edit_button1 profile_save_button2">Save</button>
                </div>
              </div>
              <div class="container-fluid"></div>
              <br><br>
            </div>
            </div>   
        </div>