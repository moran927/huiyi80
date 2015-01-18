<!-- 头部开始 -->
<div class="head">
	<div class="logo {:C('ftx_site_width')}">
		<if condition="C('ftx_site_logo') neq ''">
			<h1><a title="{:C('ftx_site_name')}" href="{:C('ftx_site_url')}"><img src="/{:C('ftx_site_logo')}" width="243" height="46" /></a><img src="/static/jky/images/hengtop.png" width="378" height="30" /></h1>
		<else />
			<h1><a title="{:C('ftx_site_name')}" href="{:C('ftx_site_url')}"><img src="/static/zhe800/images/logo3.png" width="240" height="45" /></a></h1>
		</if>
		<div class="search_box">
			<form method="get" action="index.php" onsubmit="return search_submit();" >
				<input type="hidden" name="m" value="index" />
				<input type="hidden" name="a" value="so" />
				<input x-webkit-speech name="k" id="keywords" onblur="this.value==''?this.value=this.title:null" onfocus="this.value==this.title?this.value='':null" title="懒得找了，我搜..." value="懒得找了，我搜..." class="text" />
				<button type="submit" value="" class="btn2">搜折扣</button>
			</form>
		</div>
		<div id="toolbar">
		<div class="top-nav {:C('ftx_site_width')}">
			
			<div id="userlogin" style="display:block">
				<p class="other-links fr">
					<span><a href="{:U('user/login')}" class="whi">登录</a> / <a href="{:U('user/register')}" class="whi">免费注册</a></span>
					<span>|</span>
					<span><a href="{:C('ftx_kefu_html')}">在线客服</a></span>
			        <span><a href="{:U('user/union')}">邀请好友</a></span>
					<span><a href="{:U('baoming/index')}">卖家报名</a></span>
				</p>
				<ul class="login-union fr">

				<volist name="oauth_list" id="val">

				<li><a href="{:U('oauth/index', array('mod'=>$val['code']))}"><i class="icon-{$val.code}"></i><span>{$val.name}</span></a></li>
				</volist>
					 
				</ul>
			</div>
			<script>
			function topHtml() {/*<p class="other-links fr">
				<span class="{:U('bm/index')}">|</span>
				<span><a href="{:U('baoming/index')}">卖家报名</a></span></p>
				<p class="info fr ffv"><a href="{:U('user/msg')}"><literal>{$msgsrc}</literal></a></p>
				
				<p class="info fr ffv"><a href="{:U('user/mingxi')}">积分：<literal>{$jifen}</literal></a></p> 
				<div class="login-ed fr">
					<div class="normal">
						<a href="{:U('user/index')}" class="nor-a" onmouseover="this.className='nor-a active'" onmouseout="this.className='nor-a'"><span class="ffv"><literal>{$name}</literal></span><em class="cur"></em></a>
						<div class="login-box">
						<ul>
							<li><a href="{:U('user/gift')}"><i class="icon-04"></i><span>我的订单</span></a></li>
							<li><a href="{:U('user/mingxi')}"><i class="icon-05"></i><span>账户明细</span></a></li>
							<li><a href="{:U('user/index')}"><i class="icon-06"></i><span>账号设置</span></a></li>
							<li><a href="{:U('user/logout')}" class="exit" ><i class="icon-07"></i><span>退出</span></a></li>
						</ul>
						</div>
					</div>
				</div>
				<p class="fr">Hi~欢迎回来</p>*/;}
				$.ajax({
					url: '{:U('ajax/userinfo')}',
					dataType:'jsonp',
					jsonp:"callback",
					success: function(data){
						if(data.s==1){
							topHtml=getTplObj(topHtml,data.user);
							$('#userlogin').html(topHtml).show();
						}
						else{
							$('#userlogin').show();
						}
					}
				});
			</script>
		</div>
		</div>
	</div>	
	<div id="head_nav">
	
	<div class="nav {:C('ftx_site_width')}">
	
		<ul class="navigation">
			<li <if condition="$nav_curr eq 'index'">class="current"</if>><a href="{:C('ftx_site_url')}">{:L('index_page')}</a></li>
			<ftx:nav type="lists" style="main">
			<volist name="data" id="val">
			<li class="split <if condition="$nav_curr eq $val['alias']">current</if>"><a href="{$val.link}" <if condition="$val.target eq 1">target="_blank"</if>>{$val.name}</a></li>
			</volist>
			</ftx:nav>
		</ul>
		<div class="state-show">
			<div class="sign fr"><a id="signIn_btn" href="javascript:;" class="signin_a sign_btn"><i></i><span>签到</span></a></div>
			 
		</div>
	</div>
	</div>
</div>

<!--头部结束-->