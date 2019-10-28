<!-- <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyDnH5fBGp4ghjtu4qA-MM2gRjUApRcsn-A&libraries=places"></script> -->

<!--
app id
free = 
AIzaSyBA18xgMM4cHYBnQlVJcj880j63HBV32vI

paid = Sir (Satish Sir)
AIzaSyAtSrsYPix3gCGzodG_xNhAr1ecC5nhI-4

paid = sosgogleapi@gmail.com
AIzaSyDnH5fBGp4ghjtu4qA-MM2gRjUApRcsn-A
-->

<div class="service-popup-form">

    <style>
       .pac-container { z-index: 99999999999}
        .service_close_button {
            outline: none;
            border: none;
            background: transparent;
            float: right;
            font-size: 15px;
            font-weight: bold;
            transition: 0.3s;
            color: rgb(83, 83, 83);
            border: solid 1px rgb(83, 83, 83);
        }

        .service_close_button:hover {
            color: rgb(255, 0, 0);
            border: solid 1px rgb(255, 0, 0);
        }

        .fixbutton {
            outline: none;
            border: none;
            background-color: transparent;
            transition: 0.5s;
            border-radius: 3px;
        }

        .service_button_1 {
            width: 170px;
            margin-top: 10px;
            padding: 10px;
            margin-left: -1px;
            margin-right: -1px;
            border: solid 1px rgba(255, 0, 0, 0);
            font-size: 12px;
            font-weight: 550;
            border-radius: 100px;
        }

        .service_button_1:hover {
            border-left: solid 2px rgba(255, 153, 0);
            border-right: solid 2px rgba(255, 153, 0);
            border-radius: 100px;
        }

        .service_vehicle_button {
            color: white;
            background-color: rgb(255, 153, 0);
            box-shadow: 0px 7px 10px rgba(0, 0, 0, 0.288);
        }

        .service_car_images,
        .service_bike_images {
            border: solid 4px rgba(218, 218, 218, 0.582);
            width: 100px;
            height: 100px;
            border-radius: 100px;
            padding: 10px;
            transition: 0.3s;
            cursor: pointer;
            opacity: 0.8;
        }

        .service_car_images:hover,
        .service_bike_images:hover {
            /*border:solid 4px rgba(255, 153, 0);*/
            opacity: 5;
            transform: scale(1.051)
        }

        .n_p_button {
            width: 180px;
            padding: 10px;
            font-size: 15px;
            color: white;
            border-radius: 100px;
        }

        .service_previous {
            float: left;
            background-color: rgba(143, 124, 96, 0.589);
        }

        .service_next {
            float: right;
            background-color: rgb(255, 153, 0);
        }

        .service_next:hover,
        .service_previous:hover {
            box-shadow: 8px 8px 10px rgba(0, 0, 0, 0.288);
        }

        .service_input_text {
            padding: 10px;
            width: 80%;
            border-bottom: solid 1px rgba(0, 0, 0, 0.185);
            border-radius: 0px;
        }

        .service_input_text:focus {
            border-bottom: solid 2px rgba(255, 153, 0);
        }

        .service_select_vehicle,
        .service_select_model,
        .service_select_vehicle_service,
        .service_confirm_service {
            transition: 0.5s;
        }

        .service_price1 {
            text-align: left;
            margin-left: 100px;
            padding: 2px;
            transition: 0.3s;
        }

        .service_price2 {
            float: right;
            margin-right: 100px;
            transition: 0.3s;
        }

        .modal-dialog {
            width: 55%;
            top: 20px;
        }

        .select_location
        {
            position: absolute;
            font-size: 30px;
            color: rgb(255, 153, 0);
            cursor: pointer;
            right: 14%;
            margin-top: -37px;
            z-index: 9;
            transition: 0.3s;
        }
        .select_location:hover
        {
            transform: scale(1.02);
            color: rgb(235, 98, 6);
        }
        .service_user_address
        {
            padding-right: 50px;
        }
        .service-fix-height {
            min-height: 200px;
        }

        @media(max-width:975px) {
            .service_user_address
        {
            padding-right: 40px;
        }

            .modal-dialog {
                width: 100%;
            }
            .n_p_button {
                width: 140px;
            }

            .service_price1 {
                margin-left: 60px;
            }

            .service_price2 {
                margin-right: 60px;
            }
        }

        @media(max-width:450px) {

            .service_user_address
        {
            padding-right: 30px;
        }
            .modal-dialog {
                width: 95%;
            }

            .service_button_1 {
                width: 75px;
                padding: 5px;
            }

            .service_price1 {
                margin-left: 30px;
            }

            .service_price2 {
                margin-right: 30px;
            }
        }
    </style>

    <script>

        $(function show_car_Model() {
            $("#carmodel").val().toUpperCase();
            $("#carmaker1").on('change', function () {
                $(".car_model1 option").prop("disabled", true);
                var make = $(this).val().toLowerCase();
                $("#carmodel option").each(function () {
                    $("#carmodel option[data-value = '" + make + "']").prop("disabled", false)
                })
            });
        })

        $(function show_bike_Model() {
            $("#bikemaker1").on('change', function () {
                $(".bike_model1 option").prop("disabled", true);
                var make = $(this).val().toLowerCase();
                $("#bikemodel option").each(function () {
                    $("#bikemodel option[data-value = '" + make + "']").prop("disabled", false)
                })
            });
        })

        $(function button_click() {
            $(".service_vehicle_button").click(function () {
                $(".service_button_1").css({ "background-color": "white", "color": "black", "box-shadow": "none" });
                $(this).css({ "background-color": "#f90", "color": "white", "box-shadow": "0px 7px 10px rgba(0, 0, 0, 0.288)" });

                $(".service_select_vehicle").show();
                $(".service_select_vehicle").css({ "opacity": "1" });
                $(".service_select_model").hide();
                $(".service_select_vehicle_service").hide();
                $(".service_confirm_service").hide();

            })

            $(".service_model_button").click(function () {
                $(".service_button_1").css({ "background-color": "white", "color": "black", "box-shadow": "none" });
                $(this).css({ "background-color": "#f90", "color": "white", "box-shadow": "0px 7px 10px rgba(0, 0, 0, 0.288)" });

                $(".service_select_vehicle").hide();
                $(".service_select_model").show();
                $(".service_select_model").css({ "opacity": "1" });
                $(".service_select_vehicle_service").hide();
                $(".service_confirm_service").hide();
            })

            $(".service_service_button").click(function () {
                $(".service_button_1").css({ "background-color": "white", "color": "black", "box-shadow": "none" });
                $(this).css({ "background-color": "#f90", "color": "white", "box-shadow": "0px 7px 10px rgba(0, 0, 0, 0.288)" });

                $(".service_select_vehicle").hide();
                $(".service_select_model").hide();
                $(".service_select_vehicle_service").show();
                $(".service_select_vehicle_service").css({ "opacity": "1" });
                $(".service_confirm_service").hide();
            })


            $(".service_confirm_button").click(function () {
                $(".service_button_1").css({ "background-color": "white", "color": "black", "box-shadow": "none" });
                $(this).css({ "background-color": "#f90", "color": "white", "box-shadow": "0px 7px 10px rgba(0, 0, 0, 0.288)" });

                $(".service_select_vehicle").hide();
                $(".service_select_model").hide();
                $(".service_select_vehicle_service").hide();
                $(".service_confirm_service").show();
                $(".service_confirm_service").css({ "opacity": "1" });

            })

        })

        $(function select_vehicle() {

            $(".service_select_model").css({ "opacity": "0.1" });
            $(".service_select_vehicle_service").css({ "opacity": "0.1" });
            $(".service_confirm_service").css({ "opacity": "10.1" });


            $(".service_bike_images").click(function () {
                $(".CarSelection").hide();
                $(".BikeSelection").show();
                $(this).css({ "border": "solid 4px rgba(255, 153, 0)" });
                $(".service_car_images").css({ "border": "solid 4px rgba(218, 218, 218, 0.582)" });
                $(".vehicle_next").click();
            })

            $(".service_car_images").click(function () {
                $(".CarSelection").show();
                $(".BikeSelection").hide();
                $(this).css({ "border": "solid 4px rgba(255, 153, 0)" });
                $(".service_bike_images").css({ "border": "solid 4px rgba(218, 218, 218, 0.582)" });
                $(".vehicle_next").click();
            })
        });

        $(function next() {

            $(".vehicle_next").click(function next1() {
                $(".service_select_vehicle").css({ "opacity": "0.1" });
                $(".service_button_1").css({ "background-color": "white", "color": "black", "box-shadow": "none" });
                $(".service_model_button").css({ "background-color": "#f90", "color": "white", "box-shadow": "0px 7px 10px rgba(0, 0, 0, 0.288)" });
                $(".service_select_vehicle").hide();
                $(".service_select_model").show();
                $(".service_select_model").css({ "opacity": "1" });
                $(".service_select_vehicle_service").hide();
                $(".service_confirm_service").hide();
            });

            $(".model_next").click(function next2() {
                $(".service_select_model").css({ "opacity": "0.1" });
                $(".service_button_1").css({ "background-color": "white", "color": "black", "box-shadow": "none" });
                $(".service_service_button").css({ "background-color": "#f90", "color": "white", "box-shadow": "0px 7px 10px rgba(0, 0, 0, 0.288)" });
                $(".service_select_vehicle").hide();
                $(".service_select_model").hide();
                $(".service_select_vehicle_service").show();
                $(".service_select_vehicle_service").css({ "opacity": "1" });
                $(".service_confirm_service").hide();
            });

            $(".vehicel_service_next").click(function next3() {
                $(".service_select_vehicle_service").css({ "opacity": "0.1" });
                $(".service_button_1").css({ "background-color": "white", "color": "black", "box-shadow": "none" });
                $(".service_confirm_button").css({ "background-color": "#f90", "color": "white", "box-shadow": "0px 7px 10px rgba(0, 0, 0, 0.288)" });
                $(".service_select_vehicle").hide();
                $(".service_select_model").hide();
                $(".service_select_vehicle_service").hide();
                $(".service_confirm_service").show();
                $(".service_confirm_service").css({ "opacity": "1" });
            });

        })

        $(function previous() {

            $(".model_previous").click(function previous1() {
                $(".service_select_vehicle").show();
                $(".service_select_model").hide();
                $(".service_select_vehicle_service").hide();
                $(".service_confirm_service").hide();
                $(".service_button_1").css({ "background-color": "white", "color": "black", "box-shadow": "none" });
                $(".service_vehicle_button").css({ "background-color": "#f90", "color": "white", "box-shadow": "0px 7px 10px rgba(0, 0, 0, 0.288)" });
                $(".service_select_model").css({ "opacity": "0.1" });
                $(".service_select_vehicle").css({ "opacity": "1" });
            });

            $(".vehicel_service_previous").click(function previous2() {
                $(".service_select_vehicle").hide();
                $(".service_select_model").show();
                $(".service_select_vehicle_service").hide();
                $(".service_confirm_service").hide();
                $(".service_button_1").css({ "background-color": "white", "color": "black", "box-shadow": "none" });
                $(".service_model_button").css({ "background-color": "#f90", "color": "white", "box-shadow": "0px 7px 10px rgba(0, 0, 0, 0.288)" });
                $(".service_select_vehicle_service").css({ "opacity": "0.1" });
                $(".service_select_model").css({ "opacity": "1" });
            })

            $(".confirm_previous").click(function previous3() {
                $(".service_select_vehicle").hide();
                $(".service_select_model").hide();
                $(".service_select_vehicle_service").show();
                $(".service_confirm_service").hide();

                $(".service_button_1").css({ "background-color": "white", "color": "black", "box-shadow": "none" });
                $(".service_service_button").css({ "background-color": "#f90", "color": "white", "box-shadow": "0px 7px 10px rgba(0, 0, 0, 0.288)" });
                $(".service_confirm_service").css({ "opacity": "0.1" });
                $(".service_select_vehicle_service").css({ "opacity": "1" });
            })
        })

        $(function number_Only(){
        $(".service_user_contact").keypress(function(e){
        if(e.which !=8 && e.which !=0 && e.which < 48 || e.which > 57)
        return false;
    });
})

    </script>


    <div class="container">
        <!-- Trigger the modal with a button -->
        <!-- <button style="width:100%; height: 50px; " type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#ServiceForm">Open Modal</button>  -->

        <!-- Modal -->
        <div class="modal fade" id="ServiceForm" role="dialog" style="background-color: #0a0a0acc;">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="service_close_button" data-dismiss="modal">&times;</button>
                        <h3 style="text-align: center; font-weight: bold; color:rgb(88, 88, 88);" class="modal-title">Book A Service</h3>
                    </div>

                    <div class="modal-body">
                        <center>
                    <div class="service_head">
                        <button type="button"
                            class="fixbutton service_button_1 service_vehicle_button">VEHICLE</button>
                        <button type="button"
                            class="fixbutton service_button_1 service_model_button">MODEL</button>
                        <button type="button"
                            class="fixbutton service_button_1 service_service_button">SERVICE</button>
                        <button type="button"
                            class="fixbutton service_button_1 service_confirm_button">CONFIRM</button>
                    </div>

