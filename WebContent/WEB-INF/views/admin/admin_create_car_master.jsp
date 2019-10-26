
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

    
    $(function(){
    	$(".service_save_button3").click(function(){
    		var maker = $(".car_maker").val();
    		var model = $(".car_model").val();
    		$.ajax({
    			url:"car_master_list",
        		data:{maker:maker, model:model},
        		Type:"GET",
        		contentType:"application/json; charset=utf-8",
				dataType:"text",
				success:$(function(){
						//$(".car_maker").val("");
						$(".car_model").val("");
						$(".car_model").focus();
					}),
        		error:function(e){alert("error" +e)},
    		})//Ajax Close
    	})//Click Close
    })// Main Function Close
    

    </script>
    
        <div class="col-md-12">
        <div class="test-1">  <br><br>
            <div class="col-md-2"></div>
            
<div class="col-md-4 col-xs-6" style="text-align: center;">
            <i class="fa fa-car fa_text_fonts1 fa_text_fonts12"></i>
            <input type="text" name="provider_service_name" class="text_field3 car_maker" placeholder="Car Maker">
            <br><br>
</div>

<div class="col-md-4 col-xs-6" style="text-align: center;">
            <i class="fa fa-crosshairs fa_text_fonts1 fa_text_fonts12"></i>
            <input type="text" name="provider_service_name" class="text_field3 car_model" placeholder="Car Model">
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
