<?php
class jiuAction extends FirstendAction {
	
	public function _initialize() {
		parent::_initialize();
		$this->_mod = D("items");
		$this->_cate_mod = D('items_cate');
	}
	

	public function jiu() {
		$cid = '15';
		$k =   I('k','','trim');
		$sort = I('sort','new','trim');
		if($k){
			$where['title'] = array('like','%'.$k.'%');
		}
		if($cid){
			$cinfo = $this->_cate_mod->where(array('id'=>$cid))->find();
			if($cinfo['shop_type']){$where['shop_type'] = $cinfo['shop_type'];}
				if($cinfo['mix_price']>0){$where['coupon_price'] = array('egt',$cinfo['mix_price']);}
				if($cinfo['max_price']>0){$where['coupon_price'] = array('elt',$cinfo['max_price']);}
				if($cinfo['max_price']>0 && $cinfo['mix_price']>0){$where['coupon_price'] = array(array('egt',$cinfo['mix_price']),array('elt',$cinfo['max_price']),'and');}
				if($cinfo['mix_volume']>0){$where['volume'] = array('egt',$cinfo['mix_volume']);}
				if($cinfo['max_volume']>0){$where['volume'] = array('elt',$cinfo['max_volume']);}
				if($cinfo['max_volume']>0 && $cinfo['mix_volume']>0){$where['volume'] = array(array('egt',$cinfo['mix_volume']),array('elt',$cinfo['max_volume']),'and');}
				if($cinfo['thiscid']==0){
				  $id_arr = $this->_cate_mod->get_child_ids($cid, true);
				  $where['cate_id'] = array('IN', $id_arr);}
				 $this->page_seo = array(
		            'title' => $cinfo['seo_title'],
					'keywords' => $cinfo['seo_keys'],
					'description' => $cinfo['seo_desc'],
				 	);
		}else{
			$this->_config_seo(C('ftx_seo_config.index'));
		}
		$order = 'ordid asc';
		if($sort){
			switch ($sort) {
			case 'new':
				$order.= ', coupon_start_time DESC';
				break;
			case 'price':
				$order.= ', coupon_price asc';
				break;
			case 'hot':
				$order.= ', volume DESC';
				break;
			case 'rate':
				$order.= ', coupon_rate ASC';
				break;
			
		}
		}
        $this->assign('cur',$sort);
		$where['coupon_end_time'] = array('egt',time());
		$where['ems'] = 1;
		$where['status'] = 'underway';
		$where['pass'] = '1';
		$where['isshow'] = '1';
		$page_size = 20;
		$p = I('page',1,'intval');
		$start = $page_size * ($p - 1) ;
		if(false === $cate_list = F('cate_list')) {
			$cate_list = D('items_cate')->cate_cache();
		}
		$this->assign('cate_list', $cate_list); //分类		
		if( ($p==1) && ($sort=='new') && !$cid && (($items_list=S('items_listss'))===false) ){
			$items_list = $this->_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
		    S('items_listss',$items_list,1800);
		}elseif($p>1||$cid||($sort!='new')){
			$items_list = $this->_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
		}else{
			$items_list = $this->_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
		}
		$this->assign('cid',$cid);
		$this->assign('items_list', $items_list);
		$flag = true;
		$len = count($items_list);
		$this->assign('cate',$cinfo['name']);
	    if(IS_AJAX){
          $more_items = $this->fetch('more');
          $this->ajaxReturn('1',$len,$more_items);
	    }
		$this->assign('nav_curr', 'tuan');
        $this->_config_seo(C('ftx_seo_config.cate'), array(
            'cate_name' => $cinfo['name'],
            'seo_title' => $cinfo['seo_title'],
			'seo_keywords' => $cinfo['seo_keys'],
			'seo_description' => $cinfo['seo_desc'],
        ));
		$this->display();
	  }
	  	public function erjiu() {
		$cid = '17';
		$k =   I('k','','trim');
		$sort = I('sort','new','trim');
		if($k){
			$where['title'] = array('like','%'.$k.'%');
		}
		if($cid){
			$cinfo = $this->_cate_mod->where(array('id'=>$cid))->find();
			if($cinfo['shop_type']){$where['shop_type'] = $cinfo['shop_type'];}
				if($cinfo['mix_price']>0){$where['coupon_price'] = array('egt',$cinfo['mix_price']);}
				if($cinfo['max_price']>0){$where['coupon_price'] = array('elt',$cinfo['max_price']);}
				if($cinfo['max_price']>0 && $cinfo['mix_price']>0){$where['coupon_price'] = array(array('egt',$cinfo['mix_price']),array('elt',$cinfo['max_price']),'and');}
				if($cinfo['mix_volume']>0){$where['volume'] = array('egt',$cinfo['mix_volume']);}
				if($cinfo['max_volume']>0){$where['volume'] = array('elt',$cinfo['max_volume']);}
				if($cinfo['max_volume']>0 && $cinfo['mix_volume']>0){$where['volume'] = array(array('egt',$cinfo['mix_volume']),array('elt',$cinfo['max_volume']),'and');}
				if($cinfo['thiscid']==0){
				  $id_arr = $this->_cate_mod->get_child_ids($cid, true);
				  $where['cate_id'] = array('IN', $id_arr);}
				 $this->page_seo = array(
		            'title' => $cinfo['seo_title'],
					'keywords' => $cinfo['seo_keys'],
					'description' => $cinfo['seo_desc'],
				 	);
		}else{
			$this->_config_seo(C('ftx_seo_config.index'));
		}
		$order = 'ordid asc';
		if($sort){
			switch ($sort) {
			case 'new':
				$order.= ', coupon_start_time DESC';
				break;
			case 'price':
				$order.= ', coupon_price asc';
				break;
			case 'hot':
				$order.= ', volume DESC';
				break;
			case 'rate':
				$order.= ', coupon_rate ASC';
				break;
			
		}
		}
        $this->assign('cur',$sort);
		$where['coupon_end_time'] = array('egt',time());
		$where['ems'] = 1;
		$where['status'] = 'underway';
		$where['pass'] = '1';
		$where['isshow'] = '1';
		$page_size = 20;
		$p = I('page',1,'intval');
		$start = $page_size * ($p - 1) ;
		if(false === $cate_list = F('cate_list')) {
			$cate_list = D('items_cate')->cate_cache();
		}
		$this->assign('cate_list', $cate_list); //分类		
		if( ($p==1) && ($sort=='new') && !$cid && (($items_list=S('items_listss'))===false) ){
			$items_list = $this->_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
		    S('items_listss',$items_list,1800);
		}elseif($p>1||$cid||($sort!='new')){
			$items_list = $this->_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
		}else{
			$items_list = $this->_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
		}
		$this->assign('cid',$cid);
		$this->assign('items_list', $items_list);
		$flag = true;
		$len = count($items_list);
		$this->assign('cate',$cinfo['name']);
	    if(IS_AJAX){
          $more_items = $this->fetch('more');
          $this->ajaxReturn('1',$len,$more_items);
	    }
		
		$this->display();
	  }
	  	  	public function shijiu() {
		$cid = '16';
		$k =   I('k','','trim');
		$sort = I('sort','new','trim');
		if($k){
			$where['title'] = array('like','%'.$k.'%');
		}
		if($cid){
			$cinfo = $this->_cate_mod->where(array('id'=>$cid))->find();
			if($cinfo['shop_type']){$where['shop_type'] = $cinfo['shop_type'];}
				if($cinfo['mix_price']>0){$where['coupon_price'] = array('egt',$cinfo['mix_price']);}
				if($cinfo['max_price']>0){$where['coupon_price'] = array('elt',$cinfo['max_price']);}
				if($cinfo['max_price']>0 && $cinfo['mix_price']>0){$where['coupon_price'] = array(array('egt',$cinfo['mix_price']),array('elt',$cinfo['max_price']),'and');}
				if($cinfo['mix_volume']>0){$where['volume'] = array('egt',$cinfo['mix_volume']);}
				if($cinfo['max_volume']>0){$where['volume'] = array('elt',$cinfo['max_volume']);}
				if($cinfo['max_volume']>0 && $cinfo['mix_volume']>0){$where['volume'] = array(array('egt',$cinfo['mix_volume']),array('elt',$cinfo['max_volume']),'and');}
				if($cinfo['thiscid']==0){
				  $id_arr = $this->_cate_mod->get_child_ids($cid, true);
				  $where['cate_id'] = array('IN', $id_arr);}
				 $this->page_seo = array(
		            'title' => $cinfo['seo_title'],
					'keywords' => $cinfo['seo_keys'],
					'description' => $cinfo['seo_desc'],
				 	);
		}else{
			$this->_config_seo(C('ftx_seo_config.index'));
		}
		$order = 'ordid asc';
		if($sort){
			switch ($sort) {
			case 'new':
				$order.= ', coupon_start_time DESC';
				break;
			case 'price':
				$order.= ', coupon_price asc';
				break;
			case 'hot':
				$order.= ', volume DESC';
				break;
			case 'rate':
				$order.= ', coupon_rate ASC';
				break;
			
		}
		}
        $this->assign('cur',$sort);
		$where['coupon_end_time'] = array('egt',time());
		$where['ems'] = 1;
		$where['status'] = 'underway';
		$where['pass'] = '1';
		$where['isshow'] = '1';
		$page_size = 20;
		$p = I('page',1,'intval');
		$start = $page_size * ($p - 1) ;
		if(false === $cate_list = F('cate_list')) {
			$cate_list = D('items_cate')->cate_cache();
		}
		$this->assign('cate_list', $cate_list); //分类		
		if( ($p==1) && ($sort=='new') && !$cid && (($items_list=S('items_listss'))===false) ){
			$items_list = $this->_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
		    S('items_listss',$items_list,1800);
		}elseif($p>1||$cid||($sort!='new')){
			$items_list = $this->_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
		}else{
			$items_list = $this->_mod->where($where)->order($order)->limit($start . ',' . $page_size)->select();
		}
		$this->assign('cid',$cid);
		$this->assign('items_list', $items_list);
		$flag = true;
		$len = count($items_list);
		$this->assign('cate',$cinfo['name']);
	    if(IS_AJAX){
          $more_items = $this->fetch('more');
          $this->ajaxReturn('1',$len,$more_items);
	    }
		$this->assign('nav_curr', 'shijiu');
        $this->_config_seo(C('ftx_seo_config.cate'), array(
            'cate_name' => $cinfo['name'],
            'seo_title' => $cinfo['seo_title'],
			'seo_keywords' => $cinfo['seo_keys'],
			'seo_description' => $cinfo['seo_desc'],
        ));
		$this->display();
	  }
}