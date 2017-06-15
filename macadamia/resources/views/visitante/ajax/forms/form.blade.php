		<div class='form-group col-sm-6'>
	        {!!Form::label("nombres","Nombres:")!!}
	        {!!Form::text("nombres",null,['class'=>'form-control','placeholder'=>'Ingrese su Nombre'])!!}
        </div>
        <div class='form-group col-sm-6'>
	        {!!Form::label("apellidos","Apellidos:")!!}
	        {!!Form::text("apellidos",null,['class'=>'form-control','placeholder'=>'Ingrese su Apellido'])!!}
        </div>
        <div class='form-group col-sm-6'>
	        {!!Form::label("fechanacimiento","Fecha Nacimiento:")!!}<br>
	        {!!Form::date('fechanacimiento',null)!!}
        </div>
        <div class='form-group col-sm-6'>
	        {!!Form::label("genero","Genero:")!!}
	        {!!Form::select("genero_idgenero",$genero,null,['class'=>'form-control'])!!}
        </div>
        
        <div class='form-group col-sm-6'>
	        {!!Form::label("celular","Celular:")!!}
	        {!!Form::text("celular",null,['class'=>'form-control','placeholder'=>'Ingrese su Apellido'])!!}
        </div>
        <div class='form-group col-sm-6'>
	        {!!Form::label("email","Email:")!!}
	        {!!Form::text("email",null,['class'=>'form-control','placeholder'=>'Ingrese su Apellido'])!!}
        </div>
        
        
        
	        <div class='form-group col-sm-12 bg-warning'><h4>Información de Salud</h4></div>
	        
	        <div class='form-group col-sm-2'>
		        {!!Form::label("gruposanguineo","Grupo:")!!}
		        {!!Form::select("gruposanguineo_idgruposanguineo",$gruposanguineo,null,['class'=>'form-control'])!!}
	        </div>
	        <div class='form-group col-sm-2'>
		        {!!Form::label("rh","Rh:")!!}
		        {!!Form::select("rh_idrh",$rh,null,['class'=>'form-control'])!!}
	        </div>
	        <div class='form-group col-sm-8'>
		        {!!Form::label("eps","Eps:")!!}
		        {!!Form::select("eps_ideps",$eps,null,['class'=>'form-control'])!!}
	        </div>
	        
	        <div class='form-group col-sm-12'>
	        	{{Form::textarea('observaciones',null,['class'=>'form-control','placeholder'=>'Observaciones a tener en cuenta','rows'=>4])}}
	        </div>
        
        
        {{Form::hidden('tipopersona_idtipopersona','1')}}
        
        