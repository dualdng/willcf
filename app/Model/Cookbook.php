<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Cookbook extends Model
{
    //
	protected $table='cookbook';
	protected $fillable=['name','avatar','category'];
	public static function getCookbook(){
			$result=DB::table('cookbook')
					->leftJoin('bookdetail','cookbook.id','=','bookdetail.bookId')
					->select('detail','bookdetail.name as name')
					->get();
			return $result;

	}
}
