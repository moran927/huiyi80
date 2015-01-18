<!DOCTYPE HTML>
<html lang="zh-CN">
  <head>
      <include file='public:head'/>
  </head>
  <body>
<div id="wrapper">
       <div class="scroller">
        
<hgroup class="breadcrumb"><span><a href="{:C('ftx_headerm_html')}">返回</a></span>
  搜索
</hgroup>
<!-- 搜索框 -->
<div class="search">
<form id="myform" method="get" action="{:C('ftx_header_html')}" onsubmit="return search_submit();">
        <input type="hidden" name="m" value="index">
        <input type="hidden" name="a" value="so">
        <input x-webkit-speech="" name="k" id="keywords" onblur="this.value==''?this.value=this.title:null" onfocus="this.value==this.title?this.value='':null" title="" value="" class="text">
        <button type="submit" value="" class="btn2"></button>
      </form>
</div>


      </div>
    </div>
  </body>
  <script type="text/javascript">
  var FTXIA = {
    'root':'__ROOT__',
    'siteurl':"",
    'ajax':"{:U('index/index',array('cid'=>$cid,'sort'=>$cur))}",
  };
</script>
</html>
