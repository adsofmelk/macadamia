$('document').ready(function(){

	//BOTON GUARDAR REGISTRO PASO 1
	$('#btn-step1').bind('click',function(){
		
		var datastring = $('#formulario').serialize();
		
		$.ajax({
		    type: "POST",
		    url: "/visitante",
		    data: datastring,
		    dataType: "json",
		    success: function(data) {
		       if(data.response == true){
		    	   alert("Visitante Creado.");
		    	   $('#div_left').load('visitante/create');
		       }else{
		    	   alert("No fue posible crear el Visitante");
		       }
		       
		    },
		    error: function() {
		        alert('error');
		    }
		});
		
	});
	
	//BOTON GUARDAR REGISTRO PASO 2 mostrar campo para Firma
	$('#btn-step2').bind('click',function(){
		$('#signature-pad').css('z-index',9999);
	});
	
	
});

