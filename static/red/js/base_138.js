/******************************** 声明函数、变量对象，不对DOM进行任何操作 ********************************/

// JCN命名空间
var J = {
	staticDomain : "http://image.guang.j.cn/images",
	speed : 300,//动画速度
	_pageZindex : 0,//Z轴 页面级
	pageZindex : function(){
		return this._pageZindex ++;
	},
	_floatZindex : 99,//Z轴 浮层级
	floatZindex : function(){
		return this._floatZindex++;
	},
	_positionZindex : 999,//Z轴 定位级
	positionZindex : function(){
		return this._positionZindex++;
	},
	//日志是否开启
	log : function(){
		return false//window.console && console.log ? true : false;
	},	
	//增加样式语句
	addStyle : function(cssText){
		var style = document.createElement("style");
		style.type = "text/css";
		try {
			style.appendChild(document.createTextNode(cssText));
		} catch (ex) {
			style.styleSheet.cssText = cssText;
		}
		var head = document.getElementsByTagName("head")[0];
		head.appendChild(style);
	},	
	//JS错误信息处理与收集
	err : {
		//转换信息编码
		toQueryString: function(o) {
			var res = [], p, encode = encodeURIComponent;
			for (p in o) {
				 if (o.hasOwnProperty(p))
				 	res.push(encode(p) + '=' + encode(o[p]));
			}
			return res.join('&');
		},
		//发送信息
		beacon: function(msg) {
			var img = new Image(1,1);
			img.src = 'http://www.j.cn/js_error/1x1.png?' + msg;
		},
		//接受信息
		log: function(info) {
			if(window.console && console.log)
				console.log(info);
			this.beacon(this.toQueryString(info));
		},
		//接受处理函数
		runMethod: function(method) {
			try {
				method();
			} catch(ex) {
				this.log({
					msg : ex.message,
					type : 'try-catch'
				});
			}
		}
	},
	//遮罩创建
	createBackgroundDom : function(config){
		//获取遮罩容器全局zIndex级别
		var createBackgroundDom_zIndex = this.positionZindex(),
			zIndex = config && config.zIndex != undefined ? config.zIndex : createBackgroundDom_zIndex,
			opacity = config && config.opacity != undefined ? config.opacity : 0.5;
		var obj = $("<div>").css({
				"position": "absolute",
				"top": "0",
				"left": "0",
				"width": "100%",
				"height": $(document).outerHeight(true),
				"background": "#000",
				"display": "none",
				"overflow": "hidden",
				"z-index": zIndex,
				"opacity": opacity
			}).addClass("js-float-bg")
			//用于遮盖<select>、<object>、<iframe>等系统顶级控件
			//.html("<iframe src='about:blank' frameborder='0' scrolling='no' width='9999' height='9999' style='opacity:0;filter:alpha(opacity=0);'></iframe>")
			.appendTo('body');
		return obj;
	},
	/*
	 *	# 自定义UI的alert方法 #
	 */
	alert : function(val){
		window.alert(val);
	},
	//遮罩弹窗
	mask : {
		defaults : {
			bg : {
				cssName : "js-mask-bg"
			},
			cont : {
				cssName : "js-mask-cont"
			}
		},
		/*
		*	# 返回对象在页面中的绝对居中坐标 #
		*	@param	{DomObject}	config.obj	被计算的对象
		*	@return	{Json > Number}	{x,y}	计算后的坐标值
		*/
		getXY : function(config){
			var x,y;
			//获取窗口高宽、滚动条偏移量
			var winObj = $(window),
				doc = $(document),
				win = {
					T : winObj.scrollTop(),
					L : winObj.scrollLeft(),
					H : doc.outerHeight(true),
					W : doc.outerWidth(true)
				};
			//获取内容对象绝对高宽
			var obj = $(config.obj),
				objH = obj.outerHeight(true),
				objW = obj.outerWidth(true);
			//水平坐标计算
			x = win.L + win.W/2 - objW/2;
			//垂直坐标计算（判断是否超出顶部边界）
			if(objH > win.H)
				y = win.T;
			else
				y = win.T + win.H/2 - objH/2;
			//返回坐标值
			return {
				x : x,
				y : y,
				h : objH,
				w : objW
			}
		},
		run : function(options){
			var defaults = {
				obj : null,
				type : null,
				callback : false
			};
			defaults = $.extend(defaults,options);
			if(defaults.obj && defaults.type){
				defaults.obj[defaults.type](function(){
					if($.isFunction(defaults.callback)){
						defaults.callback();
						defaults.callback = null;
					}
				});
				return defaults.obj;
			}
		},
		/*
		*	J.mask.hide(index,callback)
		*	# 关闭弹层 #
		*	@param	{Number|Function}	name[可选]	指定要关闭的弹层索引，类型为function时，转为callback处理
		*	@param	{Function}	callback[可选]	回调函数
		*/
		hide : function(index,callback){
			var that = this,
				contObj = $("." + this.defaults.cont.cssName),
				bgObj = $("." + this.defaults.bg.cssName),
				allObj = contObj.add(bgObj);
			if(typeof index == "number"){
				allObj = contObj.eq(index).add(bgObj.eq(index));
			}
			else if($.isFunction(index)){
				callback = index;
			}
			return that.run({
				obj : allObj,
				type : "fadeOut",
				callback : callback
			});
		},
		/*
		*	J.mask.show(html,callback)
		*	# 显示弹层 #
		*	@param	{Object|String|Number}	html	指定要弹出的内容
		*	@param	{Function}	callback[可选]	回调函数
		*/
		show : function(html,callback){
			//创建遮罩容器
			var that = this,
				bgObj = J.createBackgroundDom().addClass(this.defaults.bg.cssName);
			if(!html){
				return that.run({
					obj : bgObj.appendTo("body"),
					type : "fadeIn"
				});
			}
			//创建内容容器
			var contObj = $("<div>")
				.hide()
				.addClass(this.defaults.cont.cssName)
				.append(html);
			//集合弹窗容器
			var allObj = bgObj.add(contObj)
			//将弹窗容器插入到body
				.appendTo("body");
			//若HTML为Dom对象则使其显示
			if(typeof html == "object")
				$(html).show();
			//计算弹窗容器坐标以及遮罩层zIndex级别
			var offset = this.getXY({
					obj : contObj
				}),
				positionType = "fixed",
				top = "50%",
				left = "50%",
				mt = -(offset.h/2),
				ml = -(offset.w/2),
				zIndex = bgObj.css("z-index") - 0 + 1;
			//IE6 Fix
			if(!window.XMLHttpRequest){
				positionType = "absolute";
				top = offset.y;
				left = offset.x;
				mt = "";
				ml = "";
				function ie_fix(){
					var offset = J.mask.getXY({ obj : contObj });
					return contObj.css({
						top : offset.y,
						left : offset.x
					});
				};
				$(window).on("resize scroll",ie_fix);
			}
			//设置内容容器在页面中的位置
			contObj.css({
				"position" : positionType,
				"top" : top,
				"left" : left,
				"margin-top" : mt,
				"margin-left" : ml,
				"z-index" : zIndex
			});
			//显示遮罩与内容容器
			that.run({
				obj : allObj,
				type : "fadeIn"
			});
			return contObj;
		}
	},
	//顶部导航二级分类
	topCate : function(obj){
		$(obj).each(function () {
			$(this).click(function () {
				$(this).addClass("cur").siblings().removeClass("cur");
			});
			$(this).find("i").click(function (event) {
				event.stopPropagation();
				$(this).parent().parent().removeClass("cur")
			});
		});
	}
};

