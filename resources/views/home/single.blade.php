<?php
/**
* single 文章页
* @author Tinty
* @version 1.0
*/
?>
@extends('layout')
@section('title')
名称 | 威尔厨房
@endsection
@section('header')
<section class='background-normal'>
</section>
@endsection
@section('article')
<div class='single container'>
		<div class='top-bar container'>
				<ol class="breadcrumb col-md-9">
						<li><a href="#">首页</a></li>
						<li><a href="#">菜品</a></li>
						<li class="active"><?php $food[0]->name;?></li>
				</ol>
				<div class='col-md-3 text-right'>
						<a  href='#'><span class='fui-heart' data-toggle='tooltip' data-placement='left' title='收藏'></span></a>&nbsp
						<a id='add-cart' val='11' href='#'><span class='add-cart fui-plus' data-toggle='tooltip' data-placement='left' title='加入购物车'></span></a>
				</div>
		</div>
		<section class='abel container'>
				<?php foreach($avatar as $value) {?>
				<div class='col-md-3'>
				<a id='phzoom' href='<?php echo $value;?>'><img src='<?php echo $value;?>' /></a>
				</div>
				<?php }?>
		</section>
		<section class='baker container'>
				<h6>制作过程(菜谱)</span></h6>
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
<?php foreach($food as $key=>$value){?>
						<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse<?php  echo $key;?>" aria-expanded="true" aria-controls="collapseOne">
<?php echo $value->step;?>
												</a>
										</h4>
								</div>
								<div id="collapse<?php echo $key;?>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body">
<?php echo $value->bookdetail;?>
										</div>
								</div>
						</div>
<?php }?>
		</section>
		<section class='charlie container'>
				<h6>视频教程</h6>
				<div class="embed-responsive embed-responsive-16by9">
<?php echo $food[0]->video;?>
				</div>
		</section>
		<section class='dog container'>
				<h5 class='text-center'>查看评论</h5>
		</section>
</div>
@endsection
