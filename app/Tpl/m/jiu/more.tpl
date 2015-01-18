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
        <span class="i3"><i></i>包邮</span>
    </aside>
    <p>
    <span>￥<i>{$item.coupon_price}</i></span>
    <cite>原价{$item.price}&nbsp;&nbsp;<?php echo round(($item['coupon_price']/$item['price']*10),1);?>折</cite>
      <b class="i1"><a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank">抢购中</a></b>
    </p>
  </div>
</volist>
<!--单个商品内容结束-->