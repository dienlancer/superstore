<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class TradeMarkModel extends Model {

	protected $table="trademark";
	protected $fillable=["fullname","alias","sort_order","status","created_at","updated_at"];		
}
