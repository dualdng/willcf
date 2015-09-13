<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Bill extends Model
{
		protected $table='bill';
		protected $fillable=['billId','userId','foodId','foodName','amount','price','state'];
}
