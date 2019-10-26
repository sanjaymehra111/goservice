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
            @media(max-width:975px)
            {
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
    }
    
    reader.readAsDataURL(input.files[0]);
  }
}


        })
        
        </script>
        
            <div class="col-md-1"></div>
            <div class="col-md-10">
            <div class="test-1">  <br><br>
              <center><img src="/goservice/files/service_provider_images/user1.png" class="user_image"></center>
              <img src="/goservice/files/service_provider_images/camera_icon1.png" class="camera_icon1">
              <input type="file" class="user_profile1 hide">
              <br><br>
              <div class="col-md-1"></div>
              <div class="col-md-10" style="text-align: center;">
        
                <i class="fa fa-user fa_text_fonts fa_text_fonts1"></i>
                <input type="text" value="Sachin Maurya" name="provider_name" class="text_field1" placeholder="Provider Name" readonly>
                  &nbsp;&nbsp;&nbsp;&nbsp;
                <i class="fa fa-phone fa_text_fonts fa_text_fonts1"></i>
                <input type="text" value="8447484748" name="provider_contact" class="text_field1" placeholder="Provider Contact" readonly>
                  
                <br><br>
        
                <i class="fa fa-envelope fa_text_fonts fa_text_fonts1"></i>
                <input type="text" value="Sachin111@gmail.com" name="provider_mail" class="text_field1"  placeholder="Provider Email"readonly>
                  &nbsp;&nbsp;&nbsp;&nbsp;
                <i class="fa fa-home fa_text_fonts fa_text_fonts1"></i>
                <input type="text" value="Go Service Pvt. Ltd." name="provider_store_name" class="text_field1" placeholder="Provider Store Name" readonly>
                  
                <br><br>
              
                <i class="fa fa-map-marker fa_text_fonts fa_text_fonts1"></i>
                <input type="text" value="Uttam Nagar, New Delhi, India 110059" name="provider_address" class="text_field1 provider_address1"  placeholder="Provider Address" readonly>
                <br><br><br>
        
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