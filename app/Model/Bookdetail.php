<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Bookdetail extends Model
{
	protected $table='bookdetail';
	protected $fillable=['bookId','name','detail'];

}
