<?php

namespace App\Http\Controllers\Home;

use App\Model\Food;
use App\Model\Cookbook;
use App\Model\Cart;
use App\Model\Bill;
use App\Model\Location;
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
				$abel=array();
				$baker=array();
				$province=array();
				$location=Location::all();
				foreach ($location as $locations){
						$province[]=$locations->province;
				}
				$data['province']=$province;
				$food=$request->input('food');
				$foodId=$request->input('foodId');
				$price=$request->input('price');
				$food=explode(',',$food);
				$foodId=explode(',',$foodId);
				$num=count($food);
				for($i=1;$i<$num;$i++){
						$abel[]=explode('-',$food[$i]);
						$baker[]=substr($foodId[$i],4);
				}
				$data['foodId']=$baker;
				$data['food']=$abel;
				$data['price']=$price;
				$billId=time().rand(100000,999999);
				$data['billId']=$billId;
				if($this->user){
						$userId=$this->user->id;
						$data['user']=$this->user;
				}else{
						$userId=0;
				}
				$num=count($baker);
				for($i=0;$i<$num;$i++){
						$res=Bill::create([
								'billId'=>$billId,
								'userId'=>$userId,
								'foodId'=>$baker[$i],
								'foodName'=>$abel[$i][0],
								'amount'=>$abel[$i][1],
								'price'=>$abel[$i][2],
								'state'=>0]);
				}
				setcookie('cart','',time()-3600);
				return view('home.checkout',$data);
		}
		/**
		 * 结帐
		 */
		public function postCheckout(){

		}
		public function listLocation (Request $request) //地区选择功能
		{
				$province=$request->province;
				$province=isset($province)?$province:false;
				$city=$request->city;
				$city=isset($city)?$city:false;
				$data=array();
				if($province) { //判断省，根据省选择市
						$city=array();
						$location=Location::where('province','=',$province)->get();
						foreach ($location as $values) {
								$data[]=$values->city;
						}
				}
				if($city) { //判断市，根据市选择区县
						$location=Location::where('city','=',$city)->get();
						foreach ($location as $values) {
								$data[]=$values->town;
						}
				}
				return array_unique($data);
		}
}
