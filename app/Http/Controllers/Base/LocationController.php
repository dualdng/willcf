<?php

namespace App\Http\Controllers\Base;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class LocationController extends Controller
{
		public function listLocation (Request $request) //地区选择功能
		{
				$province=$request->province;
				$province=isset($province)?$province:false;
				$city=$request->city;
				$city=isset($city)?$city:false;
				$town=$request->town;
				$town=isset($town)?$town:false;
				$data=array();
				if($province) { //判断省，根据省选择市
						$city=array();
						$location=Location::where('province','=',$province)->get();
						foreach ($location as $values) {
								$data[]=$values->city;
						}
						return array_unique($data);
				}
				if($city) { //判断市，根据市选择区县
						$location=Location::where('city','=',$city)->get();
						foreach ($location as $values) {
								$data[]=$values->town;
						}
						return array_unique($data);
				}
				if($town){ //判断区县获取locationId
						$location=Location::where('town','=',$town)->get();
						foreach ($location as $values) {
								$data=$values->id;
						}
						return $data;
				}
		}

}
