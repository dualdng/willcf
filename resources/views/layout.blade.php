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
<meta name="csrf-token" content="{{ csrf_token() }}">
				<title>@yield('title')</title>
				<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
				<link rel="stylesheet" href="/css/flat-ui.min.css">
				<link rel="stylesheet" href="<?php $_SERVER['SERVER_NAME']?>/phzoom/phzoom.css">
				<link rel='stylesheet' href='/css/style.css' type='text/css' />
				<script src="/js/jquery-2.1.4.min.js"></script>
				<script src="/bootstrap/js/bootstrap.min.js"></script>
				<script type='text/javascript' src='/phzoom/phzoom.js'></script>
				<script type='text/javascript' src='/js/main.js'></script>
		</head>
		<body>
				<div id='loding'>
						<img src='<?php $_SERVER['SERVER_NAME']?>/image/loding.gif' />
				</div>
				<nav class="navbar navbar-inverse navbar-fixed-top">
				</nav>
				<header>
						@yield('header')
				</header>
				<article>
						@yield('article')
				</article>
				<div class='shopping-cart'>
				</div>
				<footer>
						<div class='container'>
								<div class='col-sm-3 abel'>
										<img src='<?php $_SERVER['SERVER_NAME']?>/image/logo_circle.png' />
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
												<img src='<?php $_SERVER['SERVER_NAME']?>/testpic/4.jpg' />
												<figcaption>
														<p class='text-center'>IOS下载</p>
												</figcaption>
										</figure>
										<figure>
												<img src='<?php $_SERVER['SERVER_NAME']?>/testpic/5.jpg' />
												<figcaption>
														<p class='text-center'>ANDROID下载</p>
												</figcaption>
										</figure>
								</div>
						</div>
				</footer>
		</body>
</html>
