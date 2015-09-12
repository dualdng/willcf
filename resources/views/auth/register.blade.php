<?php
/**
* register page
* @author Tinty
* @version 1.0
*/
?>
@extends('layout')
@section('title')
用户注册 | 威尔厨房
@endsection
@section('header')
<section class='background-normal'>
</section>
@endsection
@section('article')
<div class='register container-fluid'>
		<section class='abel container'>
				<h5>注册须知</h5>
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
						<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
												<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
														Collapsible Group Item #1
												</a>
										</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body">
												Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
										</div>
								</div>
						</div>
						<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
										<h4 class="panel-title">
												<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
														Collapsible Group Item #2
												</a>
										</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
										<div class="panel-body">
												Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
										</div>
								</div>
						</div>
						<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
										<h4 class="panel-title">
												<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
														Collapsible Group Item #3
												</a>
										</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
										<div class="panel-body">
												Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
										</div>
								</div>
						</div>
				</div>
		</section>
		<section class='baker container-fluid'>
				<div class='container'>
						<h5>帐号注册</h5>
					<form id='register' class="form-horizontal" role="form" method="POST"  action="{{ url('/auth/register') }}">
						<input type="hidden" name="_token" value="{{ csrf_token() }}">

						<div id='phone' class="form-group has-feedback">
							<label class="col-md-4 control-label">手机号</label>
							<div class="col-md-3">
								<input type="text" class="form-control" name="phone" placeholder='手机号(必填)' />
								<span class='glyphicon glyphicon-ok form-control-feedback sr-only'></span>
								<span class='glyphicon glyphicon-error form-control-feedback sr-only'></span>
							</div>
								<a  id='sendSms' href='javascript:sendSms()' class='btn btn-default'>获取验证码</a>
							<div class='col-md-2'>
								<input  type='text' class='form-control' name='verifyCode' placeholder='验证码'></input>
							</div>

						</div>

						<div id='name' class="form-group has-feedback">
							<label class="col-md-4 control-label">用户名</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="name" placeholder='用户名(必须)'>
								<span class='glyphicon glyphicon-ok form-control-feedback sr-only'></span>
								<span class='glyphicon glyphicon-error form-control-feedback sr-only'></span>

							</div>
						</div>


						<div id='password' class="form-group has-feedback">
							<label class="col-md-4 control-label">密码</label>
							<div class="col-md-6">
								<input type="password" class="form-control" name="password" placeholder='密码(必须)'>
								<span class='glyphicon glyphicon-ok form-control-feedback sr-only'></span>
								<span class='glyphicon glyphicon-error form-control-feedback sr-only'></span>

							</div>
						</div>

						<div id='confirmPassword' class="form-group has-feedback">
							<label class="col-md-4 control-label">确认密码</label>
							<div class="col-md-6">
								<input type="password" class="form-control" name="confirmPassword" placeholder='确认密码'>
								<span class='glyphicon glyphicon-ok form-control-feedback sr-only'></span>
								<span class='glyphicon glyphicon-error form-control-feedback sr-only'></span>

							</div>
						</div>

						<div class="form-group">
							<div class="col-md-6 col-md-offset-4">
								<button type="submit" class="btn btn-primary">
										注册
								</button>
							</div>
						</div>
					</form>
				</div>
</section>
@endsection

