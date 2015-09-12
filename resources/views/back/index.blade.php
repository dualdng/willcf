<?php
/**
* background index
* @author Tinty
* @version 1.0
*/
?>
@extends('layout')
@section('title')
后台 | 威尔厨房
@endsection
@section('header')
<section class='background-normal'>
</section>
@endsection
@section('article')
<section class='container'>
		<h5 class='text-center'>管理</h5>
<div class='list-group col-sm-2'>
		<a class='list-group-item disabled'>网站管理</a>
		<a class='list-group-item' href='javascript:food()' >菜品</a>
		<a class='list-group-item' href='javascript:category()'>分类</a>
		<a class='list-group-item' href='javascript:cookbook()'>食谱</a>
		<a class='list-group-item'>其他</a>
		<a class='list-group-item' href='/logout' >登出</a>
		<a class='list-group-item' href='/dashboard/clearCache'>缓存</a>
</div>
<div id='editPlace' class='col-sm-7'>
</div>
</section>
@endsection
