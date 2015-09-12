<?php

namespace App\Http\Controllers\Auth;

use App\Model\User;
use Validator;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Base\SmsController;;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;

class AuthController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Registration & Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users, as well as the
    | authentication of existing users. By default, this controller uses
    | a simple trait to add these behaviors. Why don't you explore it?
    |
    */

    use AuthenticatesAndRegistersUsers, ThrottlesLogins;

    /**
     * Create a new authentication controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest', ['except' => 'getLogout']);
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'phone' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|confirmed|min:6',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(array $data)
    {
        return User::create([
            'phone' => $data['phone'],
            'name' => $data['name'],
            'password' => bcrypt($data['password']),
			'avatar'=>'/avatar/default.jpg',
			'state'=>1
        ]);
    }
	/**
	 * 发送手机验证码
	 * @param phoneNum
	 * @return sring
	 */
	public function sendSms(Request $request)
	{
			$hash=new BcryptHasher;
			$phone=$request->input('phone');
			$sms=new SmsController;
			$verifyCode=rand(100000,999999);
			$period=3;
			$res=$sms->sendSms($verifyCode,$period,$phone);
			if($res) {
					setcookie('verifyCode',$hash->make($verifyCode),time()+60*3);
					return 1;
			}
	}
	/**
	 * 验证手机号码
	 * @param verifyCode
	 * @return bool
	 */
	public function verifyPhone(Request $request)
	{
			$hash=new BcryptHasher;
			$verifyCode=$hash->make($request->input('verifyCode'));
			if($verifyCode==$_COOKIE['verifyCode']) {
					return 1;
			}else{
					return 0;
			}
	}
	/**
	 *注册表单验证 
	 */
	public function verify(Request $request)
	{
			$phone=$request->input('phone');
			$name=$request->input('name');
			$password=$request->input('password');
			$confirmPassword=$request->input('confirmPassword');
			$phone=isset($phone)?$phone:false;
			$name=isset($name)?$name:false;
			$password=isset($password)?$password:false;
			$confirmPassword=isset($confirmPassword)?$confirmPassword:false;
			if(!$phone) {
					$result=count(User::where('phone',$phone)->get());
					if($result!==0) {
							return 1;
					}else {
							return 0;
					}
					exit;
			}
			if(!$name) {
					$result=count(User::where('name',$name)->get());
					if($result!==0) {
							return 1;
					}else {
							return 0;
					}
					exit;
			}
	}

}
