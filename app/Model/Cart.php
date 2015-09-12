<?php

namespace App\Model;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
		protected $table='Cart';
		protected $fillable=[
				'userId',
				'cartId',
				'foodId',
				'foodName',
				'amount',
				'price'
		];
		public static function  getCartByUserId($userId) {
				$result=DB::table('cart')
						->leftjoin('user','cart.userId','=','user.id')
						->where('cart.userId',$userId)
						->select('cartId','foodId','foodName','amount','price')
						->get();
				return $result;
		}
}
