<?php
/**
* 菜单页面 
* @author Tinty
* @version 1.0
*/
?>
@extends('layout')
@section('title')
菜单 | 威尔厨房 
@endsection
@section('header')
<section class='background-normal'>
</section>
@endsection
@section('article')
<div class='menu'>
		<section class='abel container'>
				<div class='top-bar'>
						<ol class="breadcrumb col-md-9">
								<li><a href="#">Home</a></li>
								<li><a href="#">Library</a></li>
								<li class="active">Data</li>
						</ol>
						<div class='input-group col-md-3'>
								<input class='form-control' type='text' placeholder='搜索...' />
								<span class='input-group-btn'><button class='btn btn-primary' type='button'><span class='fui-search'></span></button></span>
						</div>
				</div>
				<?php for($i=0;$i<=9;$i++){?>
				<div class='col-md-3'>
						<figure>
								<img src='testpic/1.jpg' />
								<figcaption>
								<div class='col-sm-8'>
								<span>红烧排骨</span>
								</div>
								<div class='col-sm-4 text-right'>
										<a  href='#'><span class='fui-heart' data-toggle='tooltip' data-placement='left' title='收藏'></span></a>&nbsp
										<a id='add-cart' val='11' href='#'><span class='add-cart fui-plus' data-toggle='tooltip' data-placement='left' title='加入购物车'></span></a>
								</div>
								<span class='description'>排骨：300克；糖：20克；酱油：50ml</span>
								</figcaption>
						</figure>
				</div>
				<?php }?>
		</section>
</div>
@endsection



