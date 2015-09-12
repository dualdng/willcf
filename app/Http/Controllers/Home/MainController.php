<?php

namespace App\Http\Controllers\Home;

use App\Model\Food;
use App\Model\Cookbook;
use App\Model\Cart;
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
		public $user;
		public $foodWithBook;
		public $food;
		public $cookbook;
		public function __construct() {
				if(Auth::check()){
						$this->isLogin=true;
						$this->user=Auth::user();
				}else{
						$this->user=false;
				}
				$this->foodWithBook=Food::getFood();
				$this->food=Food::all();
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
				$food=$this->foodWithBook;
				$cookbook=$this->cookbook;
				foreach($food as $value){
						if($value->id==$id){
								$temp=explode(',',$value->avatar);
								$data['avatar']=$temp;
								$tem[]=$value;
						}
				}
				$data['food']=$tem;
				return view('home.single',$data);
		}
		/**
		 * get menu
		 */
		public function getMenu($category){
				$data=array();
				$food=$this->food;
				if($category==0){
						foreach($food as $key=>$value){
								$temp=explode(',',$value->avatar);
								$value->avatar=$temp[0];
						}
						$data['food']=$food;
						return view('home.menu',$data);
				}
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
		/**
		 * get cart
		 */
		public function getCart(){
				$data=array();
				$user=$this->user;
				if(isset($_COOKIE['cart'])){
						return unserialize($_COOKIE['cart']);
				}else{
						/**
						if($user) {
								$cart=Cart::getCartByUserId($user->id);
								$data['cart']=$cart;
								$data['userId']=$user->id;
						}else{
								$data['cart']=false;
								$data['userId']=0;
						}
						**/
						return view('home.cart',$data);
				}
		}
		/**
		 * setCartCookie
		 *
		 */
		public function setCartCookie(Request $request)
		{
				$cart=$request->input('cart');
				$cart=serialize($cart);
				$res=setcookie('cart',$cart,time()+3600);
				if($res){
						return 1;
				}else{
						return 0;
				}
		}
		/**
		 * get checkout
		 */
		public function getCheckout(Request $request)
		{
				$data=array();
				$food=$request->input('food');
				$food=explode(',',$food);
				$data['food']=$food;
				return view('home.checkout',$data);
		}
}
