<?php

class chaAction extends BackendAction {

	private $_tbconfig = null;
	public function _initialize() {
        parent::_initialize();
        $this->_mod = D('robots');
        $this->_cate_mod = D('items_cate');		
    }	
 
	 public function _before_index() {
        $res = $this->_cate_mod->field('id,name')->select();
        $cate_list = array();
        foreach ($res as $val) {
            $cate_list[$val['id']] = $val['name'];
        }
        $this->assign('cate_list', $cate_list);
        $this->sort = 'ordid ASC,';
        $this->order ='last_time DESC';
    }

	

    

    public function item_check(){
        //分类信息
        $res = $this->_cate_mod->field('id,name')->select();
        $cate_list = array();
        foreach ($res as $val) {
            $cate_list[$val['id']] = $val['name'];
        }
        $this->assign('cate_list', $cate_list);
        
        $map=array();
        $map['pass'] = 0;
		$map['status'] = 'sellout';
        
        //分页
        $count = M('items')->where($map)->count('id');
        $pager = new Page($count, 20);
        $select = M('items')->where($map)->order('id DESC');
        $select->limit($pager->firstRow.','.$pager->listRows);
        $page = $pager->show();
        $this->assign ("page", $page);
        $listarr = $select->select();
        $lists = array();
        foreach($listarr as $key=>$val){
			$lists[$key]			= $val;
		}

        $this->assign('list', $lists);
        $this->display();
    }

