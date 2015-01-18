<!doctype html>
<html>
<head>
<include file="public:head" />
<css file="__STATIC__/zhe800/css/baoming.css" />
</head>
<body>
<include file="public:header" />


<include file="bm_top" />


<!--main start -->
<div id="contentA">
<div class="blockA area">
<dl>
<dt>效果明显 
<dd>组织活动按效果付费<br>流量获取必选渠道<br>最优质的购物流量<br></dd>
</dl>

<dl>
<dt>多种形式 
<dd>暗号团 9块9包邮 <br>20元封顶 独家折扣 <br>精彩专题活动 <br>超强大促 全场9块9包邮 </dd></dl>
<dl>
<dt>多渠道展示 
<dd>华美飞天侠淘宝客主站首页推荐 <br>
  华美飞天侠淘宝客淘宝/qq应用推荐 <br>
  华美淘宝客官方微博推荐 覆盖60多万粉丝 <br>
  华美淘宝客手机客户端及用户的传播和扩散 </dd></dl></div>

<div class="blockB area" >
<em></em>
<div id=scroll_div class=scroll_div >
	<div id=scroll_begin>
	<div id="ancesdiv">
		<div class="wrapdiv">
			<div id="scroldiv"><b>最新通知：</b>近期有不法分子冒充{:C('ftx_site_name')}官方人员，声称收费即可快速上活动，请大家切勿相信！{:C('ftx_site_name')}为免费促销平台，凡收费上活动的均为骗子，近期{:C('ftx_site_name')}审核速度加快，请自己报名，不要相信任何代报名和任何QQ群的骗子。&nbsp;&nbsp; </div>
			<div id="copydiv"></div>
		</div>
	</div>
</div>

</div></div>

<div class="blockC area"><span>报名流程</span> <em>1</em>发布活动<i></i> <em>2</em>活动审核<i></i> <em>3</em>样品审核<i></i> <em>4</em>活动上线 <em></em><a class="xiangx" href="index.php?m=baoming&a=shenhe" target=_blank>详细流程&gt;&gt;</a> </div>

</div>
<script type="text/javascript">
if(document.getElementById("copydiv")){
	setTimeout(
		function F_scrollTextToLeft(){
			var ancesdiv = document.getElementById("ancesdiv");
			var scroldiv = document.getElementById("scroldiv");
			var copydiv = document.getElementById("copydiv");
			copydiv.innerHTML = document.getElementById("scroldiv").innerHTML;
			function Marquee(){
				if(ancesdiv.scrollLeft-copydiv.offsetWidth >= 0){
					ancesdiv.scrollLeft-=scroldiv.offsetWidth;
				}else{
					ancesdiv.scrollLeft++;
				}
			}
			var myvar=setInterval(Marquee,60);
			ancesdiv.onmouseout=function (){ myvar=setInterval(Marquee,60); }
			ancesdiv.onmouseover=function(){ clearInterval(myvar); }
		}, 1000
	);
}
</script>


<!--baoming start -->
<div class="cooperatonType area">
 
	<ul>
	<li  class="fl">
		<h3>免费试用</h3>
		<p>活动时间为一周(首页一天类目页6天),周六上架活动的宝贝在首页展示时间为（周六、周日）相应类目页5天,也是一周,上了活动,7天内不能修改宝贝价格,库存卖完需要重新设置价格的商家,必须联系审核人员,才能修改价格,如果自己随意修改宝贝价格,直接列入活动黑名单,!</p>
		<h4><a href="index.php?m=baoming&a=add&baomingId=5" target="_blank"></a></h4>
		
		</li><li  class="fl">
		<h3>积分兑换</h3>
		<p>活动时间为一周(首页一天类目页6天),周六上架活动的宝贝在首页展示时间为（周六、周日）相应类目页5天,也是一周,上了活动,7天内不能修改宝贝价格,库存卖完需要重新设置价格的商家,必须联系审核人员,才能修改价格,如果自己随意修改宝贝价格,直接列入活动黑名单,!</p>
		<h4><a href="index.php?m=baoming&a=add&baomingId=4" target="_blank"></a></h4>
		
		</li><li  class="fl">
		<h3>精品折扣</h3>
		<p>每天推荐精选的精品折扣，设置有女装,男装,鞋包,化妆品,配饰,居家,美食,数码等分类。立足于实惠，便捷的导购平台，深受用户喜爱。</p>
		<h4><a href="index.php?m=baoming&a=add&baomingId=3" target="_blank"></a></h4>
		
		</li><li  class="fl">
		<h3>九块九</h3>
		<p>每天推荐精选的9.9包邮，设置有女装,男装,鞋包,化妆品,配饰,居家,美食,数码等分类。立足于实惠，便捷的导购平台，深受用户喜爱。</p>
		<h4><a href="index.php?m=baoming&a=add&baomingId=1" target="_blank"></a></h4>
		
		</li>	
		
	</ul>
 

</div>

<!--main  end--> 

<include file="public:footer" />
<script src="__STATIC__/ftxia/js/goods.js"></script>
</body>
</html>