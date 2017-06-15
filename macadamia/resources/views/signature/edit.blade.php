
@extends('layouts.app')

@section('content')
<div style='width:100%;top:0;bottom: 0;background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAb1UlEQ…bhb8fIWpwxQqLWjmq6eMz55lB3Fsy5IgTGIO1SZ7D0vXj/D1qZ7VFrqtW0AAAAAElFTkSuQmCC) repeat scroll center center rgb(179, 179, 179);;z-index:10;position:fixed;padding: 80px 0 0 0;'>
	<div class='container'>
		
		<div class='row'>
			<div class='col-sm-8'>
				<div class="panel panel-primary">
				  <div class="panel-heading"><h3>Aceptación de los terminos de servicio</h3></div>
				  <div class="panel-body">
				  <div class='row' id='registro' >
				  
				  	{!!Form::open(['id'=>'formulario'])!!}
					    
					
					    {{Form::hidden('firma',null,['id'=>'firma'])}}					
					    <div class='form-group col-sm-12'>
					    	{!!Form::button("Guardar y Firmar",["class"=>"btn btn-primary",'id'=>'btn-step2'])!!}
					    </div>
					{!!Form::close()!!}
				  </div>
				  </div>
				</div>
			</div>
			<div class='col-sm-4' >
				<div class="panel panel-primary">
				  <div class="panel-heading"><h4>Firma</h4></div>
				  <div class="panel-body" id='firmapng'>
				  
				  </div>
				</div>
			</div>
				
		</div>
	</div>
</div>
{!!Html::script("js/ModVisitante.create.js")!!}
@endsection
@section('firma')

@include('signature.forms.signature')
	
@stop
