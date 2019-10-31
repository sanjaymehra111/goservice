<div class="provider_service">
    
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
        
        .service_shop_image
        {
          height: 300px;
          width: 80%;
          border-radius: 10px;
          border: solid 1px white;
          padding: 2px;
          box-shadow: 0px 0px 10px 5px rgba(0, 0, 0, 0.151);
        }
    
        .text_field2
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
    
       
        .fa_text_fonts11
        {
          font-size: 20px;
          position: absolute;
          margin-top: 10px;
          margin-left:5px;
          color: #6f6486;
          transition: 0.3s;
        }

        .text_field2:focus
        {
          border-bottom: solid 1px rgb(9, 156, 156);
        }
        .service_edit_button1
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
        .service_edit_button2:hover, .service_cancel_button2:hover, .service_save_button2:hover
        {
          background: #2a2b3d;
          box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.596);
        }
     
         .service_edit_button2:active, .service_cancel_button2:active, .service_save_button2:active
        {
          transition: 0.2s;
          transform: scale(0.98);
          box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.178);
        }
        .service_buttons
        {
          transition: 0.5s;
        }

        .camera_icon2
        {
          position: absolute;
          height: 70px;
          width: 70px;
          top: 70%;
          margin-left: 75%;
          border-radius: 100%;
          transition: 0.3s;
          cursor: pointer;
        }
        .camera_icon2:hover
        {
          border: solid 2px rgb(255, 255, 255);
          transform: scale(1.05);
          box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.329);
        }
        .camera_icon2:active
        {
          transform: scale(1);
          box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.644);
        }
        @media(max-width:975px)
        {
          .service_edit_button1
          {
            width: 45%;
          }
          .camera_icon2
        {
          transition: 0.0s;
          top: 70%;
          margin-left: 80%;
          
        }
          .fa_text_fonts1
        {
          margin-top: 4px;
          font-size: 20px;
        }
    
          .text_field2
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
        .camera_icon2
        {
          transition: 0.0s;
          top: 70%;
          margin-left: 75%;
        }
        .service_shop_image
        {
          width: 100%;
        }
        }

    </style>
    
    
    <script>

    $(function(){
      $(".text_field2").focus(function(){
        $(".fa_text_fonts11").css({"color":"#6f6486"});
        $(this).prev(".fa_text_fonts1").css({"color":"rgb(9, 156, 156)"});
      })
    })


    $(function(){
        $(".camera_icon2").click(function(){
          $(".user_service1").click();
        });


        $(".user_service1").change(function() {
          readURL(this);
        });

        function readURL(input) {
          if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function(e) {
              $('.service_shop_image').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
          }
        }
    });

    // document.getElementById('output').innerHTML = location.search;
    // $(".chosen-select").chosen();

  
    
    </script>
  
   <script>  
    
    $(function GetCarDetails(){
    	$.ajax({
    		url:"view_car_service",
    		contentType:"json",
    		dataType:"json",
    		success:function(data1){
    			var i, j, text1="";
    			
    				    for(j=0; j<1; j++)
	    				{
    				    	text1+='<div style="text-align: center;"> ';
    				    	text1+='<div class="service-fix-height">';
    				    	text1+='<input readonly type="text" class="car_service_id hide">';
    				    	text1+='<input readonly type="text" class="car_data1" placeholder="Select Car Service">';
    				    	text1+='<div class="car_service_list">';
    				    	text1+='<br>';
    				    		for(i=0; i<data1.length; i++)
    				    		{
    				    			text1+='<label class="service-container">'+data1[i].maker+','+data1[i].model+','+data1[i].service;
    				    			text1+='<input class="car_check_box" id='+''+data1[i].id+' value="'+data1[i].maker+' '+data1[i].model+' '+data1[i].service+'"type="checkbox">';
    				    			text1+='<span class="checkmark"></span>';
    				    			text1+='<div style="float: right">'+data1[i].charges+'</div>';
    				    			text1+='</label>';
    				    		}
    				    		//text1+='<option>' +data1[i].maker+ '&nbsp;'+data1[i].model+'&nbsp;'+data1[i].service+'&nbsp;(&nbsp; &#8377 '+data1[i].charges+' &nbsp;) </option>';
        				    text1+='</div>';
        				    text1+='</div>';
        				    text1+='</div>';
    				    }   
	    					$("#view_car_details").html(text1);
	    					
	    					$(function(){
	    						$(".car_check_box").click(function(){
	    						var data = [];
	    						var datas = [];
	    						var id=[];
	    						var ids=[];
	    						$.each($(".car_check_box:checked"), function(){
	    						data.push($(this).val());
	    						id.push($(this).attr("id"));
	    						})
	    						console.log(data);
	    						console.log(id);
	    						for(var i=0; i<data.length; i++)
	    						{
	    							datas[i] = data[i] +"";
	    							ids[i] = id[i] +"";
	    						}
	    						$(".car_data1").val(datas);
	    						$(".car_service_id").val(ids);
	    						})
	    					})

			},
    		error:function(){alert("error")}
    	})
    });
    
    
    
    $(function GetBikeDetails(){
        		$.ajax({
        		url:"view_bike_service",
        		contentType:"json",
        		dataType:"json",
        		success:function(data){
        			var i,j, text="";
        			
        			for(j=0; j<1; j++)
    				{
        				text+='<div style="text-align: center;"> ';
				    	text+='<div class="service-fix-height">';
				    	text+='<input readonly type="text" class="bike_service_id hide">';
				    	text+='<input readonly type="text" class="bike_data1" placeholder="Select Bike Service">';
				    	text+='<div class="bike_service_list">';
				    	text+='<br>';
				    		for(i=0; i<data.length; i++)
				    		{
				    			text+='<label class="service-container">'+data[i].maker+','+data[i].model+','+data[i].service;
				    			text+='<input class="bike_check_box" id='+''+data[i].id+' value="'+data[i].maker+' '+data[i].model+' '+data[i].service+'"type="checkbox">';
				    			text+='<span class="checkmark"></span>';
				    			text+='<div style="float: right">'+data[i].charges+'</div>';
				    			text+='</label>';
				    		}
    				    text+='</div>';
    				    text+='</div>';
    				    text+='</div>';
    			    }   
    				
    	    			$("#view_bike_details").html(text);
    	    			
    	    			$(function(){
    						$(".bike_check_box").click(function(){
    						var data = [];
    						var datas = [];
    						var id=[];
    						var ids=[];
    						$.each($(".bike_check_box:checked"), function(){
    						data.push($(this).val());
    						id.push($(this).attr("id"));
    						})
    						console.log(data);
    						console.log(id);
	    						for(var i=0; i<data.length; i++)
	    						{
	    							datas[i] = data[i] +"";
	    							ids[i] = id[i] +"";
	    						}
    						$(".bike_data1").val(datas);
    						$(".bike_service_id").val(ids	);
    						})
    					})
    	    					
        		},
        		error:function(){alert("error")}
        	})
        });
    
