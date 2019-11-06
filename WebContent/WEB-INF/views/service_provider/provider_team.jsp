
<div class="provider_team">
        <br><br><br>

        <style>
        
        
        .test-2 
            {
              /*background-color: rgba(160, 68, 68, 0.932);*/
              background-image: url('/goservice/files/service_provider_images/user_back2.jpeg');
              background-size: 100% 100%;
              box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.308);
              transition: 0.3s;
              color: #2a2b3d;
              border-radius: 10px;
            }
            .test-2:hover
            {
              transform: scale(1.021);
              box-shadow: 5px 5px 20px rgba(150, 150, 150, 0.308);
            }
            
            .edit_member_image1, .user_image1, .delete_member_img
            {
              height: 150px;
              width: 150px;
              border-radius: 100%;
              border: solid 3px white;
              padding: 3px;
              box-shadow: 0px 0px 10px 5px rgba(0, 0, 0, 0.151);
              transition: 0.2s;
            }
            .user_image1:hover
            {
              transform: scale(1.1);
            }
            .text_field5
            {
              border: none;
              outline: none;
              border-bottom: solid 1px #2a2b3d;
              background: transparent;
              width: 47%;
              padding: 10px;
              font-size: 15px;
              text-align: center;
              padding-left: 35px;
              cursor: default;
              transition: 0.3s;
            }
        
            .text_field5:focus
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
            
            .profile_edit_button1, .team_edit_button1, .profile_delete_button1
            {
              width: 45%;
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
            .team_edit_button1
            {
              transition: 0.5s;
              width: 50%;
              padding: 7px;
              font-weight: bold;
              background-color: rgba(255, 255, 255, 0.623);
            }

            .profile_edit_button2:hover, .profile_cancel_button2:hover, .profile_save_button2:hover, .team_edit_button1:hover, .profile_delete_button1:hover
            {
              background: #2a2b3d;
              box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.596);
            }
         
             .profile_edit_button2:active, .profile_cancel_button2:active, .profile_save_button2:active, .team_edit_button1:active, .profile_delete_button1:active
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
          
              .profile_edit_button1, .profile_delete_button1
              {
                width: 45%;
              }
              .
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
        
              .text_field5
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
          $(".text_field5").focus(function(){
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
              $(".text_field5").attr("readonly",false);
              $(".text_field5").css({"cursor":"auto"});

            });
        
            $(".profile_cancel_button2, .profile_save_button2").click(function(){
              $(".profile_buttons").hide();
              $(".camera_icon1").hide();
              $(".profile_edit_button2").show();
              $(".profile_buttons").css({"opacity":"0"});
              $(".profile_edit_button2").css({"opacity":"1"});
              $(".text_field5").attr("readonly",true);
              $(".text_field5").css({"cursor":"default"});
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
                  $('.edit_member_image1').attr('src', e.target.result);
                }
                
                reader.readAsDataURL(input.files[0]);
              }
            }
        })
      </script>
        


    <script>
    
    $(function GetDetails(){
    	var id=$(".provider_id").val();
    	$.ajax({
    		url:"view_provider_team_member",
    		data:{provider_id:id},
    		contentType:"json",
    		dataType:"json",
    		type:"GET",
    		success:function(data){
    			var i, text="";
    			for(i=0; i<data.length; i++)
	    			{
    						text+='<div class="col-md-4">';
		    				text+='<div class="test-2">';
		    				text+='<div style="background-color: rgba(0, 0, 0, 0.514); border-radius: 10px;">';
		    				text+='<br><br>';
		    				text+='<center><img src="/goservice/files/service_provider_images/images/'+data[i].image+'" class="user_image1"></center>';
		    				text+='<br>';
		    				text+='<div class="team_member_details" style="text-align: center;">';
		    				text+='<div style="font-size: 22px; font-weight: bold; color: white;">'+data[i].name+'</div>';
		    				text+='<div style="font-size: 15px;  color: white;">'+data[i].contact+'</div><br>';
		    				text+='<button type="button" class="team_edit_button1"  value="'+data[i].team_member_id+'" data-toggle="modal" data-target="#myModal">Edit</button>';
		    				text+='</div>';
		    				text+='<div class="container-fluid"></div>';
		    				text+='<br>';
		    				text+='</div>';
		    				text+='</div>';  
		    				text+='<br><br>';            
		    				text+='</div>';
    				}
	    			$("#prrovider_team_members_details").html(text);
				},
    		error:function(){alert("error")}
    	});
    });
    
    
    	/* $(function EditMembersDetails.on('click', team_edit_button1, function(){
        	//var id = $(this).val();
        	alert("asd");
        	});
       
     */
     
     $(function EditMemberDetails(){
    	 $(document).on('click','.team_edit_button1', function(){
         		var id = $(this).val();
         		$.ajax({
            		url:"edit_provider_team_member",
            		data:{team_member_id:id},
            		contentType:"json",
            		dataType:"json",
            		type:"GET",
            		success:function(data){
            			console.log(data);
            			$(".edit_member_image1").attr('src', '/goservice/files/service_provider_images/images/'+data[0].image+'');
            			$(".edit_member_name").val(data[0].name);
            			$(".edit_member_contact").val(data[0].contact);
            			$(".edit_member_email").val(data[0].email);
            			$(".edit_member_address").val(data[0].address);
            			$(".team_member_id").val(data[0].team_member_id);
            		},
            		error:function(){alert("error")}
            	});
         		
         	});
    	 });
     
     
     $(function UppdateMemberDetails(){
    	 $(document).on('click','.profile_save_button2', function(){
    		var data = new FormData();
 			var url = "";
 			var u_imgl = $(".edit_member_image1").attr('src').length;
 			
 			 if(u_imgl  < 1000)
 			 	{var url = "update_service_provider_team_no_img";}	
 			else
 				{var url = "update_service_provider_team_img";}
 				
 			
 			data.append("name", $(".edit_member_name").val());
 			data.append("contact", $(".edit_member_contact").val());
 			//data.append("email", $(".provider_email").val());
 			data.append("email", $(".edit_member_email").val());
 			data.append("address", $(".edit_member_address").val());
 			data.append("team_member_id", $(".team_member_id").val());
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
         		
});
});
     
     
    </script>
  
        
