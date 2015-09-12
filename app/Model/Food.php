<?php

namespace App\Model;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class Food extends Model
{
	protected $table='food';
	protected $fillable=[
			'name',
			'avatar',
			'video',
			'detail',
			'category',
			'price'
	];
	public static function getFood(){
			$result=DB::table('food')
					->leftJoin('cookbook','food.cookbook','=','cookbook.id')
					->leftJoin('bookdetail','cookbook.id','=','bookdetail.bookId')
					->select('food.top as top','food.id as id','food.name as name','food.avatar as avatar','video','food.detail as detail','price','bookdetail.name as step','bookdetail.detail as bookdetail')
					->get();
			return $result;
	}

}
