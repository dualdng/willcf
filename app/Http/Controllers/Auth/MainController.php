<?php namespace App\Http\Controllers\Auth;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\MyEmailController;
use App\Http\Controllers\Base\SmsController;;
use Illuminate\Hashing\BcryptHasher;
use Auth;
use App\Model\User;

use Illuminate\Http\Request;

class MainController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function getLogin()
	{
			$data=array();
			if(Auth::check()){
					return view('home.index');
			}else{
					$data['isLogin']=false;
					return view('auth.login',$data);
			}
	}

	/**
	 *登录
	 */
	public function postLogin(Request $request)
	{
			$phone=$request->input('phone');
			$password=$request->input('password');
			$remember=$request->input('remember');
			if($remember==1){
					$remember=true;
			}else{
					$remember=false;
			}
			if(Auth::attempt(['phone'=>$phone,'password'=>$password,'state'=>1],$remember)) {
					return redirect('/');
					return true;
			}else{
					return false;
			}
	}
	/**
	 * 注册页面
	 */
	public function getRegister()
	{
			$data=array();
			$data['ajax']=0;
			if(Auth::check()){
					return view('home.index');
			}else{
					$data['isLogin']=false;
			return view('auth.register',$data);
			}
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
	/**
	 * 注册
	 */
	public function postRegister(Request $request)
	{
			$phone=$request->input('phone');
			$name=$request->input('name');
			$password=$request->input('password');
			$hash=new BcryptHasher;
			$password=$hash->make($password);
			$avatar='/avatar/default.jpg';
			$result=User::create(['password'=>$password,'phone'=>$phone,'name'=>$name,'avatar'=>$avatar,'state'=>1]);
			if($result){
			}
			return redirect('/auth/login');
	}
	/**
	 * 登出
	 */
	public function logout()
	{
			Auth::logout();
			return redirect('/');
	}
	/**
	 * 激活帐号
	 */
	/**
	public function active(Request $request)
	{
			$email=$request->input('email');
			$activeCode=$request->input('code');
			$result=User::where('email',$email)->where('activeCode',$activeCode)->get();
			if(count($result)!=0){
					foreach($result as $value){
							$user=User::find($value->id);
							$user->state=1;
							$user->save();
							return redirect('/auth/login');
					}
			}else{
					echo '出错拉';
			}
	}
	**/
	/**
	 *发送激活邮件
	 */
	/**
	 public function sendMail(Request $request)
	 {
			$email=$request->input('email');
			$activeCode=$request->input('code');
			$content='<style>';
			$content.='';
			$content.='</style>';
			$content.='<h3>感谢您注册AT.Field.Club(绝对领域爱好者)!请点击以下链接激活帐号:</h3>';
			$content.='<p><a href=\''.$_SERVER['SERVER_NAME'].'/active?email='.$email.'&code='.$activeCode.'\'>'.$_SERVER['SERVER_NAME'].'/active?email='.$email.'&code='.$activeCode.'</a></p>';
			$content.='<span>此邮件由系统自动发送，请勿回复。</span>';
			$mail=new MyEmailController;
			$mail->setServer("smtp.exmail.qq.com", "active@atfield.club", "d417234476");
			$mail->setFrom("active@atfield.club");
			$mail->setReceiver($email);
			$mail->setMailInfo("感谢您注册AT.Field!", $content);
			$mail->sendMail();
			echo '发送成功';
	 }
	 **/
}
