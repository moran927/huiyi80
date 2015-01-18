<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
    <h1 class="title_2 line_x">添加采集器</h1>
</div>
<div class="pad_lr_10" >
    <form id="info_form" action="{:U('robots/add')}" method="post" >
    <table width="100%" cellspacing="0" class="table_form">
        <tbody>
			<tr>
                <th width="150">名称：</th>
                <td>
                    <input name="name" type="text" id="J_name" class="input-text" size="20" />
                    <span class="gray ml10">采集器名称</span>
                </td>
            </tr>
			 <tr>
				<th><font color="red">[新]</font>&nbsp; 采集模式：</th>
				<td><input type="radio" value="1" name="http_mode" id="tb_mod" class="radio">
                    爱淘宝（请选择爱淘宝）</td>
			</tr>           
           
		<tr>
            <th width="150">关键词 :</th>
           <td>
           <input name="keyword" type="text" class="input-text" size="50" />
           <span class="red ml10">必填，多个关键词用空格隔开。</span>
           </td>
        </tr>
		<tr class="api_mod">
           <th width="150">分类CAT :</th>
           <td>
           <input type="text" name="cat" class="input-text" size="35" value="" />
           <span class="gray ml10">可不填。<a href="http://list.taobao.com/browse/cat-0.htm" target="_blank">如何获取?</a></span>
           </td>
        </tr>
		<tr class="api_mod">
            <th width="150">佣金百分比 :</th>
           <td>
           <input type="text" name="startCommrate" class="input-text" size="35" value="" />
           <span class="gray ml10">可不填。请填写1-99整数。</span>
           </td>
        </tr>
		<tr>
            <th width="150">折扣比率 :</th>
           <td>
           <input type="text" name="rate" class="input-text" size="35" value="10000" />
           <span class="red ml10">必填。请填写100-10000之间的整数，例：要采集5折以下请填写5000即可。</span>
           </td>
        </tr>
		<tr class="api_mod">
            <th width="150">商品来源 :</th>
           <td>
           <select name="user_type">
		   <option value="">全部</option>
			<option value="1">天猫</option>
			<option value="0">淘宝</option>			
            </select>
           </td>
        </tr>
		<tr>
            <th width="150">价格范围 :</th>
           <td>           
            <input type="text" name="start_price" size="5" class="input-text" value=""/> - 
            <input type="text" name="end_price" size="5" class="input-text" value=""/> 
            <span class="gray ml10">可不填，最低价格和最高最高一起设置才有效</span>                      
           </td>
        </tr>
		<tr class="api_mod">
            <th width="150">30天推广量 :</th>
           <td>          
            <input type="text" name="startTotalnum" size="5" class="input-text" value=""/> - 
            <input type="text" name="endTotalnum" size="5" class="input-text" value=""/> 
            <span class="gray ml10">可不填，最低数量和最高数量一起设置才有效</span>
           </td>           
           
        </tr>
		<tr class="api_mod">
            <th width="150">卖家信用 :</th>
           <td>           
            <select name="startRatesum">
			<option value="1">1心以上</option>
			<option value="2">2心以上</option>	
			<option value="3">3心以上</option>
			<option value="4">4心以上</option>
			<option value="5">5心以上</option>
			<option value="6">1钻以上</option>
			<option value="7">2钻以上</option>
			<option value="8">3钻以上</option>
			<option value="9">4钻以上</option>
			<option value="10">5钻以上</option>
			<option value="11">1皇冠以上</option>
			<option value="12">2皇冠以上</option>
			<option value="13">3皇冠以上</option>
			<option value="14">4皇冠以上</option>
			<option value="15">5皇冠以上</option>
			<option value="16">1金冠以上</option>
			<option value="17">2金冠以上</option>
			<option value="18">3金冠以上</option>
			<option value="19">4金冠以上</option>
			<option value="20">5金冠以上</option>
            </select>
           </td>           
           
        </tr>
		<tr class="api_mod">
            <th width="150">排序方式 :</th>           
           <td>
            <select name="sort">
			<option value="">全部</option>
			<option value="_commrate">佣金从高往低</option>
            <option value="commrate">佣金从低往高</option>
			<option value="_totalnum">推广量从高往低</option>
			<option value="totalnum">推广量从低往高</option>
			<option value="_bid">价格从高往低</option>
			<option value="bid">价格从低往高</option>
			<option value="_totalfee">佣金支出从高往低</option>
			<option value="totalfee">佣金支出从低往高</option>
            </select>
           </td>
        </tr>       
		<tr class="tb_mod">
            <th width="150">是否天猫 :</th>
           <td>
           <select name="tmall">		   
			<option value="true">是</option>
			<option value="false">否</option>			
            </select>
           </td>
        </tr>
		<tr class="tb_mod">
            <th width="150">是否加入消费者保障 :</th>
           <td>
           <select name="custAssurance">		   
			<option value="true">是</option>
			<option value="false">否</option>			
            </select>
           </td>
        </tr>
		<tr class="tb_mod">
            <th width="150">是否7天包退换 :</th>
           <td>
           <select name="exchange7">		   
			<option value="true">是</option>
			<option value="false">否</option>			
            </select>
           </td>
        </tr>
		<tr class="tb_mod">
            <th width="150">是否正品保障 :</th>
           <td>
           <select name="itemAssurance">		   
			<option value="true">是</option>
			<option value="false">否</option>			
            </select>
           </td>
        </tr>				
		
		<tr class="tb_mod">
           <th width="150">每页采集数量 :</th>
           <td>
           <input name="num" type="text" class="input-text" size="8" value="30"/>
           <span class="red ml10">请填写1-120之间的任意整数，根据服务器配置进行填写。</span>
           </td>
        </tr>   
        <tr class="tb_mod">
            <th width="150">是否获取正方形主图 :</th>
           <td>
           <select name="img">
             <option value="false">否</option>		   
			<option value="true">是</option>						
            </select>
           </td>
        </tr>		
		<tr>
            <th>采集页数：</th>
                <td>
				    <select name="page">
						<?php for($a=1;$a<=100;$a++){?>
						<option value="<?=$a?>" <if condition="100 eq $a"> selected</if> >采集<?=$a?>页</option>
						<?php 
						}
						?>
                    </select>
                </td>
            </tr>
        <tr>
            <th width="150">入库分类 :</th>
            <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}"></select>
			<span class="red ml10">必选，请选择采集后要写入的分类。</span>
			</td>			
        </tr>		
		<tr>
          <th>设置开始时间 :</th>
          <td><input type="text" name="coupon_start_time" id="coupon_start_time"  class="date" value="<?php echo $showtime=date("Y-m-d H:i:s");?>"/></td>
          </tr>
        <tr>
           <th>设置结束时间 :</th>
           <td><input type="text" name="coupon_end_time" id="coupon_end_time" class="date" value="<?php echo $now = date('Y-m-d H:i:s',strtotime('next week')); ?>"/></td>
        </tr>
		<tr>
               <th></th>
                <td>
                    <input type="submit" name="search" class="smt  mr10" value="{:L('submit')}" />
                </td>
            </tr>
            
        </tbody>
    </table>
	<input type="hidden" name="cate_id" id="J_cate_id" value="0" />
    </form>
</div>
<include file="public:footer" />
<script>
$('.J_cate_select').cate_select('请选择');
$(function(){ 
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_name").formValidator({onshow:'请填写采集器名称',onfocus:'请填写采集器名称'}).inputValidator({min:1,onerror:'请填写采集器名称'});
	$(".api_mod").hide();
	$('#tb_mod').click(function() {
		$(".api_mod").show();
		$(".tb_mod").hide();
	});
	$('#tb_mod').click(function() {
		$(".tb_mod").show();
		$(".api_mod").hide();
	});
});
</script>
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "coupon_start_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M:%S",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
<script language="javascript" type="text/javascript">
	                        Calendar.setup({
	                            inputField     :    "coupon_end_time",
	                            ifFormat       :    "%Y-%m-%d %H:%M:%S",
	                            showsTime      :    'true',
	                            timeFormat     :    "24"
	                        });
</script>
</body>
</html>
