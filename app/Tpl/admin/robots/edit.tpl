<include file="public:header" />
<link rel="stylesheet" type="text/css" href="__STATIC__/js/calendar/calendar-blue.css"/>
<script type="text/javascript" src="__STATIC__/js/calendar/calendar.js"></script>
<div class="subnav">
    <h1 class="title_2 line_x">采集器修改</h1>
</div>
<div class="pad_lr_10" >
    <form id="info_form" action="{:U('robots/edit')}" name="searchform" method="post" >
    <table width="100%" cellspacing="0" class="table_form">
        <tbody>
			<tr>
               <th width="150">名称：</th>
                <td>
                    <input name="name" type="text" id="J_name" class="input-text" size="20" value="{$info.name}"/>
                    <span class="gray ml10">采集器名称</span>
                </td>
            </tr>
			 <tr>
				<th><font color="red">[新]</font>&nbsp; 采集模式：</th>
				<td><input type="radio" value="1" name="http_mode" id="tb_mod" class="radio"  <if condition="$info.http_mode eq '1'"> checked</if>>
                    <label for="tb_mod" class="radio_lalel">爱淘宝采集</label>
				</td>
			</tr>
            <tr>
            <th width="150">关键词 :</th>
           <td>
           <input name="keyword" type="text" class="input-text" size="50" value="{$info.keyword}"/>
           <span class="red ml10">必填，多个关键词用空格隔开。</span>
           </td>
        </tr>
		<tr class="api_mod">
           <th width="150">分类CAT :</th>
           <td>
           <input type="text" name="cat" class="input-text" size="35" value="{$info.cat}" />
           <span class="gray ml10">可不填。</span>
           </td>
        </tr>
		<tr class="api_mod">
            <th width="150">佣金百分比 :</th>
           <td>
           <input type="text" name="startCommrate" class="input-text" size="35" value="{$info.startCommrate}" />
           <span class="gray ml10">可不填。请填写1-99整数。</span>
           </td>
        </tr>
		<tr>
            <th width="150">折扣比率 :</th>
           <td>
           <input type="text" name="rate" class="input-text" size="35" value="{$info.rate}" />
           <span class="red ml10">必填。请填写100-10000之间的整数，例：要采集5折以下请填写5000即可。</span>
           </td>
        </tr>
		<tr class="api_mod">
            <th width="150">商品来源 :</th>
           <td>
           <select name="user_type">
		   <option value="">全部</option>
			<option value="1" <if condition="$info.user_type eq '1'"> selected</if>>天猫</option>
			<option value="0" <if condition="$info.user_type eq '0'"> selected</if>>淘宝</option>			
            </select>
           </td>
        </tr>
		<tr>
            <th width="150">价格范围 :</th>
           <td>           
            <input type="text" name="start_price" size="5" class="input-text" value="{$info.start_price}"/> - 
            <input type="text" name="end_price" size="5" class="input-text" value="{$info.end_price}"/> 
            <span class="gray ml10">可不填，最低价格和最高最高一起设置才有效</span>                      
           </td>
        </tr>
		<tr class="api_mod">
            <th width="150">30天推广量 :</th>
           <td>          
            <input type="text" name="startTotalnum" size="5" class="input-text" value="{$info.startTotalnum}"/> - 
            <input type="text" name="endTotalnum" size="5" class="input-text" value="{$info.endTotalnum}"/> 
            <span class="gray ml10">可不填，最低数量和最高数量一起设置才有效</span>
           </td>           
           
        </tr>
		<tr class="api_mod">
            <th width="150">卖家信用 :</th>
           <td>           
            <select name="startRatesum">
			<option value="1" <if condition="$info.startRatesum eq '1'"> selected</if>>1心以上</option>
			<option value="2" <if condition="$info.startRatesum eq '2'"> selected</if>>2心以上</option>	
			<option value="3" <if condition="$info.startRatesum eq '3'"> selected</if>>3心以上</option>
			<option value="4" <if condition="$info.startRatesum eq '4'"> selected</if>>4心以上</option>
			<option value="5" <if condition="$info.startRatesum eq '5'"> selected</if>>5心以上</option>
			<option value="6" <if condition="$info.startRatesum eq '6'"> selected</if>>1钻以上</option>
			<option value="7" <if condition="$info.startRatesum eq '7'"> selected</if>>2钻以上</option>
			<option value="8" <if condition="$info.startRatesum eq '8'"> selected</if>>3钻以上</option>
			<option value="9" <if condition="$info.startRatesum eq '9'"> selected</if>>4钻以上</option>
			<option value="10" <if condition="$info.startRatesum eq '10'"> selected</if>>5钻以上</option>
			<option value="11" <if condition="$info.startRatesum eq '11'"> selected</if>>1皇冠以上</option>
			<option value="12" <if condition="$info.startRatesum eq '12'"> selected</if>>2皇冠以上</option>
			<option value="13" <if condition="$info.startRatesum eq '13'"> selected</if>>3皇冠以上</option>
			<option value="14" <if condition="$info.startRatesum eq '14'"> selected</if>>4皇冠以上</option>
			<option value="15" <if condition="$info.startRatesum eq '15'"> selected</if>>5皇冠以上</option>
			<option value="16" <if condition="$info.startRatesum eq '16'"> selected</if>>1金冠以上</option>
			<option value="17" <if condition="$info.startRatesum eq '17'"> selected</if>>2金冠以上</option>
			<option value="18" <if condition="$info.startRatesum eq '18'"> selected</if>>3金冠以上</option>
			<option value="19" <if condition="$info.startRatesum eq '19'"> selected</if>>4金冠以上</option>
			<option value="20" <if condition="$info.startRatesum eq '20'"> selected</if>>5金冠以上</option>
            </select>
           </td>           
           
        </tr>
		<tr class="api_mod">
            <th width="150">排序方式 :</th>           
           <td>
            <select name="sort">
			<option value="">全部</option>
			<option value="_commrate" <if condition="$info.sort eq '_commrate'"> selected</if>>佣金从高往低</option>
            <option value="commrate" <if condition="$info.sort eq 'commrate'"> selected</if>>佣金从低往高</option>
			<option value="_totalnum" <if condition="$info.sort eq '_totalnum'"> selected</if>>推广量从高往低</option>
			<option value="totalnum" <if condition="$info.sort eq 'totalnum'"> selected</if>>推广量从低往高</option>
			<option value="_bid" <if condition="$info.sort eq '_bid'"> selected</if>>价格从高往低</option>
			<option value="bid" <if condition="$info.sort eq 'bid'"> selected</if>>价格从低往高</option>
			<option value="_totalfee" <if condition="$info.sort eq '_totalfee'"> selected</if>>佣金支出从高往低</option>
			<option value="totalfee" <if condition="$info.sort eq 'totalfee'"> selected</if>>佣金支出从低往高</option>
            </select>
           </td>
        </tr>
       
		<tr class="tb_mod">
            <th width="150">是否天猫 :</th>
           <td>
           <select name="tmall">		   
			<option value="true" <if condition="$info.tmall eq 'true'"> selected</if>>是</option>
			<option value="false" <if condition="$info.tmall eq 'false'"> selected</if>>否</option>		
            </select>
           </td>
        </tr>
		<tr class="tb_mod">
            <th width="150">是否加入消费者保障 :</th>
           <td>
           <select name="custAssurance">		   
			<option value="true" <if condition="$info.custAssurance eq 'true'"> selected</if>>是</option>
			<option value="false" <if condition="$info.custAssurance eq 'false'"> selected</if>>否</option>			
            </select>
           </td>
        </tr>
		<tr class="tb_mod">
            <th width="150">是否7天包退换 :</th>
           <td>
           <select name="exchange7">		   
			<option value="true" <if condition="$info.exchange7 eq 'true'"> selected</if>>是</option>
			<option value="false" <if condition="$info.exchange7 eq 'false'"> selected</if>>否</option>			
            </select>
           </td>
        </tr>
		<tr class="tb_mod">
            <th width="150">是否正品保障 :</th>
           <td>
           <select name="itemAssurance">		   
			<option value="true" <if condition="$info.itemAssurance eq 'true'"> selected</if>>是</option>
			<option value="false" <if condition="$info.itemAssurance eq 'false'"> selected</if>>否</option>			
            </select>
           </td>
        </tr>				
		
		<tr class="tb_mod">
           <th width="150">每页采集数量 :</th>
           <td>
           <input name="num" type="text" class="input-text" size="8" value="{$info.num}"/>
           <span class="red ml10">请填写1-120之间的任意整数，根据服务器配置进行填写。</span>
           </td>
        </tr>    
        <tr class="tb_mod">
            <th width="150">是否获取正方形主图 :</th>
           <td>
           <select name="img">
            <option value="false" <if condition="$info.img eq 'true'"> selected</if>>否</option>		   
			<option value="true" <if condition="$info.img eq 'true'"> selected</if>>是</option>						
            </select>
           </td>
        </tr>		
		<tr>
            <th>采集页数：</th>
                <td>
				    <select name="page">
					<?php for($a=1;$a<=100;$a++){?>
						<option value="<?=$a?>" <if condition="$info.page eq $a"> selected</if> >采集<?=$a?>页</option>
					<?php 
					}
					?>
                    </select>
                </td>
            </tr>
        <tr>
				<th>入库分类：</th>
                <td><select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}" data-selected="{$selected_ids}"></select>
                <input type="hidden" name="cate_id" id="J_cate_id" value="{$info.cate_id}" /></td></td>
			</tr>		
		<tr>
          <th>设置开始时间 :</th>
          <td><input type="text" name="coupon_start_time" id="coupon_start_time"  class="date" value="{$info.coupon_start_time|date='Y-m-d H:i',###}"/></td>
          </tr>
        <tr>
           <th>设置结束时间 :</th>
           <td><input type="text" name="coupon_end_time" id="coupon_end_time" class="date" value="{$info.coupon_end_time|date='Y-m-d H:i',###}"/></td>
        </tr>

            <tr>
                <th></th>
                <td>
					<input type="hidden" name="id"  value="{$info.id}" />
                    <input type="submit" name="search" class="smt  mr10" value="{:L('submit')}" />
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</div>
<include file="public:footer" />
<script>
$('.J_cate_select').cate_select('请选择');
$(function(){
    
	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_name").formValidator({onshow:'请填写采集器名称',onfocus:'请填写采集器名称'}).inputValidator({min:1,onerror:'请填写采集器名称'});

    <if condition="$info.http_mode eq '0'">
		$(".api_mod").hide();
	<else/>
		$(".api_mod").hide();
	</if>
	
	$('#api_mod').click(function() {
		$(".api_mod").show();
		$(".api_mod").hide();
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
