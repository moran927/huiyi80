<!-- 头部开始 -->
<div class="head">
	<div class="logo {:C('ftx_site_width')}">
	<h1><a title="{:C('ftx_site_name')}" href="{:C('ftx_site_url')}"><img src="{:C('ftx_site_url')}/{:C('ftx_site_logo')}" height="45" /></a></h1>		
		<span class="esby"><img src="{:C('ftx_site_url')}/{:C('ftx_site_flogo')}"></span>
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

<!--头部S-->

<link rel="stylesheet" href="__STATIC__/red/css/fense.css" />
<script type="text/javascript" src="__STATIC__/red/js/base_138.js" ></script>

<!-- 导航 --begin -->
<div class="web-nav" id="js-base-web-nav-cont">
    <div class="web-nav-box">
        <h2>站内导航</h2>
        <div class="list">
            <h3>推荐频道</h3>
            <ul>
	       <li><a <if condition="$nav_curr eq 'index'">class="on"</if>href="{:C('ftx_site_url')}">{:L('index_page')}<i></i></a> </li>
	        <ftx:nav type="lists" style="main">
	        <volist name="data" id="val">
			<li><a <if condition="$nav_curr eq $val['alias']">class='on'</if>href="{$val.link}" <if condition="$val.target eq 1">target="_blank"</if>>{$val.name}<i></i></a></li>
			</volist>
               </ftx:nav>
            </ul>
        </div>
        <div class="all">
            <h3 class="js-base-web-nav-event">全部分类<i></i></h3>
            <ul class="js-base-web-nav-event">
	    <volist name="cate_data" id="bcate">
                <li>
                    <dl>
                        <dt>
                            <a href="{:U('index/cate',array('cid'=>$bcate['id']))}">{$bcate.name}</a>
                        </dt>
                        <dd>
			
			    
                            
                             <volist name="bcate.child" id="bcatew">
			     <if condition="$bcatew['name'] eq '潮流单品'">
			     <volist name="bcatew.child" id="bcateww">
 <a class="cred" href="{:U('index/cate',array('cid'=>$bcateww['id']))}"><span>{$bcateww.name}<i></i></span></a>
			     </volist>
			    </if>
			    </volist>
                           
                            
                        </dd>
                        
                    </dl>
                </li>
               </volist>
            </ul>
        </div>
    </div>
    <div class="web-nav-box-bg"></div>
    <div class="web-nav-ul-bg js-base-web-nav-event"></div>
    <!--[if lt IE 9]>
    <div class="shadow_05"></div>
    <div class="shadow_04"></div>
    <div class="shadow_03"></div>
    <div class="shadow_02"></div>
    <div class="shadow_01"></div>
    <![endif]-->
</div>
<!-- 导航 --begin -->
<!--头部E-->


<!--头部结束-->