//极速闪烁提示
J.flashTips = function(msg,type){
	var tmpls = [
		"<div style=\"position:absolute;left:50%;top:150px;z-index:" + J.positionZindex() + ";width:100px;padding:.5em;margin-left:-50px;text-align:center;font-size:18px;font-family:Microsoft YaHei,SimHei;color:#fff;background:#ea4372;letter-spacing:2px;border-radius:5px;font-weight:bolder;box-shadow:0 0 5px rgba(0,0,0,.5);\">" + msg + "</div>"
	];
	type = type && typeof(type) == Number ? type : 0;
	var obj = $(tmpls[type]).css("opacity",0);
	obj.appendTo("body").animate({
		"opacity" : 0.9,
		"top" : "200px"
	},200).delay(1500).animate({
		"opacity" : 0,
		"top" : "150px"
	},500,function(){
		$(this).remove();
	});
};

//图片预加载
J.loadImage = function(url,callback){
	if(url.constructor === Array){
		var that = this,
			urls = url;
		url = urls.pop();
		if(urls.length < 1){
			urls = null;
		}
	}
	var img = new Image();
	img.onload = function () {
		if(urls){
			that.loadImage(urls,callback);
		}
		else{
			img.onload = null;
			callback();
		}
	}
	img.src = url;
};

