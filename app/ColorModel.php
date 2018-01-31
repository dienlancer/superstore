<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ColorModel extends Model {

	protected $table="color";
	protected $fillable=["fullname","alias","code","sort_order","status","created_at","updated_at"];		
}
