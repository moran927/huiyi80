<!--文章系统start-->
<center>
  <div class="bottom1">
    <div class="bottom_tp">
      <span>最新文章</span>
      <a class="kanmore" href="{:U('article/index')}" target="_blank">
        <b class="txt">查看更多</b>
      </a>
    </div>
    <div class="mains2">
      <div class="content_text" style="margin: auto 20px">
        <ul>
        <volist name="article" id="data">     
		<li>
        <a href="{:U('article/read',array('id'=>$data['id']))}" target="_blank">{$data['title']}</a>
        <span>{$data['add_time']|date="Y-m-d",###}</span>
</li>
		</volist>
                  
             </ul>          
      </div>
      <div class="clr"></div>
    </div>
  </div>
</center>
<!--文章系统end-->