<div class="jiu-side-nav {:C('ftx_site_width')}">
	
		<div><a class="logo" href="{:C('ftx_site_url')}"><img src="{:C('ftx_site_url')}/{:C('ftx_site_navlogo')}" width="144" height="74" /></a></div>
	
		<div class="content">
		<div class="hd">
			<h3>[独家]每天9点更新</h3>
		</div>
		<div class="bd">
			<ul>
			<li><a href="{:C('ftx_site_url')}" <empty name="cid"> class="on"</empty>>全部</a></li>
			<?php  $cdi=0; ?>
			<volist name="cate_data" id="bcate">
				<if condition="($bcate['pid'] eq 0) AND ($cdi lt 19)">
				<?php $cdi++; ?>
				<li><a <if condition="($cid eq $bcate['id']) OR ($cate_data[$cid]['pid'] eq $bcate['id'])">class="on"</if> href="{:U('index/cate', array('cid'=>$bcate['id']))}" title="{$bcate.name}">{$bcate.name}</a></i>	
				</if>
			</volist>
			</ul>
		</div>
		<div class="hd">
			<h3>精选推荐</h3>
		</div>
		<div class="bd">
			<ul class="bd-other">
			<ftx:nav type="lists" style="main">
			<volist name="data" id="val">
			<li><a <if condition="$nav_curr eq $val['alias']">class="on"</if> href="{$val.link}" <if condition="$val.target eq 1">target="_blank"</if>>{$val.name}</a></li>
			</volist>
			</ftx:nav>				
			</ul>
		</div>
		
		<div class="bottom"> </div>
	</div>
</div>
