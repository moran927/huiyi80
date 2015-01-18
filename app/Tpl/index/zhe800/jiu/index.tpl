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
				<li><a href="{:U('jiu/index')}" <if condition="$nav_curr eq jiu">class="active"</if>>全部</a></li>				
				<volist name="tag_list" id="bcate">					
					<li><a <if condition="$tag eq $bcate['id']">class="active"</if> href="{:U('jiu/index',array('tag'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>	
					</if>
				</volist>
				</ul>
			</div>
		</div>
		
		<div class="n_h">
			<span>排序：</span>
			<a href="{:U('jiu/index',array('sort'=>'default'))}"  class=" <if condition="$index_info['sort'] eq 'default'"> active </if> ">默认</a>
			<a href="{:U('jiu/index',array('sort'=>'new'))}" class=" <if condition="$index_info['sort'] eq 'new'"> active </if> ">最新</a>
			<a href="{:U('jiu/index',array('sort'=>'hot'))}" class=" <if condition="$index_info['sort'] eq 'hot'"> active </if> ">最热</a></div>
		</div>
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
					<li><a <if condition="$cid eq $bcate['id']">class="active"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></li>
				</volist>
				</ul>
			</div>
		</div>
	</div>
</div>
</notempty>

 {:R('advert/index', array(1), 'Widget')}
<include file="public:list" />
 
<include file="public:footer" />
</body>
</html>