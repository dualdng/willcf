<?php
/**
 * 短信验证码接口
 * @author Tinty
 * @version 1.0
 */

namespace App\Http\Controllers\Base;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class SmsController extends Controller
{
		/**
		 * SMS api accountSid
		 * @param string $accountSid
		 * @access private
		 */
		private $accountSid='8a48b5514fd49643014fde2e6fe01969';
		/**
		 * SMS api auth token 
		 * @param string $authToken
		 * @access private
		 */
		private $authToken='f14d68926289472b8bb8ed90025b66f7';

		/**
		 * SMS SigParameter 
		 * @param string $sigParameter
		 * @access private
		 */
		private $sigParameter;

		/**
		 * SMS Authorization 
		 * @param string $authorization
		 * @access private
		 */
		private $authorization;


		/**
		 * 生成SigParameter
		 * @access private
		 * @return $sigParameter $authorization
		 */
		public function __construct() {
				$time=date('YmdGis',time());
				$this->sigParameter=strtoupper(md5($this->accountSid.$this->authToken.$time));
				$this->authorization=base64_encode($this->accountSid.':'.$time);
		}
		/**
		 * 调用接口
		 * @access public
		 * @param string $verifyCode
		 * @return json
		 */
		public function sendSms($verifyCode,$period,$phoneNum) {
				$url='https://sandboxapp.cloopen.com:8883/2013-12-26/Accounts/'.$this->accountSid.'/SMS/TemplateSMS?sig='.$this->sigParameter;
				$header=array();
				$header[]='Accept:application/json';
				$header[]='Content-Type:application/json;charset=utf-8';
				$header[]='Authorization:'.$this->authorization;
				$postData=array();
				$postData['to']=$phoneNum;
				$postData['appId']="8a48b5514fd49643014fde479f771a0c";
				$postData['templateId']='1';
				$postData['datas']=array($verifyCode,$period);
				$postData=json_encode($postData);
				$ch=curl_init();
				curl_setopt($ch,CURLOPT_HTTPHEADER,$header);
				curl_setopt($ch,CURLOPT_URL,$url);
				curl_setopt($ch,CURLOPT_HEADER,0);
				curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
				curl_setopt($ch,CURLOPT_POST,1);
				curl_setopt($ch,CURLOPT_POSTFIELDS,$postData);
				$output=curl_exec($ch);
				curl_close($ch);
				$output=json_decode($output,true);
				if($output['statusCode']=='000000'){
						return true;
				}else {
						return $output['statusCode'];
				}
		}
}
