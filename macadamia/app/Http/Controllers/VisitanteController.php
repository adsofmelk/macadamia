<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class VisitanteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return  view("visitante.index");
    }
    
    
    public function ultimosVisitantes(){
    	
    	$visitante=DB::select("call getUltimosVisitantesRegistrados('".date('Y-m-d')."',10);");
    	
    	return  view("visitante.ultimos",['visitante'=>$visitante]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    	$genero = \App\GeneroModel::pluck('nombre','idgenero');
    	$gruposanguineo = \App\GrupoSanguineoModel::pluck('nombre','idgruposanguineo');
    	$rh = \App\RhModel::pluck('nombre','idrh');
    	$eps = \App\EpsModel::pluck('nombre','ideps');
        
        
        return view('visitante.ajax.create',[
        		'genero'=>$genero,
        		'gruposanguineo'=>$gruposanguineo,
        		'rh'=>$rh,
        		'eps'=>$eps,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       if($request->ajax()){
       	
	       $visitante = \App\PersonaModel::create($request->all());
	       if($visitante!=null){
	       		
	       		$grupovisitante = \App\GrupoVisitanteModel::where(['fecha'=>date('Y-m-d')])->first();
	       		if($grupovisitante==null){
	       			$grupovisitante = \App\GrupoVisitanteModel::create(['fecha'=>date('Y-m-d'),'nombre'=>'Grupo fecha: '.date('Y-m-d')]);
	       		}
	       		\App\PersonaGrupoVisitanteModel::create(['persona_idpersona'=>$visitante->idpersona,
	       							'grupovisitante_idgrupovisitante'=>$grupovisitante->idgrupovisitante,
	       							'registro'=>date('Y-m-d h:i:s'),
	       							'firmado'=>false
	       		]);
	       		$resultado['response'] = true;
	       		$resultado['idpersona']=$visitante->idpersona;
	       		$resultado['nombres']=$visitante->nombres;
	       		$resultado['apellidos']=$visitante->apellidos;
	       		       		
	       		return response()->json($resultado);
	       	
	       }else{
		       	return response()->json([
		       			"response"=>false,
		       			
		       	]);
	       }
       	
       
       }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
