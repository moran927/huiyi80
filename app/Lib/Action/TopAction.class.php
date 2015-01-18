<?php
class TopAction extends FuncAction
{
    protected function _initialize()
    {
        Input::noGPC();
        if (false === ($setting = F('setting'))) {
            $setting = D('setting')->setting_cache();
        }
        C($setting);
        $this->assign('async_sendmail', session('async_sendmail'));
    }
    public function _empty()
    {
        $this->_404();
    }
    protected function _404($url = '')
    {
        if ($url) {
            redirect($url);
        } else {
            send_http_status(404);
            $this->display(TMPL_PATH . '404.html');
            die;
        }
    }
    public function getItem($num_iid)
    {
        import('ORG.Util.String');
        $result = $this->http('http://zaoshi.uz.taobao.com/api/get_tb.php?num_iid=' . $num_iid);
        $result = trim(String::autoCharset($result));
        if (isset($result)) {
            $result = json_decode($result, true);
            if ($result['tmall'] == 1) {
                $result['content'] = $this->http('http://www.laicaiji.com/index.php?s=/admin/public/desc/tmall/b/id/' . $num_iid);
            } else {
                $result['content'] = $this->http('http://www.laicaiji.com/index.php?s=/admin/public/desc/id/' . $num_iid);
            }
            if ($result['tmall'] == 1) {
                $result['tmall'] = 'B';
            } else {
                $result['tmall'] = 'C';
            }
            if ($item_info['freight_payer'] == 'buyer') {
                $result['ems'] = 0;
            } else {
                $result['ems'] = 1;
            }
            $result['coupon_start_time'] = date('Y-m-d H:i', time());
            $result['coupon_end_time'] = date('Y-m-d H:i', time() + 86400 * 7);
            return $result;
        } else {
            return false;
        }
    }
    public function http($url)
    {
        set_time_limit(0);
        $result = file_get_contents($url);
        if ($result === false) {
            $curl = curl_init();
            curl_setopt($curl, CURLOPT_URL, $url);
            curl_setopt($curl, CURLOPT_HEADER, false);
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
            $result = curl_exec($curl);
            curl_close($curl);
        }
        if (empty($result)) {
            $result = false;
        }
        return $result;
    }
    public function get_id($url)
    {
        $id = 0;
        $parse = parse_url($url);
        if (isset($parse['query'])) {
            parse_str($parse['query'], $params);
            if (isset($params['id'])) {
                $id = $params['id'];
            } elseif (isset($params['item_id'])) {
                $id = $params['item_id'];
            } elseif (isset($params['default_item_id'])) {
                $id = $params['default_item_id'];
            } elseif (isset($params['amp;id'])) {
                $id = $params['amp;id'];
            } elseif (isset($params['amp;item_id'])) {
                $id = $params['amp;item_id'];
            } elseif (isset($params['amp;default_item_id'])) {
                $id = $params['amp;default_item_id'];
            }
        }
        return $id;
    }
}