<br><br>

<!--Select vehicle start-->

<div class="service_select_vehicle" style="display: none"s>

    <div class="service-fix-height">
        <h4>What type of vehicle do you have?</h4>
        <br><br>
        <div class="service_bike" style="display: inline; border-radius: 100px;"><img
                src="/goservice/files/images/bike4.png" class="service_bike_images"></div>
        <div class="service_blank" style="display: inline;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
        <div class="service_car" style="display: inline;"><img src="/goservice/files/images/car4.png"
                class="service_car_images"></div>
    </div>

    <hr>
    <div class="services_buttons">
        <button type="button"
            class="fixbutton n_p_button service_previous vehicle_previous hidden">Previous</button>
        <button type="button"
            class="fixbutton n_p_button service_next vehicle_next">Next</button>
        <br><br><br>
    </div>

</div>

<!--Select vehicle End-->



<!--Select vehicle Model start-->

<div class="service_select_model" style="display: none">
    <div class="service-fix-height">

        <h4>Describe Your Vehicle.</h4>
        <br>

        <div class="CarSelection" style="display: none">

            <input class="service_input_text car_make fixbutton" id="carmaker1" type="text"
                name="car_make" list="carmake" placeholder="Select Make">
            <datalist class="car_make1" id="carmake">
                <option value="TATA" />
                <option value="HONDA" />
                <option value="FORD" />
                <option value="HYUNDAI" />
                <option value="VOLVO" />
            </datalist>
            <br><br><br>
            <input class="service_input_text car_model fixbutton" id="carmodel1" type="text"
                name="car_model" list="carmodel" placeholder="Select Model">
            <datalist class="car_model1" id="carmodel">
                <option value="Nano" data-value="tata" />
                <option value="Nexon" data-value="tata" />
                <option value="Safari" data-value="tata" />
                <option value="City" data-value="honda" />
                <option value="Civic" data-value="honda" />
                <option value="Amaze" data-value="honda" />
                <option value="B Max" data-value="ford" />
                <option value="Figo" data-value="ford" />
                <option value="Fusion" data-value="ford" />
                <option value="Ikon" data-value="ford" />
                <option value="Creta" data-value="hyundai" />
                <option value="Getz" data-value="hyundai" />
                <option value="S40" data-value="volvo" />
                <option value="S60" data-value="volvo" />
            </datalist>
        </div>

        <div class="BikeSelection" style="display: none">


            <input class="service_input_text bike_make fixbutton" id="bikemaker1"
                type="text" name="bike_make" list="bikemake" placeholder="Select Make">
            <datalist class="bike_make1" id="bikemake">
                <option value="HONDA" />
                <option value="BAJAJ" />
                <option value="YAMAHA" />
            </datalist>
            <br><br><br>
            <input class="service_input_text bike_model fixbutton" id="bikemodel1"
                type="text" name="bike_model" list="bikemodel" placeholder="Select Model">
            <datalist class="bike_model1" id="bikemodel">
                <option value="Activa 125" data-value="honda" />
                <option value="Activa 3G" data-value="honda" />
                <option value="Activa 4G" data-value="honda" />
                <option value="Activa 5G" data-value="honda" />
                <option value="CT 100" data-value="bajaj" />
                <option value="Discover 100" data-value="bajaj" />
                <option value="Discover 125" data-value="bajaj" />
                <option value="Discover 150 S" data-value="bajaj" />
                <option value="Pulsar RS 200" data-value="bajaj" />
                <option value="Pulsar 135 LS" data-value="bajaj" />
                <option value="ALBA" data-value="yamaha" />
                <option value="ALPHA" data-value="yamaha" />
            </datalist>
        </div>
    </div>

    <hr>

    <div class="services_buttons" >
        <button type="button"
            class="fixbutton n_p_button service_previous model_previous">Previous</button>
        <button type="button"
            class="fixbutton n_p_button service_next model_next">Next</button>
        <br><br><br>
    </div>

