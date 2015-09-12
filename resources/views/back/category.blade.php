<form method='post' action='/category'>
						{!! csrf_field() !!}
<div class='form-group'>
		<label for='name'>分类名称:</label>
		<input class='form-control' type='text' name='name' placeholder='分类名称' />
</div>
<div class='form-group'>
		<label for='name'>分类:</label>
<select class='form-control' name='category'>
<option value='1'>食材</option>
<option value='2'>菜式</option>
<option value='3'>场景</option>
</select>
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
<?php foreach($category as $key=>$value){?>
<tr>
<td>
<?php 
switch($value->category){
case 1:
		echo '食材';
		break;
case 2:
		echo '菜式';
		break;
case 3:
		echo '场景';
		break;
}?>
</td>
<td><?php echo $value->name;?></td>
<td><a class='btn btn-primary' href='#'><span class='fui-trash'></span></a></td>
</tr>
<?php }?>
</table>

