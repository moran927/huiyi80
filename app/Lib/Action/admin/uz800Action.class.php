<?php
class uz800Action extends BackendAction {
	public function _initialize() {
        parent::_initialize();
        $this->_mod = D('uz800_cate');
    }

	public function index(){
		$this->display();
	}
	public function setting(){
		if(IS_POST){
			$cate_id		= $this->_post('cate_id', 'trim');
			$uz800_cate_id	= $this->_post('uz800_cate_id', 'trim');
			if(!$uz800_cate_id){
				$this->ajaxReturn(0, '采集分类必须选择！');
			}
			if(!$cate_id){
				$this->ajaxReturn(0, '入库分类必须选择！');
			}
			$map = array('id'=>$uz800_cate_id);
			$return = $this->_mod->field('cid,name,pid')->where($map)->find();
			//把采集信息写入缓存
			F('uz800_setting', array(
				'cate_id' => $cate_id,
				'cid' => $return['cid'],
				'pid' => $return['pid'],
			));			
			$this->collect();
		}
	}

    public function collect() {
		$source = '';
		if (false === $setting = F('uz800_setting')) {
            $this->ajaxReturn(0, L('illegal_parameters'));
        }
		$p	 = $this->_get('p', 'intval', 1);
		$url = 'http://zhe800.uz.taobao.com/list.php?&tag_id='.$setting['cid'].'&page='.$p;
		
		
		if($p==1){
			$totalcoll = 0;
		}else{
			$totalcoll = F('totalcoll');
		}
		
		$coll=0;
		$ftxia_https = new ftxia_https();
		$ftxia_https->fetch($url);
		$source = $ftxia_https->results;
		if(!$source){
			$source = file_get_contents($url);
			}						
		$source = rtrim(ltrim(trim($source), '('), ')'); 
		$source = iconv('GBK', 'UTF-8//IGNORE', $source);
		if(strpos($source,'对不起! 本分类下暂时没有淘宝限时特价商品!')){
			$this->ajaxReturn(0, '该类目暂时没有特价商品');
		}		
		if(preg_match_all('/<div class="deal(.*?)<\/div>/s', $source, $matchitem)) { 
			for($i=0;$i<count($matchitem[1]);$i++){				
				$item=$matchitem[1][$i];
				$title	=get_word($item,'<h2>','<\/h2>');
				$title = preg_replace( "@<strong(.*?)<\/strong>@is", "", $title); 
				$title= preg_replace("/<a[^>]+>/", "", $title);
                $title= preg_replace("/<\/a>/", "", $title);                 				
				$img	=get_word($item,'<img src="','_290x290.jpg"','\/>');
				$url	=get_word($item,'<p>','<\/p>');
				$url    = preg_replace( "@<img(.*?)\/>@is", "", $url);
				preg_match("/id=(\d*)/", $url ,$num);
				$iid	=isset($num[1]) ? $num[1] : '';		
				$price	=get_word($item,'<i>￥','<\/i>');
				$zkprice=get_word($item,'<\/b>','<em><\/em><\/em>');
				$intro = get_word($item,'<h6>','<\/h6>');
				$intro = preg_replace("@<em(.*?)<\/em>@is", "", $intro);
				$intro = trim($intro);
               if (stripos($url,'taobao.com') > 0) {
                $shop_type = 'C';
                } else {
                $shop_type = 'B';
                }				
				$likes	=rand(99,9999);				
				$ems	='1';
				$zkou = round(($zkprice/$price)*10,1);
							
				if(!defined(ENDTIME)){
							define('ENDTIME','72');
						}
						if(!$times){
							$times	=	(int)(time()+ENDTIME*3600);
						}
				$itemUrl = "http://hws.m.taobao.com/cache/wdetail/5.0/?id=".$iid;
				$ch = curl_init(); 
				curl_setopt($ch, CURLOPT_URL, $itemUrl);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
				curl_setopt($ch, CURLOPT_FOLLOWLOCATION,true);
				curl_setopt($ch, CURLOPT_MAXREDIRS,2);
				$contents = curl_exec($ch);
				curl_close($ch);	
				if(!$contents){
				$contents = file_get_contents($itemUrl);
				}				
				$comslist = json_decode($contents,true);	
				$info = array();
				$tmp = json_decode($comslist['data']['apiStack'][0]['value'],true);
				$info['title'] = $comslist['data']['itemInfoModel']['title'];
				$info['volume'] = $tmp['data']['itemInfoModel']['totalSoldQuantity'];				
				$info['pic_url'] = $comslist['data']['itemInfoModel']['picsPath'][0];
				$info['pic_url'] = str_replace("_320x320.jpg","",$info['pic_url']);
				$info['sellerId'] = $comslist['data']['seller']['userNumId'];
				$info['nick'] = $comslist['data']['seller']['nick'];
				$title = $info['title'];
				$nick =$info['nick'];
				$img = $info['pic_url'];
				$sellerId = $info['sellerId'];
				$volume = $info['volume'];
				$tag_list = d("items")->get_tags_by_title($title);
                $tags = implode(" ",$tag_list);   
				$itemarray['shop_type']=$shop_type;
				$itemarray['title']=$title;
				$itemarray['tags']=$tags;				
				$itemarray['pic_url']=$img;
				$itemarray['num_iid']=$iid;
				$itemarray['price']=$price;
				$itemarray['coupon_price']=$zkprice;
				$itemarray['volume']=$volume;
				$itemarray['nick']=$nick;
				$itemarray['sellerId']=$sellerId;
				$itemarray['intro']=$intro;
				$itemarray['ems']=$ems;
				$itemarray['likes']=$likes;
				$itemarray['cate_id']=$setting['cate_id'];
				$itemarray['coupon_rate']=$zkou*1000;
				$itemarray['coupon_end_time']=$times;
				$itemarray['coupon_start_time']=time();
						
				if($title && $img && $iid ){
					$result['item_list'][]=$itemarray;
				}
			  }
		 }
		// exit(print_r($result));
		foreach ($result['item_list'] as $key => $val) {
			$res= $this->_ajax_tb_publish_insert($val);
			if($res>0){
				$coll++;
			}
			$totalcoll++;
		}		
		if(strpos($source,'<span class="page-next" title="下一页">')){
			$this->ajaxReturn(0, '已经采集完成'.$p.'页,本次采集到'.$totalcoll.'件商品！请返回，谢谢');
		}
		
		F('totalcoll',$totalcoll);
		$this->assign('p',$p);
		$this->assign('coll', $coll); 
		$this->assign('totalnum', $totalnum);
		$this->assign('totalcoll', $totalcoll);
		$resp = $this->fetch('collect');
		$this->ajaxReturn(1, '', $resp);
    }


	    private function _ajax_tb_publish_insert($item) {        
        $item['title']=trim(strip_tags($item['title']));
		$result = D('items')->ajax_yg_publish($item);
        return $result;
    }
  
}