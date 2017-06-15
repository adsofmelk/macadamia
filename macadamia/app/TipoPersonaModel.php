<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipoPersonaModel extends Model
{
	protected $table = 'tipopersona';
	protected $primaryKey = 'idtipopersona';
	protected $fillable = ['nombre'];
	protected $hidden = [];
	public $timestamps = false;
}