    public function item_checks(){
		$this->item_mod = M( "items" );		
		$p = I('p',1,'intval');
		$start = I('start','0-0-0','trim');
        $end   = I('end','0-0-0','trim');
        $step  = I('step',1,'intval');
        $sec   = I('sec',0,'intval');
        if ($start=='') {
        	$start='0-0-0';
        }
        if ($end=='') {
        	$end = '0-0-0';
        }
        if ($sec=='') {
        	$sec=0;
        }
        $start_temp = explode('-', $start);
        $end_temp = explode('-', $end);
        $startd = mktime(0,0,0,$start_temp[1],$start_temp[2],$start_temp[0]);
        $endd  = mktime(0,0,0,$end_temp[1],$end_temp[2],$end_temp[0]);
        if (($start!='0-0-0')&&($end!='0-0-0')) {
            $where['add_time'] = array(array("elt",$endd),array('egt',$startd));
        }elseif (($start!='0-0-0')&&($end=='0-0-0')) {
        	$where['add_time'] = array('egt',$startd);
        }elseif (($start=='0-0-0')&&($end!='0-0-0')) {
        	$where['add_time'] = array("elt",$endd);
        }
        		
        
		if (false === $itemcheckdata = F('itemcheck')) {
			$itemcheckdata['this_good'] = 0;
			$itemcheckdata['this_bad'] = 0;
			$itemcheckdata['that_good'] = 0;
			$itemcheckdata['that_bad'] = 0;
			$itemcheckdata['total'] = 0;
			$itemcheckdata['not_total'] = 0;
			F('itemcheck', $itemcheckdata);
		}
		if(false === $bad_item = F('bad_item')){
            $bad_item = array();
            F('bad_item', $bad_item);
		}
		$itemcheckdata['this_good'] = 0;
		$itemcheckdata['this_bad'] = 0;        

       if($sec==0){
	    $where['pass'] = "1";
			$page_size = $step;
			$startp = ($p-1)*$page_size;
			$startp = $startp-$itemcheckdata['that_bad'];	
        }
		if ($sec==1) {
		    $where['pass'] = '0';
			$page_size = $step;
			$startp = ($p-1)*$page_size;
			$startp = $startp-$itemcheckdata['that_good'];
		}

		$CheckItemCount = $this->item_mod->where($where)->count("id");
		$itemcheckdata['not_total'] = $CheckItemCount ;
        $order = "id asc ";
        $items_list = $this->item_mod->field('num_iid,shop_type,coupon_price')->where($where)->order( $order )->limit($startp,$page_size)->select();
	
        if($items_list){

		}else{
			F('itemcheck', false);
			$this->ajaxReturn(0, '更新完成，谢谢！');
		}
		
		if ($step==1) {
			
			foreach ($items_list as $k => $v) {
			$url = 'http://hws.m.taobao.com/cache/wdetail/5.0/?id='.$v['num_iid'];
			$ch2 = curl_init(); 
			curl_setopt($ch2, CURLOPT_URL, $url);
            curl_setopt($ch2, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch2, CURLOPT_FOLLOWLOCATION,true);
            curl_setopt($ch2, CURLOPT_MAXREDIRS,2);
            $texts = curl_exec($ch2);
            curl_close($ch2);
            if(!$texts){
            $texts = file_get_contents($url);
            }
			$ja = json_decode($texts,true);		
            $fo = array();
			$nm = json_decode($ja['data']['apiStack'][0]['value'],true);
			$fo['volume'] = $nm['data']['itemInfoModel']['totalSoldQuantity'];
			$fo['pai'] = $nm['data']['itemInfoModel']['priceUnits'][0]['name'];
			$pai =$fo['pai'];
			$pais = mb_substr($pai,0,2,'utf-8');            			
			$paiprice = str_replace('拍下','',$pai);
			$paiprice = str_replace('块','.',$paiprice);			
			$fo['price'] = $nm['data']['itemInfoModel']['priceUnits'][1]['price'];
            if(substr_count($fo['price'],'-')){
            $tmp = explode("-",$fo['price']);
            $fo['price'] = min($tmp[0],$tmp[1]);
            }
			$fo['coupon_price'] = $nm['data']['itemInfoModel']['priceUnits'][0]['price'];
            if(substr_count($fo['coupon_price'],'-')){
            $tmp1 = explode('-',$fo['coupon_price']);
            $fo['coupon_price'] = min($tmp1[0],$tmp1[1]);
            }
			$volume = $fo['volume'];			
			$price = $fo['price'];
			if($pais=='拍下'){
			$zkprice = $paiprice;
			}else{
			$zkprice = $fo['coupon_price'];
			}
			
			
			$fo['errorMessage']=$nm['data']['itemControl']['unitControl']['errorMessage'];      
			$check = $fo['errorMessage'];
			if ($check=='已下架') {
			$check = 'unsale' ;
			}else{
			$check = 'sale' ;
			}
			if ($check=='sale') {
			$itemcheckdata['this_good'] = $itemcheckdata['this_good']+1;
			$itemcheckdata['that_good'] = $itemcheckdata['that_good']+1;
			$datas['coupon_price'] = $zkprice;						
			$datas['price'] = $price;
			$datas['volume'] = $volume;			
			$this->item_mod->where($v)->save($datas);
			if ($sec==1) {
			$this->item_mod->where($v)->save(array('pass'=>1,'status'=>'underway'));
			}			     		
			}elseif ($check=='unsale') {
			$bad_item = F('bad_item');
			$bad_item[]=$v['num_iid'];
			F('bad_item',$bad_item);
			$itemcheckdata['this_bad'] = $itemcheckdata['this_bad']+1;
			$itemcheckdata['that_bad'] = $itemcheckdata['that_bad']+1;
			if ($sec==0) {
			$this->item_mod->where($v)->save(array('pass'=>0,'status'=>'sellout'));	
			}
			}
			$itemcheckdata['total'] = $itemcheckdata['total']+1;
			}
						
		}

		F('itemcheck', $itemcheckdata);
		$msg['title'] = '下架检测';
		$msg['p'] = $p+1;
		$msg['end'] = $end;
		$msg['start'] = $start;
		$msg['step']  = $step;
		$this->assign('item', $itemcheckdata);
		$resp = $this->fetch('ajax_itemcheck');
		$this->ajaxReturn(1, $msg, $resp);


    }
   
	
}
