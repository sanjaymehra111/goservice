
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
                .provider_address1
                {
                  width: 93%;
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
                 $(".service_save_button2").click(function(){
                  
                  var data = $(".car_servicec_list .filter-option-inner-inner").html().replace(/ *\([^)]*\) */g, "");
                  var data2 = $(".bike_servicec_list .filter-option-inner-inner").html().replace(/ *\([^)]*\) */g, "");
                  //alert(data.replace(/ *\([^)]*\) */g, ""));
                  alert("Car Name : " + data);
                  alert("Bike Name : " + data2);
    
                })
    
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
            
                <div class="col-md-1"></div>
                <div class="col-md-10">
                <div class="test-1">  <br><br>
                  <div class="col-md-6">
                  <center><img src="/goservice/files/service_provider_images/shop1.jpg" class="service_shop_image"></center>
                  <img src="/goservice/files/service_provider_images/camera_icon1.png" class="camera_icon2">
                  <input type="file" class="user_service1 hide">
                  <br><br>
                  </div>
    
    <div class="col-md-5" style="text-align: center;">
    <br>
                    <i class="fa fa-home fa_text_fonts1 fa_text_fonts11"></i>
                    <input type="text" name="provider_shop_name" class="text_field2" placeholder="Shop Name">
                    <br><br>
                    <i class="fa fa-phone fa_text_fonts1 fa_text_fonts11"></i>
                    <input type="text" name="provider_shop_contact" class="text_field2" placeholder="Shop Contact">
                    <br><br>
                    <i class="fa fa-envelope fa_text_fonts1 fa_text_fonts11"></i>
                    <input type="email" name="provider_shop_mail" class="text_field2" placeholder="Shop Email">
                    <br><br>
                    <i class="fa fa-map-marker fa_text_fonts1 fa_text_fonts11"></i>
                    <input type="text" name="provider_shop_address" class="text_field2" placeholder="Shop Address">
                    <br><br>
    </div>              
                   
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
    
    <script>
    $(function(){
    
      $(".filter-option-inner-inner").html("Bike Service");
    })
    </script> 
    
    <div class="col-md-12">
        Select Car Services
    
                    <select class="selectpicker car_servicec_list" multiple data-live-search="true">
                        <option>hero  ( &nbsp; &#8377;1200-1800 &nbsp;) </option>
                        <option>tata  ( &nbsp; &#8377;900-1500 &nbsp;) </option>
                        <option>bmw  ( &nbsp; &#8377;1400-2802 &nbsp;) </option>
                        <option>maruti  ( &nbsp; &#8377;1420-1922 &nbsp;) </option>
                    </select>
    
    <br><br>
    </div>
    
    <div class="col-md-12">
       Select Bike services
                     <select class="selectpicker bike_servicec_list" multiple data-live-search="true">
                        <option>hero  ( &nbsp; &#8377;1400-1900 &nbsp;) </option>
                        <option>pulser  ( &nbsp; &#8377;1900-2300 &nbsp;) </option>
                        <option>ktm  ( &nbsp; &#8377;1200-2402 &nbsp;) </option>
                        <option>tvs  ( &nbsp; &#8377;1550-1992 &nbsp;) </option>
      </select>
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
