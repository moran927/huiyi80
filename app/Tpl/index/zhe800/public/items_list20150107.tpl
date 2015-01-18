	<ul class="goods-list {:C('ftx_site_wc')}">
		<volist name="items_list" id="item" key="i" mod="3">

		<li class="<eq name="mod" value="2"> last</eq>">
			<div class="sid_{$item.sellerId}  list-good   {$item.class} " id="nid_{$item.num_iid}">
				<a href="{:U('item/index',array('id'=>$item['id']))}" target="_blank"  title="{$item.title}"><div class="good-pic" style="height:310px;background-image:url({:attach(get_thumb($item['pic_url'], '_b'),'item')}_310x310.jpg);">
				<if condition="$item.zk eq '10'"><div class="sold">
                <span><em>{$item.likes}</em>人喜欢</span><i></i>
                </div><else /><div class="sold">
                <span>限时<em>{$item.zk}</em>折</span><i></i>
                </div></if>					
				</div></a>
				<h5 class="good-title">
					<if condition="$item.shop_type eq 'C' ">
					<b class="icon tao-n" title="淘宝网"></b></if>
					<if condition="$item.shop_type eq 'B' ">
					<b class="icon tao-t" title="天猫商城"></b></if>

					<a target="_blank" href="{:U('item/index',array('id'=>$item['num_iid']))}" class="title" title="{$item.title}">{$item.title}</a>
				</h5>
				<div class="good-price">
					<span class="price-current"><em>￥</em>{$item.coupon_price}</span>
					<span class="des-other">
						<if condition="$item.coupon_price eq $item['price'] "><span class="price-old">已售{$item.volume}件 </span><else /><span class="price-old"><em>¥{$item.price}</em> </span></if>
						<span class="discount show">
							<if condition="$item.ems eq 1"><b class="i2" title="包邮"></b></if>
							<notempty name="visitor">
							<if condition="$visitor['username'] eq C('ftx_index_admin')">
							 <a title="不显示" href="javascript:void(0);" data-id="{$item.num_iid}">取消</a> 
							</if>
							</notempty>
						</span>
					</span>
					<div class="btn-new {$item.class}">
						<a href="{:U('jump/index',array('id'=>$item['num_iid']))}" target="_blank" rel="nofollow"><span>
						<if condition="$item.class eq 'wait'">
							即将开始
						</if>
						<if condition="$item.class eq 'sellout'">
							已卖光
						</if>
						<if condition="$item.class eq 'end'">
							已结束
						</if>
						<if condition="$item.class eq 'buy'">
							<if condition="$item.shop_type eq 'C' ">去淘宝抢购</if><if condition="$item.shop_type eq 'B' ">去天猫抢购</if>
						</if></span></a>
					</div>
                    <div class="show_time">
                <span class="state-time fl">开始时间：{$item.coupon_start_time|date="m月d日 H时i分",###}</span>
                </div>
				</div>
                
				<div class="pic-des">
					<div class="des-state">
						<div style="height:26px;width:292px"><span class="q1" title="全网独家"></span>
                         <h5>
                          <span class="q1a"><font color="#F16767">{$item.volume}人购买</font></span>
                         分享: <em>
	  <a class="sina" href="http://v.t.sina.com.cn/share/share.php?url={$item.url}&amp;title={$item.title}&amp;pic={$item['pic_url']}" target="_blank"></a><a class="qqwb" href="http://share.v.t.qq.com/index.php?c=share&amp;a=index&amp;url={$item.url}&amp;title={$item.title}&amp;pic={$item['pic_url']}" target="_blank"></a>	  
	  <a class="kaixin" href="http://www.kaixin001.com/rest/records.php?url={$item.url}&amp;style=11&amp;content={$item.title}&amp;pic={$item['pic_url']}" target="_blank"></a>	
     <a class="douban" href="http://www.douban.com/recommend/?url={$item.url}&amp;title={$item.title}&amp;image={$item['pic_url']}" target="_blank"></a>	  
	  <a class="qzong" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url={$item.url}&amp;desc={$item.intro}&amp;summary=正在促销活动中优惠打折后{$item.coupon_price}元，截止：{$item.coupon_end_time|frienddate}，赶快去看看吧！&amp;title={$item.title}&amp;site={:C('ftx_site_url')}&amp;pics={$item['pic_url']}&amp;style=203&amp;width=98&amp;height=22&amp;otype=share" target="_blank"></a>
	  </em></h5> 
                        
                        
                       </div>
						<div style="text-align:left;height:auto;line-height:20px">{$item.intro}
						<a class="des-report report buy_ed fr" znid="{$item.id}" title="{$item.title}" href="javascript:;">举报</a>
                        <a class="tix fr" href="http://qzs.qq.com/snsapp/app/bee/widget/open.htm#content=亲，您在 {:C('ftx_site_name')} 关注的【{$item.title}】马上就要开始抢购了哦。&time={$item.coupon_end_time|date='20y-m-d H:i',###}&advance=5&url={$item.url}" target="_blank">设置提醒</a>
                        </div>
					</div>
				</div>
				{$item.coupon_start_time|newicon}
			</div>
		</li>
		</volist>
	</ul>
