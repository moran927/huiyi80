<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN" xml:lang="zh-CN">
<head>
<include file="public:head" />
<script src="__STATIC__/red/js/jquery1.7.2.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/jquery.lazyload.min.js" type="text/javascript"></script>   
<script src="__STATIC__/red/js/pp18610_v2.1.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/tuanpub3.0.min.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/jucore.js" type="text/javascript"></script>
<script src="__STATIC__/red/js/zdm.js" type="text/javascript"></script>
<script type="text/javascript" src="__STATIC__/red/js/index.js"></script>
<script type="text/javascript" src="__STATIC__/red/js/funs.js"></script>
<link href="__STATIC__/red/css/zdm.css" media="screen" rel="stylesheet" type="text/css"/>
<link rel=stylesheet type=text/css href="__STATIC__/red/css/good.css" />
</head>
<body>
  <include file="public:header" />
<include file="public:nav-classify" /> 

  <div class="area">  
  <div id="contentB" class="area ">
  <div class="fblockA">
  <span>
  <a href="{:U('zdm/index')}" <empty name="cinfo['pid']">class="on"</empty>><em>值得买首页</em></a>
  <notempty name="tag_list"> 
	<volist name="tag_list" id="bcate">
	  <a href="{:U('zdm/index',array('tag'=>$bcate['id']))}" <if condition="$tag eq $bcate['id']">class="on"</if>><em>{$bcate.name}</em></a>
    </volist>  
</notempty>	
    </span>
  </div>
</div>


<div id="contentD" class="area">
  <div class="fblockB">
  <div class="l">
<p>
    <input info="{:U('zdm/index',array('sort'=>'default'))}" type="radio" <if condition="$index_info['sort'] eq 'default'">checked</if>/>默认排序 
	<input info="{:U('zdm/index',array('sort'=>'new'))}" type="radio" <if condition="$index_info['sort'] eq 'new'">checked</if>/>最新上架 
	<input info="{:U('zdm/index',array('sort'=>'hot'))}" type="radio" <if condition="$index_info['sort'] eq 'hot'">checked</if>/>最热商品 
	<input info="{:U('zdm/index',array('sort'=>'price'))}" type="radio" <if condition="$index_info['sort'] eq 'price'">checked</if>/>最低价格 
</p>

    </div>
    <div class="r">
	    <form name="sou" action="{:U('zdm/index')}" method="get" id="sou">      
        <p>
		<input type="hidden" name="m" value="sou" />
		<input type="hidden" name="a" value="index" />
		<input class="inp" x-webkit-speech name="key" id="key" type="text" onblur="this.value==''?this.value=this.title:null" onfocus="this.value==this.title?this.value='':null" title="懒得找了，我搜..." value="懒得找了，我搜..." />          
        <input class="btn" id="key" type="submit" value="" onclick="document.getElementById('key').value=encodeURI(document.getElementById('key').value);getId('sou').submit()"/>
        </p>
      </form>
    </div>
  </div>
</div>

<div id="contentA" class="area">
<div class="right">
  <div class="rightBQ">
    <h2>热门标签</h2>
    <p> 
	<include file="public:tag" />
    </p>
  </div>
  <div class="rightSJ">
  <h2>热门商家</h2>
  <ul class="clear">
  <include file="public:shangjia" />
  </ul>
  </div>
  <div class="rightHD">
  <h2>本周热门活动</h2>
  <ul class="clear">
 <include file="public:hot" />
  </ul>
 </div>
</div>
<include file="public:zdm_list" />
</div>
</div>
<include file="public:footer" />
</body>
</html>
