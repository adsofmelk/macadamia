<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PersonaGrupoVisitanteModel extends Model
{
	protected $table = 'persona_grupovisitante';
	protected $primaryKey = 'idpersona_grupovisitante';
	protected $fillable = ['persona_idpersona','grupovisitante_idgrupovisitante','registro','firmado'];
	protected $hidden = [];
	public $timestamps = false;
}
