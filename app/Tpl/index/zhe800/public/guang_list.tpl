<div id="contentB" class="area" style="height:auto; ">
<volist name="items_list" id="item" key="i" mod="4">
<div class="<eq name="mod" value="0">deal lefty</eq><eq name="mod" value="1">deal lefty</eq><eq name="mod" value="2">deal lefty</eq><eq name="mod" value="3">deal last</eq>">
    <a href="{:U('item/index',array('id'=>$item['id']))}" rel="nofollow" target="_blank" title="{$item.title}"><div class="guang-pic" style="padding:0;background-image:url({:attach(get_thumb($item['pic_url'], '_m'),'item')}_210x210.jpg);"></div></a>
  <div>
     <em><i>￥</i>{$item.coupon_price}</em>&nbsp;&nbsp;|&nbsp;&nbsp;销量：{$item.volume} 
    <span class="icon">
        <em class="i1" title="新品"></em>
        <em class="i3" title="返积分"></em>
        <em class="i2" title="包邮"></em>
    </span>
	<a rel="nofollow" target="_blank" data-type="1" biz-sellerid="{$item.sellerId}" data-tmpl="140x190" data-tmplid="3" data-rd="2" data-style="1" data-border="1" href="#">{$item.nick}</a>
    
  </div> 
</div>
</volist>
</div> 
<div class="page_div {:C('ftx_site_width')}">
<div class="list_page">
{$zpage}
</div>
</div>