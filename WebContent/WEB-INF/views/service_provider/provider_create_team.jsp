
<div class="provider_create_team">

    
    
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
        
        .provider_team_image
        {
          height: 250px;
          width: 250px;
          border-radius: 100%;
          border: solid 1px white;
          padding: 2px;
          box-shadow: 0px 0px 10px 5px rgba(0, 0, 0, 0.151);
        }
    
        .text_field3
        {
          border: none;
          outline: none;
          border-bottom: solid 1px #2a2b3d;
          background: transparent;
          width: 100%;
          padding: 10px;
          font-size: 15px;
          text-align: center;
          padding-left: 30px;
          cursor: default;
          transition: 0.3s;
        }
    
       
        .fa_text_fonts12
        {
          font-size: 20px;
          position: absolute;
          margin-top: 10px;
          margin-left:5px;
          color: #6f6486;
          transition: 0.3s;
        }

        .text_field3:focus
        {
          border-bottom: solid 1px rgb(9, 156, 156);
        }
        .service_edit_button2
        {
          width: 300px;
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
        .service_edit_button2:hover, .service_cancel_button3:hover, .service_save_button3:hover
        {
          background: #2a2b3d;
          box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.596);
        }
     
         .service_edit_button2:active, .service_cancel_button3:active, .service_save_button3:active
        {
          transition: 0.2s;
          transform: scale(0.98);
          box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.178);
        }
        .service_buttons
        {
          transition: 0.5s;
        }

        .camera_icon3
        {
          position: absolute;
          height: 60px;
          width: 60px;
          top: 65%;
          margin-left: 60%;
          border-radius: 100%;
          transition: 0.3s;
          cursor: pointer;
        }
        .camera_icon3:hover
        {
          border: solid 2px rgb(255, 255, 255);
          transform: scale(1.05);
          box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.329);
        }
        .camera_icon3:active
        {
          transform: scale(1);
          box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.644);
        }
        @media(max-width:975px)
        {
          .service_edit_button2
          {
            width: 100%;
          }
          .camera_icon3
        {
          transition: 0.0s;
          top: 65%;
          margin-left: 55%;
          
        }
          .fa_text_fonts1
        {
          margin-top: 4px;
          font-size: 20px;
        }
    
          .text_field3
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
        .camera_icon3
        {
          transition: 0.0s;
          top: 65%;
          margin-left: 65%;
        }
        .provider_team_image
        {
          width: 250px;
          height: 250px;
        }
        }

    </style>
    
     <script>
$(function(){
$(".service_save_button3").click(function()
		{
		   var data = new FormData();
			var url = "";
			
			var u_imgl = $(".provider_team_image").attr('src').length;
			 if(u_imgl  < 1000)
			 	{var url = "create_service_provider_members_no_img";}	
			else
				{var url = "create_service_provider_members";}
				
			data.append("name", $("#member_name").val());
			data.append("contact", $("#member_contact").val());
			data.append("email", $("#member_email").val());
			data.append("address", $("#member_address").val());
			data.append("provider_id", $("#provider_id").val());
			data.append("file", $(".provider_team_1")[0].files[0]);
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
</script>
  
  
    <script>

    $(function(){
      $(".text_field3").focus(function(){
        $(".fa_text_fonts12").css({"color":"#6f6486"});
        $(this).prev(".fa_text_fonts1").css({"color":"rgb(9, 156, 156)"});
      })
    })


    $(function(){
        $(".camera_icon3").click(function(){
          $(".provider_team_1").click();
        });


        //Image Function
        $(".provider_team_1").change(function() {
          readURL(this);
        });

        function readURL(input) {
          if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function(e) {
              $('.provider_team_image').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
          }
        }
    });

    // document.getElementById('output').innerHTML = location.search;
    // $(".chosen-select").chosen();

  
    
    </script>
    
        <div class="col-md-1"></div>
        <div class="col-md-10">
        <div class="test-1">  <br><br>
          <div class="col-md-6">
          <center><img src="/goservice/files/service_provider_images/user3.png" class="provider_team_image"></center>
          <img src="/goservice/files/service_provider_images/camera_icon1.png" class="camera_icon3">
          <input type="file" class="provider_team_1 hide">
          <br><br>
          </div>

<div class="col-md-5" style="text-align: center;">
<br>
            <i class="fa fa-user fa_text_fonts1 fa_text_fonts12"></i>
            <input type="text" name="provider_team_name" class="text_field3" id="member_name" placeholder="Team Member Name">
            <br><br>
            <i class="fa fa-phone fa_text_fonts1 fa_text_fonts12"></i>
            <input type="text" name="provider_team_contact" class="text_field3" id="member_contact" placeholder="Team Member Contact">
            <br><br>
            <i class="fa fa-envelope fa_text_fonts1 fa_text_fonts12"></i>
            <input type="email" name="provider_team_mail" class="text_field3" id="member_email" placeholder="Team Member Email">
            <br><br>
            <i class="fa fa-map-marker fa_text_fonts1 fa_text_fonts12"></i>
            <input type="text" name="provider_team_address" class="text_field3" id="member_address" placeholder="Team Member Address">
            <br><br>
            <input type="text" value="${sessionData.user_id}" class="hide" id="provider_id">
            
</div>              
  
            <br>
          <div class="col-md-12" style="text-align: center;">
            <!-- <button class="service_edit_button2 service_edit_button2">Edit</button> -->
            <div class="service_buttons">
                <!-- <button type="reset" class="service_edit_button2 service_cancel_button3">Cancel</button> &nbsp;&nbsp;&nbsp;&nbsp; -->
                <button class="service_edit_button2 service_save_button3">Create Team Member</button>
            </div>
          </div>
          <div class="container-fluid"></div>
          <br><br>
        </div>
        </div>
    
</div>  
