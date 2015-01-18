<!doctype html>
<html>
<head>
<include file="public:head" />
<script type="text/javascript" src="__STATIC__/red/js/index.js"></script>
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
				<li><a href="{:U('xinpin/index')}" <if condition="$nav_curr eq xinpin">class="active"</if>>全部</a></li>
				<?php  $cdi=0; ?>
				<volist name="cate_data" id="bcate">
					<if condition="($bcate['spid'] eq 0) AND ($cdi lt 9)">
					<?php $cdi++; ?>
					<li><a <if condition="$spid eq $bcate['id']">class="active"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>	
					</if>
				</volist>
				</ul>
			</div>
		</div>	
		<div class="nav-other fl">
			<ul>
				<li><a href="{:U('xinpin/index')}" ><i class="today"></i><span>今日新品</span></a><em>{$today_item}</em></li>
				<li><a href="{:U('yugao/index')}" ><i class="tw"></i><span>明日预告</span></a><em class="l2">{$tomorr_item}</em></li>
			</ul>
		</div>
		<div class="n_h">
			<span>排序：</span>
			<a href="{:U('xinpin/index')}"  class=" <if condition="$index_info['sort'] eq 'default'"> active </if> ">默认</a>
			<a href="{:U('xinpin/index',array('sort'=>'new'))}" class=" <if condition="$index_info['sort'] eq 'new'"> active </if> ">最新</a>
			<a href="{:U('xinpin/index',array('sort'=>'hot'))}" class=" <if condition="$index_info['sort'] eq 'hot'"> active </if> ">最热</a></div>
		</div>

	</div>
</div>
{:R('advert/index', array(1), 'Widget')} 
<include file="public:list" />
<include file="public:footer" />
</body>
</html>