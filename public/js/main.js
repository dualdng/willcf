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
 * phzoom 
 */
$(document).ready(function(){
		$.ajaxSetup({
				headers: {
						'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
		});
		$('a#phzoom').phzoom({
				layOpacity:0.7,     // 遮罩层不透明度应为0到1之间的某个小数, 默认0.7即为70%不透明
				layDur:300,         // 遮罩层渐显的时间, 纯数字, 单位毫秒
				animDurA:300,       // 图片从原位飞到荧幕中间的时间, 纯数字, 单位毫秒
				animDurB:300,       // 图片从小到大的变化时间, 纯数字, 单位毫秒
				navColor:'#cf0',    // 上/下一张按钮的文本颜色, 需要引号
				capColor:'#cf0',    // 大图底部标题与索引的文本颜色, 需要引号
				prevText:'Prev',    // 上一张按钮的显示文本, 需要引号
				nextText:'Next',    // 下一张按钮的显示文本, 需要引号
				limitWidth:false,   // 默认为false, 大图使用原始宽度; 若设为true, 特大图将不会宽于窗口
				returnOrigin:true   // 默认为true, 此时返回初始对象集合; 若设为false, 则仅返回包含img元素的对象集合
		})
		/**
		 * 获取导航
		 */
		$.ajax({
				url:'/nav',
				type:'GET',
				success:function(data){
						$('nav').append(data);
				}
		})
		/**
		 * get cart
		 */
		$.ajax({
				url:'/cart',
				type:'GET',
				success:function(data){
						$('.shopping-cart').append(data);
				}
		})
		/**
		 * 地区选择
		 */

})
/**
 * 购物车动画 右下角
 */
/**
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
**/
/**
 * 购物车动画 左下角
 */
$(document).on('click','#add-cart',function(){
		var foodId=$(this).attr('foodId');
		var foodName=$(this).attr('foodName');
		var foodPrice=parseFloat($(this).attr('foodPrice'));
		var foodAvatar=$(this).attr('foodAvatar');
		var price=parseFloat($('#checkout span').text());
		var content='';
		content+='<li id=\'food'+foodId+'\' class=\'container-fluid\'>';
		content+='<div class=\'col-sm-6\'>';
		content+='<a href=\'javascript:deleteFood('+foodId+','+foodPrice+')\'><span class=\'fui-cross\'></span></a>';
		content+=foodName;
		content+='-</div>';
		content+='<div class=\'col-sm-3\'>';
		content+='<a href=\'javascript:removeFood('+foodId+','+foodPrice+')\'><span class=\'glyphicon glyphicon-minus\'></span></a>&nbsp<span id=\'foodAmount'+foodId+'\' >1</span>&nbsp<a href=\'javascript:addFood('+foodId+','+foodPrice+')\'><span class=\'glyphicon glyphicon-plus\'></span></a>';
		content+='</div>';
		content+='-<div class=\'col-sm-2\'>';
		content+='<span id=\'price'+foodId+'\'>'+foodPrice+'</span>';
		content+='</div>';
		content+='</li>';
		price=(foodPrice+price).toFixed(2);
		$('#food'+foodId).append('<img id=\'food\' src=\''+foodAvatar+'\' />');
		var left=$('.shopping-cart').offset().left;//获取添加按钮与购物车图标之间的宽度
		var top=$(this).offset().top-$('nav').offset().top;
		$('#food').css({'width':'180px','height':'180px','-webkit-border-radius':'50%','z-index':'9998','display':'inline'});
		$('#food').animate({
				left:left,
				top:-top-50,
				height:'20px',
				width:'20px'
		},
		1000,
		function(){
				$('#food').remove();
				$('#shopping-cart').append(content);
				$('#checkout span').text(price);
		}
		);
		setCartCookie();
		return false;
})
function deleteFood(id,price){
		var nowPrice=parseFloat($('#checkout span').text());
		console.log(id);
		price=nowPrice-parseFloat(price);
		console.log(nowPrice+'---'+price);
		$('li#food'+id).remove();
		console.log('#food'+id);
		$('#checkout span').text(price.toFixed(2));
		setCartCookie();
		return false;
}
function addFood(id,price){
		var nowPrice=parseFloat($('#checkout span').text());
		var amount=parseFloat($('span#foodAmount'+id).text());
		amount+=1;
		var foodPrice=parseFloat($('span#price'+id).text());
		$('span#foodAmount'+id).text(amount);
		$('span#price'+id).text((foodPrice+parseFloat(price)).toFixed(2));
		$('#checkout span').text((nowPrice+parseFloat(price)).toFixed(2));
		setCartCookie();
		return false;
}
function removeFood(id,price){
		var nowPrice=parseFloat($('#checkout span').text());
		var amount=parseFloat($('span#foodAmount'+id).text());
		amount-=1;
		var foodPrice=parseFloat($('span#price'+id).text());
		if(amount==0){
				deleteFood(id,price);
		}else{
				$('span#foodAmount'+id).text(amount);
		$('span#price'+id).text((foodPrice-parseFloat(price)).toFixed(2));
		$('#checkout span').text((nowPrice-parseFloat(price)).toFixed(2));
		}
		setCartCookie();
		return false;
}
/**
 * checkout
 */
function checkout()
{
		var price=parseFloat($('#checkout span').text()).toFixed(2);
		var food='';
		var foodId='';
		$('#shopping-cart li').each(function(){
				food+=','+$(this).text();
		});
		$('#shopping-cart li').each(function(){
				foodId+=','+$(this).attr('id');
		});
		console.log(food);
		console.log(foodId);
		$.ajax({
				url:'/checkout',
				type:'GET',
				data:{"food":food,"foodId":foodId,"price":price},
				success:function(data){
						$('body').append(data);
				}
		})

}
/**
 * store cart to cookie and mysql
 */
function setCartCookie(){
		var parastr=$('.shopping-cart').html();
		$.ajax({
				url:'/setCartCookie',
				type:'POST',
				data:{"cart":parastr},
				success:function(data){
						if(data!=1){
								alert('error');
						}
				}
		})

}

/**function addCart(name,id,avatar){
		$(this).parents('figure').append('<img id=\'food\' src=\''+avatar+'\' />');
		var left=$('.shopping-cart').offset().left;//获取添加按钮与购物车图标之间的宽度
		var top=-($(this).offset().top-$('nav').offset().top);
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

}
**/

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
 * 购物车
 */
function cart() {
		var a=$('#cart').attr('value');
		if(a=='0') {
				$('.shopping-cart').css({'width':'400px'});
				$('#cart').attr('value','1');
				$('body').css({'margin-right':'399px'});
		}else{
				$('.shopping-cart').css({'width':'0'});
				$('#cart').attr('value','0');
				$('body').css({'margin-right':'0'});
		}
}
/**
 * 发送手机验证码
 * @
 * @
 */
function sendSms(){
		var phone=$('input[name=\'phone\']').val();
		var url='/auth/sendSms';
		$.ajax({
				url:url,
				type:'GET',
				data:{"phone":phone},
				success:function(data) {
						if(data==1) {
								$('#sendSms').text('3分钟后重新获取').addClass('disabled');
								setTimeout(function(){
										$('#sendSms').text('获取验证码').removeClass('disabled');
								},180000);
						}else{
								alert('error');
						}

				}
		})
		return false;
}
/**
 * 注册表单实时验证
 */
$(document).on('change','#register input',function(){
		var selector=$(this).attr('name');
		var parastr=$(this).val();
		switch(selector){
				case 'name':
						$.ajax({
								url:'/auth/verify',
								type:'GET',
								data:{"name":parastr},
								success:function(data) {
										if(data==1) {
												$('#name').removeClass('has-success');
												$('#name').addClass('has-error');
												$('#name input').val('').attr('placeholder','昵称已被占用');
										}else{
												$('#name').removeClass('has-error');
												$('#name').addClass('has-success');

										}
								}
						})
						break;
				case 'verifyCode':
						$.ajax({
								url:'/auth/verifyPhone',
								type:'GET',
								data:{"verifyCode":parastr},
								success:function(data) {
										if(data==1) {
												$('#name').removeClass('has-success');
												$('#name').addClass('has-error');
												$('#name input').val('').attr('placeholder','验证码错误');
										}else{
												$('#name').removeClass('has-error');
												$('#name').addClass('has-success');

										}
								}
						})
						break;
				case 'password':
						$('#password').removeClass('has-error');
						$('#password').addClass('has-success');
						break;
						$('#password').removeClass('has-success');
						$('#password').addClass('has-error');
						$('#password input').val('').attr('placeholder','密码格式不正确');
				case 'confirmPassword':
						var password=$('input[name=\'password\']').val();
						if(parastr!=password)
						{
								$('#confirmPassword').removeClass('has-success');
								$('#confirmPassword').addClass('has-error');
								$('#confirmPassword input').val('').attr('placeholder','与密码不一致');
						}else{
												$('#confirmPassword').removeClass('has-error');
												$('#confirmPassword').addClass('has-success');

								}
						break;
		}
})
/**
 * background get category
 */
function food()
{
		var url='/food';
		$.ajax({
				url:url,
				type:'GET',
				success:function(data){
						$('#editPlace').empty();
						$('#editPlace').append(data);
				}
		})
		return false;
}
function postFood()
{
		var url='/food';
		var name=$('input[name=\'name\']').val();
		var avatar=$('input[name=\'avatar\']').val();
		var video=$('input[name=\'video\']').val();
		var detail=$('textarea[name=\'detail\']').val();
		var price=$('input[name=\'price\']').val();
		var category='';
		$('input[name=\'category\']:checked').each(function(){
				category+=','+$(this).val();
		});
		var param={"name":name,"avatar":avatar,"video":video,"detail":detail,"category":category,"price":price}
		$.ajax({
				url:url,
				type:'POST',
				data:param,
				success:function(data){
						if(data==1){
								alert('success');
						}else{
								alert('error');
						}
				}	
		})
		return false;
}

function category()
{
		var url='/category';
		$.ajax({
				url:url,
				type:'GET',
				success:function(data){
						$('#editPlace').empty();
						$('#editPlace').append(data);
				}
		})
		return false;
}
function cookbook()
{
		var url='/cookbook';
		$.ajax({
				url:url,
				type:'GET',
				success:function(data){
						$('#editPlace').empty();
						$('#editPlace').append(data);
				}
		})
		return false;
}
function postCookbook()
{
		var url='/cookbook';
		var name=$('input[name=\'name\']').val();
		var category='';
		$('input[name=\'category\']:checked').each(function(){
				category+=','+$(this).val();
		});
		var param={"name":name,"category":category}
		$.ajax({
				url:url,
				type:'POST',
				data:param,
				success:function(data){
						if(data==1){
								alert('success');
						}else{
								alert('error');
						}
				}	
		})
		return false;
}
function bookdetail(id)
{
		var url='/bookdetail?id='+id;
		$.ajax({
				url:url,
				type:'GET',
				success:function(data){
						$('#editPlace').empty();
						$('#editPlace').append(data);
				}
		})
		return false;
}
/**
 * imgUpload/
 */
function imgUpload()
{
		var formData=new FormData;
		formData.append('avatar',$('input[name=\'avatar\']')[0].files[0]);
		var url=$('#avatarForm').attr('action');
		$.ajax({
				url:url,
				type:'POST',
				data:formData,
				processData:false,/**重要**/
				contentType:false,/**重要**/
				success:function(data){
						$('#avatar').attr('src',data).css({'width':'200px','height':'200px'});
				}

		})
		return false;
}
/**
 * emojiUpload
 */
function emojiUpload()
{
		var h=$('.chatContent')[0].scrollHeight;
		var formData=new FormData;
		formData.append('userId',$('input[name=\'id\']').val());
		formData.append('name',$('input[name=\'name\']').val());
		formData.append('avatar',$('input[name=\'avatar\']').val());
		formData.append('emoji',$('input[name=\'emoji\']')[0].files[0]);
		var url=$('#emoji').attr('action');
		$('#emoji input[name=\'submit\']').val('上传中').addClass('disabled');
		$.ajax({
				url:url,
				type:'POST',
				data:formData,
				processData:false,/**重要**/
				contentType:false,/**重要**/
				success:function(data){
						$('#chatContent').append(data);
						$('.chatContent').animate({scrollTop:h},1000);
						$('#myModal').modal('hide');
						$('#emoji input[name=\'submit\']').val('提交').removeClass('disabled');
				}

		})
		return false;
}
/**
 * albumImgUpload
 */
function albumImgUpload()
{
		var formData=new FormData;
		formData.append('img',$('input[name=\'img\']')[0].files[0]);
		formData.append('albumId',$('input[name=\'albumId\']').val());
		var url=$('#newImg').attr('action');
		$.ajax({
				url:url,
				type:'POST',
				data:formData,
				processData:false,/**重要**/
				contentType:false,/**重要**/
				success:function(data){
						$('#abel').modal('hide');
						$('#newImgArea').append(data);
				}

		})
		return false;
}


