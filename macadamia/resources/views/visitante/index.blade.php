@extends('layouts.app')

@section('content')
<div class='container'>	
	<div class='row'>
		<div class='col-sm-8 col-lg-8' id='div_left'>
		</div>
		<div class='col-sm-4 col-lg-4' id='div_right'>
		</div>
	</div>
</div>
	{!!Html::script("js/ModVisitante.js")!!}
@stop
