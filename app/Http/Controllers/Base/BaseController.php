<?php

namespace App\Http\Controllers\Base;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class BaseController extends Controller
{
		public static function removeHtmlTags($content)
		{
				//去除html标签
				$value = strip_tags($content);
				return is_array($value) ? array_map('k::htmlspecialchars', $value) : preg_replace('/&amp;((#(\d{3,5}|x[a-fA-F0-9]{4})|[a-zA-Z][a-z0-9]{2,5});)/', '&\\1', str_replace(array(
						'&',
						'"',
						'<',
						'>',
						'\''
				) , array(
						'&amp;',
						'&quot;',
						'&lt;',
						'&gt;',
						'’'
				) , $value));
		}
		/**
		 * addslashes
		 */
		public static function magicQuotes($content)
		{
				if(!get_magic_quotes_gpc()){
						$content=addslashes($content);
						return $content;
				}else{
						return $content;
				}
		}

}
