<?php
/**
* login page
* @author Tinty
* @version 1.0
*/
?>
@extends('layout')
@section('title')
登录 | 威尔厨房
@endsection
@section('header')
<section class='background-normal'>
</section>
@endsection
@section('article')
<div class="login container-fluid">
		<div class="login-screen container">
				<form class='login-form' method="POST" action="/auth/login">
						{!! csrf_field() !!}
						<div class="form-group">
								<input type="text" name='phone' class="form-control login-field" value="{{ old('phone') }}" placeholder="Enter your name" id="login-name" />
								<label class="login-field-icon fui-user" for="login-name"></label>
						</div>
						<div class="form-group">
								<input type="password" name='password' id='password' class="form-control login-field" value="" placeholder="Password" />
								<label class="login-field-icon fui-lock" for="login-pass"></label>
						</div>

						<button class="btn btn-primary btn-lg btn-block" type='submit'>登录</button>
						<input type="checkbox" name='remember' id="checkbox1" data-toggle="checkbox" />
						记住我
						<p class='text-center'>
						<a href='#' class='btn btn-success'>立即注册</a>&nbsp&nbsp&nbsp&nbsp<a href='#' class='btn btn-default'>忘记密码</a>
						</p>
				</form>
		</div>
</div>
@endsection
