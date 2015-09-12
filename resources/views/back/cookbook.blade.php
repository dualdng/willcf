
<form method='post' action='/cookbook' onsubmit='return postCookbook()'>
{!! csrf_field() !!}
<div class='form-group'>
		<label for='name'>菜谱名称:</label>
		<input class='form-control' type='text' name='name' placeholder='菜谱名称' />
</div>
<div class='form-group'>
		<label for='name'>分类:</label>
<?php foreach($category as $key=>$value){?>
<input type='checkbox' name='category' value='<?php echo $value->id;?>'><?php echo $value->name;?></input>
<?php }?>
</div>
<div class='form-group'>
		<input type='submit' value='提交'/>
</div>

</form>
<table class='table table-striped table-bordered'>
		<tr>
				<td>序号</td>
				<td>标题</td>
				<td>操作</td>
		</tr>
		<?php foreach($cookbook as $key=>$value){?>
		<tr>
				<td>
						<?php 
echo $value->id;
						?>
				</td>
				<td><?php echo $value->name;?></td> 
<td>
<a class='btn btn-primary' href='javascript:bookdetail(<?php echo $value->id;?>)'><span class='fui-new'></span></a>
<a class='btn btn-default' href='#'><span class='fui-trash'></span></a>
</td>
		</tr>
		<?php }?>
</table>

