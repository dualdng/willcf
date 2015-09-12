<?php

namespace App\Http\Controllers\Home;

use App\Model\Food;
use App\Model\Cookbook;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;
/**
 * 主页面控制器 
 * @author Tinty
 * @version 1.0
 */

class MainController extends Controller
{
		/**
		 * user logged
		 * @param boolen $isLogin
		 * @access plublic
		 */
		public $isLogin;
		public $food;
		public $cookbook;
		public function __construct() {
				if(Auth::check()){
						$this->isLogin=true;
				}
				$this->food=Food::getFood();
		}
		/**
		 * get index
		 */
		public function getIndex(){
				$data=array();
				$abel=array();
				$baker=array();
				$charlie=array();
				$food=$this->food;
				$data['isLogin']=$this->isLogin;
				foreach($food as $key=>$value){
						$temp=explode(',',$value->avatar);
						$value->avatar=$temp[0];
				}
				foreach($food as $key=>$value){
						if($value->top==0){
								$abel[]=$value;
						}elseif($value->top==1){
								$baker[]=$value;
						}else{
								$charlie[]=$value;
						}
				}
				$data['abel']=$abel;
				$data['baker']=$baker;
				$data['charlie']=$charlie;
				return view('home.index',$data);
		}
		/**
		 * get single
		 */
		public function getSingle($id){
				$data=array();
				$temp=array();
				$tem=array();
				$food=$this->food;
				$cookbook=$this->cookbook;
				foreach($food as $value){
						if($value->id==$id){
								$temp=explode(',',$value->avatar);
								$data['avatar']=$temp;
								$tem[]=$value;
						}
				}
				var_dump($tem);
				$data['food']=$tem;
		}
		/**
		 * get menu
		 */
		public function getMenu(){
				return view('home.menu');
		}
		/**
		 * navbar
		 * @param none
		 * @access public
		 */
		public function getNav(){
				$data=array();
				$data['isLogin']=$this->isLogin;
				return view('home.nav',$data);
		}
}
