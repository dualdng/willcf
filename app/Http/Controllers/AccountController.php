<?php

namespace App\Http\Controllers;

use App\Model\Bill;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;

class AccountController extends Controller
{
		public $isLogin;
		public $user;
		public function __construct() {
				if(Auth::check()){
						$this->isLogin=true;
						$this->user=Auth::user();
				}else{
						$this->user=false;
				}
		}

		public function getDashboard(){
				$data=array();
				if($this->user){
						$userId=$this->user->id;
						$bill=Bill::where('userId',$userId);
				}
				return view('account.index',$data);
		}
		public function getDetail($userId){
				$data=array();
				return view('account.detail',$data);
		}
}
