<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PersonaModel extends Model
{
	protected $table = 'persona';
	protected $primaryKey = 'idpersona';
	protected $fillable = ['nombres','apellidos','email',
							'celular','fechanacimiento',
							'genero_idgenero','rh_idrh',
							'gruposanguineo_idgruposanguineo',
							'eps_ideps','tipopersona_idtipopersona'
				];
	protected $hidden = [];
	public $timestamps = false;
}
