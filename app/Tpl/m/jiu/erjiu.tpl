<!DOCTYPE HTML>
<html lang="zh-CN">
  <head>
      <include file='public:head'/>
  </head>
  <body>
<div id="wrapper">
 <div class="scroller">
    <header>
        <hgroup class="breadcrumb"><span><a href="{:C('ftx_headerm_html')}">返回</a></span>29.9包邮</hgroup>
    </header>
<div class="item">


<!--分类导航开始-->
<nav class="tag">
   <a href="{:U('jiu/jiu')}" ><span>9.9</span></a>
  
  <a href="{:U('jiu/shijiu')}"><span>19.9</span></a>
  <a href="{:U('jiu/erjiu')}" class="cur" ><span>29.9</span></a>
</nav>
<!--分类导航结束-->
<!--排序开始-->

<!--排序结束-->
<!--商品内容循环开始-->
<section class="deals">
  <!--单个商品内容开始-->
<volist name='items_list' id='item'>
  <div data-id= {$item['id']} >
    <figure>
      <a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank"><img src="{:attach(get_thumb($item['pic_url'], '_s'),'item')}"/></a>
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
    <cite>原价{$item.price}&nbsp;&nbsp;<?php echo round(($item['coupon_price']/$item['price']*10),1);?>折</cite>
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
    'ajax':"{:U('jiu/erjiu',array('sort'=>$cur))}",
  };
</script>
</html>
