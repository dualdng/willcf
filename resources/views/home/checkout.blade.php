<?php
/**
* 菜单页面 
* @author Tinty
* @version 1.0
*/
?>
@extends('layout')
@section('title')
菜单 | 威尔厨房 
@endsection
@section('header')
<section class='background-normal'>
</section>
@endsection
@section('article')
<div class='container'>
		<table class='table table-striped'>
				<tr>
						<td>no</td>
						<td>name</td>
						<td>amount</td>
				</tr>
				<tr>
		<?php foreach($food as $key=>$value){?>
		<td><?php echo $value;?></td>
		<?php }?>
				</tr>
		</table>
</div>
@endsection

