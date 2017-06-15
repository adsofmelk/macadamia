

@if(sizeof($visitante)>0)

	<div id='token' data-token='{{csrf_token()}}'></div>
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Ultimos Visitantes Registrados
                </div>
                <div class="panel-body">
                    <ul class="list-group">
                    	
	@foreach($visitante as $row)

                        <li class="list-group-item">
                        	<div data-visitante="{{$row->idpersona}}"  class='pointer' onClick='showPad({{$row->idpersona}});'>
	                        	@if($row->firmado)
	                        		<i class="text-success fa fa-check" aria-hidden="true"></i>  
	                        	@else
	                        		<i class="text-danger fa fa-exclamation-triangle" aria-hidden="true"></i>  
	                        	@endif
	                      		{{$row->nombres . " " .$row->apellidos ." (".date(('h:i a'),strtotime($row->registro)).")" }}
                      		</div>      
                        </li>
	@endforeach
					</ul>
                </div>
            </div>
        </div>
    </div>

@endif
                        
                    
	