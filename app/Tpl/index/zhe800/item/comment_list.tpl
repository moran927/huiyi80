<volist name="list" id="val">
<dl uid="{$val.id}" class="clear">
	  <dt>
	  <a>
	  <img src="{:avatar($val['uid'], '32')}" data-uid="{$val.uid}" alt="{$val.uname}"></a>
	  </dt>
	  <dd class="tit">
	  <a data-uid="{$val.uid}">{$val.uname}</a>发表于{$val.add_time|frienddate}</dd>
	  <dd class="info">{$val.info}</dd>	  
</dl>
</volist>
<div class="result page" id="page">{$page}</div>
