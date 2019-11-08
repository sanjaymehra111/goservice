<div class="provider_dashboard">

<script>
$(function(){
	var id = $(".provider_ds_id").val();
	//alert(id);
	
	$.ajax({
		url:"get_count_list",
		data:{id:id},
		cache:false,
		dataType:'json',
		contentTpe:'json',
		success:function(data){
			//console.log(data);
				var car = data[0][0].count;
				var bike = data[1][0].count;
				var team = data[2][0].count;
				var text='';
				
				for(var i=0; i<data[3].length; i++)
					{
						text+='<div class="import_provider" pagename="team" textname="Team" style="cursor:pointer">';
						text+='<div class="col-md-6 admin">';
						text+='<div class="img">';
						text+='<img class="img-responsive" style="height:120px; width:120px; border-radius:100px;" src="/goservice/files/service_provider_images/images/'+data[3][i].image+'" ">';
						text+='</div>';
						text+='<div class="info">';
						text+='<h3 style="text-transform:uppercase">'+data[3][i].name+'</h3>';
						text+='<p style="text-transform:capitalize">'+data[3][i].address+'</p>';
						text+='</div>';
						text+='</div>';
						text+='</div>';
					}
	
				$(".show_car_list").html(car);
				$(".show_bike_list").html(bike);
				$(".show_team_list").html(team);
				$(".team_members_list").html(text);
			},
		error:function(data){alert("error")},
	})
})

</script>


<input type="text" value="${sessionData.user_id}" class="provider_ds_id hide">

      <div class="welcome">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="content">
                <h2>Welcome to Dashboard</h2>
                
              </div>
            </div>
          </div>
        </div>
      </div>

<br>
      <section class="statistics">
        <div class="container-fluid">	
          <div class="row">
            
            <div class="col-md-4 import_provider import_style1" pagename="create_service" textname="Service" style="cursor:pointer">
              <div class="box">
                <i class="fa fa-car fa-fw bg-primary ic1"></i>
                <div class="info">
                  <h3 class="show_car_list"></h3>
                  <p>Car Services</p>
                </div>
              </div>
            </div>
            
            <div class="col-md-4 import_provider import_style1" pagename="create_service" textname="Service" style="cursor:pointer">
              <div class="box">
                <i class="fa fa-motorcycle fa-fw danger ic1"></i>
                <div class="info">
                  <h3 class="show_bike_list"></h3>
                  <p>Bike Services</p>
                </div>
              </div>
            </div>
            
            <div class="col-md-4 import_provider import_style1" pagename="team" textname="Team" style="cursor:pointer">
              <div class="box">
                <i class="fa fa-users fa-fw success"></i>
                <div class="info">
                  <h3 class="show_team_list ic1"></h3>
                  <p>Total Team Member</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

<br>

     
      <section class="admins ">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="box">
                <h3>Team Member's</h3>
          
                
                <div class="team_members_list">
                
                  
                </div>
                
              </div>
            </div>
            

          </section>

        <section class='statis text-center hide'>
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-3">
                <div class="box bg-primary">
                  <i class="fa fa-eye"></i>
                  <h3>5,154</h3>
                  <p class="lead">Page views</p>
                </div>
              </div>
              <div class="col-md-3">
                <div class="box danger">
                  <i class="fa fa-user-o"></i>
                  <h3>245</h3>
                  <p class="lead">User registered</p>
                </div>
              </div>
              <div class="col-md-3">
                <div class="box warning">
                  <i class="fa fa-shopping-cart"></i>
                  <h3>5,154</h3>
                  <p class="lead">Product sales</p>
                </div>
              </div>
              <div class="col-md-3">
                <div class="box success">
                  <i class="fa fa-handshake-o"></i>
                  <h3>5,154</h3>
                  <p class="lead">Transactions</p>
                </div>
              </div>
            </div>
          </div>
        </section>

</div> 