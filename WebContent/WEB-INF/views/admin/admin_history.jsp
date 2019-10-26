<user_history>

  <script>
  $(document).ready(function() {
    $("#example").DataTable({
      aaSorting: [],
      responsive: true,
  
      columnDefs: [
        {
          responsivePriority: 1,
          targets: 0
        },
        {
          responsivePriority: 2,
          targets: -1
        }
      ]
    });
  
    $(".dataTables_filter input")
      .attr("placeholder", "Search here...")
      .css({
        width: "300px",
        display: "inline-block"
      });
  
    $('[data-toggle="tooltip"]').tooltip();
  });
  
$(function(){
$("#example").wrap( "<div style='overflow:scroll'></div>" );
//$(".row").next(".col-sm-12").css({"width":"100px"});
})

  </script>
  
  <style>

  body {
    background: #f7f7f7;
  }
  
  .table {
    border-spacing: 0 0.85rem !important;
  }
  
  .table .dropdown {
    display: inline-block;
  }
  
  .table td,
  .table th {
    vertical-align: middle;
    margin-bottom: 10px;
    border: none;
  }
  
  .table thead tr,
  .table thead th {
    border: none;
    font-size: 12px;
    letter-spacing: 1px;
    text-transform: uppercase;
    background: transparent;
  }
  
  /* .table td {
    background: #fff;
  } */
  
  /* .table td:first-child {
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px;
  }
  
  .table td:last-child {
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px;
  } */
  
  .avatar {
    width: 2.75rem;
    height: 2.75rem;
    line-height: 3rem;
    border-radius: 50%;
    display: inline-block;
    background: transparent;
    position: relative;
    text-align: center;
    color: #868e96;
    font-weight: 700;
    vertical-align: bottom;
    font-size: 1rem;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }
  
  .avatar-sm {
    width: 2.5rem;
    height: 2.5rem;
    font-size: 0.83333rem;
    line-height: 1.5;
  }
  
  .avatar-img {
    width: 100%;
    height: 100%;
    -o-object-fit: cover;
    object-fit: cover;
  }
  
  .avatar-blue {
    background-color: #c8d9f1;
    color: #467fcf;
  }
  
  table.dataTable.dtr-inline.collapsed
    > tbody
    > tr[role="row"]
    > td:first-child:before,
  table.dataTable.dtr-inline.collapsed
    > tbody
    > tr[role="row"]
    > th:first-child:before {
    top: 28px;
    left: 14px;
    border: none;
    box-shadow: none;
  }
  
  table.dataTable.dtr-inline.collapsed > tbody > tr[role="row"] > td:first-child,
  table.dataTable.dtr-inline.collapsed > tbody > tr[role="row"] > th:first-child {
    padding-left: 48px;
  }
  
  table.dataTable > tbody > tr.child ul.dtr-details {
    width: 100%;
  }
  
  table.dataTable > tbody > tr.child span.dtr-title {
    min-width: 50%;
  }
  
  table.dataTable.dtr-inline.collapsed > tbody > tr > td.child,
  table.dataTable.dtr-inline.collapsed > tbody > tr > th.child,
  table.dataTable.dtr-inline.collapsed > tbody > tr > td.dataTables_empty {
    padding: 0.75rem 1rem 0.125rem;
  }
  
  div.dataTables_wrapper div.dataTables_length label,
  div.dataTables_wrapper div.dataTables_filter label {
    margin-bottom: 0;
  }
  
  
  .btn-icon {
    background: #fff;
  }
  .btn-icon .bx {
    font-size: 20px;
  }
  
  .btn .bx {
    vertical-align: middle;
    font-size: 20px;
  }
  
  .dropdown-menu {
    padding: 0.25rem 0;
  }
  
  .dropdown-item {
    padding: 0.5rem 1rem;
  }
  
  .badge {
    padding: 0.5em 0.75em;
    width: 100px;
  }
  
  .badge-success-alt {
    background-color: #d7f2c2;
    color: #497922;
  }
  
  .badge-unsuccess-alt {
    background-color: #e99a82;
    color: #7e2f1b;
  }
  
  .table a {
    color: #212529;
  }
  
  .table a:hover,
  .table a:focus {
    text-decoration: none;
  }
  
  table.dataTable {
    margin-top: 12px !important;
  }
  
  .icon > .bx {
    display: block;
    min-width: 1.5em;
    min-height: 1.5em;
    text-align: center;
    font-size: 1.0625rem;
  }
  
  .btn {
    font-size: 0.9375rem;
    font-weight: 500;
    padding: 0.5rem 0.75rem;
  }
  
  .avatar-blue {
        background-color: #c8d9f1;
        color: #467fcf;
      }
  
      .avatar-pink {
        background-color: #fcd3e1;
        color: #f66d9b;
      }
      .table {
        border-spacing: 0 1em;
      border-collapse: collapse;
  }
  
  .table>tbody>tr>td
      {
        padding: 15px;
        min-width: 100px;
      }
  .row
  {
        margin-right: 0px;
       margin-left: 0px;
  }
  
  
  .dataTables_length
  {
    text-align: left;
  }
  .dataTables_filter
  {
    text-align: right;
  }
  
  label
  {
    font-size: 0px;
  }
  .dataTables_info
  {
    color: white;
  }
  .dataTables_info
  {
    margin-top:10px;
  }

  tr:nth-child(odd){ 
		background: #eeedfc;
	}

	tr:nth-child(even){
		background: #e4efff;
	}


  @media (max-width: 767px) {
    div.dataTables_wrapper div.dataTables_paginate ul.pagination {
      -ms-flex-pack: center !important;
      justify-content: center !important;
      margin-top: 1rem;
      }
        .table>tbody>tr>td
      {
        min-width: 200px;
      }
  
      .dataTables_length, .dataTables_filter, .dataTables_paginate, .dataTables_info
      {
        text-align: center;
      }
      .dataTables_filter
      {
        margin-top: 10px;
      }

    
  }
  
  </style>
  
  
  <div style="width: 100%;">
    <br><br>
        <div style="width: 100%;">
          <table id="example" class="table table-hover responsive nowrap" style="width:100%;" cellspacing="10">
            <thead>
              <tr style="color: white; background-color: #6f6486;">
                <th>Service Name</th>
                <th>Location</th>
                <th>Shop Name</th>
                <th>DAte</th>
                <th>Cost</th>
                <th>Service</th>
              </tr>
            </thead>
            <tbody style="font-size: 14px; border-collapse:separate; border-spacing:0 15px;">
  
              <tr>
                <td>
                  Car Paint
                </td>
                <td>Uttam Nagar, New Delhi</td>
                <td>GoService</td>
                <td>09/04/2019</td>
                <td> 2700 </td>
                <td>
                  <div class="badge badge-success badge-unsuccess-alt">Un Complete</div>
                </td>
              </tr>
  
              <tr>
                <td>
                  Car Wash
                </td>
                <td>Uttam Nagar, New Delhi</td>
                <td>GoService</td>
                <td>19/05/2019</td>
                <td> 7565 </td>
                <td>
                  <div class="badge badge-success badge-success-alt">Complete</div>
                </td>
              </tr>
  
              <tr>
                <td>
                  Tyre Change
                </td>
                <td>Rajapuri, New Delhi</td>
                <td>Clean Rerpairs</td>
                <td>01/04/2019</td>
                <td> 1312 </td>
                <td>
                  <div class="badge badge-success badge-success-alt">Complete</div>
                </td>
              </tr>
  
              <tr>
                <td>
                  Bike Colpete Service
                </td>
                <td>Moti Nagar, New Delhi</td>
                <td>Jio car and bike Service</td>
                <td>29/05/2019</td>
                <td> 3599 </td>
                <td>
                  <div class="badge badge-success badge-success-alt">Complete</div>
                </td>
              </tr>
  
              <tr>
                <td>
                  Car Engine Change 
                </td>
                <td>Dwarka, New Delhi</td>
                <td>Ram Clean Services</td>
                <td>21/08/2019</td>
                <td> 25099 </td>
                <td>
                  <div class="badge badge-success badge-success-alt">Complete</div>
                </td>
              </tr>
    
              <tr>
                <td>
                  Car Paint
                </td>
                <td>Uttam Nagar, New Delhi</td>
                <td>GoService</td>
                <td>09/04/2019</td>
                <td> 2700 </td>
                <td>
                  <div class="badge badge-success badge-unsuccess-alt">Un Complete</div>
                </td>
              </tr>
  
              <tr>
                <td>
                  Car Wash
                </td>
                <td>Uttam Nagar, New Delhi</td>
                <td>GoService</td>
                <td>19/05/2019</td>
                <td> 7565 </td>
                <td>
                  <div class="badge badge-success badge-success-alt">Complete</div>
                </td>
              </tr>
  
              <tr>
                <td>
                  Tyre Change
                </td>
                <td>Rajapuri, New Delhi</td>
                <td>Clean Rerpairs</td>
                <td>01/04/2019</td>
                <td> 1312 </td>
                <td>
                  <div class="badge badge-success badge-success-alt">Complete</div>
                </td>
              </tr>
  
              <tr>
                <td>
                  Bike Colpete Service
                </td>
                <td>Moti Nagar, New Delhi</td>
                <td>Jio car and bike Service</td>
                <td>29/05/2019</td>
                <td> 3599 </td>
                <td>
                  <div class="badge badge-success badge-success-alt">Complete</div>
                </td>
              </tr>
  
              <tr>
                <td>
                  Car Engine Change 
                </td>
                <td>Dwarka, New Delhi</td>
                <td>Ram Clean Services</td>
                <td>21/08/2019</td>
                <td> 25099 </td>
                <td>
                  <div class="badge badge-success badge-success-alt">Complete</div>
                </td>
              </tr>
    
              <tr>
                <td>
                  Car Paint
                </td>
                <td>Uttam Nagar, New Delhi</td>
                <td>GoService</td>
                <td>09/04/2019</td>
                <td> 2700 </td>
                <td>
                  <div class="badge badge-success badge-unsuccess-alt">Un Complete</div>
                </td>
              </tr>
  
              <tr>
                <td>
                  Car Wash
                </td>
                <td>Uttam Nagar, New Delhi</td>
                <td>GoService</td>
                <td>19/05/2019</td>
                <td> 7565 </td>
                <td>
                  <div class="badge badge-success badge-success-alt">Complete</div>
                </td>
              </tr>
  
              <tr>
                <td>
                  Tyre Change
                </td>
                <td>Rajapuri, New Delhi</td>
                <td>Clean Rerpairs</td>
                <td>01/04/2019</td>
                <td> 1312 </td>
                <td>
                  <div class="badge badge-success badge-success-alt">Complete</div>
                </td>
              </tr>
  
              <tr>
                <td>
                  Bike Colpete Service
                </td>
                <td>Moti Nagar, New Delhi</td>
                <td>Jio car and bike Service</td>
                <td>29/05/2019</td>
                <td> 3599 </td>
                <td>
                  <div class="badge badge-success badge-success-alt">Complete</div>
                </td>
              </tr>
  
              <tr>
                <td>
                  Car Engine Change 
                </td>
                <td>Dwarka, New Delhi</td>
                <td>Ram Clean Services</td>
                <td>21/08/2019</td>
                <td> 25099 </td>
                <td>
                  <div class="badge badge-success badge-success-alt">Complete</div>
                </td>
              </tr>
    
             
            </tbody>
          </table>
        </div>
      </div>
  
    </user_history>
