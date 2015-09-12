<?php

namespace App\Http\Controllers;

use App\Model\Category;
use App\Model\Food;
use App\Model\Cookbook;
use App\Model\Bookdetail;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Base\BaseController;
use Auth;

class BackController extends Controller
{
		public $isLogin;
		public function __construct(){
				if(Auth::check()){
						$this->isLogin=true;
				}
		}
		/**
		 * get background
		 */
		public function getBack(){
				if($this->isLogin){
						$user=Auth::user();
						if($user->id==1){
								return view('back.index');
						}else{
								return redirect('/');
						}
				}else{
						return redirect('/auth/login');
				}
		}
		/**
		 * get category
		 */
		public function getCategory(){
				$result=Category::all();
				return view('back.category',['category'=>$result]);
		}
		public function postCategory(Request $request) {
				$name=$request->input('name');
				$category=$request->input('category');
				$res=Category::create(['name'=>$name,'category'=>$category]);
				if($res){
						return redirect('/back');
				}else{
						return redirect('/error');
				}
		}
		/**
		 * get food
		 */
		public function getFood(){
				$data=array();
				$category=Category::all();
				$cookbook=Food::all();
				$data['category']=$category;
				$data['food']=$cookbook;
				return view('back.food',$data);
		}
		public function postFood(Request $request){
				$name=$request->input('name');
				$category=$request->input('category');
				$avatar=$request->input('avatar');
				$video=$request->input('video');
				$detail=$request->input('detail');
				$detail=BaseController::magicQuotes($detail);
				$price=$request->input('price');
				$res=Food::create(['name'=>$name,'avatar'=>$avatar,'video'=>$video,'detail'=>$detail,'category'=>$category,'price'=>$price]);
				if($res){
						return 1;
				}else{
						return 0;
				}
		}
		/**
		 * get cookbook
		 */
		public function getCookbook(){
				$data=array();
				$category=Category::all();
				$cookbook=Cookbook::all();
				$data['category']=$category;
				$data['cookbook']=$cookbook;
				return view('back.cookbook',$data);
		}
		public function postCookbook(Request $request){
				$name=$request->input('name');
				$category=$request->input('category');
				$res=Cookbook::create(['name'=>$name,'category'=>$category]);
				if($res){
						return 1;
				}else{
						return 0;
				}
		}
		/**
		 * get bookdetail
		 */
		public function getBookdetail(Request $request){
				$data=array();
				$id=$request->input('id');
				$data['bookId']=$id;
				return view('back.bookdetail',$data);
		}
		public function postBookdetail(Request $request){
				$bookId=$request->input('bookId');
				$stepAbel=$request->input('stepAbel');
				$detailAbel=$request->input('detailAbel');
				$stepBaker=$request->input('stepBaker');
				$detailBaker=$request->input('detailBaker');
				$stepCharlie=$request->input('stepCharlie');
				$detailCharlie=$request->input('detailCharlie');
				$stepDog=$request->input('stepDog');
				$detailDog=$request->input('detailDog');
				$res=Bookdetail::create([
						'bookId'=>$bookId,
						'name'=>$stepAbel,
						'detail'=>$detailAbel
				]);
				if($res){
						$res=Bookdetail::create([
								'bookId'=>$bookId,
								'name'=>$stepBaker,
								'detail'=>$detailBaker
						]);
				}
				if($res){
						$res=Bookdetail::create([
								'bookId'=>$bookId,
								'name'=>$stepCharlie,
								'detail'=>$detailCharlie
						]);
				}
				if($res){
						$res=Bookdetail::create([
								'bookId'=>$bookId,
								'name'=>$stepDog,
								'detail'=>$detailDog
						]);
				}
				if($res){
						return redirect('/back');
				}else{
						return redirect('/error');
				}
		}
}

