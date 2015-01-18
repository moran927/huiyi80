<!-- 头部开始 -->
<div class="head">
	<div class="logo {:C('ftx_site_width')}">
	<h1><a title="{:C('ftx_site_name')}" href="{:C('ftx_site_url')}"><img src="{:C('ftx_site_url')}/{:C('ftx_site_logo')}" height="45" /></a></h1>		
		<span class="esby"><img src="{:C('ftx_site_url')}/{:C('ftx_site_flogo')}"></span>
				<div class="search_box" style="top:40px">
			<form method="get" action="index.php" onsubmit="return search_submit();" >
				<input type="hidden" name="m" value="index" />
				<input type="hidden" name="a" value="so" />
				<input x-webkit-speech name="k" id="keywords" onblur="this.value==''?this.value=this.title:null" onfocus="this.value==this.title?this.value='':null" title="懒得找了，我搜..." value="懒得找了，我搜..." class="text" />
				<button type="submit" value="" class="btn2">搜折扣</button>
				
			</form>
			<if condition="$tagsok">
			<span>热搜词:</span>&nbsp;<strong>{$tagsok}</strong>
			</if>
		</div>
		<div id="toolbar">
		<div class="top-nav {:C('ftx_site_width')}">
			
			<div id="userlogin" style="display:block">
				<p class="other-links fr">
				 <span><a href="{:C('ftx_header_html')}" target="_blank">手机版</a></span>
					<span><a href="{:U('user/login')}" class="whi">登录</a> / <a href="{:U('user/register')}" class="whi">免费注册</a></span>
					<span>|</span>		
					
			        <span><a href="{:U('user/union')}">邀请好友</a></span>
					<span><a href="{:U('baoming/index')}"><b style="color:red">商家报名</b></a></span>
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
				<span><a href="{:U('baoming/index')}">商家报名</a></span></p>
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
  <div class="head_nav area">
    <div class="l">
	<a <if condition="$nav_curr eq 'index'">class="on"</if>href="{:C('ftx_site_url')}">{:L('index_page')}<i></i></a>      
      <ftx:nav type="lists" style="main">
			<volist name="data" id="val">
			<a <if condition="$nav_curr eq $val['alias']">class='on'</if>href="{$val.link}" <if condition="$val.target eq 1">target="_blank"</if>>{$val.name}<i></i></a>
			</volist>
			</ftx:nav>
      <span class="n"></span>
    </div>
    <div class="r_con">
      <div class="yg_wrap">
        <a href="{:U('yugao/index')}" class="yg <if condition="$nav_curr eq 'dianpu'">on</if>">精选预告</a>
      </div>
      <div class="dropdown sign_panel" id="signinid">
	  <a href="javascript:;" class="signin_a sign_btn signin"></a>
	  </div>
    </div>
  </div>
</div>
</div>

<!--头部结束-->