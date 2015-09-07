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
				<a href='#' class='btn btn-success'>立即注册</a>&nbsp&nbsp&nbsp&nbsp<a href='#' class='btn btn-default'>快速订餐</a>
				</figcaption>
		</figure>

</section>
@endsection
@section('article')
<div class='index'>
		<section class='abel container'>
				<h3 class='text-center'>周一精选</h3>
				<figure class='col-sm-3'>
						<img src='testpic/2.jpg'/>
						<figcaption>
						<span>红烧大闸蟹,糖醋排骨，黄猛击米饭，辣子鸡</span>
						</figcaption>
				</figure>
				<figure class='col-sm-3'>
						<img src='testpic/3.jpg'/>
						<figcaption>
						<span>红烧大闸蟹,糖醋排骨，黄猛击米饭，辣子鸡</span>
						</figcaption>
				</figure>
				<figure class='col-sm-3'>
						<img src='testpic/5.jpg'/>
						<figcaption>
						<span>红烧大闸蟹,糖醋排骨，黄猛击米饭，辣子鸡</span>
						</figcaption>
				</figure>
				<figure class='col-sm-3'>
						<img src='testpic/6.jpg'/>
						<figcaption>
						<span>红烧大闸蟹,糖醋排骨，黄猛击米饭，辣子鸡</span>
						</figcaption>
				</figure>

		</section>

		<section class='baker container-fluid'>
				<h3 class='text-center'>主菜单</h3>
				<figure class='col-sm-4'>
						<img id='food-img-11' src='testpic/11.jpg'/>
						<figcaption>
						<span>测试</span><br />
						<span>这是一段测试文字</span>
						<a id='add-cart' val='11' href='#'><span class='add-cart fui-plus'>&nbsp&nbsp&nbsp</span></a>
						</figcaption>
				</figure>
				<?php
				/**
				* echo main article
				*/
				for($i=1;$i<=8;$i++) {
				?>
				<figure class='col-sm-2'>
						<img src='testpic/<?php echo $i;?>.jpg'/>
						<figcaption>
						<span>测试<?php echo $i;?></span><br />
						<span>这是一段测试文字</span>
						</figcaption>
				</figure>
				<?php
				}
				?>
				<?php
				/**
				* echo main article
				*/
				for($i=9;$i<=12;$i++) {
				?>
				<figure class='col-sm-2'>
						<img src='testpic/<?php echo $i;?>.jpg'/>
						<figcaption>
						<span>测试<?php echo $i;?></span><br />
						<span>这是一段测试文字</span>
						</figcaption>
				</figure>
				<?php
				}
				?>
				<figure class='col-sm-4'>
						<img src='testpic/more.jpg'/>
						<figcaption>
						<span>测试<?php echo $i;?></span><br />
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
														<img class="media-object" src="testpic/3.jpg">
												</a>
										</div>
										<div class="media-body">
												<h6 class="media-heading">柠檬排骨</h6>
												<span>食物提供人体能量，体力活动消耗能量。人体就好像一个银行，脂肪、碳水化合物、蛋白质等人体所必须的能量营养成分相当于资金，对存储的资金是“多多益善”。人体每天需要消耗能量，但吃多了超过人体所消耗的量，于是脂肪不断在人体囤积。而...</span>
										</div>
								</div>
								<?php }?>
						</div>
						<div class='col-sm-6'>
								<?php for($i=0;$i<=2;$i++){?>
								<div class="media">
										<div class="media-left media-middle">
												<a href="#">
														<img class="media-object" src="testpic/3.jpg">
												</a>
										</div>
										<div class="media-body">
												<h6 class="media-heading">柠檬排骨</h6>
												<span>食物提供人体能量，体力活动消耗能量。人体就好像一个银行，脂肪、碳水化合物、蛋白质等人体所必须的能量营养成分相当于资金，对存储的资金是“多多益善”。人体每天需要消耗能量，但吃多了超过人体所消耗的量，于是脂肪不断在人体囤积。而...</span>
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

