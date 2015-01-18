<!doctype html>
<html>
<head>
<script src="__STATIC__/red/js/jquery1.7.2.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/jquery.lazyload.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/uedfocusimg.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/pp18610_v2.1.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/tuanpub3.0.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/jucore-b.js" type="text/javascript"></script> 
<include file="public:head" />
<script type="text/javascript" src="__STATIC__/red/js/index.js"></script>
</head>
<body>
<include file="public:header" />
<span id="dealnum">今日已更新<b>{$total_item}</b>款</span>
<include file="public:nav-classify" /> 

<if condition="$cid eq '15'">
{:R('advert/index', array(1), 'Widget')} 
<notempty name="subnav"> 
<link href="__STATIC__/red/css/brand.css" media="screen" rel="stylesheet" type="text/css">
<div class="brands_logo area">
     <a href="" class="prev trigger"> <u></u>
       <i></i>
     </a>
     <a href="" class="next trigger"> <u></u>
       <i></i>
     </a>
    <ul>
        <li>
		<volist name="subnav" id="bcate"  offset="0" length='16'>
		<a href="{:U('index/cate', array('cid'=>$bcate['id']))}" target="_blank">
            <img src="{:C('ftx_site_url')}{$bcate.cateimg}" alt="{$bcate.name}"></a>
		</volist>
        </li>
		<li>
		<volist name="subnav" id="bcate" offset="16" length='16'>
		<a href="{:U('index/cate', array('cid'=>$bcate['id']))}" target="_blank">
            <img src="{$bcate.cateimg}" alt="{$bcate.name}"></a>
		</volist>
        </li>
		<li>
		<volist name="subnav" id="bcate" offset="32" length='16'>
		<a href="{:U('index/cate', array('cid'=>$bcate['id']))}" target="_blank">
            <img src="{$bcate.cateimg}" alt="{$bcate.name}"></a>
		</volist>
        </li>
		<li>
		<volist name="subnav" id="bcate" offset="48" length='16'>
		<a href="{:U('index/cate', array('cid'=>$bcate['id']))}" target="_blank">
            <img src="{$bcate.cateimg}" alt="{$bcate.name}"></a>
		</volist>
        </li>
   </ul>
</div> 
<script type="text/javascript">
  $("#contentA img").lazyload();
  $(".bhead img").lazyload();
  tuan800ued.getModule('pinpaiVerA').init();
</script> 
</notempty> 
<elseif condition="$cinfo['pid'] eq '15'" />
{:R('advert/index', array(1), 'Widget')} 
<notempty name="subnav"> 
<link href="__STATIC__/red/css/brand.css" media="screen" rel="stylesheet" type="text/css">
<div class="brands_logo area">
     <a href="" class="prev trigger"> <u></u>
       <i></i>
     </a>
     <a href="" class="next trigger"> <u></u>
       <i></i>
     </a>
    <ul>
        <li>
		<volist name="subnav" id="bcate"  offset="0" length='16'>
		<a href="{:U('index/cate', array('cid'=>$bcate['id']))}" target="_blank">
            <img src="{:C('ftx_site_url')}{$bcate.cateimg}" alt="{$bcate.name}"></a>
		</volist>
        </li>
		<li>
		<volist name="subnav" id="bcate" offset="16" length='16'>
		<a href="{:U('index/cate', array('cid'=>$bcate['id']))}" target="_blank">
            <img src="{$bcate.cateimg}" alt="{$bcate.name}"></a>
		</volist>
        </li>
		<li>
		<volist name="subnav" id="bcate" offset="32" length='16'>
		<a href="{:U('index/cate', array('cid'=>$bcate['id']))}" target="_blank">
            <img src="{$bcate.cateimg}" alt="{$bcate.name}"></a>
		</volist>
        </li>
		<li>
		<volist name="subnav" id="bcate" offset="48" length='16'>
		<a href="{:U('index/cate', array('cid'=>$bcate['id']))}" target="_blank">
            <img src="{$bcate.cateimg}" alt="{$bcate.name}"></a>
		</volist>
        </li>
   </ul>
</div> 
<script type="text/javascript">
  $("#contentA img").lazyload();
  $(".bhead img").lazyload();
  tuan800ued.getModule('pinpaiVerA').init();
</script> 
</notempty> 
<else />
<div class="jiu-nav-main">
	<div class="jiu-nav {:C('ftx_site_width')}">
	
		<div class="nav-item fl">
			<div class="item-list">
				<ul>
				<li><a href="{:C('ftx_site_url')}" <empty name="cid"> class="active"</empty>>全部</a></li>
				<?php  $cdi=0; ?>
				<volist name="cate_data" id="bcate">
					<if condition="($bcate['pid'] eq 0) AND ($cdi lt 19)">
					<?php $cdi++; ?>
					<li><a <if condition="($cid eq $bcate['id']) OR ($cate_data[$cid]['pid'] eq $bcate['id'])">class="active"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>	
					</if>
				</volist>
				</ul>
			</div>
		</div>
		
		<div class="n_h">
			<span>排序：</span>
			<a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'default'))}"  class=" <if condition="$index_info['sort'] eq 'default'"> active </if> ">默认</a>
			<a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'new'))}" class=" <if condition="$index_info['sort'] eq 'new'"> active </if> ">最新</a>
			<a href="{:U('index/cate',array('cid'=>$cid,'sort'=>'hot'))}" class=" <if condition="$index_info['sort'] eq 'hot'"> active </if> ">最热</a></div>
		</div>
	</div>
	<notempty name="subnav"> 
<div class="jiu-nav-main jiu-nav-main-2" id="seclevel">
	<div class="jiu-nav {:C('ftx_site_width')}  seclevelinner">
		<div class="nav-item  ">
			<div class="item-list">
				<ul>
				<li><a href="{:U('index/cate', array('cid'=>$cinfo['pid']))}" <empty name="cinfo['pid']"> class="active"</empty>>全部</a></li>
				<volist name="subnav" id="bcate"> 
					<li><a <if condition="$cid eq $bcate['id']">class="active"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></i>
				</volist>
				</ul>
			</div>
		</div>
	</div>
</div>
</notempty>
	{:R('advert/index', array(1), 'Widget')} 
	</if>
 
<include file="public:list" />
 
<include file="public:footer" />
</body>
</html>