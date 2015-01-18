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
<div class="jiunavmain">
<div class="jiunav {:C('ftx_site_width')}">
</div>
</div>
</div>

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
            <img src="{:C('ftx_site_url')}/{$bcate.cateimg}" alt="{$bcate.name}"></a>
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
<include file="public:brand_list" /> 
<include file="public:footer" />
</body>
</html>