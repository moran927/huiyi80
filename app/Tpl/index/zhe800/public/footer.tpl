<if condition="C('ftx_kefu_open') eq '0'">
<div style="clear:both;display:none">
</if>
<include file="public:kefu" />
</div>
<notempty name="visitor">
<if condition="$visitor['username'] eq C('ftx_index_admin')">
<script type="text/javascript">
	function noshow(id){
		if(!$.ftxia.dialog.islogin()) return ;
		$(this).html('<img src="/static/ftxia/images/loading.gif" />');
		$.ajax({
			url: FTXIAER.root + '/?m=item&a=noshow',
				type: 'POST',
				data: {
					id: id
				},
			dataType: 'json',
			success: function(result){
				if(result.status == 1){
					$.ftxia.tip({content:result.msg, icon:'success'});
				}else{
					$.ftxia.tip({content:result.msg, icon:'error'});
				}
			}
		});
	}

	$(".show a").click(function() {
		id = $(this).attr("data-id");
		if(!$.ftxia.dialog.islogin()) return ;
		$(this).html('<img src="/static/ftxia/images/loading.gif" />');
		$.ajax({
			url: FTXIAER.root + '/?m=item&a=noshow',
				type: 'POST',
				data: {
					id: id
				},
			dataType: 'json',
			success: function(result){
				if(result.status == 1){
					$(this).html('成功');
					$.ftxia.tip({content:result.msg, icon:'success'});
				}else{
					$(this).html('已取消');
					$.ftxia.tip({content:result.msg, icon:'error'});
				}
			}
		});
	});  
</script>
</if>
</notempty>
 <div class="footers">
  <ul class="{:C('ftx_site_width')}" style="margin: 0 auto;zoom: 1;">
    <li class="lw w1">
	<span>关注我们</span>
	<a href="{:U('help/read',array('id'=>1))}" target="_blank">关于我们</a>
	<a href="{:U('help/read',array('id'=>3))}" target="_blank">联系我们</a>
    <a href="{:C('ftx_sina_url')}" target="_blank" rel="nofollow">新浪微博</a>
	<a href="{:C('ftx_qzone_url')}" target="_blank" rel="nofollow">QQ空间</a>
	<a href="{:C('ftx_tenxun_url')}" target="_blank" rel="nofollow">腾讯微博</a>	
	 </li>
	 
    <li class="lw">
	<span>商务合作</span>
	<a href="{:U('bao/index')}" target="_blank">商家报名</a>
	<a href="{:U('help/read',array('id'=>5))}" target="_blank">免责声明</a>
	<a href="{:U('help/read',array('id'=>2))}" target="_blank">广告合作</a>
    </li>
	
    <li class="lw">
	 <span>用户帮助</span>
	<a href="{:U('help/read',array('id'=>6))}" target="_blank">常见问题</a>
	<a href="{:U('help/qianggou')}" target="_blank">抢购小技巧</a>
	<a href="{:U('article/index')}" target="_blank">文章中心</a>
    </li>	
     <li class="lw w2">
	 <span>会员中心</span>
     <a href="{:U('user/register')}" target="_blank">免费注册</a>
     <a href="{:U('user/login')}" target="_blank">登录本站</a>
     <a href="{:U('forget/index')}" target="_blank">找回密码</a>	 
    </li>
    <li class="w3">
    <span>下次怎么来?</span>
    <h3>记住域名：<a href="{:C('ftx_site_url')}"><em>huiyi80.com</em></a></h3>
    <h4>百度搜索：<input type="text" value="{:C('ftx_site_name')}" onfocus="this.blur()" class="bdtxt"><a href="http://www.baidu.com/s?tn=baiduhome_pg&ie=utf-8&bs={:C('ftx_site_name')}&f=8&rsv_bp=1&rsv_spt=1&wd={:C('ftx_site_name')}&inputT=0" target="_blank" class="bdso"></a></h4>
    <h5>收藏本站：<a href="javascript:void(0)" onclick="AddFavorite(true)"><u>收藏本站</u></a></h5>
    <h6>保存桌面：<a target="_blank" href="/?m=index&a=shortcut"><em>下载到桌面</em></a></h6>
    </li>
  <li class="w4">
  <span>微信公众号</span>
  
  <h4>
  <img src="{:C('ftx_site_url')}/{:C('ftx_site_weixin')}" alt="" width="273" height="84">
  
  如何关注？<br>
  1) 查找微信号“<em>nongtese</em>”<br>
  2) 用微信扫描左侧二维码
  </p>
  </h4>
  </li>
  </ul>
</div>

<div class="friendly_links">
<span>友情链接：</span>
<div class="links">
<ul>
<div id="demo">
<div id="indemo">
<div id="demo1">
<ftx:link type="lists" status="1">
<volist name="data" id="val">
<li><a href="{$val.url}" target="_blank">{$val.name}</a></li>
</volist>
</ftx:link>
</div>
<div id="demo2"></div>
</div>
</div>
</ul>
</div>
</div>
  
  <div class="footer2">Copyright @ 2010-2014 {:C('ftx_site_url')} all Rights Reserved <a href="{:C('ftx_site_url')}" target="_blank">{:C('ftx_site_name')}</a> (<a href="http://www.miibeian.gov.cn" class="tdu clr6" target="_blank">{:C('ftx_site_icp')}</a>)
  <!--统计代码开始-->
  {:C('ftx_statistics_code')}<!--统计代码结束--> 
  </div>

<load href="__STATIC__/ftxia/js/report.js" />
<script type="text/javascript">
var FTXIAER = {
    root: "__ROOT__",
	site: "{:C('ftx_site_url')}",
    uid: "<?php echo $visitor['id'];?>", 
    url: {}
};
var lang = {};
<volist name=":L('js_lang')" id="val">lang.{$key} = "{$val}";</volist>
</script>
<ftx:load type="js" href="__STATIC__/js/jquery/plugins/jquery.tools.min.js,__STATIC__/js/jquery/plugins/jquery.masonry.js,__STATIC__/js/jquery/plugins/formvalidator.js,__STATIC__/js/fileuploader.js,__STATIC__/js/ftxia.js,__STATIC__/js/front.js,__STATIC__/js/dialog.js,__STATIC__/js/item.js,__STATIC__/js/user.js,__STATIC__/js/comment.js,__STATIC__/zhe800/js/comm.js" />


<script>
var speed=80;//友情链接滚动速度控制。
var tab=document.getElementById("demo");
var tab1=document.getElementById("demo1");
var tab2=document.getElementById("demo2");
tab2.innerHTML=tab1.innerHTML;
function Marquee(){
if(tab2.offsetWidth-tab.scrollLeft<=0)
tab.scrollLeft-=tab1.offsetWidth
else{
tab.scrollLeft++;
}
}
var MyMar=setInterval(Marquee,speed);
tab.onmouseover=function() {clearInterval(MyMar)};
tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
</script>
{:C('ftx_weibo_code')}
{:C('ftx_tencent_code')}