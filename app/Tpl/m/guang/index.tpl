<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<include file='public:head'/>
</head>
<body>
<div id="wrapper">
 <div class="scroller">
 <hgroup class="breadcrumb"><span><a href="{:C('ftx_headerm_html')}">返回</a></span>值得逛</hgroup>

<div class="item">
 
<!--分类导航开始-->

<!--分类导航结束-->
<!--排序开始-->

<!--排序结束-->
<!--商品内容循环开始-->
<section class="dealwhite">
<!--商品循环开始-->
<volist name='items_list' id='item'>
  <div>
    <figure>
        <if condition="$item.newhot eq '0' "><i></i></if>
      <a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank"><img src="{:attach(get_thumb($item['pic_url'], '_m'),'item')}"/></a>
    </figure>

    <p><a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank">{$item.title}</a></p>

    <aside>
      <span>￥{$item.coupon_price}元&nbsp;|&nbsp;<cite>{$item.zk}折</cite></span>
    </aside>
  </div>
</volist>
 <!--商品循环结束-->

  <aside class="more">
    <span>
      {$page}
    </span>
    <i><a id="toTop" href="javascript:void(0);">TOP<b></b></a></i>
  </aside>
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
    'ajax':"{:U('guang/index',array('sort'=>$cur))}",
  };
</script>
</html>