/*     $(window).ready(function(){
    	$('head').append('<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css"/>');
		$('head').append('<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"><\/script>');
    })
 */  
            
</script>

 
 <script>
$(function(){
$(".service_save_button2").click(function()
		{
		    //var data1 = $(".car_servicec_list .filter-option-inner-inner").html().replace(/ *\([^)]*\) */g, "");
    		//var data2 = $(".bike_servicec_list .filter-option-inner-inner").html().replace(/ *\([^)]*\) */g, "");
			
			var data1 = $(".car_service_id").val()
			var data2 = $(".bike_service_id").val()
    		
			var data = new FormData();
			var url = "";
			
			var u_imgl = $(".service_shop_image").attr('src').length;
			 if(u_imgl  < 1000)
			 	{var url = "update_service_provider_services_no_img";}	
			else
				{var url = "update_service_provider_services";}
		
			data.append("shop_name", $("#provider_shop").val());
			data.append("contact", $("#provider_contact").val());
			data.append("email", $("#provider_email").val());
			data.append("address", $("#provider_address").val());
			data.append("car_service", data1);
			data.append("bike_service", data2);
			data.append("service_id", $("#service_id").val());
			data.append("provider_id", $("#provider_id").val());
			data.append("file", $(".user_service1")[0].files[0]);
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
    
        <div class="col-md-1"></div>
        <div class="col-md-10">
        <div class="test-1">  <br><br>
          <div class="col-md-6">
          <center><img src="/goservice/files/service_provider_images/shop1.jpg" class="service_shop_image"></center>
          <img src="/goservice/files/service_provider_images/camera_icon1.png" class="camera_icon2">
          <input type="file" multiple="multiple" class="user_service1 hide" accept="image/*">
          <br><br>
          </div>

			<div class="col-md-5" style="text-align: center;">
			<br>
            <i class="fa fa-home fa_text_fonts1 fa_text_fonts11"></i>
            <input type="text" name="provider_shop_name" class="text_field2" id="provider_shop" placeholder="Shop Name">
            <br><br>
            <i class="fa fa-phone fa_text_fonts1 fa_text_fonts11"></i>
            <input type="text" name="provider_shop_contact" class="text_field2" id="provider_contact" placeholder="Shop Contact">
            <br><br>
            <i class="fa fa-envelope fa_text_fonts1 fa_text_fonts11"></i>
            <input type="email" name="provider_shop_mail" class="text_field2" id="provider_email" placeholder="Shop Email">
            <br><br>
            <i class="fa fa-map-marker fa_text_fonts1 fa_text_fonts11"></i>
            <input type="text" name="provider_shop_address" class="text_field2" id="provider_address" placeholder="Shop Address">
            <br><br>
            <input type="text" value="1" class="hidden" id="service_id">
            <input type="text" value="1" class="hidden" id="provider_id">
</div>              



<style>
						/* The service-container */
						.service-container {
							display: block;
							position: relative;
							/*padding-left: 35px;*/
							margin-bottom: 12px;
							cursor: pointer;
							font-size: 14px;
							user-select: none;
							font-weight: 100;
							padding: 2px;
							margin-left: 20px;
							margin-right: 20px;
							text-transform: uppercase;
						}
			
						/* Hide the browser's default checkbox */
						.service-container input {
							position: absolute;
							opacity: 0;
							cursor: pointer;
							height: 0;
							width: 0;
						}
			
						/* Create a custom checkbox */
						.checkmark {
							position: absolute;
							top: 0;
							left: 0;
							height: 25px;
							width: 25px;
							background-color: #eee;
						}
			
						/* On mouse-over, add a grey background color */
						.service-container:hover input~.checkmark {
							background-color: #6f6486;
						}
			
						/* When the checkbox is checked, add a blue background */
						.service-container input:checked~.checkmark {
							background-color: #2a2b3d;
						}
			
						/* Create the checkmark/indicator (hidden when not checked) */
						.checkmark:after {
							content: "";
							position: absolute;
							display: none;
						}
			
						/* Show the checkmark when checked */
						.service-container input:checked~.checkmark:after {
							display: block;
						}
			
						/* Style the checkmark/indicator */
						.service-container .checkmark:after {
							left: 9px;
							top: 5px;
							width: 5px;
							height: 10px;
							border: solid white;
							border-width: 0 3px 3px 0;
							transform: rotate(45deg);
						}

						.car_service_list, .bike_service_list
						{
							height: 0px;
							overflow: hidden;
							opacity: 0;
							transition: 0.3s;
							background-color: #c5bec580;
							margin-top:20px;
						}

						.car_data1:focus+.car_service_list, .bike_data1:focus+.bike_service_list
						{
							height: 300px;
							overflow: scroll;
							opacity: 1;
						}

						.car_service_list:hover, .bike_service_list:hover
						{
							height: 300px;
							overflow: scroll;
							opacity: 1;
						}
						.car_data1, .bike_data1
						{	
						width:100%;
						background-color: transparent;
						padding:10px;
						outline:none;
						border:none;
						border-bottom:solid 1px #2a2b3d;
						}
					</style>
					           
<style>
.selectpicker
{
width: 95%;
}
.bootstrap-select:not([class*="col-"]):not([class*="form-control"]):not(.input-group-btn) 
{
width: 100%;
}
.bs-placeholder, .dropdown-toggle
{
height: 40px;
}

</style>



<div class="col-md-12">
Select Car Services
<div id="view_car_details">
</div>
<br><br>
</div>

<div class="col-md-12">
Select Bike services
<div id="view_bike_details">
</div>

<br><br><br>
</div>              

            
          <div class="col-md-12" style="text-align: center;">
            <!-- <button class="service_edit_button1 service_edit_button2">Edit</button> -->
            <div class="service_buttons">
                <button class="service_edit_button1 service_cancel_button2">Cancel</button> &nbsp;&nbsp;&nbsp;&nbsp;
                <button class="service_edit_button1 service_save_button2">Save</button>
            </div>
          </div>
          <div class="container-fluid"></div>
          <br><br>
        </div>
        </div>
    
</div>  
