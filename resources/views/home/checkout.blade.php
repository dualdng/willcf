<script>
$(function(){
		$('#province').change(function() {//判断省，加载城市
				var province=$('#province').val();
				var data={"province":province};
				var url='/listLocation';
				$.ajax({
						url:url,
						type:'POST',
						data:data,
						success:function(data) {
								$('#city').empty();
								$('#city').append('<option value=\'\'>请选择</option>');
								$.each(data,function(key,value) {
										$('#city').append('<option value=\''+value+'\'>'+value+'</option>');
								});
						}
				})

		});

		$('#city').change(function() {//判断城市，加载区县
				var city=$('#city').val();
				var data={"city":city};
				var url='/listLocation';
				$.ajax({
						url:url,
						type:'POST',
						data:data,
						success:function(data) {
								$('#town').empty();
								$('#town').append('<option value=\'\'>请选择</option>');
								$.each(data,function(key,value) {
										$('#town').append('<option value=\''+value+'\'>'+value+'</option>');
								});
						}
				})

		});
})
</script>

<div class='checkout'>
<div class='container'>
		<table class='table table-striped text-center'>
				<tr>
						<td>编号</td>
						<td>名称</td>
						<td>数量</td>
						<td>价格</td>
				</tr>
				<?php
				$num=count($foodId);
				for($i=0;$i<$num;$i++){?>
				<tr>
						<td><?php echo $foodId[$i];?></td>
						<td><?php echo $food[$i][0];?></td>
						<td><?php echo $food[$i][1];?></td>
						<td><?php echo $food[$i][2];?></td>
				</tr>
				<?php }?>
				<tr>
						<td></td>
						<td></td>
						<td></td>
						<td>
								<button class='btn btn-default' data-toggle="modal" data-target="#myModal" data-backdrop='false'>结算:<?php echo $price;?></button>
						</td>
				</tr>
		</table>
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
						<form method='POST' action='/checkout'>
						<div class="modal-content">
								<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<h4 class="modal-title" id="myModalLabel">信息确认</h4>
								</div>
								<div class="modal-body">
												<?php if(isset($user)){?>
												<div class='form-group'>
														<input type="text" class="form-control" name='phone' value='<?php $user->phone;?>' placeholder="手机号码" aria-describedby="basic-addon1">
												</div>
												<div class='form-group'>
														<select class='form-control inputInline' id='province'>
																<?php $res=explode(',',$user->location);?>
																<option value='<?php echo $res[0];?>'><?php echo $res[0];?></option>
																<?php 
					foreach(array_unique($province) as $value) {
					echo '<option value=\''.$value.'\'>'.$value.'</option>';
					}
					;?>	
														</select>
												</div>
												<div class='form-group'>
														<select class='form-control inputInline' id='city'>
																<option value='<?php echo $res[1];?>'><?php echo $res[1];?></option>
														</select>
												</div>
												<div class='form-group'>
														<select class='form-control inputInline' id='town'>
																<option value='<?php echo $res[2];?>'><?php echo $res[2];?></option>
														</select>
												</div>
												<div class='form-group'>
														<input type='text' class='form-control inputInline inputLong' id='detail' name='detail' value='<?php echo $res[3];?>' placeholder='详细' />
												</div>

												<?php }else{?>
												<div class='form-group'>
														<input type="text" class="form-control" name='phone' placeholder="手机号码" aria-describedby="basic-addon1">
												</div>
												<div class='form-group'>
														<select class='form-control' id='province'>
																<option value='请选择'>选择省</option>
																<?php 
					foreach(array_unique($province) as $value) {
					echo '<option value=\''.$value.'\'>'.$value.'</option>';
					}
					;?>	
														</select>
												</div>
												<div class='form-group'>
														<select class='form-control' id='city'>
														</select>
												</div>
												<div class='form-group'>
														<select class='form-control' id='town'>
														</select>
												</div>
												<div class='form-group'>
														<input type='text' class='form-control' id='detail' name='detail' placeholder='详细' />
												</div>
												<?php }?>
								</div>
								<div class="modal-footer">
												<input class='btn btn-primary' type='submit' value='结算:<?php echo $price;?>'/>
										<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>
						</div>
						</form>
				</div>
		</div>
</div>
</div>

