<form method='post' action='/food' onsubmit='return postFood()'>
{!! csrf_field() !!}
<div class='form-group'>
		<label for='name'>菜名:</label>
		<input class='form-control' type='text' name='name' placeholder='菜名' />
</div>
<div class='form-group'>
		<label for='name'>价格:</label>
		<input class='form-control' type='text' name='price' placeholder='价格' />
</div>
<div class='form-group'>
		<label for='name'>图片(用逗号分割):</label>
		<input class='form-control' type='text' name='avatar' placeholder='图片' />
</div>
<div class='form-group'>
		<label for='name'>视频:</label>
		<input class='form-control' type='text' name='video' placeholder='视频' />
</div>
<div class='form-group'>
		<label for='name'>详细:</label>
		<textarea class='form-control' type='text' name='detail' placeholder='详细' ></textarea>
</div>

<div class='form-group'>
		<label for='name'>分类:</label>
<?php foreach($category as $key=>$value){?>
<input type='checkbox' name='category' value='<?php echo $value->id;?>'><?php echo $value->name;?></input>
<?php }?>
</div>
<div class='form-group'>
		<input class='btn btn-primary' type='submit' value='提交'/>
</div>

</form>
<table class='table table-striped table-bordered'>
		<tr>
				<td>序号</td>
				<td>标题</td>
				<td>操作</td>
		</tr>
		<?php foreach($food as $key=>$value){?>
		<tr>
				<td>
						<?php 
echo $value->id;
						?>
				</td>
				<td><?php echo $value->name;?></td> 
<td>
<a class='btn btn-primary' href='#'><span class='fui-new'></span></a>
<a class='btn btn-default' href='#'><span class='fui-trash'></span></a>
</td>
		</tr>
		<?php }?>
</table>