</div>

<!--Select vehicle Model End-->


<!--Select Service start-->

<div class="service_select_vehicle_service" style="display: none">
    <div class="service-fix-height">

        <h4>What services are you looking for today?</h4>
        <br>

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
                background-color: rgba(255, 153, 0, 0.411);
            }

            /* When the checkbox is checked, add a blue background */
            .service-container input:checked~.checkmark {
                background-color: rgb(255, 153, 0);
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
        </style>

        <label class="service-container">BODY
            <input type="checkbox">
            <span class="checkmark"></span>
            <div style="float: right"> &#8377; 1200 - 1800</div>
        </label>

        <label class="service-container">BRAKES
            <input type="checkbox">
            <span class="checkmark"></span>
            <div style="float: right">&#8377; 1325 - 1899</div>
        </label>

        <label class="service-container">ENGINE
            <input type="checkbox">
            <span class="checkmark"></span>
            <div style="float: right">&#8377; 1199 - 1785</div>
        </label>

        <label class="service-container">AC
            <input type="checkbox">
            <span class="checkmark"></span>
            <div style="float: right">&#8377; 1599 - 2999</div>
        </label>

    </div>






    <!-- <div class="service_price1"><input class="service_checkbox" type="checkbox"> BODY <div class="service_price2">&#8377; 1200 - 1800</div></div>
    <div class="service_price1"><input class="service_checkbox" type="checkbox"> BRAKES <div class="service_price2">&#8377; 1300 - 3900</div></div>
    <div class="service_price1"><input class="service_checkbox" type="checkbox"> ENGINE <div class="service_price2">&#8377; 1200 - 2500</div></div>
    <div class="service_price1"><input class="service_checkbox" type="checkbox"> AC <div class="service_price2">&#8377; 3000 - 5500</div></div> -->






    <hr>

    <div class="services_buttons">
        <button type="button"
            class="fixbutton n_p_button service_previous vehicel_service_previous">Previous</button>
        <button type="button"
            class="fixbutton n_p_button service_next vehicel_service_next">Next</button>
        <br><br><br>
    </div>
</div>

<!--Select Service End-->



<!--Confirm Service-->

<div class="service_confirm_service" >
    <div class="service-fix-height">

        <h4>User Details</h4>

<!-- Google Map Script Start  -->


<!-- Google Map Script End -->

<div class="loc_output"></div>

<!-- <button onclick="getLocation()">Try It</button> -->

      <input type="text" maxlength="50"  name="service_user_name" class="fixbutton service_input_text service_user_name" placeholder="Name">
        <br><br>
        <input type="text" maxlength="10" name="service_user_contact" class="fixbutton service_input_text service_user_contact" placeholder="Contact">
        <br><br>
        <input type="text" maxlength="100" id="search_location" name="service_user_address"  class="fixbutton service_input_text service_user_address" placeholder="Address">

        <input type="text" maxlength="200"  name="service_user_latlng_value" class="latlngvalue hidden">
        <div class="select_location"><i class="fa fa-map-marker" id="location_get"></i></div>
        <br><br><br>
        <div id="googleMap"></div>
    </div>
    <hr>

    <div class="services_buttons">
        <button type="button"
            class="fixbutton n_p_button service_previous confirm_previous">Previous</button>
        <button type="button" data-dismiss="modal"
            class="fixbutton n_p_button service_next confirm_next">Submit</button>
        <br><br><br>
    </div>
</div>



<script>

/* 
function ShopDetails()
{
	$.ajax({
		url:"shopdetails",
		type:'GET',
		contentType : "application/json; charset=utf-8",
		dataType: 'json',
		success : function(data)
		{
			//alert(data);
		},
		error:function()
		{
			alert("error");
		},
	})
	
} */


//function myMap() {}
LoadGoogleAddress();

document.getElementById("location_get").onclick = function LoadAddress()
{
  LoadGoogleAddress();
}


	$(function keypress()
	{	$("#search_location").on('keypress', function(){
			
		})
	})

		function LoadGoogleAddress(){
        	//alert("Start");
            $("#googleMap").css({"height":"350", "width":"95%"});
            if(navigator.geolocation)
                navigator.geolocation.getCurrentPosition(function(position){
                var lat = position.coords.latitude;
                var lng = position.coords.longitude;
                var LatLng = new google.maps.LatLng(lat,lng);
                var mapProp = { center:LatLng, zoom:13,  map: map };
                var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
                var marker, marker1234 = [];
                
                var image = 
                {
                    url: '/goservice/files/images/Car-Repair-icon.png',
                    scaledSize : new google.maps.Size(40, 40),
                }

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
                        var draglat1 = this.getPosition().lat();
                        var draglnt1 = this.getPosition().lng();
                        LocationFunction(draglat1, draglnt1);
                    });
                
                //Click Location
                google.maps.event.addListener(map, 'click', function MarkerClick(event2) 
                    {
                       var lat1 = event2.latLng.lat();
                       var lng1 = event2.latLng.lng();
                       LocationFunction(lat1, lng1);
                    });

                //Search Location
                google.maps.event.addDomListener(window, 'load', initialize());
                function initialize() 
                    {
                	    var input = document.getElementById('search_location');
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

                $.get("https://maps.googleapis.com/maps/api/geocode/json?latlng="+lat+","+lng+"&sensor=false&key=AIzaSyAa4ggTa-tkUQEW6Cv5_h8o-WOjiuboiOY", function(data)
                    {
                        console.log(data);
                        var DataLength = data.results[0].address_components.length;
                                var j;
                                var address = "";
                                for(j=0; j<DataLength; j++)
                                {
                                    address+=data.results[0].address_components[j].long_name + ", ";
                                    $(".service_user_address").val(address);
                                    $(".latlngvalue").val(+lat+","+lng);
                                }

                                DistanceFinder(LatLng);
                    })
                }

                function Deletedismarker()
                   {    
                       for(var a=0; a<marker1234.length; a++)
                       {
                           marker1234[a].setMap(null)
                       }
                       marker1234.length = 0;
                    } 

                function DistanceFinder(LatLng)
                {
                    Deletedismarker();
                  	                  
                    $.ajax({
							url:"fetchshopdetails",
							type:'GET',
							contentType : "application/json; charset=utf-8",
							dataType: 'json',
							success : function(Disdata)
							{
								      	
								var ds;
						        var location123 = []
						        
					            		for(ds=0; ds<Disdata.length; ds++)
										{
					            			location123.push([new google.maps.LatLng(Disdata[ds].provider_shop_latitude,Disdata[ds].provider_shop_longitude), ''+Disdata[ds].provider_shop_name+'',  ''+Disdata[ds].provider_shop_address+'']);
										}
						       
					                for(var i = 0; i<location123.length; i++)
					                        {
					                            var distt1 = (google.maps.geometry.spherical.computeDistanceBetween (LatLng, location123[i][0])/1000);

					                            if(distt1 <= 2 )
					                           	{
					                            var dismarker = new google.maps.Marker({
					                                        position: location123[i][0],
					                                        map: map,
					                                        title:location123[i][1],
					                                        url:location123[i][2],
					                                        icon :image
					                                        });
					                                        
					                                //console.log("name" + location123[i][1]);
					                                //console.log("km: " + distt1);
					                                google.maps.event.addListener(dismarker, 'click', function() 
					                                {
					                                    window.location.href = this.url;
					                                });

					                                marker1234.push(dismarker)
					                            }

					                            else
					                            {
					                             	//console.log("not found  : " + location123[i][1]);
					                            } 
					                        }
						        
							},
							error:function()
							{
								alert("error");
							},
						})
						
			                }


                })
            
            else
            {
                console.log("error");
            }
               
            
    }

 
    

</script>

<!--Select vehicle Model End-->


                        </center>
                    </div>

                    <div class="container"></div>
                    <!-- <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div> -->
                </div>

            </div>
        </div>

    </div>

</div>
