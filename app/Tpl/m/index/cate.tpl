<!DOCTYPE HTML>
<html lang="zh-CN">
  <head>
      <include file='public:head'/>
  </head>
  <body>
<div id="wrapper">
 <div class="scroller">
    <header>
        <include file='public:header'/>
    </header>
<div class="carousel banner">
  <!--轮播广告开始-->
  <div class="carousel-inner">
    <!--单个广告开始-->
      <div class="item">
        <a href="#"><img src="__STATIC__/wap800/picture/135102_95g3m.jpg"/></a>
      </div>
    <!--单个广告结束-->
  </div>
  <!--轮播广告结束-->
  <ol class="carousel-indicators"></ol>
</div>


<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'MO-35760263-1']);
  _gaq.push(['_setDomainName', 'zhe800.com']);
  _gaq.push(['_trackPageview']);
  (function() {
   var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
   ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
   var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
   })();
</script>

<!--分类导航开始-->
<nav class="tag">
  <a href="javascript:void(0)" class="cur dropdown-trigger">
      <span>
          <empty name='cate'>全部分类<else/>{$cate}</empty>
          <i class="icon-arrow down"></i>
      </span>
  </a>
  <div class="dropdown-menu"> <i class="icon-arrow up"></i>
      <ul>
          <li><a href="{:U('index/index')}">全部分类</a></li>
          <empty name="cate_list['s'][$cid]">
									<empty name="cate_list['s'][$cinfo['pid']]">
										
										<volist name="cate_list['p']" id="bcate">
										<li><a href="{:U('index/cate', array('cid'=>$bcate['id']))}">{$bcate.name}</a></li>
										</volist>
									<else />
										<volist name="cate_list['s'][$cinfo['pid']]" id="bcate">
										<li><a href="{:U('index/cate', array('cid'=>$bcate['id']))}">{$bcate.name}</a></li>
										</volist>
									</empty>
								<else />
									<empty name="cate_list['s'][$cinfo['pid']]">
										<volist name="cate_list['s'][$cid]" id="bcate">
										<li><a href="{:U('index/cate', array('cid'=>$bcate['id']))}">{$bcate.name}</a></li>
										</volist>
									<else />
										<volist name="cate_list['s'][$cinfo['pid']]" id="bcate">
										<li><a href="{:U('index/cate', array('cid'=>$bcate['id']))}">{$bcate.name}</a></li>
										</volist>
									</empty>
								</empty>         
      </ul>
  </div>
  <a href="{:U('jiu/index')}"  ><span>9.9专场</span></a>
  <a href="{:U('guang/index')}" ><span>值得逛</span></a>
</nav>
<!--分类导航结束-->
<!--排序开始-->
<include file='public:nav'/>
<!--排序结束-->
<!--商品内容循环开始-->
<section class="deals">
  <!--单个商品内容开始-->
<volist name='items_list' id='item'>
  <div data-id= {$item['id']} >
    <figure>
      <a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank"><img src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}"/></a>
    </figure>
    <h2>
      <span><a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank">{$item.title}</a></span>
    <sub ></sub>
      </h2>
    <aside>
        <span class="i1"><i></i><if condition='$item["shop_type"] eq "B"'>天猫<else/>淘宝</if></span>
        <span class="i3"><i></i><if condition='$item["ems"] eq 1'>包邮<else/>不包邮</if></span>
    </aside>
    <p>
    <span>￥<i>{$item.coupon_price}</i></span>
    <cite>原价{$item.price}&nbsp;&nbsp;{$item.zk}折</cite>
      <b class="i1"><a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank">抢购中</a></b>
    </p>
  </div>
</volist>
<!--单个商品内容结束-->

<!--更多开始-->
  <aside class="more">
    <span>
      <a id="loadMore" data-page="1" href="javascript:void(0);">点击加载更多</a>
    </span>
    <i><a id="toTop" href="javascript:void(0);">TOP<b></b></a></i>
  </aside>
<!--更多结束-->
</section>
<!--商品内容循环结束-->
<!--底部开始-->
<footer>
  <include file='public:footer'/>
</footer>
<!--底部结束-->
      </div>
    </div>
  </body>
  <script type="text/javascript">
  var FTXIA = {
    'root':'__ROOT__',
    'siteurl':"{:C('ftx_site_url')}",
    'ajax':"{:U('index/index',array('cid'=>$cid,'sort'=>$cur))}",
  };
</script>
</html>
