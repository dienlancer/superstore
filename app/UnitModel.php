<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class UnitModel extends Model {

	protected $table="unit";
	protected $fillable=["fullname","alias","sort_order","status","created_at","updated_at"];		
}
