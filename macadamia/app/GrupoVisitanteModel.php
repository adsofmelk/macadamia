<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GrupoVisitanteModel extends Model
{
	protected $table = 'grupovisitante';
	protected $primaryKey = 'idgrupovisitante';
	protected $fillable = ['fecha','nombre'];
	protected $hidden = [];
	public $timestamps = false;
}