//加入收藏夹
J.sidebar = function(e) {
	var href = this.href || document.location,
		title = this.title || document.title;
	try {
		if (window.sidebar) {
			sidebar.addPanel(title, href, "");
		} else {
			external.addFavorite(href, title);
		}
	}catch (e) {
		J.alert("加入收藏失败，请按Ctrl+D进行添加");
	}
	return false;
};

J.cookie = {
	/**
	 * @public 设置cookie。setCookie(key, value, expires, path, domain, secure)
	 * @method setCookie
	 * @param {String} key cookie的键名
	 * @param {String} val cookie字段的值
	 * @param {Number} [expires] 保存天数
	 * @param {String} [domain] cookie域名
	 * @param {String} [path] cookie路径
	 * @param {Boolean} [secure] cookie是否为安全传输
	 * @return void
	 */
	set:function(key, val, expires, domain, path, secure){
		if (!path) path = '/';
		expires = expires || 0;
		//expires = expires * 86400000;
		var e_date = new Date();
		e_date.setTime(+e_date + expires);
		document.cookie = 
			key + '=' + encodeURIComponent(val)
			+ (expires ? '; expires=' + e_date.toGMTString() : '')
			+ (domain ? '; domain=' + domain : '')
			+ (path ? '; path=' + path : '')
			+ (secure ? '; secure' : '');
	},
	
	/**
	 * 获取 cookie 值
	 * @param {String} key cookie字段的名字
	 * @return {String} 如果 key 不存在，返回 null
	 */
	get: function(key) {
		var c = document.cookie.split("; ");
		for (var i = 0; i < c.length; i++) {
			var p = c[i].split("=");
			if (key == p[0]) try { return decodeURIComponent(p[1]) } catch (e) { return null }
		}
		return null;
	},
	
	/**
	 * 删除 cookie 值
	 * @param {String} key cookie字段的名字
	 * @param {String} domain
	 * @param {String} path
	 */
	del: function(key, domain, path) {
		document.cookie = key + "=1" + (path ? "; path="+path:"; path=/")+(domain?"; domain="+domain:"")+";expires=Fri, 02-Jan-1970 00:00:00 GMT";
	},
	
	/**
	 * 获取域名以.分隔的最后两段，如music.xx.com 返回 .xx.com
	 * @return {String} 返回域名以.分隔的最后两段
	 */
	getDomain:function(){
		return "." + location.host.split(".").slice(-2).join(".");
	}
};

//自定义事件
J.event = {
	//滚动位置
	scrollPosition : function(options){
		if(options.position && options.callback){
			var defaults = {
					positionType : "top",
					position : false,
					callback : false,
					one : true
				},
				doc = $(document),
				win = $(window);
			options = $.extend(defaults,options);
			function init(){
				var winHeight = win.height(),
					docScrollTop = doc.scrollTop(),
					docHeight = doc.outerHeight();
				if((winHeight + docScrollTop)/docHeight >= options.position){
					if(options.one){
						win.off("resize scroll",init);
					}
					options.callback();
				}
			};
			win.on("load resize scroll",init);
		}
		else if(J.log()){
			console.log("J.event.scrollPosition error");
		}
	}
};

//筛选模块 交互支持
J.filter = function(){
	var wrap = $(".js-base-filter");
	wrap.each(function(){
		var timer,
			numObj = $(".num",this),
			numInputs = $("input",numObj),
			numButton = $("button",numObj),
			numMore = $("div",numObj),
			colorObj = $(".color",this),
			colorMore = $("ul",colorObj);
		//交互：价格表单
		numInputs.focus(function(){
			clearTimeout(timer);
			numMore.show();
		})
		.blur(function(){
			timer = setTimeout(function(){
				numMore.hide();
			},100);
		});
		numButton.mouseover(function(){
			clearTimeout(timer);
		})
		.click(function(){
			numMore.hide();
		});
		//交互：更多颜色
		colorObj.hover(
			function(){
				colorMore.show();
			},
			function(){
				colorMore.hide();
			}
		);
	});	
};

// 返回顶部
J.goToTop = function(obj) {
	var that = this,obj = $(obj);
	//注册事件 - 返回顶部
	obj.click(function() {
		$("html, body").animate({
			scrollTop: 0
		},that.speed);
	});
	//合适时间显示返回对象
	var bool = false;
	obj.hide();
	$(window).on("scroll resize load",function(){
		if($(document).scrollTop() >= 300){
			if(!bool){
				obj.fadeIn();
				bool = true;
			}
		}
		else{
			if(bool){
				obj.fadeOut();
				bool = false;
			}
		}
	});
};

