<div class="panel panel-primary">
  <div class="panel-heading"><h3>Registro de Nuevo Visitante</h3></div>
  <div class="panel-body">
  <div class='row' id='registro' >
  
  	{!!Form::open(['id'=>'formulario'])!!}
	    
	    @include('visitante.ajax.forms.form')
	    
	    <div class='form-group col-sm-12'>
	    	{!!Form::button("Guardar",["class"=>"btn btn-primary",'id'=>'btn-step1'])!!}
	    </div>
	{!!Form::close()!!}
  </div>
  </div>
</div>
{!!Html::script("js/ModVisitante.create.js")!!}