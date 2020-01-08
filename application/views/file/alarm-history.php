<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="main_part">
				<table id="example" class="table table-bordered table-striped">
					<thead>
						<tr>
		                  <th>Serial</th>
		                  <th>Site Name</th>							  
		                  <th>Bank</th>  						  
		                  <th>Node</th>                  
		                  <th>Parameter</th>                  
		                  <th>Remarks</th>                  
		                  <th>Value</th>                  
		                  <th>Active</th>                  
		                  <th>Inactive Time</th>
		                  <th>Status</th>
		                </tr>
		                <tr>
		                  <th class="filterhead">Serial</th>
		                  <th class="filterhead">Site Name</th>							  
		                  <th class="filterhead">Bank</th>  						  
		                  <th class="filterhead">Node</th>                  
		                  <th class="filterhead">Parameter</th>                  
		                  <th class="filterhead">Remarks</th>                  
		                  <th class="filterhead">Value</th>                  
		                  <th class="filterhead">Active</th>                  
		                  <th class="filterhead">Inactive Time</th>
		                  <th class="filterhead">Status</th>
		                </tr>
					</thead>
					<tbody>
					<?php
					$sl = 0;
					 foreach($all_alarm as $row){
					 $sl = $sl + 1;
					 ?>
						<tr>
							<td><?php echo $sl; ?></td>
							<td><?php echo $this->report->get_site_name($row->site_id); ?></td>
							<td><?php echo $row->bank; ?></td>
							<td><?php echo $row->node; ?></td>
							<td><?php echo $row->parameter; ?></td>
							<td><?php echo $row->remarks; ?></td>
							<td><?php echo $row->value; ?></td>
							<td><?php echo $row->created_time; ?></td>
							<td><?php echo $row->inactive_time; ?></td>
							<td><?php
							if($row->inactive_time != NULL)
							{
							?>
							<div class="led-green"></div>
							<?php	
							}
							else
							{
							?>
							<div class="led-red"></div>
							<?php	
							}
							?>
							</td>
						</tr>
					<?php
					}
					?>	
					</tbody> 
				</table>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

<script type="text/javascript">
	$(document).ready(function() {
    $('#example').DataTable( {
    	"scrollX": true,
        orderCellsTop: true,
        initComplete: function () {
            this.api().columns().every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                    .appendTo( $(column.header()).empty() )
                    .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
        }
    } );
} );
</script>
