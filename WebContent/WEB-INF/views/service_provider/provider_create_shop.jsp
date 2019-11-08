
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
        	display:none;
          transition: 0.5s;
        }

        .camera_icon2
        {
          height: 0;
          width: 150px;
          transition: 0.3s;
          cursor: pointer;
        }
        .camera_icon2:hover
        {
          transform: scale(1.05);
        }
        .camera_icon2:active
        {
          transform: scale(1);
        }
        
        
        @media(max-width:975px)
        {
          .service_edit_button1
          {
            width: 45%;
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
        .service_shop_image
        {
          width: 100%;
        }
        }

    </style>
    
    <!-- select images file -->
     
    <script>
    
    $(function(){
      $(".text_field2").focus(function(){
        $(".fa_text_fonts11").css({"color":"#6f6486"});
        $(this).prev(".fa_text_fonts1").css({"color":"rgb(9, 156, 156)"});
      })
    })


     $(function(){
        $(".camera_icon2").click(function(){
          $("#gallery-photo-add").click();
        });
    });
    
    $(function getImagesFromUser() {
    // Multiple images preview in browser
    var imagesPreview = function(input, placeToInsertImagePreview) {

        if (input.files) {
        	//var filesAmount = input.files.length;

            for (i = 0; i < 3; i++) {
                var reader = new FileReader();

                reader.onload = function(event) {
                    $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(placeToInsertImagePreview).attr("data-toggle","modal").attr("data-target","#myImageModel").addClass('shop_images_style close_zoom_style');
                    //attr("data-toggle",modal).attr("data-target"#myModal).
                    
                }

                reader.readAsDataURL(input.files[i]);
            }
        }

    };

    $('#gallery-photo-add').on('change', function() {
    	$(".shop_gallery").html("");
        imagesPreview(this, 'div.shop_gallery');
    });
    
    $(document).on("click", ".shop_images_style", function(){
    	//$(".gallery_view_button1").click();
    	//alert("click");
    	var src = $(this).attr('src');
    	$(".model_image").attr('src', src);
    	
    	})
});

    
    
</script>

	      
   <!-- Get And Update And  Gmap Details -->

 	<script>

/*  <!-- get store details --> */


 $(function(){
 $.ajax({
	 	url:"view_service_shop_details",
		data:{id:$("#provider_id").val()},
	 	contentType:"json",
		dataType:"json",
		success:function(data){
			//console.log(data);
			var imgl = data[0].image.length;
			if(imgl > 5	)
				{
					var img = data[0].image.split(",");
					var item2="";
					for(var i=0; i<img.length-1; i++)
						{
							item2+='<img src="/goservice/files/service_provider_images/images/'+img[i]+'" data-toggle="modal" data-target="#myImageModel" class="shop_images_style close_zoom_style"> ';
						}
					$(".shop_gallery").html(item2);
				}
			
			$("#provider_shop").val(data[0].shop_name);
			$("#provider_contact").val(data[0].contact);
			$("#provider_email").val(data[0].email);
			$("#provider_address").val(data[0].address);
			$("#provider_id").val(data[0].provider_id);
			
			var lat = data[0].latitude;
			var log = data[0].longitude;
			var id = '1';
			//console.log(lat);
			LoadGoogleAddress(lat, log, id);
			
		},
		erroe:function(error){alert(error)},
 })	
 });

 
 
 
/* update store details */

$(function(){
$(".service_save_button2").click(function()
		{
		
		var shop = $("#provider_shop").val();
		var contact = $("#provider_contact").val();
		var email = $("#provider_email").val();
		var address = $("#provider_address").val();
		var valid_email = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if(shop == '')
		{
			$("#provider_shop").css({"border-bottom":"solid 1px red"});
		}
		else if(contact == '' || contact.length!=10)
		{
			$("#provider_shop").css({"border-bottom":"solid 1px #2a2b3d"});
			$("#provider_contact").css({"border-bottom":"solid 1px red"});
		}
		/* else if(email == '' && !email.match(valid_email))
		{
			$("#provider_shop").css({"border-bottom":"solid 1px #2a2b3d"});
			$("#provider_contact").css({"border-bottom":"solid 1px #2a2b3d"});
			$("#provider_email").css({"border-bottom":"solid 1px red"});
		} */
		else if(address == '')
		{
			$("#provider_shop").css({"border-bottom":"solid 1px #2a2b3d"});
			$("#provider_contact").css({"border-bottom":"solid 1px #2a2b3d"});
			//$("#provider_email").css({"border-bottom":"solid 1px #2a2b3d"});
			$("#provider_address").css({"border-bottom":"solid 1px red"});
		}
		else
			{
			
			$("#provider_shop").css({"border-bottom":"solid 1px #2a2b3d"});
			$("#provider_contact").css({"border-bottom":"solid 1px #2a2b3d"});
			$("#provider_email").css({"border-bottom":"solid 1px #2a2b3d"});
			$("#provider_address").css({"border-bottom":"solid 1px #2a2b3d"});
			
	
					var data = new FormData();
					var url = "";
					
					var u_imgl = $(".shop_images_style").attr('src').length;
					var img_file = $(".user_service1").prop('files');
					 if(u_imgl  < 1000)
					 	{var url = "update_service_provider_shop_no_img";}	
					else
						{var url = "update_service_provider_shop";}
				
					data.append("shop_name", $("#provider_shop").val());
					data.append("contact", $("#provider_contact").val());
					data.append("email", $("#provider_email").val());
					data.append("latitude", $(".latitude_value").val());
					data.append("longitude", $(".longitude_value").val());
					data.append("address", $("#provider_address").val());
					data.append("provider_id", $("#provider_id").val());
					for(var i=0; i<3; i++)
						{
							data.append("file",img_file[i]); 	
						}
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
			}// else Close
	}); // button closed
})



  

/* <!-- Select Gmap Shop Address --> */

//LoadAddressmain();

document.getElementById("location_get").onclick = function LoadAddress()
{
	LoadAddressmain();
}

function LoadAddressmain()
{
	if(navigator.geolocation)
	    navigator.geolocation.getCurrentPosition(function(position){
	    var lat = position.coords.latitude;
		var lng = position.coords.longitude;
		var id= '2';
		LoadGoogleAddress(lat, lng, id);
    });
}

		function LoadGoogleAddress(latdb, logdb, id){
				$("#googleMap").css({"width":"100%","transition":"0.3s"});
            if(navigator.geolocation)
                navigator.geolocation.getCurrentPosition(function(position){
                var lat = latdb;
        		var lng = logdb;

                
                var LatLng = new google.maps.LatLng(lat,lng);
                var mapProp = { center:LatLng, zoom:15,  map: map };
                var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
                var marker;
         
                placeMarker(LatLng);
                LocationFunction(lat, lng);

                function placeMarker(location) 
                    {
                        if ( marker ) {
                            marker.setPosition(location);
                        } 
                        else {
                            marker = new google.maps.Marker({
                            position: location,
                            map: map,
                            draggable: true,
                            animation: google.maps.Animation.DROP,
                            });
                        }
                    }
                
                //Drag Marker
                google.maps.event.addListener(marker, "dragend", function MrkerDragend(event1)
                    {
                		id='2';
                        var draglat1 = this.getPosition().lat();
                        var draglnt1 = this.getPosition().lng();
                        LocationFunction(draglat1, draglnt1);
                    });
                
                //Click Location
                google.maps.event.addListener(map, 'click', function MarkerClick(event2) 
                    {
                		id='2';
                       var lat1 = event2.latLng.lat();
                       var lng1 = event2.latLng.lng();
                       LocationFunction(lat1, lng1);
                    });

                //Search Location
                google.maps.event.addDomListener(window, 'load', initialize());
                function initialize() 
                    {
                	    var input = document.getElementById('provider_address');
                	    var autocomplete = new google.maps.places.Autocomplete(input);
                	    google.maps.event.addListener(autocomplete, 'place_changed', function () {
                        var place = autocomplete.getPlace();
                        var lat2 = place.geometry.location.lat();
                        var lng2 = place.geometry.location.lng();
                        LatLng = new google.maps.LatLng(lat2, lng2);
                        map.setCenter(LatLng);
                        LocationFunction(lat2, lng2);
                    });
				}
		
                //Shop Location
                function LocationFunction(lat, lng){
                LatLng = new google.maps.LatLng(lat, lng);
                placeMarker(LatLng);

                $.get("https://maps.googleapis.com/maps/api/geocode/json?latlng="+lat+","+lng+"&sensor=false&key=AIzaSyAhJW0BL0uuVzXfhkhiQb3ZXF8f4pQ0vYQ", function(data)
                    {
                        //console.log(data);
                        var DataLength = data.results[0].address_components.length;
                                var j;
                                var address = "";
                                //console.log(id);
                            	
                                for(j=0; j<DataLength; j++)
                                {
                                    address+=data.results[0].address_components[j].long_name + ", ";
                                    if(id==2)
                                    	{$(".service_user_address").val(address);}
                                        $(".latitude_value").val(lat);
                                    	$(".longitude_value").val(lng);
                                }
                    })
                }
                
            })
            
            else
            {
                console.log("error");
            }
    }
</script>

<style>
.shop_images_style
{
	width:100px;
	height:100px;
	border-radius:100%;
	border:solid 2px #c9b0d0;
	padding:5px;
	margin-right:10px;
	transition:0.2s;
	cursor:pointer;
}

.shop_images_style:hover
{
	border:solid 2px #8f2eab;
	transform:scale(1.1);
	z-index: 999;
}
#location_get:hover
{
	cursor: pointer;
	transform:scale(1.21);
	color:#c72020;
}

.modal-dialog
{
width:80%
}

@media(max-width:975px)
{

.modal-dialog
{
width:auto;
}

}
</style>

<script>
$(function(){
	
	/* $("#provider_contact").keypress(function(e)
			{if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57))
			return false; else return true;}) */
			
			/* $("#provider_contact").keypress(function(e)
					{if (e.length > 10) return false; else return true;}) */
	
			
	$(".service_edit_button2").click(function(){
		$(".camera_icon2").css({"height":"auto"});
		$(".service_buttons").show();
		$(".text_field2").prop('readonly', false);
		$("#googleMap").css({"height":"250px"});
		
		$(this).hide();
		
	})
	
	$(".service_cancel_button2").click(function(){
		$(".camera_icon2").css({"height":"0px"});
		$(".service_buttons").hide();
		$(".text_field2").prop('readonly', true);
		$("#googleMap").css({"height":"0"});
		$(".service_edit_button2").show	();
	})
	
	
})



</script>


        <div class="col-md-1"></div>
        <div class="col-md-10">
        <div class="test-1">  <br><br>
          <div class="col-md-12" style="text-align:center">
          <!-- <center><img src="/goservice/files/service_provider_images/shop1.jpg" class="service_shop_image"></center> -->
          <input type="file" id="gallery-photo-add" multiple="multiple" class="user_service1 hide" accept="image/*">
          <div class="shop_gallery" style="text-align:center">
          <span class="shop_images_style hide" src=""></span>
          </div><br>
          <img src="/goservice/files/service_provider_images/upload1.png" class="camera_icon2">
          <br><br>
          </div>
          
			<div class="col-md-2"></div>
			<div class="col-md-8" style="text-align: center;">
			<br>
            <i class="fa fa-home fa_text_fonts1 fa_text_fonts11"></i>
            <input type="text" maxlength="100" name="provider_shop_name" class="text_field2" id="provider_shop" placeholder="Shop Name" readonly>
            <br><br>
            <i class="fa fa-phone fa_text_fonts1 fa_text_fonts11"></i>
            <input type="number" maxlength="10" name="provider_shop_contact" class="text_field2" id="provider_contact" onKeyPress="if(this.value.length==10) return false;" placeholder="Shop Contact" readonly>
            <br><br>
            <i class="fa fa-envelope fa_text_fonts1 fa_text_fonts11"></i>
            <input type="email" maxlength="100" name="provider_shop_mail" class="text_field2" id="provider_email" placeholder="Shop Email" readonly>
            <br><br>
            <i class="fa fa-map-marker fa_text_fonts1 fa_text_fonts11" id="location_get"></i>
            <input type="text" maxlength="200" id="provider_address" name="provider_shop_address" class="text_field2 fixbutton service_input_text service_user_address" placeholder="&#8592; Click Here For Auto Search" readonly>
            <br><br>
            <input type="text" class="latitude_value hide">
            <input type="text" class="longitude_value hide">
	        <br>
	        <div id="googleMap" style="height:0px; overflow:hidden;"></div>
        
            <input type="text" value="${sessionData.user_id}" class="hide" id="provider_id">	
            
<br><br>
</div>              
          <div class="col-md-12" style="text-align: center;">
            <button class="service_edit_button1 service_edit_button2">Edit</button>
            
            <div class="service_buttons">
                <button class="service_edit_button1 service_cancel_button2">Cancel</button> &nbsp;&nbsp;&nbsp;&nbsp;
                <button class="service_edit_button1 service_save_button2">Update</button>
            </div>
          </div>
          <div class="container-fluid"></div>
          <br><br>
        </div>
        </div>
    
</div>  


<button type="button" class="gallery_view_button1 hide" data-toggle="modal" data-target="#myImageModel">Edit</button>
<div class="Edit_Member_Model">

            <!-- Modal -->
  <div class="modal fade" id="myImageModel" role="dialog">
      <div class="modal-dialog">
      
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-body">
          <img class="model_image" src="" style="width:100%;">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
        
      </div>
    </div>
    
  </div>



