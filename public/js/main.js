/**
 *main javascript
 *@author Tinty
 *@version 1.0
 */
$(window).load(function(){
		$('#loding').fadeOut();
})
/**
 * loding 动画
 */
function loding(){
		$('#loding').fadeIn();
}
/**
 * tooltip
 */
$(function () {
		  $('[data-toggle="tooltip"]').tooltip();
})
/**
 * 购物车动画
 */
$(document).on('click','#add-cart',function(){
//		var foodId=$(this).attr('val');
		$(this).parents('figure').append('<img id=\'food\' src=\'image/logo_circle.png\' />');
		var left=$('#cart').offset().left-$(this).parents('figure').offset().left;//获取添加按钮与购物车图标之间的宽度
		var top=$('#cart').offset().top-$('#food').offset().top;
		console.log('cartleft:'+$('#cart').offset().left);
		console.log('carttop:'+$('#cart').offset().top);
		console.log('addleft:'+$(this).parents('figure').offset().left);
		console.log('addtop:'+$(this).parents('figure').offset().top);
		console.log('midleft:'+left);
		console.log('midtop:'+top);
		$('#food').css({'width':'180px','height':'180px','-webkit-border-radius':'50%','z-index':'998'});
		$('#food').animate({
				left:left,
				top:top,
				height:'20px',
				width:'20px'
		},2000,function(){$('#food').remove()});
		return false;
})
/**
 *
 * 视差滚动
 */
$(window).scroll(function(){
		var height=$(window).scrollTop();//滚动条当前滚动的距离
		$('.background').css({
				'background-position-y':-height/20+'px'
		});
		if(height>0){
				$('nav').addClass('nav-abel');
				$('nav').css({'padding':'0 0','background-color':'#000'});
		}else{
				$('nav').removeClass('nav-abel');
				$('nav').css({'padding':'10px 0','background-color':'none'});
		}
})

/**
 * 响应式背景图片 interactive_bg.js
 */
$(".bg").interactive_bg({
		strength: 25,
		scale: 1.05,
		animationSpeed: "100ms",
		contain: true,
		wrapContent: false
});
$(document).ready(function(){
		$(".bg").interactive_bg(); // function call
});
/**
//change background size on window resize
$(window).resize(function() {
		$(".bg > .ibg-bg").css({
				width: $(window).outerWidth(),
				height: $(window).outerHeight()
		})
})
**/