//固定位置
J.fixed = function(options){
	//阈值，防止重复读写DOM属性值
	var top = true,bottom = true;
	//计算
	function fixed(){
		var scrollTop = $(document).scrollTop(),
			scrollBottom = $(document).height() - scrollTop - $(window).height();
		if(window.XMLHttpRequest){
			if(options.top && scrollTop >= options.top[0]){
				if(options.bottom && scrollBottom <= options.bottom){
					if(bottom){
						options.obj.css({
							"position" : "absolute",
							"top" : options.obj.offset().top
						});
						bottom = false;
					}
					top = true;
					return;
				}
				if(top){
					options.obj.css({
						"position" : "fixed",
						"top" : options.top[1]
					});
					top = false;
					bottom = true;
				}
			}
			else{
				if(!top){
					options.obj.css({
						"position" : "",
						"top" : ""
					});
					top = true;
					bottom = true;
				}
			}
		}		
	};
	//注册事件（滚动、对象尺寸改变、载入）
	$(window).on("scroll resize load",fixed);
};

J.scrollFloat = function(options){
	var defaults = {
		top : 0,
		bottom : 0,
		fixedTop : 0,
		fixedBottom : 0
	};
	defaults = $.extend(defaults,options);
	//全局对象、变量
	var win = $(window),
		winHeight = win.height(),
		doc = $(document),
		objOffset = defaults.obj.offset(),
		objHeight = defaults.obj.outerHeight(),
		scrollTop_,
		scrollBottom_,
		stop_;
	//判断滚动方向
	function isScroll(){
		var re,
			scrollTop = doc.scrollTop();
		if(scrollTop > scrollTop_){
			re = "bottom";
		}
		else if(scrollTop < scrollTop_){
			re = "top";
		}
		scrollTop_ = scrollTop;
		return re;
	};
	//判断是否触顶
	function isTop(){
		var re = false;
		if(defaults.obj.offset().top >= scrollTop_){
			re = true;
		}
		return re;
	};
	//判断是否触底
	function isBottom(){
		var re = false;
		if(defaults.obj.offset().top + (objHeight - winHeight) <= scrollTop_){
			re = true;
		}
		return re;
	};
	//替换fixed为absolute定位
	var position = {
		top : function(){
			if(objOffset.top >= scrollTop_){
				defaults.obj.css({
					"position" : "",
					"top" : "",
					"bottom" : "",
					"margin" : "",
					"left" : ""
				});
			}
			else{
				defaults.obj.css({
					"position" : "absolute",
					"top" : defaults.obj.offset().top,
					"bottom" : ""
				});
			}
			stop_ = false;
		},
		bottom : function(){
			var topOld = doc.height() - objHeight - defaults.bottom,
				topNew = defaults.obj.offset().top;
			if(topOld <= topNew){
				topNew = topOld;
			}
			defaults.obj.css({
				"position" : "absolute",
				"top" : topNew,
				"bottom" : ""
			});
			stop_ = false;
		}
	};
	//屏幕定位
	var fixed = {
		top : function(){
			defaults.obj.css({
				"position" : "fixed",
				"top" : defaults.fixedTop,
				"left" : objOffset.left,
				"margin" : "0",
				"bottom" : ""
			});
		},
		bottom : function(){
			defaults.obj.css({
				"position" : "fixed",
				"top" : "",
				"left" : objOffset.left,
				"margin" : "0",
				"bottom" : defaults.fixedBottom
			});
		}
	};
	//注册事件
	win.scroll(function(){
		var is = isScroll()
		if(is == "top"){			
			if(defaults.top > scrollTop_){
				position.top();
				return;
			}
			if(isTop()){
				if(!stop_){
					fixed.top();
					stop_ = true;
				}
			}
			else if(stop_){
				position.top();
			}
		}
		else if(is == "bottom"){
			if(doc.height() - winHeight - defaults.bottom < scrollTop_){
				position.bottom();
				return;
			}
			if(isBottom()){
				if(!stop_){
					fixed.bottom();
					stop_ = true;
				}
			}
			else if(stop_){
				position.bottom();
			}
		}
	});
};


