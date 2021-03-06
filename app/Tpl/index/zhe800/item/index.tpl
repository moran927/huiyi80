<!doctype html>
<html>
<head>
<include file="public:head" />
<script type="text/javascript" src="__STATIC__/jky/js/index.js"></script>
<link rel="stylesheet" type="text/css" href="__STATIC__/jky/css/view.css" />
</head>
<body>
<include file="public:header" />
<include file="public:nav-classify" /> 
<!--商品详细-->
<div class="main {:C('ftx_site_width')}">

	<div class="place-explain">
		您的位置：<a target="_blank" href="{:C('ftx_site_url')}">{:C('ftx_site_name')}</a>
		<notempty name="item.cate_id">&nbsp;&gt;&nbsp;
			<if condition="$cate_data[$item['cate_id']]['pid'] gt 0">
				<if condition="$cate_data[$cate_data[$item['cate_id']]['pid']]['pid'] gt 0">
					<a target="_blank" href="{:U('index/cate',array('cid'=>$cate_data[$cate_data[$item['cate_id']]['pid']]['pid']))}">{$cate_data[$cate_data[$cate_data[$item['cate_id']]['pid']]['pid']]['name']}</a>&nbsp;&gt;&nbsp;
				</if>
				<a target="_blank" href="{:U('index/cate',array('cid'=>$cate_data[$item['cate_id']]['pid']))}">{$cate_data[$cate_data[$item['cate_id']]['pid']]['name']}</a>&nbsp;&gt;&nbsp;
			</if>
			<a target="_blank" href="{:U('index/cate',array('cid'=>$item['cate_id']))}">{$cate_data[$item['cate_id']]['name']}</a>
		</notempty>		
		&nbsp;&gt;&nbsp; 
		<a class="bady-xx-seo" href="{:U('item/index',array('id'=>$item['num_iid']))}">{$item.title}</a>
	</div>
	<div class="container fl">
		<div class="product clear">
			<div class="product-pic fl">
				<a href="{:U('jump/index',array('iid'=>$item['num_iid']))}" target="_blank" rel="nofollow"><img src="{:attach(get_thumb($item['pic_url'], '_b'),'item')}_310x310.jpg" alt="{$item.title}"    /></a>
				<span></span>
			</div>
			<div class="product-info fl">
				<h3><a href="{:U('jump/index',array('iid'=>$item['num_iid']))}" target="_blank" rel="nofollow">{$item.title}</a></h3>
				<div class="share"><a class="buy_ed report" znid="{$item.num_iid}" title="{$item.title}" href="javascript:;"><i class="report-icon"></i>举报</a></div>
				<dl class="jp-size">
					<dt>宝贝属性：</dt>
					<dd>
						<ul>
						<volist name="tags" id="tag">
							<li><a class="active" href="{:U('tag/'.$tag)}" target="_blank"><span>{$tag}</span></a></li>  
						</volist>
						</ul>
					</dd>
					
				</dl>
				<p class="tips clear">
				<if condition="$item.coupon_price eq $item['price'] "><span class="item-pr fl">已卖出：<em class="ffv">{$item.volume}件</em></span>
					<span class="fl">有 <em class="org_2 ffv">{$item.likes}</em>人喜欢</span><else /><span class="item-pr fl">原价：<em class="old-price ffv">{$item.price}元</em></span>
					<span class="fl">折扣：<em class="org_2 ffv">{$item.zk}折</em></span></if>
				</p>
				<p class="price">
					<span class="title-tips01">折扣价格<em class="tip-b"></em></span>
					<em class="org">￥</em><span class="jd-current">{$item.coupon_price}</span> 
					<if condition="$item.ems eq 1">/包邮</if></span>
				</p>
				<div class="pg"></div>
				<div class="item-btn clear">
					<span class="btn-tip fl">
						<a class="btn fl {$item.class}" href="{:U('jump/index',array('iid'=>$item['num_iid']))}" target="_blank" rel="nofollow">
						<span>
						<if condition="$item.class eq 'wait'">
							即将开始
						<elseif condition="$item.class eq 'sellout'"/>
							已卖光
						<elseif condition="$item.class eq 'end'"/>
							已结束
						<elseif condition="$item.class eq 'buy'"/>
							<if condition="$item.shop_type eq 'C' ">	去淘宝抢购</if>
							<if condition="$item.shop_type eq 'B' ">去天猫抢购</if>
						</if>
						</span></a>
					</span>
					<div id="tq_html" class="tq_html"></div>
				</div>
				<p class="price bady-time">
				  <if condition="$item.class eq 'tag_wait' ">
					<span class="fl">开抢时间：</span>
					<span class="time fl" id="end_date_0" data-time="{$item.coupon_start_time}"></span>
					<span class="common nomind shoot_time"><a href="http://qzs.qq.com/snsapp/app/bee/widget/open.htm#content=亲，您在 {:C('ftx_site_name')} 关注的【{$item.title}】马上就要开始抢购了哦。&time={$item.coupon_start_time|date='20y-m-d H:i',###}&advance=5&url={:C('ftx_site_url')}index.php?m=item&a=index&id={$item.num_iid}" target="_blank">设置提醒</a></span>	
                   
                <else />				  
                <if condition="$item.class eq 'end' ">
					<span class="fl">结束时间：</span>
					<span class="time fl">{$item.coupon_start_time|date="m月d日 H时i分",###}</span>
					<span class="common nomind shoot_time"><a href="http://qzs.qq.com/snsapp/app/bee/widget/open.htm#content=亲，您在 {:C('ftx_site_name')} 关注的【{$item.title}】下期活动马上就要开始了哦。&time={$item.coupon_end_time|date='20y-m-d H:i',###}&advance=5&url={:C('ftx_site_url')}index.php?m=item&a=index&id={$item.num_iid}" target="_blank">下期提醒</a></span>	                	
				<else />
                <if condition="$item.class eq 'buy' ">
					<span class="fl">离结束还剩：</span>
					<span class="time fl" id="end_date_0" data-time="{$item.coupon_end_time}"></span>
					<span class="common nomind shoot_time"><a href="http://qzs.qq.com/snsapp/app/bee/widget/open.htm#content=亲，您在 {:C('ftx_site_name')} 关注的【{$item.title}】优惠活动马上就要结束了哦。&time={$item.coupon_end_time|date='20y-m-d H:i',###}&advance=5&url={:C('ftx_site_url')}index.php?m=item&a=index&id={$item.num_iid}" target="_blank">结束提醒</a></span>	
                </if>	
                </if>				
				</p>
				<p class="fenxiang">
					<span class="fl">分享商品：</span>


                                        <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{"tsina":"1253614892","tqq":"101176569"},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"24"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"24"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
				</p>
			</div>
		</div>
		
		<div class="product-comment">
			<div class="bady-tab" id="bady-tab">
				<ul>
					<li class="tab1">
						<a class="badyactive" href="#desc">宝贝详情</a>
						<div class="bady-line-top"></div>
					</li>
					<li class="tab2">
						<a class="" href="#comm">评论一下</a>
						<div class=""></div>
					</li>
					<li class="tab3">
						<a href="#user_comment" class="">同类推荐<em></em></a>
						<div class=""></div>
					</li>
					<li class="tab4">
						<a href="#xihuan" class="">猜你喜欢<em></em></a>
						<div class=""></div>
					</li>
				</ul>
				<div class="gobuy fr" style="display: none; ">
					<span class="title-tips01">折扣价格<em class="tip-b"></em></span>
					<p class="price fl">
						<em class="org">￥</em> 
						<span class="jd-current">{$item.coupon_price}</span> <if condition="$item.ems eq 1">/包邮</if>
					</p>
					<a target="_blank" id="dealGone" class="btn fl buy" href="{:U('jump/index',array('iid'=>$item['num_iid']))}" rel="nofollow"><span>
						<if condition="$item.shop_type eq 'C' ">去淘宝抢购</if>
						<if condition="$item.shop_type eq 'B' ">去天猫抢购</if>
					</span></a>
				</div>
			</div>
			<div class="information" style="display: block;" >
				<h3><a name="desc" >宝贝详情</a></h3>
				<p>{$desc}</p>
			</div>
			<div class="bady-tab bady-tab01" >
				<ul>
					<li style="border-right: none">
						<a  name="comm" class="" href="#tab3">发表评论<em></em></a>
						<div class=""></div>
					</li>
				</ul>
			</div>
		<div  style="display: block;"  class="information comment" >
                
           

		<div class="ds-thread" data-thread-key="{$item.id}" data-title="{$item.title}" data-url="{:C('ftx_site_url')}index.php?m=item&a=index&id={$item.num_iid}"></div>  
		</div> 
		<div class="bady-tab bady-tab02"  >
		  <ul>
		      <li style="border-right: none;">
			  <a name="user_comment" class="" href="#tab3">同类推荐<em></em></a>
			  <div class=""></div>
		      </li>
		  </ul>
		</div>
		<div style="display: block;" class="information comment" >	
<a data-type="10" biz-itemid="{$item.num_iid}" data-tmpl="720x220" data-tmplid="143" data-rd="2" data-style="2" data-border="1" href="#"></a>
<a data-type="12" biz-sellerid="{$item.sellerId}" data-tmpl="720x200" data-tmplid="145" data-rd="2" data-style="2" data-border="1" href="#"></a>		
		</div>
		<a name="xihuan" ></a>
	</div>
 
	</div> 
	<div class="clear"></div>
</div>
		
<link rel=stylesheet type=text/css href="__STATIC__/zhe800/css/good.css" />
<!--List Start-->
<div class="main {:C('ftx_site_width')} clear">
		<include file="public:items_list" />
	<div class="clear"></div> 


</div>
<script type="text/javascript"> var duoshuoQuery = {short_name:"138gzs"}; (function() { var ds = document.createElement('script'); ds.type = 'text/javascript';ds.async = true; ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js'; ds.charset = 'UTF-8'; (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds); })(); </script>
<script type="text/javascript">
function show_date_time(end,style,id){
    today=new Date(); 
	timeold=((end)*1000-today.getTime()); 
	if (timeold < 0) {
        return;
    }
    setTimeout("show_date_time("+end+','+style+','+id+")", 100); 
    sectimeold=timeold/1000;
	secondsold=Math.floor(sectimeold); 
	msPerDay=24*60*60*1000;
	e_daysold=timeold/msPerDay;
	daysold=Math.floor(e_daysold); 
	e_hrsold=(e_daysold-daysold)*24;
	hrsold=Math.floor(e_hrsold); 
	e_minsold=(e_hrsold-hrsold)*60;
	minsold=Math.floor((e_hrsold-hrsold)*60); 
	e_seconds = (e_minsold-minsold)*60;
	seconds=Math.floor((e_minsold-minsold)*60); 
	ms = e_seconds-seconds;
	ms = new String(ms);
	ms1 = ms.substr(2,1);
	ms2 = ms.substr(2,2);
	hrsold1=daysold*24+hrsold;
	if(style == 1){
		$("#end_date_"+id).html((hrsold1<10?'0'+hrsold1:hrsold1)+"小时"+(minsold<10?'0'+minsold:minsold)+"分"+(seconds<10?'0'+seconds:seconds)+"秒");
	}else if(style == 2){
		$("#end_date_"+id).html(daysold+"天"+(hrsold<10?'0'+hrsold:hrsold)+"时"+(minsold<10?'0'+minsold:minsold)+"分"+(seconds<10?'0'+seconds:seconds)+"秒");
	}else if(style == 3){
		$("#end_date_"+id).html((hrsold1<10?'0'+hrsold1:hrsold1)+"小时"+(minsold<10?'0'+minsold:minsold)+"分"+(seconds<10?'0'+seconds:seconds)+"."+ms1+"秒");
	}else{
		$("#end_date_"+id).html(daysold+"天"+(hrsold<10?'0'+hrsold:hrsold)+"小时"+(minsold<10?'0'+minsold:minsold)+"分"+(seconds<10?'0'+seconds:seconds)+"秒."+ms2);
	}
}
$(".time").each(function() {
        var reg = /^[0-9]+$/;
        var time = $(this).attr('data-time');
        if (reg.test(time)) {
            show_date_time(time, 2, 0);
        }
	});
</script>
 
<script type="text/javascript" src="__STATIC__/zhe800/js/deal.js"></script>
<script type="text/javascript" id="bdshare_js" data="type=button" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
    $(".bady-tab:eq(0) li:eq(0)").find("a").addClass("badyactive");
    $(".bady-tab:eq(0) li:eq(0)").find("div").addClass("bady-line-top");
    //评论处js切换效果
    $(".bady-tab:eq(0) li").click(function(){
        $(document).scrollTop($('.bady-part').offset().top-50);
        $(".bady-tab").not( $(".bady-tab:eq(0)")).hide();
        $(this).parents("ul").find("a").removeClass("badyactive");
        $(this).parents("ul").find("div").removeClass("bady-line-top");
        $(this).find("a").addClass("badyactive");
        $(this).find("div").addClass("bady-line-top");
        if($(this).index() == 0){
            $(".bady-tab,.information").show();
            if($(".bady-tab").size() - $(".information").size() == 1){
                $(".bady-tab01").hide();
            }else if($(".bady-tab").size() - $(".information").size() == 2){
                $(".bady-tab01").hide();
                $(".bady-tab02").hide();
            }
        }else{
            $(".information").hide();
            $(".information:eq("+$(this).index()+")").show();
        }
    });

    $(".bady-tab:eq(0) li").each(function(index){
        if(typeof($(this).attr("name"))!="undefined"){
            $("#"+$(this).attr("name")).click();
            $("#"+$(this).attr("name")).parents("ul").find("a").removeClass("badyactive");
            $("#"+$(this).attr("name")).parents("ul").find("div").removeClass("bady-line-top");
            $("#"+$(this).attr("name")).find("a").addClass("badyactive");
            $("#"+$(this).attr("name")).find("div").addClass("bady-line-top");
        }
    });

    var F_zhe800CeleMenuAni = function(){
        var jiuMenuObj = $('#bady-tab');
        var Tab01Obj= $('.tab1').find("a")
        var Tab02Obj= $('.tab1').find("div")
        var Tab03Obj= $('.tab2').find("a")
        var Tab04Obj= $('.tab2').find("div")
        var Tab05Obj= $('.tab3').find("a")
        var Tab06Obj= $('.tab3').find("div")
	var Tab07Obj= $('.tab4').find("a")
        var Tab08Obj= $('.tab4').find("div")
        var menuScrolFunc = function(){
            scrolY = $(window).scrollTop();
            if(scrolY < 580){
                jiuMenuObj.removeClass('fixed');
                $('div.gobuy').hide();
            }else{
                jiuMenuObj.addClass('fixed');
                $('div.gobuy').show();
            }
            if(scrolY >=$('.goods-list').offset().top && !($(".information:eq(0)").is(":hidden"))){
		Tab05Obj.removeClass("badyactive");
                Tab06Obj.removeClass("bady-line-top");
                Tab03Obj.removeClass("badyactive");
                Tab04Obj.removeClass("bady-line-top");
                Tab01Obj.removeClass("badyactive");
                Tab02Obj.removeClass("bady-line-top");
                Tab07Obj.addClass("badyactive");
                Tab08Obj.addClass("bady-line-top")
            }else if(scrolY >=$('.bady-tab02').offset().top && !($(".information:eq(0)").is(":hidden"))){
	        Tab07Obj.removeClass("badyactive");
                Tab08Obj.removeClass("bady-line-top");
                Tab03Obj.removeClass("badyactive");
                Tab04Obj.removeClass("bady-line-top");
                Tab01Obj.removeClass("badyactive");
                Tab02Obj.removeClass("bady-line-top");
                Tab05Obj.addClass("badyactive");
                Tab06Obj.addClass("bady-line-top")
            }else if(scrolY >= $('.bady-tab01').offset().top && !($(".information:eq(0)").is(":hidden"))){
	        Tab07Obj.removeClass("badyactive");
                Tab08Obj.removeClass("bady-line-top");
                Tab01Obj.removeClass("badyactive");
                Tab02Obj.removeClass("bady-line-top");
                Tab05Obj.removeClass("badyactive");
                Tab06Obj.removeClass("bady-line-top");
                Tab03Obj.addClass("badyactive");
                Tab04Obj.addClass("bady-line-top")
            }else if(!($(".information:eq(0)").is(":hidden"))){
	        Tab07Obj.removeClass("badyactive");
                Tab08Obj.removeClass("bady-line-top");
                Tab03Obj.removeClass("badyactive");
                Tab04Obj.removeClass("bady-line-top");
                Tab05Obj.removeClass("badyactive");
                Tab06Obj.removeClass("bady-line-top");
                Tab01Obj.addClass("badyactive");
                Tab02Obj.addClass("bady-line-top")
            }

        }
        var F_nmenu_scroll = function () {
            if (!window.XMLHttpRequest) {
                return;
            }else{
                //默认执行一次
                menuScrolFunc();
                $(window).bind("scroll", menuScrolFunc);
            }
        }
        F_nmenu_scroll();
    }
    F_zhe800CeleMenuAni();

var bds_config = {
	'bdDesc' : '发现个灰常给力的商品！{$item.title}，赶紧来抢吧！',
	'bdText' : '发现个灰常给力的商品！{$item.title}，赶紧来抢吧！' ,
		'bdPic' : '{$item.pic_url}',
		'review' : 'off'
};

</script>
<load href="__STATIC__/js/report.js" />
<include file="public:footer" />
</body>
</html>
