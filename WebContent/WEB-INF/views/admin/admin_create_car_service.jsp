
<div class="provider_create_service">

    
    
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

        @media(max-width:975px)
        {
          .service_edit_button2
          {
            width: 100%;
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
    
     
    </style>
    
    
    <script>

    $(function(){
      $(".text_field3").focus(function(){
        $(".fa_text_fonts12").css({"color":"#6f6486"});
        $(this).prev(".fa_text_fonts1").css({"color":"rgb(9, 156, 156)"});
      })
    })
    
    $(function update_car_service(){
    	$(".service_save_button3").click(function(){
    	var maker = $(".car_maker").val();
    	var model = $(".car_model").val();
    	var service = $(".car_service").val();
    	var charges = $(".car_service_charges").val();
    	$.ajax({
    		
    		url:"create_car_service",
    		data:{maker:maker, model:model, service:service, charges:charges},
    		type:"GET",
    		contentType:"application/json",
    		datatype:"text",
    		success:function(){alert("succ")},
    		error:function(){alert("error")}
    	}) // ajax Close
    }) // funciton Close
    }) // main funciton Close
    
    $(function GetDetails(){
    	$.ajax({
    		url:"get_car_master_details",
    		contentType:"json",
    		dataType:"json",
    		success:function(data){
    			
    			var car = data[0]
    			var service = data[1]
    			var charges = data[2]
    			var i, makerls="", modells="", servicels="", chargesls="";
    			var makerarray = [];
    			
    					for(i=0; i<car.length; i++)
    					{
    						if(makerarray.indexOf(car[i].maker) === -1)
    							{
    							makerarray.push(car[i].maker);
    							}
		 				}
    					
    					
    				    for(i=0; i<makerarray.length; i++)
	    				{
    					   makerls+='<option value="'+makerarray[i]+'" />'; 
	    				}   
	    					$("#car_maker_list").html(makerls);
	    					
	    					
	    			 
	    			  for(i=0; i<car.length; i++)
	    				{
	    				  modells+='<option value="'+car[i].model+'" data-value="'+car[i].maker+'" />';
	    				}  
	    			$("#car_model_list").html(modells);
	    			
	    			
	    	  for(i=0; i<service.length; i++)
	    				{
	    					servicels+='<option value="'+service[i].service+'" />'; 
	    				}  
	    			$("#car_service_list").html(servicels);
	    			
	    			
	    			  for(i=0; i<charges.length; i++)
	    				{
	    				  chargesls+='<option value="'+charges[i].charges+'" />'; 
	    				}  
	    			$("#car_charger_list").html(chargesls); 
    			},
    			
    			
    		error:function(){alert("error")}
    	})
    })
    
    $(window).ready(function(){
        	$("#car_maker1").on('change', function () {
                $(".car_model_class option").prop("disabled", true);
                var make = $(this).val().toLowerCase();
                $("#car_model_list option").each(function () {
                    $("#car_model_list option[data-value = '" + make + "']").prop("disabled", false)
                })
        })
	})
    
    </script>
    
    
    
        <div class="col-md-12">
        <div class="test-1">  <br><br>
        
                    
<div class="col-md-3" style="text-align: center;">
            <i class="fa fa-car fa_text_fonts1 fa_text_fonts12"></i>
            <input type="text" id="car_maker1" list="car_maker_list" name="provider_service_name" class="text_field3 car_maker" placeholder="Car Maker">
            <datalist id="car_maker_list">
            </datalist>
            
            <br><br>
</div>
<div class="col-md-3" style="text-align: center;">
            <i class="fa fa-crosshairs fa_text_fonts1 fa_text_fonts12"></i>
            <input type="text" list="car_model_list" name="provider_service_name" class="text_field3 car_model" placeholder="Car Model">
            <datalist class="car_model_class"  id="car_model_list">
            </datalist>
            <br><br>
</div>
<div class="col-md-3" style="text-align: center;">
            <i class="fa fa-gears fa_text_fonts1 fa_text_fonts12"></i>
            <input type="text" list="car_service_list" name="provider_service_name" class="text_field3 car_service" placeholder="Car Service">
            <datalist id="car_service_list">
            </datalist>
            <br><br>
</div>
<div class="col-md-3" style="text-align: center;">
            <i class="fa fa-inr fa_text_fonts1 fa_text_fonts12"></i>
            <input type="text" list="car_charger_list" name="provider_service_charge" class="text_field3 car_service_charges" placeholder="Car Service Charges">
             <datalist id="car_charger_list">
            </datalist>
            <br><br>
</div>     
            <div class="col-md-12" style="text-align: center;">
<br>            <div class="service_buttons">
                <button class="service_edit_button2 service_save_button3">Create Car Service</button>
            </div>
          </div>
          <div class="container-fluid"></div>
          <br><br>
        </div>
        </div>
    
</div>  