//加入衣橱
J.addMyWardrobe = {
	//执行click事件,点击按钮触发动画效果
	objMyWardrobe : function(objBtn,callback){
		$(document).on("click",objBtn,
			function(){
				//加入衣橱动画效果
				if($(this).length){
					J.addMyWardrobe.addAnimate(this);
					//回调函数
					if(callback){
						callback.call(this);
					}
				}
			}
		);
	},
	creaIcon : function(){
		var icon = $('<i class="icon-addAnimate-icon" id="js-base-addAnimate-icon"></i>');
		$(icon).appendTo("body");
		return icon;
	},
	getOffset : function(obj){
		var offset = obj.offset();
		return {
			x : offset.left + 20,
			y : offset.top
		}
	},
	//动画执行，obj为点击按钮对象
	addAnimate : function(obj) {
		//获取对象坐标值
		var aoffsetL = $(obj).offset().left,
			aoffsetT = $(obj).offset().top,
			//我的衣橱 对象
			myyichu = $("#js-base-addAnimate-myyichu"),
			//我的衣橱 坐标
			myyichuOffset = J.addMyWardrobe.getOffset(myyichu),
			//图标+1
			addOneObj = $("#js-base-addAnimate-addOne"),
			//图标衣橱
			iconObj = $("#js-base-addAnimate-icon");
		//如果图标衣橱不存在，则创建图标衣橱
		if(!iconObj.length){
			iconObj = J.addMyWardrobe.creaIcon();
		}
		//图标衣橱 动画开始
		iconObj.css({
			"left": aoffsetL,
			"top": aoffsetT
		}).show().stop(true).animate({
			top: [myyichuOffset.y, 'easeOutCubic'],
			left: myyichuOffset.x,
			opacity: 0
		}, 500, 'linear', function() {
			//图标衣橱 隐藏
			$(this).css({
				"display": "none",
				"opacity": 1,
				"left": myyichuOffset.x + 4,
				"top": myyichuOffset.y + 20
			});
			clearTimeout(animateShow);
			//图标+1 动画开始
			var animateShow = setTimeout(function() {
				addOneObj.fadeIn("fast").stop(true).animate({
						top: "15px",
						opacity: 1
					}, J.speed, function() {
						clearTimeout(newsAdd);
						//图标+1 隐藏
						var newsAdd = setTimeout(function() {
							addOneObj.css({
								"opacity": 1,
								"display": "none",
								"top": "40px"
							});
							//我的衣橱 闪烁
							J.lightning(myyichu);
						}, 500);
					});
			}, 400);
		});
	}
};

//标签云
J.tagCloud = function(tagcloudObj){
	var tagLength = tagcloudObj.length;
	//判断节点是否存在
	if(tagLength){
		$(tagcloudObj).each(function () {
			var rand = parseInt(Math.random() * 27);
			$(this).addClass("tags" + rand);
		});
	}
};

//站内全局导航交互操作：显示与隐藏全部分类
J.webNav = function(config){
	var speed,bool;
	speed = [10,200];
	function show(){
		if(bool)
			config.contObj.addClass(config.classHover);
	};
	function hide(){
		if(!bool)
			config.contObj.removeClass(config.classHover);
	};
	function s_show(){
		bool = true;
		setTimeout(show,speed[1]);
	};
	function s_hide(){
		bool = false;
		setTimeout(hide,speed[0]);
	};
	config.eventObj.mouseover(s_show).mouseout(s_hide);
	config.closeObj.click(s_hide);
};

//对象闪烁动画
J.lightning = function(obj){
	$(obj).stop(true).animate({
		'opacity': 0.4
	}, 200).animate({
		'opacity': 1
	}, 200).animate({
		'opacity': 0.4
	}, 200).animate({
		'opacity': 1
	}, 200).animate({
		'opacity': 0.4
	}, 200).animate({
		'opacity': 1
	}, 200).animate({
		'opacity': 0.4
	}, 200).animate({
		'opacity': 1
	}, 200);
};

/*
 * 表单项文本框 - 默认文本的交互行为支持
 * @param	{Object}	objs	Dom对象，可多个
 * @param	{Array}	colors	[默认字体颜色,改变后字体颜色]
 */
