<include file="public:header" />
<div class="subnav">
    <h1 class="title_2 line_x">添加采集器</h1>
</div>
<div class="pad_lr_10" >
    <form id="info_form" action="{:U('robots/add')}" method="post" >
    <table width="100%" cellspacing="0" class="table_form">
        <tbody>
			<tr>
                <th width="150">{:L('tbk_name')}：</th>
                <td>
                    <input name="name" type="text" id="J_name" class="input-text" size="20" />
                    <span class="gray ml10">{:L('tbk_name_desc')}</span>
                </td>
            </tr>
			 <tr>
				<th><font color="red">[新]</font>&nbsp; 采集模式：</th>
				<td>
					<input type="radio" value="0" name="http_mode" class="radio" id="api_mod">
                    <label for="api_mod" class="radio_lalel">华美网络采集</label>&nbsp;&nbsp;&nbsp;
                    <input type="radio" value="1" name="http_mode" id="tb_mod" class="radio" checked>
                    <label for="tb_mod" class="radio_lalel">淘宝网采集</label>
				</td>
			</tr>
            <tr class="api_mod">
                <th>{:L('tbk_item_cate')}：</th>
                <td>
                    <select class="J_tbcats mr10">
                        <option value="0">--{:L('all')}--</option>
                        <volist name="items_cate" id="cate">
                        <option value="{$cate.cid}">{$cate.name}</option>
                        </volist>
                    </select>
                    <input type="hidden" id="J_cid" name="cid" val="">
                    <span class="gray ml10">API的分类ID</span>
                </td>
            </tr>

			<tr class="tb_mod">
                <th>淘宝商品分类ID：</th>
                <td>
                    <input name="tb_cid" type="text" class="input-text" size="35" />
                    <span class="gray ml10"><a href="http://bbs.138gzs.com/thread-299-1-1.html" target="_blank">如何获取?</a></span>
                </td>
            </tr>

			<tr>
				<th width="120">所属分类：</th>
                <td>
					<select class="J_cate_select mr10" data-pid="0" data-uri="{:U('items_cate/ajax_getchilds', array('type'=>0))}" data-selected=""></select><input type="hidden" name="cate_id" id="J_cate_id" value="" />
				</td>
			</tr>
            <tr>
                <th>{:L('keyword')}：</th>
                <td>
                    <input name="keyword" type="text" class="input-text" size="20" />
                    <span class="gray ml10">填写一个，不可多个</span>
                </td>
            </tr>
			<tr>
                <th>采集页数：</th>
                <td>

					<select name="page" id="page">
						<?php for($a=1;$a<=100;$a++){?>
						<option value="<?=$a?>" <if condition="100 eq $a"> selected</if> >采集<?=$a?>页</option>
						<?php 
						}
						?>
                    </select>
                </td>
            </tr>


            <tr>
                <th>{:L('sort_order')}：</th>
                <td>
                    <select name="sort">
			<option value="normal|desc">默认</option>
			<option value="new|desc">最新</option>
			<option value="volume|desc">销量</option>
                        <option value="coefp|desc">人气</option>
                        <option value="ratesum|desc">信用</option>
                    </select>
                </td>
            </tr>

			<tr>
                <th>{:L('tbk_item_coupon_rate')}：</th>
                <td>
                    <input type="text" name="start_coupon_rate" size="5" class="input-text" value="1000" /> - 
                    <input type="text" name="end_coupon_rate" size="5" class="input-text" value="9000"/> 
                    <span class="gray ml10">{:L('tbk_item_coupon_rate_desc')}</span>
                </td>
            </tr>
			<tr>
                <th>价格：</th>
                <td>
                    <input type="text" name="start_price" size="5" class="input-text" value="0"/> - 
                    <input type="text" name="end_price" size="5" class="input-text" value="99999"/> 
                    <span class="gray ml10">可不填，最低价格和最高最高一起设置才有效</span>
                </td>
            </tr>
            <tr>
                <th>{:L('tbk_item_commission_num')}：</th>
                <td>
                    <input type="text" name="start_volume" size="5" class="input-text" value="0"/> - 
                    <input type="text" name="end_volume" size="5" class="input-text" value="99999"/> 
                    <span class="gray ml10">{:L('tbk_item_commission_num_desc')}</span>
                </td>
            </tr>
            <tr  class="api_mod">
                <th>{:L('tbk_seller_credit')}：</th>
                <td>
                    <select name="start_credit">
                        <option value="1heart">{:L('n1')}{:L('heart')}</option>
                        <option value="2heart">{:L('n2')}{:L('heart')}</option>
                        <option value="3heart">{:L('n3')}{:L('heart')}</option>
                        <option value="4heart">{:L('n4')}{:L('heart')}</option>
                        <option value="5heart">{:L('n5')}{:L('heart')}</option>
                        <option value="1diamond">{:L('n1')}{:L('diamond')}</option>
                        <option value="2diamond">{:L('n2')}{:L('diamond')}</option>
                        <option value="3diamond">{:L('n3')}{:L('diamond')}</option>
                        <option value="4diamond">{:L('n4')}{:L('diamond')}</option>
                        <option value="5diamond">{:L('n5')}{:L('diamond')}</option>
                        <option value="1crown">{:L('n1')}{:L('crown')}</option>
                        <option value="2crown">{:L('n2')}{:L('crown')}</option>
                        <option value="3crown">{:L('n3')}{:L('crown')}</option>
                        <option value="4crown">{:L('n4')}{:L('crown')}</option>
                        <option value="5crown">{:L('n5')}{:L('crown')}</option>
                        <option value="1goldencrown">{:L('n1')}{:L('goldencrown')}</option>
                        <option value="2goldencrown">{:L('n2')}{:L('goldencrown')}</option>
                        <option value="3goldencrown">{:L('n3')}{:L('goldencrown')}</option>
                        <option value="4goldencrown">{:L('n4')}{:L('goldencrown')}</option>
                        <option value="5goldencrown">{:L('n5')}{:L('goldencrown')}</option>
                    </select>
                     - 
                    <select name="end_credit">
                        <option value="1heart">{:L('n1')}{:L('heart')}</option>
                        <option value="2heart">{:L('n2')}{:L('heart')}</option>
                        <option value="3heart">{:L('n3')}{:L('heart')}</option>
                        <option value="4heart">{:L('n4')}{:L('heart')}</option>
                        <option value="5heart">{:L('n5')}{:L('heart')}</option>
                        <option value="1diamond">{:L('n1')}{:L('diamond')}</option>
                        <option value="2diamond">{:L('n2')}{:L('diamond')}</option>
                        <option value="3diamond">{:L('n3')}{:L('diamond')}</option>
                        <option value="4diamond">{:L('n4')}{:L('diamond')}</option>
                        <option value="5diamond">{:L('n5')}{:L('diamond')}</option>
                        <option value="1crown">{:L('n1')}{:L('crown')}</option>
                        <option value="2crown">{:L('n2')}{:L('crown')}</option>
                        <option value="3crown">{:L('n3')}{:L('crown')}</option>
                        <option value="4crown">{:L('n4')}{:L('crown')}</option>
                        <option value="5crown">{:L('n5')}{:L('crown')}</option>
                        <option value="1goldencrown">{:L('n1')}{:L('goldencrown')}</option>
                        <option value="2goldencrown">{:L('n2')}{:L('goldencrown')}</option>
                        <option value="3goldencrown">{:L('n3')}{:L('goldencrown')}</option>
                        <option value="4goldencrown">{:L('n4')}{:L('goldencrown')}</option>
                        <option value="5goldencrown" selected>{:L('n5')}{:L('goldencrown')}</option>
                    </select>
                </td>
            </tr>
			<tr>
				<th><font color="red">[新]</font> 是否包邮：</th>
				<td>
					<input name="ems" id="ems0" value="0"  type="radio" checked><label for="ems0">&nbsp;默&nbsp;认&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input name="ems" id="ems1" value="1" type="radio"><label for="ems1">&nbsp;包&nbsp;邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<span class="gray ml10"></span>
				</td>
			</tr>

			<tr>
				<th><font color="red">[新]</font> 是否更新分类：</th>
				<td>
					<input name="recid" id="recid0" value="0"  type="radio" ><label for="recid0">&nbsp;不&nbsp;更&nbsp;新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<input name="recid" id="recid1" value="1" type="radio" checked><label for="recid1">&nbsp;更&nbsp;新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					<span class="gray ml10">如果采集的商品之前已经采集过更新信息时更正目前选择的分类</span>
				</td>
			</tr>
 
            <tr>
                <th>是否商城：</th>
                <td>
                    <label class="mr10"><input type="checkbox" name="shop_type" value="B"> {:L('only_tmall')}</label>
                </td>
            </tr>

            <tr>
                <th></th>
                <td>
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
    var uri = "{:U('robots/ajax_get_tbcats')}";
    $('.J_tbcats').die('change').live('change', function(){
        var _this = $(this),
            _cid = _this.val();
        _this.nextAll('.J_tbcats').remove();
        $.getJSON(uri, {cid:_cid}, function(result){
            if(result.status == '1'){
                var _childs = $('<select class="J_tbcats mr10"><option value="0">--'+lang.all+'--</option></select>')
                for(var i=0; i<result.data.length; i++){
                    $('<option value="'+result.data[i].cid+'">'+result.data[i].name+'</option>').appendTo(_childs);
                }
                _childs.insertAfter(_this);
            }
        });
        $('#J_cid').val(_cid);
    });

	$.formValidator.initConfig({formid:"info_form",autotip:true});
	$("#J_name").formValidator({onshow:'请填写采集器名称',onfocus:'请填写采集器名称'}).inputValidator({min:1,onerror:'请填写采集器名称'});


	$(".api_mod").hide();
	$('#api_mod').click(function() {
		$(".api_mod").show();
		$(".tb_mod").hide();
	});

	$('#tb_mod').click(function() {
		$(".tb_mod").show();
		$(".api_mod").hide();
	});
});
</script>
</body>
</html>
