@extends('layout')
@section('title')
威尔厨房 | description
@endsection
@section('header')
<section class='background-normal'>
</section>
@endsection
@section('article')
<div class='detail container-fluid'>
		<section class='abel container'>
				<div class='col-md-4 left'>
				<figure>
						<img src='/testpic/6.jpg'/>
						<figcaption>
						<form action='/account/<?php echo 1;?>/detail' method='POST'>
								<div class='input-group'>
								<input class='form-control' type='file' placeholder='<?php echo '/testpic/1.jpg';?>'/>
								<input class='form-control btn btn-primary' type='submit' value='提交'/>
								</div>
						</form>
						</figcaption>
				</figure>
				</div>
				<div  class='col-md-4 middle'>
				</div>
				<div class='col-md-2 right'>
						<figure>
								<img src='/testpic/1.jpg'/>
								<figcaption>
								<span>糖醋排骨</span><br />
								<a id='add-cart' class='btn btn-primary' foodId='<?php echo '1';?>' foodName='<?php echo '糖粗排骨';?>' foodPrice='<?php echo '58.00';?>' foodAvatar='<?php echo '/testpic/1.jpg';?>' href='#'><span class='add-cart'>58.00 | 加入菜单</span></a>
								</figcaption>
						</figure>
				</div>
		</section>
		<section class='baker container'>
		</section>
</div>
@endsection

