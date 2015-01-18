<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!doctype html>
<html>
<head>
<include file="public:head" />
<script type="text/javascript" src="__STATIC__/red/js/index.js"></script>
<link href="__STATIC__/red/css/guang.css" media="screen" rel="stylesheet" type="text/css"> 
<link href="__STATIC__/red/css/good.css" media="screen" rel="stylesheet" type="text/css">   
</head>
<body>
<include file="public:header" />
<span id="dealnum">今日已更新<b>{$total_item}</b>款</span>
<include file="public:nav-classify" /> 

<div class="jiu-nav-main">
	<div class="jiu-nav {:C('ftx_site_width')}">
	
		<div class="nav-item fl">
			<div class="item-list">
				<ul>
				<li><a href="{:U('guang/index')}" <if condition="$nav_curr eq guang">class="active"</if>>全部</a></li>				
				<volist name="tag_list" id="bcate">					
					<li><a <if condition="$tag eq $bcate['id']">class="active"</if> href="{:U('guang/index',array('tag'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>	
					</if>
				</volist>
				</ul>
			</div>
		</div>		
		<div class="nav-other fl">
			<ul>
				<li><a href="{:U('xinpin/index')}" ><i class="today"></i><span>今日新品</span></a><em>{$today_item}</em></li>
			</ul>
		</div>
		
		</div>
	</div>

{:R('advert/index', array(1), 'Widget')} 
  <div id="contentA" class="area">
    <div class="tit">
      <p>精选淘品，每天中午<em>12:00</em>更新，购买宝贝还会<i>返积分</i>哦~</p>
    </div>
  </div>
         
<include file="public:guang_list" />
<include file="public:footer" />
  </body>
</html>
