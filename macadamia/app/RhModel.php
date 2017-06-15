<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RhModel extends Model
{
	protected $table = 'rh';
	protected $primaryKey = 'idrh';
	protected $fillable = ['nombre'];
	protected $hidden = [];
	public $timestamps = false;
}
