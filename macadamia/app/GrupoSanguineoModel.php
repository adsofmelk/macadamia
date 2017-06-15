<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GrupoSanguineoModel extends Model
{
	protected $table = 'gruposanguineo';
	protected $primaryKey = 'idgruposanguineo';
	protected $fillable = ['nombre'];
	protected $hidden = [];
	public $timestamps = false;
}