J.placeholder = function(objs,colors) {
	//参数处理
	var supportPlaceholder = 'placeholder' in document.createElement('input'),
		$this = $(objs),
		relogs = [],
		ui = {};
	colors = colors && colors.constructor == Array ? colors : ["gray","black"];
	//表现
	ui.focus = function(obj,placeholderText){
		obj.val("").css("color",colors[1]);
	};
	ui.blur = function(obj,placeholderText){
		obj.val(placeholderText).css("color",colors[0]);
	};
	//行为初始化
	function event_init(obj){
		//非支持placeholder
		if(!supportPlaceholder){
			var placeholderText = obj.attr("placeholder");
			if(typeof placeholderText !== "undefined"){
				var valueText = obj.val();
				if(valueText !== ""){
					return ui_init(obj,placeholderText,valueText);
				}
				return ui_init(obj,placeholderText);
			}
		}
		return 0;
	};
	function ui_init(obj,placeholderText,valueText){
		if(!valueText){
			ui.blur(obj,placeholderText);
		}
		obj.focus(function(){
			if(this.value === placeholderText){
				ui.focus($(this),placeholderText);
			}
		}).blur(function(){
			if(this.value === ""){
				ui.blur($(this),placeholderText);
			}
		});
		return 1;
	};

	//如果对象存在
	if($this.length){
		//遍历对象并初始化
		$this.each(function(){
			relogs.push(event_init($(this)));
		});
		if(this.log()){
			console.log("J.placeholder : ",relogs);
		}
	}
};

//收藏与登录弹窗
J.nav_login = function(obj){
	var that = this,
		box = obj && $(obj).length ? $(obj) : false || $("#js-base-nav_login");
	if(box.length){		
		//显示内容并接受对象
		var showObj = this.mask.show(box);
		if(!box.attr("data-status")){
			//注册事件到指定对象
			box.on("click","[data-type=close]",function(){
				that.mask.hide();
			});
		}
		box.attr("data-status",true);
	}
	else if(J.log()){
		console.log("J.nav_login() 必选对象不存在");
	}
};

//底部提示
J.bottom_tips = function(obj,x){
	if(!obj || !obj.length){
		return
	}
	//共用对象缓存
	var that = this,
		doc = $(document),
		win = $(window),
		objH = obj.outerHeight(),
		fixedBottom = - objH,
		bottom = 0,
		_x = x && x.constructor === Array ? x : ["left",0];
	obj.css("position" , "fixed").css(_x[0] , _x[1]);
	//ie6
	if(!window.XMLHttpRequest){
		positionType = "absolute";
		fixedBottom = doc.scrollTop() + win.outerHeight();
		bottom_ = fixedBottom - objH - bottom;
		obj.css({
			"position" : "absolute",
			"top" : bottom_
		}).show();
		function ie_ifx(){
			var bottom_ = doc.scrollTop() + win.outerHeight() - objH - bottom;
			obj.css({
				"top" : bottom_
			});
		};
		win.on("resize scroll",ie_ifx);
	}
	//!ie6
	else{
		obj.css("bottom", fixedBottom).show().animate({
			"bottom" : bottom
		});
	}
	//init
	if(!obj.attr("data-status")){
		//注册事件到指定对象
		obj.on("click","[data-type=close]",function(){
			if(!window.XMLHttpRequest){
				fixedBottom = objH + doc.outerHeight();
				obj.animate({
					"top" : fixedBottom
				},function(){
					$(this).hide();
				});
			}
			else{
				obj.animate({
					"bottom" : fixedBottom
				},function(){
					$(this).hide();
				});
			}
		});
		obj.attr("data-status",true);
	}
};

//加参数,如果有会替换掉已有的 - 杨涛
function setPram(targetUrl,pname,pvalue){
	if(targetUrl.indexOf("?") == -1){
		targetUrl += "?"+pname+"="+pvalue;
	}else if(targetUrl.indexOf(pname+"=") == -1){
		targetUrl += "&"+pname+"="+pvalue;
	}else{
		var re = new RegExp("([&|?]"+pname+")=[^&]*","gi");
		targetUrl = targetUrl.replace(re,"$1="+pvalue)
	}
	return targetUrl;
};

//获取指定群信息，"类型" : [[群号,API链接],[群号,API链接]]
J.getQqun = function(key){
	//转换渠道接口名称
	var type = {
		"弹窗" : "%E7%BD%91%E7%AB%99-%E5%BC%B9%E7%AA%97",
		"静音预留" : "%E7%BD%91%E7%AB%99-%E5%BC%B9%E7%AA%97",
		"网站-弹窗" : "%E7%BD%91%E7%AB%99-%E5%BC%B9%E7%AA%97",

		"列表" : "%E7%BD%91%E7%AB%99-%E5%88%97%E8%A1%A8",
		"静音" : "%E7%BD%91%E7%AB%99-%E5%88%97%E8%A1%A8",
		"网站-列表" : "%E7%BD%91%E7%AB%99-%E5%88%97%E8%A1%A8",

		"许愿" : "%E7%BD%91%E7%AB%99-%E8%AE%B8%E6%84%BF",
		"网站-许愿" : "%E7%BD%91%E7%AB%99-%E8%AE%B8%E6%84%BF",
		
		"网站-风格测试" : "%E7%BD%91%E7%AB%99-%E9%A3%8E%E6%A0%BC%E6%B5%8B%E8%AF%95",
		"app-范儿" : "app-%E8%8C%83%E5%84%BF",
		"app-明星" : "app-%E6%98%8E%E6%98%9F",
		"ad-风格测试" : "ad-%E9%A3%8E%E6%A0%BC%E6%B5%8B%E8%AF%95",
		"360-风格测试" : "360-%E9%A3%8E%E6%A0%BC%E6%B5%8B%E8%AF%95",
		"360sem-风格测试" : "360sem-%E9%A3%8E%E6%A0%BC%E6%B5%8B%E8%AF%95",
		"baidu-风格测试" : "baidu-%E9%A3%8E%E6%A0%BC%E6%B5%8B%E8%AF%95",
		"ad-列表" : "ad-%E5%88%97%E8%A1%A8",
		"ad-选款师" : "ad-xks",
		"ad-QQ群": "ad-QQ%E7%BE%A4"
	};

	return type[key];
};

