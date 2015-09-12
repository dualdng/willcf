<?php
/**
 * nav 
 * @author Tinty
 * @version 1.0
 */
?>
<div class="container-fluid">
<!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#"><img src='<?php $_SERVER['SERVER_NAME']?>/image/logo_small_offical.png' /></a>
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
				<?php if($isLogin){?>
				<li><a href="<?php $_SERVER['SERVER_NAME']?>/auth/logout">退出</a></li>
				<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">用户中心 <span class="caret"></span></a>
						<ul class="dropdown-menu">
								<li><a href="#">我的订单</a></li>
								<li><a href="#">地址维护</a></li>
								<li><a href="#"></a></li>
								<li role="separator" class="divider"></li>
						</ul>
				</li>
				<?php }else{?>
				<li><a href="<?php $_SERVER['SERVER_NAME']?>/auth/login">登录</a></li>
				<?php }?>
				<li><a id='cart' href="javascript:void(0)" onclick='cart()' value='0'>购物车&nbsp</a></li>
		</ul>
</div><!-- /.navbar-collapse -->
</div><!-- /.container-fluid -->