<div class="provider_team_members">
<input type="text" value="${sessionData.user_id}" class="provider_id hide">

<div id="prrovider_team_members_details">
</div>
</div>

<div class="Edit_Member_Model">

            <!-- Modal -->
            
  <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">
      
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Edit Team Member</h4>
          </div>
          <div class="modal-body">
              <div class="col-md-12">
                  <div class="test-3"><br>
                    <center><img src="" class="edit_member_image1"></center>
                    <img src="/goservice/files/service_provider_images/camera_icon1.png" class="camera_icon1">
                    <input type="file" class="user_profile1 hide">
                    <br><br>
                    <div class="col-md-1"></div>
                    <div class="col-md-10" style="text-align: center;">
              
                      <i class="fa fa-user fa_text_fonts fa_text_fonts1"></i>
                      <input type="text" value="" name="provider_team_name" class="text_field5 edit_member_name" readonly>
						<span class="space">&nbsp;&nbsp;&nbsp;&nbsp;</span>
	               		<span class="spacea"><br><brr></span>
                      <i class="fa fa-phone fa_text_fonts fa_text_fonts1"></i>
                      <input type="text" value="" name="provider_team_contact" class="text_field5 edit_member_contact" readonly>
                        
                      <br><br>
              
                      <i class="fa fa-envelope fa_text_fonts fa_text_fonts1"></i>
                      <input type="text" value="" name="provider_team_mail" class="text_field5 edit_member_email" readonly>
       		              <span class="space">&nbsp;&nbsp;&nbsp;&nbsp;</span>
	        	          <span class="spacea"><br><brr></span>
                      <i class="fa fa-map-marker fa_text_fonts fa_text_fonts1"></i>
                      <input type="text" value="" name="provider_team_address" class="text_field5 edit_member_address" readonly>
                      <input type="text" class="text_field5 team_member_id hide" readonly>
                      <br><br><br>
              
                      <button class="profile_edit_button1 profile_edit_button2">Edit</button>
                      <div class="profile_buttons" style="display: none;">
                          <button class="profile_edit_button1 profile_cancel_button2">Cancel</button> &nbsp;&nbsp;&nbsp;&nbsp;
                          <button class="profile_edit_button1 profile_save_button2">Save</button>
                      </div>
                    </div><br>
                  </div>
                  </div>  
                  <div class="container"></div>
          </div>
          <div class="modal-footer">
          	<button type="button" class="profile_delete_button2 btn btn-danger" data-toggle="modal" data-target="#myDeleteModal" data-dismiss="modal">Delete</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
          </div>
        </div>
        
      </div>
    </div>
    
  </div>

<script>
$(function(){
	$(".profile_delete_button2").click(function(){
		//var img = $(this).closest(".src_head").find(".get_img").attr("src");
		var name = $(this).closest(".modal-content").find(".edit_member_name").val();
		var id = $(this).closest(".modal-content").find(".team_member_id").val();
		var img = $(this).closest(".modal-content").find(".edit_member_image1").attr("src");
		$(".delete_member_name").val(name);
		$(".delete_member_id").val(id);
		$(".delete_member_img").attr("src", img);	
	})

	$(".profile_delete_button1").click(function(){
	$.ajax({
		url:"delete_team_member",
		data:{id:$(".delete_member_id").val()},
		dataType:false,
		contentType:"json",
		success:function(){alert("success")},
		error:function(){alert("error")},
	})
	})
	
	
})
</script>


 <div class="modal fade" id="myDeleteModal" role="dialog">
      <div class="modal-dialog">
      
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 style="font-weight:bold; text-align:center" class="modal-title">Are You Sure You Want To Delete Team Member</h4>
            
          </div>
          <div class="modal-body" style="text-align:center;">
		    	<img src="" class="edit_member_image1 delete_member_img"><br><br>
		    	<i class="fa fa-user fa_text_fonts fa_text_fonts1"></i>
                <input type="text" value="" name="provider_team_name" class="text_field5 delete_member_name" readonly>
                <input type="text" class="delete_member_id hide" readonly>
                <br><br><br>
		    	<button class="profile_delete_button1" type="button" style="background-color:#da2a2a">Delete</button>
        	  <br><br>
          <div class="container"></div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-success" data-dismiss="modal">Not Now</button>
          </div>
        </div>
        
      </div>
    </div>
    
    

</div>




        </head>