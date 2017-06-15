<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GeneroModel extends Model
{
	protected $table = 'genero';
	protected $primaryKey = 'idgenero';
	protected $fillable = ['nombre'];
	protected $hidden = [];
	public $timestamps = false;
}
