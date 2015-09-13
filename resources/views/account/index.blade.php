<?php
/**
* index
* @author Tinty
* @version 1.0
*/
?>
@extends('layout')
@section('title')
威尔厨房 | description
@endsection
@section('header')
<section class='background-normal'>
</section>
@endsection
@section('article')
<div class='account'>
		<section class='container abel'>
				<div class='col-md-3'>
						<figure>
								<img src='/testpic/8.jpg' />
								<figcaption class='text-center'>
								<h5>nickname</h5>
								<a href='#' class='btn btn-default'><span>个人设定</span></a>
								</figcaption>
						</figure>
				</div>
				<div class='col-md-9'>
						<h5>订单详情</h5>
						<table class='table table-striped table-bordered'>
								<tr>
										<td>编号</td>
										<td>订单明细</td>
										<td>价格</td>
										<td>操作</td>
								</tr>
								<tr>
										<td>1111</td>
										<td><a href='#'>xxfetssggeee</a></td>
										<td>xdegewer</td>
										<td>
												<a href='#' class='btn btn-primary'><span>加入购物车</span>
										</td>
								</tr>
						</table>
				</div>
		</section>
</div>

@endsection
@section('cart')
<a id='cart' href='#' class='glyphicon glyphicon-shopping-cart'><span class='badge'>22</span></a>
@endsection

