<div class="left  hengdeal">
<volist name="items_list" id="item" key="i" mod="4">
<div class="deal">
  <a href="{:U('item/index',array('id'=>$item['id']))}" rel="nofollow" target="_blank">
      <img src="/static/red/images/load_deal.jpg" data-original="{:attach(get_thumb($item['pic_url'], '_b'),'item')}" alt="{$item.title}"/>
  </a>
  <h3>
    <a href="{$item.url}"></a><a href="{:U('item/index',array('id'=>$item['id']))}" target="_blank">
      <em><b>{$item.coupon_price}元<if condition="$item.ems eq 1">包邮</if> </b></em>{$item.title}</a>
  </h3>
  <div class="info">
    <p>{$item.intro}</p>
<p>&nbsp;</p>
  </div>
  <h4>
      <a rel="nofollow" href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank"></a>
  </h4>
  <h5>
    <span class="sj">{$item.coupon_start_time|date="m月d日 H时i分",###}</span>
    <span class="ly">来源：<if condition="$item.shop_type eq 'C' ">
					<a href="http://www.taobao.com">淘宝网</a></if>
					<if condition="$item.shop_type eq 'B' ">
					<a href="http://www.tmall.com">天猫网</a></if>
      
    </span>
    <span class="fx"><u>分享</u></span>
  </h5>
</div>
</volist>
    <div class="blockB"></div>      
    <div class="page_div {:C('ftx_site_width')}">
<div class="list_page">
{$zpage}
</div>
</div>
</div>