//获取指定群信息，"类型" : [[群号,API链接],[群号,API链接]]
J.getQunData = function(type,callback){
	$.ajax({
		url : "http://www.j.cn/qqgroup/" + type + "?last_spread",
		dataType : "jsonP",
		success : function(msg){
			if(callback){
				callback(msg);
			}
		}
	})
};

//获取数组中随机单项
J.getRandomNum = function(arr){
	var min = 0,
		max = arr.length,
		r = parseInt(Math.random() * (max - min) + min);
	return arr[r];
};

//qq群随机显示
J.qqunView = function(config){
	var that = this;
	if(config.qqunCode.length && config.qqunUrl.length && config.data.constructor === String){
		function __init(msg){
			if(msg && msg.length){
				//获取随机数
				var qun = that.getRandomNum(msg),
					qunLink = qun.link.replace(/.*idkey=(.[^"]*).*/gi,"$1");
				//插入数值
				config.qqunCode.html(qun.qq_group_num);
				var linkPath = "http://www.j.cn/xkskt/qqgroup?isie="+ ($.browser.msie == undefined ? 0 : 1) + "&qquncode=" + qunLink + "&qqun=" + qun.qq_group_num;
				//qzone Api
				if(window.fusion2 && fusion2.nav && fusion2.nav.open){
					config.qqunUrl.click(function(event){
						fusion2.nav.open({
							url : linkPath
						});
						event.preventDefault();
					});
				}
				else{
					config.qqunUrl.attr('href',linkPath);
				}
				if(config.callback)
					config.callback([qun.qq_group_num,qunLink]);
			}
		};
		this.getQunData(config.data,__init);
	}
};

//发送日志 统计
J.sendLog = function(obj){
	var attr = obj.attr("data-log").split(",");
	if(attr[0].constructor === String && attr[1].constructor === String){
		$.get("/logger/" + attr[0] + "?location=" + attr[1],function(){});
	}
};

//1x1Git 日志 统计
J.send1x1 = function(name,val,callback){
	var img1x1 = new Image();
	img1x1.onload = function(){
		if(callback){
			callback();
		}
	};
	if(val && typeof val == "string"){
		img1x1.src = "http://www.j.cn/js/1x1.gif?ucs=UTF-8&un=statistic_channel." + name + "_logname." + val + "_login.0";
	}
};

//获取html静态模版
J.getTmpl = function(fileName,callback){
	var _url = J.staticDomain + "/js/template/" + fileName;
	//var _url = "http://192.168.2.12/js/template/" + fileName;
	$.ajax({
		url : _url,
		dataType : "jsonP",
		jsonpCallback : "staticTemplate",
		success : function(msg){
			if(callback)callback.call($(msg));
			else $("body").append(msg);
		}
	});
};

J.flashCopy = function(config){
	//设置默认参数
	var defaults = {
		flashName : "http://www.j.cn/copy.swf",
		flashBox : $("<div>"),
		flashW : 100,
		flashH : 20,
		val : ""
	};
	//载入用户参数
	config = $.extend(defaults,config);
	//写入需要复制的内容
	this.setVal = function(val){
		//更新将要被复制的内容
		if(val || val == "")
			config.val = val;
		//重新载入flash（传参需要）
		this.reset();
	};
	//获取flash容器，用于设置它的位置以及表现形态
	this.getBox = function(){
		return config.flashBox;
	};
	//加载flash
	this.load = function(){
		var flashStr = "<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000 codebase=http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0\" width=\""+ config.flashW +"\" height=\""+ config.flashH +"\">" +
				"<param name=\"movie\" value="+ config.flashName +">" +
				"<param name=\"flashvars\" value=\"cliptext="+ config.val +"&callback="+ config.callback +"&error="+ config.error +"\">" +
				"<param name=\"quality\" value=\"high\">" +
				"<param name=\"wmode\" value=\"transparent\">" +
				"<param name=\"allowScriptAccess\" value=\"always\">" +
				"<embed src=\""+ config.flashName +"\" allowScriptAccess=\"always\" flashvars=\"cliptext="+ config.val +"&callback="+ config.callback +"&error="+ config.error +"\" quality=\"high\" wmode=\"transparent\" width=\""+ config.flashW +"\" height=\""+ config.flashH +"\" name=\"flashvars\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">" +
				"</object>";
		config.flashBox.html(flashStr);
	};
	//默认加载flash
	this.load();
	//对象设置为可见
	config.flashBox.css("visibility","visible");
};

//注册onerror事件到window对象，用于监听页面脚本错误信息
/*window.onerror = function(msg,url,line) {
	//	msg{String}	错误信息详情
	//	url{String}	错误信息地址
	//	line{String}	错误代码行号
	//	type{String}	错误信息来源类型
	J.err.log({
		msg : msg,
		url : url,
		line : line,
		type : 'onerror'
	});
	return true;
};*/
/*function closeBox(id) {
	if ($("#" + id)) {
		$("#" + id).fadeOut("slow").removeClass("fast");
	}
}*/

//屏蔽指定页面弹窗
var PATH_NAME = window.location.pathname;
if(PATH_NAME == "/com/verification.html" || PATH_NAME == "/xkskt/wishing" || PATH_NAME == "/xkskt/wishing-new"){
	J.nav_login = new Function();
	J.bottom_tips = new Function();
};

$(function(){
	//注册全局click、dblclick事件委托
	$(document).click(function(event){
		var target = $(event.target);
		//加入收藏夹
		if(target.attr("data-sidebar") !== undefined){
			J.sidebar(target);
		}
		//服务端日志记录
		if(target.attr("data-log") !== undefined){
			J.sendLog(target);
		}
	}).dblclick(function(event){
		var target = $(event.target);
		//服务端日志记录
		if(target.attr("data-log") !== undefined){
			J.sendLog(target);
		}
	});

	//用户咨询按钮（临时 2012/12/23）
	//$(".w_goto").parent().append('<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1794563340&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:1794563340:41" alt="圣诞快乐，我是0元许愿客服" title="圣诞快乐，我是0元许愿客服"/></a>');

	//筛选模块 交互支持
		J.filter();
	//返回顶部
		J.err.runMethod(function(){
			J.goToTop(".newGoToTop");
		});
	//公共顶部一级导航栏跟随
		J.fixed({
			obj : $("#js-base-web-nav-cont"),
			top : [$("#js-base-web-nav-cont").length && $("#js-base-web-nav-cont").offset().top,0]
		});
	//二级导航
		J.topCate(".topCate a");
	//执行标签云方法
		J.tagCloud(".btmcloud a");
	//执行加入衣橱动画效果
		J.addMyWardrobe.objMyWardrobe(".addto_btn, .addto, .add_btn",function(){
			$(this).parent().html("已收入衣橱");
		});
	//文本框焦点
		J.placeholder($("input[type=text],textarea"),["#999","#333"]);
	//页面载入后：header区域 > 选款师头像闪烁
		J.lightning(".fun_guide");
	//header区域 > 主导航 > 显隐全部（更多）分类
		J.webNav({
			contObj : $("#js-base-web-nav-cont"),
			eventObj : $(".js-base-web-nav-event"),
			closeObj : $(".js-base-web-nav-close"),
			classHover : "web-nav-hover"
		});
	//qq群随机显示
		J.qqunView({
			qqunCode : $(".qq_g_num"),
			qqunUrl : $(".qq_img"),
			data : J.getQqun("列表")
		});
	//左上角Q群随机展示
		J.qqunView({
			qqunCode : $("#js-base-addjcn").find("span"),
			qqunUrl : $("#js-base-addjcn").find("a"),
			data : J.getQqun("列表")
		});
	//紧急公告
	//$("body").before("<div style='display:none;line-height:30px;background:#ffe92c;text-align:center;font-size:14px;color:#000;border-bottom:1px solid #fff;'>很抱歉，网站出现临时故障！正在修复中...请稍等</div>");
});