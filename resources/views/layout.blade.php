<?php
/**
 * Layout
 * @author Tinty
 * @version 1.0
 */
?>
<!DOCTYPE html>
<html lang='zh-CN'>
		<head>
				<meta charset='utf-8'/>
				<meta http-equiv="X-UA-Compatible" content="IE=Edge">
				<meta name='keywords'></meta>
				<meta name='description'></meta>
				<title>@yield('title')</title>
				<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
				<link rel="stylesheet" href="css/flat-ui.min.css">
				<link rel='stylesheet' href='/css/style.css' type='text/css' />

				<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

				<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
				<script type='text/javascript' src='js/jquery.interactive_bg.js'></script>
				<script type='text/javascript' src='js/main.js'></script>
		</head>
		<body>
						<div id='loding'>
								<img src='image/loding.gif' />
						</div>
				<nav class="navbar navbar-inverse navbar-fixed-top">
						<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
										<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
												<span class="sr-only">Toggle navigation</span>
												<span class="icon-bar"></span>
												<span class="icon-bar"></span>
												<span class="icon-bar"></span>
										</button>
										<a class="navbar-brand" href="#"><img src='image/logo_small_offical.png' /></a>
								</div>

								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
										<ul class="nav navbar-nav">
												<li><a href="#">餐饮 <span class="sr-only">(current)</span></a></li>
												<li><a href="#">其他</a></li>
												<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">分类 <span class="caret"></span></a>
														<ul class="dropdown-menu">
																<h6 class='text-center'><a href='#'>食材</a></h6>
																<li><a href="#">猪肉</a></li>
																<li><a href="#">羊肉</a></li>
																<li><a href="#">鸡肉</a></li>
																<li><a href="#">鱼肉</a></li>
																<li><a href="#">蔬菜</a></li>
																<li><a href="#">鲜果</a></li>
																<li><a href="#">虾</a></li>
																<li><a href="#">杂粮</a></li>
																<li><a href="#">更多</a></li>
																<div class='clear-both'></div>
																<h6 class='text-center'><a href='#'>菜式</a></h6>
																<li><a href="#">家常菜</a></li>
																<li><a href="#">下饭菜</a></li>
																<li><a href="#">甜品</a></li>
																<li><a href="#">私家菜</a></li>
																<li><a href="#">凉菜</a></li>
																<li><a href="#">豆制品</a></li>
																<li><a href="#">煲汤</a></li>
																<li><a href="#">更多</a></li>
																<div class='clear-both'></div>
																<h6 class='text-center'><a href='#'>场景</a></h6>
																<li><a href="#">两人世界</a></li>
																<li><a href="#">朋友聚餐</a></li>
																<li><a href="#">一家三口</a></li>
																<li><a href="#">单身贵族</a></li>
																<li><a href="#">宵夜</a></li>
																<li><a href="#">更多</a></li>
														</ul>
												</li>
										</ul>
										<ul class="nav navbar-nav navbar-right">
												<li><a href="#">注册</a></li>
												<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">用户中心 <span class="caret"></span></a>
														<ul class="dropdown-menu">
																<li><a href="#">购物车</a></li>
																<li><a href="#">订单</a></li>
																<li><a href="#">地址维护</a></li>
																<li role="separator" class="divider"></li>
																<li><a href="#">退出</a></li>
														</ul>
												</li>
										</ul>
								</div><!-- /.navbar-collapse -->
						</div><!-- /.container-fluid -->
				</nav>
				<header>
						@yield('header')
				</header>
				<article>
						@yield('article')
						<section class='cart'>
						@yield('cart')
						</section>
				</article>
				<footer>
						<div class='container'>
								<div class='col-sm-3 abel'>
										<img src='image/logo_circle.png' />
								</div>
								<div class='col-sm-2 baker'>
										<ul>
												<li><a href='#'>关于威尔</a></li>
												<li><a href='#'>加入威尔</a></li>
												<li><a href='#'>网站声明</a></li>
												<li><a href='#'>商务合作</a></li>
										</ul>
								</div>
								<div class='col-sm-3 dog'>
								</div>
								<div class='col-sm-4 charlie'>
										<figure>
												<img src='testpic/4.jpg' />
												<figcaption>
														<p class='text-center'>IOS下载</p>
												</figcaption>
										</figure>
										<figure>
												<img src='testpic/5.jpg' />
												<figcaption>
														<p class='text-center'>ANDROID下载</p>
												</figcaption>
										</figure>
								</div>
						</div>
				</footer>
		</body>
</html>
