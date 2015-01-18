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
<!--分类导航S-->

<div class=" tag_nav_top" style="margin-left: auto;margin-right: auto;margin-top: 20px;margin-bottom:20px;width: 983px;">
<div class="dir">
        <h2>当前位置</h2>
        <a href="{:U('index/index')}" class="index" title="返回简单网首页">首页</a>
                        <i>&gt;</i> 
                    <span> {$navname} </span>
                    </div><div class="tag_nav col-4" id="js-tag_nav">
    <h2>分类导航</h2>
     <volist name="catlistchild" id="bcates">
    <div class="tag_nav_shopping col-{$bcates.zm}">
        <h3>{$bcates.name}</h3>
        <ul style="height: 112px;">
               <if condition="$bcates['name'] eq '潮流单品'">
            <li>
	    <if condition="$cid">
             <if condition="$cid eq $motherid">
	    <a href="{:U('index/cate',array('cid'=>$motherid))}" class="cur">所有</a>
	    <else />
	    <a href="{:U('index/cate',array('cid'=>$motherid))}" >所有</a>
	    </if>
	    <else />
	    <a href="{:U('index/cate',array('cid'=>$motherid))}" class="cur">所有</a>
	    </if>
	    </li>
	    </if>
             <volist name="bcates.child" id="bcatew">
             <if condition="$bcatew['id'] eq $cid">
	     <li><a href="{:U('index/cate',array('cid'=>$bcatew['id']))}" class="cur"><strong>{$bcatew.name}</strong></a></li>
	     <else />
	     <li><a href="{:U('index/cate',array('cid'=>$bcatew['id']))}"><strong>{$bcatew.name}</strong></a></li>
	     </if>
            
              </volist>
                    </ul>
    </div>
   </volist>
    
<script type="text/javascript">
    (function(){
        //get Dom object
        var tag = $("#js-tag_nav"),
                box = $("div",tag),
                ul = $("ul",tag),
                maxHeight = 0;
        //get height
        ul.each(function(){
            var height = $(this).outerHeight();
            if(maxHeight < height){
                maxHeight = height;
            }
        });
        //Set ul height
        ul.height(maxHeight);
        //Box on event
        box.hover(function(){
            $(this).toggleClass("hover");
        });
    })();
</script>
</div>
<!--分类导航E-->
</if>
 
<include file="public:list" />
 
<include file="public:footer" />
</body>
</html>