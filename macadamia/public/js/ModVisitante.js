$('document').ready(function(){
	$('#div_left').load('visitante/create');
	
	$(function(){
		loadUltimosVisitantes();
	});
	
	function loadUltimosVisitantes(){
		setTimeout(loadUltimosVisitantes,10000);
		$('#div_right').load('/ultimosvisitantes');
	}
	
	$(function() {
		
		
	    $('#myModal').on("show.bs.modal", function (e) {
	    	//$("#signature-pad").show();
	    	/*
	    	$('#modaltitle').html(e.relatedTarget.dataset.visitante);
	    	
	    	$.ajax({
			    type: "POST",
			    headers:{"X-CSRF-TOKEN":$('#token').data()['token']},
			    url: "/getpad",
			    data: {"id":e.relatedTarget.dataset.visitante},
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
	    	
	    	*/
	    	
	    	
	    	
	    	//$( "#modalbody" ).load( 'signature/' + e.relatedTarget.dataset.visitante );
	    	
	    	
	    });
	});

	
});


function showPad(id){
	$( "#body" ).load( 'signature/' +id +"/edit");
	//window.location.replace("/signature/"+id+"/edit");
}