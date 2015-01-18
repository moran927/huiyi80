<link rel=stylesheet type=text/css href="__STATIC__/red/css/good.css" />
<!--List Start-->
<div class="main {:C('ftx_site_width')} clear">
<ul class="goods-list {:C('ftx_site_wc')}">
<volist name="subnav" id="bcate">

<div class="brd">
<div class="tip">
<a target="_blank" href="{:U('index/cate', array('cid'=>$bcate['id']))}"></a>
</div>
<em><a target="_blank" href="{:U('index/cate', array('cid'=>$bcate['id']))}">
<img src="{$bcate.cateimg}" alt="{$bcate.name}">{$bcate.name}</a>
</em>
</div>
<ftx:item type="lists" cid="$bcate['id']" min_price="0" max_price="9999" status="1" num="6">
<volist name="data" id="item" mod="6">
		<li class="<eq name="mod" value="2">last</eq>">
			<div class="sid_{$item.sellerId}  list-good buy " id="nid_{$item.id}">
				<a href="{:U('item/index',array('id'=>$item['id']))}" target="_blank" ><div class="good-pic" style="height:310px;background-image:url({:attach(get_thumb($item['pic_url'], '_b'),'item')}_310x310.jpg);">
				<if condition="$item.coupon_price eq $item['price']"><div class="sold">
                <span><em>{$item.likes}</em>人喜欢</span><i></i>
                </div><else /><div class="sold">
                <span>限时<em><?php echo round(($val['coupon_price']/$val['price'])*10, 1);?></em>折</span><i></i>
                </div></if>					
				</div></a>
				<h5 class="good-title">
					<if condition="$item.shop_type eq 'C' ">
					<b class="icon tao-n" title="淘宝网"></b></if>
					<if condition="$item.shop_type eq 'B' ">
					<b class="icon tao-t" title="天猫商城"></b></if>

					<a target="_blank" href="{:U('item/index',array('id'=>$item['id']))}" class="title">{$item.title}</a>
				</h5>
				<div class="good-price">
					<span class="price-current"><em>￥</em>{$item.coupon_price}</span>
					<span class="des-other">
						<if condition="$item.coupon_price eq $item['price'] "><span class="price-old">已售{$item.volume}件 </span><else /><span class="price-old"><em>¥{$item.price}</em> </span></if>
						<span class="discount show">
							<if condition="$item.ems eq 1"><b class="i2" title="包邮"></b></if>
							<notempty name="visitor">
							<if condition="$visitor['username'] eq C('ftx_index_admin')">
							 <a title="不显示" href="javascript:void(0);" data-id="{$item.id}">取消</a> 
							</if>
							</notempty>
						</span>
					</span>
					<div class="btn-new buy">
						<a href="{:U('jump/index',array('id'=>$item['id']))}" target="_blank" rel="nofollow">
						<span><if condition="$item.shop_type eq 'C' ">去淘宝抢购</if><if condition="$item.shop_type eq 'B' ">去天猫抢购</if></span></a>
					</div>
				</div>
				<div class="pic-des">
					<div class="des-state">
						<div style="height:26px;width:310px"><span class="state-time fl">开始：{$item.coupon_start_time|date="m月d日 H时i分",###}</span><span class="q1" title="全网独家"></span></div>
						<div style="text-align:left;height:auto;line-height:20px">{$item.intro}
						<a class="des-report report buy_ed fr" znid="{$item.id}" title="{$item.title}" href="javascript:;">举报</a></div>
					</div>
				</div>
				{$item.coupon_start_time|newicon}
</div>
</li>
</volist>
</ftx:item>
<div class="aad">
<a class="bar" target="_blank" href="{:U('index/cate', array('cid'=>$bcate['id']))}">查看本类全部商品&gt;&gt;</a>
</div>
</volist>

</ul>
<div class="clear"></div></div>
<!--List End-->