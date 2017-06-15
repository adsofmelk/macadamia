<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SignatureModel extends Model
{
	protected $dates = ['deleted_at'];
	protected $table = 'signature';
	protected $primaryKey = 'idsignature';
	protected $fillable = ['imagen','persona_grupovisitante_idpersona_grupovisitante'];
	protected $hidden = [];
	public $timestamps = true;
}
