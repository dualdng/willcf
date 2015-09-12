<form method='post' action='/bookdetail' >
{!! csrf_field() !!}
<div class='form-group'>
<input class='form-control sr-only' type='text' name='bookId' value='<?php echo $bookId;?>' placeholder='菜谱名称' />
</div>
<div class='form-group'>
		<label for='name'>步骤名:</label>
<input class='form-control' type='text' name='stepAbel' placeholder='步骤1'/>
<textarea class='form-control' name='detailAbel'></textarea>
</div>
<div class='form-group'>
		<label for='name'>步骤名:</label>
<input class='form-control' type='text' name='stepBaker' placeholder='步骤2'/>
<textarea class='form-control' name='detailBaker'></textarea>
</div>
<div class='form-group'>
		<label for='name'>步骤名:</label>
<input class='form-control' type='text' name='stepCharlie' placeholder='步骤3'/>
<textarea class='form-control' name='detailCharlie'></textarea>
</div>
<div class='form-group'>
		<label for='name'>步骤名:</label>
<input class='form-control' type='text' name='stepDog' placeholder='步骤4'/>
<textarea class='form-control' name='detailDog'></textarea>
</div>

<div class='form-group'>
		<input class='btn-primary btn' type='submit' value='提交'/>
</div>

</form>

