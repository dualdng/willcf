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
						<li><a href="#">Home</a></li>
						<li><a href="#">Library</a></li>
						<li class="active">Data</li>
				</ol>
				<div class='col-md-3 text-right'>
						<a  href='#'><span class='fui-heart' data-toggle='tooltip' data-placement='left' title='收藏'></span></a>&nbsp
						<a id='add-cart' val='11' href='#'><span class='add-cart fui-plus' data-toggle='tooltip' data-placement='left' title='加入购物车'></span></a>
				</div>
		</div>
		<section class='abel container'>
				<?php for($i=0;$i<=5;$i++) {?>
				<div class='col-md-3'>
						<img src='testpic/11.jpg' />
				</div>
				<?php }?>
		</section>
		<section class='baker container'>
				<h6>制作过程(菜谱)</span></h6>
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
		<section class='charlie container'>
				<h6>视频教程</h6>
				<div class="embed-responsive embed-responsive-16by9">
						  <iframe class="embed-responsive-item" src="http://player.youku.com/player.php/sid/XMTMxNjMxNDYzNg==/v.swf"></iframe>
				</div>
		</section>
		<section class='dog container'>
				<h5 class='text-center'>查看评论</h5>
		</section>
</div>
@endsection
