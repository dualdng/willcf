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
<section class='background-index'>
		<figure class='container'>
				<h6>开放 | 卫生 | 快捷 | 美味</h6>
				<img src='image/logo_offical_sm.png' />
				<figcaption>
				<br />
				<?php if(!$isLogin){?>
				<a href='<?php $_SERVER['SERVER_NAME']?>/auth/register' class='btn btn-success'>立即注册</a>&nbsp&nbsp&nbsp&nbsp
				<?php }?>
				<a href='#' class='btn btn-default'>快速订餐</a>
				</figcaption>
		</figure>

</section>
@endsection
@section('article')
<div class='index'>
		<section class='abel container'>
				<h3 class='text-center'>周一精选</h3>
				<?php foreach($abel as $key=>$value){?>
				<figure class='col-sm-3'>
						<img src='<?php echo $value->avatar;?>'/>
						<figcaption>
						<span><?php echo $value->name;?></span>
						<a id='add-cart' foodId='<?php echo $value->id;?>' foodName='<?php echo $value->name;?>' foodPrice='<?php echo $value->price*$value->discount;?>' foodAvatar='<?php echo $value->avatar;?>' href='#'><span class='add-cart fui-plus'>&nbsp&nbsp&nbsp</span></a>
						</figcaption>
<div id='food<?php echo $value->id;?>'></div>
				</figure>
				<?php }?>
		</section>

		<section class='baker container-fluid'>
				<h3 class='text-center'>主菜单</h3>
				<figure class='col-sm-4'>
						<img id='food-img-11' src='<?php echo $baker[0]->avatar;?>'/>
						<figcaption>
						<span><?php echo $baker[0]->name;?></span><br />
						<span>这是一段测试文字</span>
						<a id='add-cart' foodId='<?php echo $baker[0]->id;?>' foodName='<?php echo $baker[0]->name;?>' foodPrice='<?php echo $baker[0]->price;?>' foodAvatar='<?php echo $baker[0]->avatar;?>' href='#'><span class='add-cart fui-plus'>&nbsp&nbsp&nbsp</span></a>
						</figcaption>
<div id='food<?php echo $baker[0]->id;?>'></div>
				</figure>
				<?php
				/**
				* echo main article
				*/
				foreach($baker as $key=>$value){
				if($key>0&&$key<13){
				?>
				<figure class='col-sm-2'>
						<img src='<?php echo $value->avatar;?>'/>
						<figcaption>
						<span><?php echo $value->name;?></span><br />
						<span>这是一段测试文字</span>
						<a id='add-cart' foodId='<?php echo $value->id;?>' foodName='<?php echo $value->name;?>' foodPrice='<?php echo $value->price;?>' foodAvatar='<?php echo $value->avatar;?>' href='#'><span class='add-cart fui-plus'>&nbsp&nbsp&nbsp</span></a>
						</figcaption>
<div id='food<?php echo $value->id;?>'></div>
				</figure>
				<?php }?>
				<?php }?>
				<figure class='col-sm-4'>
						<img src='testpic/more.jpg'/>
						<figcaption>
						<span>测试</span><br />
						<span>这是一段测试文字</span>
						</figcaption>
				</figure>
		</section>

		<div class='background-sm container-fluid'>
				<section class='charlie container'>
						<h3 class='text-center'>特色营养餐</h5>
						<div class='col-sm-6'>
								<?php for($i=0;$i<=2;$i++){?>
								<div class="media">
										<div class="media-left media-middle">
												<a href="#">
														<img class="media-object" src="<?php echo $charlie[$i]->avatar;?>">
												</a>
										</div>
										<div class="media-body">
												<h6 class="media-heading"><?php echo $charlie[$i]->name;?></h6>
												<span><?php echo $charlie[$i]->detail;?></span>
						<a id='add-cart' foodId='<?php echo $value->id;?>' foodName='<?php echo $value->name;?>' foodPrice='<?php echo $value->price;?>' foodAvatar='<?php echo $value->avatar;?>' href='#'><span class='add-cart fui-plus'>&nbsp&nbsp&nbsp</span></a>
										</div>
								</div>
								<?php }?>
						</div>
						<div class='col-sm-6'>
								<?php for($i=3;$i<=5;$i++){?>
								<div class="media">
										<div class="media-left media-middle">
												<a href="#">
														<img class="media-object" src="<?php echo $charlie[$i]->avatar;?>">
												</a>
										</div>
										<div class="media-body">
												<h6 class="media-heading"><?php echo $charlie[$i]->name;?></h6>
												<span><?php echo $charlie[$i]->detail;?></span>
						<a id='add-cart' foodId='<?php echo $value->id;?>' foodName='<?php echo $value->name;?>' foodPrice='<?php echo $value->price;?>' foodAvatar='<?php echo $value->avatar;?>' href='#'><span class='add-cart fui-plus'>&nbsp&nbsp&nbsp</span></a>
										</div>
								</div>
								<?php }?>
						</div>
				</section>
		</div>
</div>
@endsection
@section('cart')
<a id='cart' href='#' class='glyphicon glyphicon-shopping-cart'><span class='badge'>22</span></a>
@endsection

