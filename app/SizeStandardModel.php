<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class SizeStandardModel extends Model {

	protected $table="size_standard";
	protected $fillable=["fullname","alias","sort_order","status","created_at","updated_at"];		
}
