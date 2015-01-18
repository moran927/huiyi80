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