<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="js/jquery.js"></script>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<LINK media=all href="css/css.css" type=text/css rel=stylesheet>
	<script src="js/jquery-1.2.61.min.js" type=text/javascript></script>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>东宝网上商城-综合网购首选（DB.COM）-正品低价、品质保障、货到付款、配送及时、放心服务、轻松购物！</title>
	<meta name="description"
		content="东宝DB.COM-专业的综合网上购物商城，在线销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品、在线旅游等数万个品牌千万种优质商品。便捷、诚信的服务，为您提供愉悦的网上商城购物体验! ">
		<meta name="Keywords"
			content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,东宝商城">
			<link href="/css/db.css" rel="stylesheet" />
			<script type="text/javascript">
				window.pageConfig = {
					compatible : true,
					navId : "home",
					enableArea : true
				};
			</script>
			<style type="text/css">
#categorys-2013 .mc {
	display: block;
}

#categorys-2013 .mt {
	background: 0
}
</style>
</head>
<body>
	<!-- header start -->
	<jsp:include page="../commons/header.jsp" />
	<!-- header end -->
	<div class="w">
		<div id="o-slide">
			<div class="slide" id="slide">
				<img
					src="http://image.db.com/d1fcbe0d1ec7397d.jpg.webp"
					width="100%" height="100%" />
				<!-- <script type="text/javascript">
;(function(cfg, doc) {
    if ( !cfg.DATA_MSlide ) {
        cfg.DATA_MSlide=[];
    }
    var data = ${indexAD1};

    cfg.DATA_MSlide = data;
    // 初始化一个广告信息
    if ( cfg.DATA_MSlide.length > 5 ) {
    	var first = pageConfig.FN_GetCompatibleData( cfg.DATA_MSlide[0] );
        var TPL = ''
            +'<ul class="slide-items">'
            +'<li clstag="homepage|keycount|home2013|09a1">'
            +'<a href="'+ first.href +'" target="_blank" title="'+ first.alt +'">'
            +'<img src="'+ first.src +'" width="'+ first.width +'" height="'+ first.height +'" >'
            +'</a>'
            +'</li>'
            +'</ul><div class="slide-controls"><span class="curr">1</span></div>';
        doc.write(TPL);
    }
})(pageConfig, document);;</script> -->
			</div>
			<!--slide end-->
			<div class="jscroll" id="mscroll">
				<div class="ctrl" id="mscroll-ctrl-prev">
					<b></b>
				</div>
				<div class="ctrl" id="mscroll-ctrl-next">
					<b></b>
				</div>
				<div class="o-list">
					<div class="list" id="mscroll-list"></div>
				</div>
			</div>
			<!--mscroll end-->
			<script type="text/javascript">
				pageConfig.DATA_MScroll = [
						{
							"alt" : "",
							"href" : "http://www.db.com/items/1474391960.html",
							"index" : 0,
							"src" : "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3481803998,2146642213&fm=15&gp=0.jpg",
							"ext" : ""
						//苹果
						},
						{
							"alt" : "",
							"href" : "http://www.db.com/items/1474391966.html",
							"index" : 1,
							"src" : "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563883961736&di=18b2af64b08c69456e0b305b499b97d5&imgtype=0&src=http%3A%2F%2Ffile5.youboy.com%2Fa%2F54%2F28%2F1%2F9%2F2959319.jpg%3F185*185",
							"ext" : ""
						},
						{
							"alt" : "",
							"href" : "http://www.db.com/items/562379.html",
							"index" : 2,
							"src" : "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563872152904&di=f6aad7621e9b22e467413d7377fee99e&imgtype=0&src=http%3A%2F%2F2b.zol-img.com.cn%2Fproduct%2F15_200x150%2F227%2Fce2ikW1kMru.jpg",
							"ext" : ""
						//三星
						},
						{
							"alt" : "",
							"href" : "http://www.db.com/items/1352521.html",
							"index" : 3,
							"src" : "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563872283303&di=69663a5a063f6ec4576f1d1e8034b31f&imgtype=0&src=http%3A%2F%2Fqny.smzdm.com%2F201907%2F09%2F5d24481c9016b350.jpg_a200.jpg",
							"ext" : ""
						//自爆米
						},
						{
							"alt" : "",
							"href" : "http://www.db.com/items/1474318759.html",
							"index" : 4,
							"src" : "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563872477307&di=fc37c1b536de7d66c7d9d52d22342b3a&imgtype=0&src=http%3A%2F%2Fimg11.360buyimg.com%2Fn2%2Fjfs%2Ft1474%2F156%2F153108797%2F218277%2Fded1df14%2F555e84fcN31447a99.jpg",
							"ext" : ""
						//50岁男人的浪漫
						},
						{
							"alt" : "",
							"href" : "http://www.db.com/items/1221878.html",
							"index" : 5,
							"src" : "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563873925994&di=a3ba240ce25fd6244f74848d0d071e3a&imgtype=0&src=http%3A%2F%2Fimage5.suning.cn%2Fuimg%2Fb2c%2Fnewcatentries%2F0070087466-000000000127780613_1_200x200.jpg",
							"ext" : ""
						//长虹电视
						},
						{
							"alt" : "",
							"href" : "http://www.db.com/items/1209084.html",
							"index" : 6,
							"src" : "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=340594095,113638570&fm=26&gp=0.jpg",
							"ext" : ""
						//TCL彩电
						},
						{
							"alt" : "",
							"href" : "http://www.db.com/items/1258720.html",
							"index" : 7,
							"src" : "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1430507972,2299019310&fm=26&gp=0.jpg",
							"ext" : ""
						//海信电视
						},
						{
							"alt" : "",
							"href" : "http://www.db.com/items/1162187.html",
							"index" : 8,
							"src" : "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563874623665&di=a2962539de0d548323ee514a3d7c58ea&imgtype=0&src=http%3A%2F%2Fimage4.suning.cn%2Fuimg%2Fb2c%2Fcatentries%2F000000000137623859_1_200x200.jpg",
							"ext" : ""
						//乐视TV
						} ];
				(function(object, data) {
					var a = data, b = [], c = [], d, h;
					a.sort(function(a, b) {
						return a.ext - b.ext
					});
					while (a.length > 0) {
						d = a.shift();
						if (d.ext) {
							b.push(d)
						} else {
							c.push(d)
						}
					}
					c.sort(function() {
						return 0.5 - Math.random()
					});
					h = b.length;
					if (h >= 3) {
						for (var i = 0; i < 3; i++) {
							a.push(b.shift())
						}
					} else {
						for (var i = 0; i < h; i++) {
							a.push(b.shift())
						}
					}
					var f = a.length, g = c.length;
					for (var i = 0; i < 18 - f; i++) {
						if (i > g - 1) {
							continue
						}
						a.push(c.shift())
					}
					var e = [], x;
					e.push("<ul class=\"lh\">");
					for (var i = 0; i < 3; i++) {
						x = pageConfig.FN_GetCompatibleData(a[i]);
						e.push("<li class=\"item\"><a href=\"");
						e.push(x.href);
						e
								.push("\"><img src=\"/images/blank.gif\" style=\"background:url(");
						e.push(x.src);
						e.push(") no-repeat #fff center 0;\" alt=\"");
						e.push(x.alt);
						e.push("\" width=\"");
						e.push(x.width);
						e.push("\" height=\"");
						e.push(x.height);
						e.push("\" /></a></li>")
					}
					e.push("</ul>");
					document.getElementById(object).innerHTML = e.join("");
					pageConfig.DATA_MScroll = a
				})("mscroll-list", pageConfig.DATA_MScroll);
			</script>
		</div>
		<div class="m fr da0x70" clstag="homepage|keycount|home2013|10a">
			<script>
				// 右上方广告位
				(function() {
					var data = [ {
						"width" : 310,
						"height" : 70,
						"src" : "/images/5440ce68Na00d019e.jpg",
						"href" : "http://c.fa.db.com/adclick?sid=2&cid=601&aid=3614&bid=4196&unit=35984&advid=109277&guv=&url=http://sale.db.com/mall/FQLUNlG53wbX7m.html",
						"alt" : "",
						"widthB" : 210,
						"heightB" : 70,
						"srcB" : "http://img14.360buyimg.com/da/jfs/t334/155/1756719493/14371/e367c503/5440ce6dNd056ce39.jpg"
					} ];
					var ad = pageConfig.FN_GetRandomData(data);
					ad = pageConfig.FN_GetCompatibleData(ad);
					document
							.write("<a href=\"" + ad.href + "\" target=\"_blank\"><img data-img=\"2\" src=\"" + ad.src + "\" width=\"" + ad.width + "\" height=\"" + ad.height + "\" alt=\"" + ad.alt + "\" /></a>");
				})();
			</script>
		</div>
		<!--da end-->
		<div id="jdnews" class="m m1">
			<div class="mt">
				<h2>吟诗一首</h2>
				<div class="extra" clstag="homepage|keycount|home2013|11a">
					<a href="http://www.baidu.com" target="_blank">更多好诗&nbsp;&gt;</a>
				</div>
			</div>
			<div class="mc">
				<ul align='center'>
					<h3>
						前端难 · 其一 唐 · 李黑</br> 前端难.</br> 真不想写前端.</br> CSS难！JS难！AJAX更难，真操蛋?</br> 后端猿们真苦逼，前端后端都要写.</br>
						真JB烦.</br>
					</h3>

				</ul>
			</div>
		</div>
		<!--新闻结束-->

		<div data-widget="tabs" class="m _520_a_lifeandjourney_1"
			id="virtuals-2014">
			<div class="mt">
				<ul class="fore1 lh">
					<li class="fore1 abtest_huafei"
						data-iframe="http://chongzhi.db.com/index-newEntry.htm"
						clstag="homepage|keycount|home2013|12a" onclick="a()"><a><s
							target="_blank" href=""></s>话费<i></i></a></li>
					<li class="fore2 abtest_lvxing"
						data-iframe="http://trip.db.com/html/newTravel.html"
						clstag="homepage|keycount|home2013|12b" onclick="a()"><a><s
							target="_blank" href=""></s>旅行<i></i></a></li>
					<li class="fore3 abtest_caipiao"
						data-iframe="http://caipiao.db.com/caipiao-db.htm"
						clstag="homepage|keycount|home2013|12c" onclick="a()"><a><s
							target="_blank" href=""></s>彩票<i></i></a></li>
					<li class="fore4 abtest_youxi"
						data-iframe="http://card.db.com/html/card-dbIndex.html"
						clstag="homepage|keycount|home2013|12d" onclick="a()"><a><s
							target="_blank" href=""></s>游戏<i></i></a></li>
				</ul>
				<ul class="fore2 lh">
					<li class="fore5 abtest_jipiao"
						clstag="homepage|keycount|home2013|12e" onclick="a()"><a><s
							target="_blank" href=""></s>机票</a></li>
					<li class="fore6 abtest_dianyingpiao"
						clstag="homepage|keycount|home2013|12f" onclick="a()"><a><s
							target="_blank"></s>电影票</a></li>
					<li class="fore7 abtest_yanchupiao"
						clstag="homepage|keycount|home2013|12g" onclick="a()"><a><s
							target="_blank"></s>理财</a></li>
					<li class="fore8 abtest_shuidianmei"
						clstag="homepage|keycount|home2013|12h" onclick="a()"><a><s
							target="_blank"></s>水电煤</li>
				</ul>
			</div>
			<script type="text/javascript">
				function a() {
					alert("此功能正在开发中!!!")
				}
			</script>
			<div class="mc">
				<a href="#none" class="close">×</a>
				<div class="virtuals-iframes hide">
					<iframe width="100%" scrolling="no" height="139px" frameborder="0"></iframe>
				</div>
				<div class="virtuals-iframes hide">
					<iframe width="100%" scrolling="no" height="139px" frameborder="0"></iframe>
				</div>
				<div class="virtuals-iframes hide">
					<iframe width="100%" scrolling="no" height="139px" frameborder="0"></iframe>
				</div>
				<div class="virtuals-iframes hide">
					<iframe width="100%" scrolling="no" height="139px" frameborder="0"></iframe>
				</div>
			</div>
		</div>

		<!--virtuals end-->
		<span class="clr"></span>
	</div>

	<body>
		<div class="box" id=sales-product>
			<div class=module-title>
				<H3>电脑配件</H3>
			</div>
			<div class="js j_index_carouseProduct" id=sales-product-main src="">
				<ul>

					<li class=order3><a class="a1"
						href="http://www.db.com/items/1474391960.html" target="_blank"><img
							alt="站长素材"
							src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3481803998,2146642213&fm=15&gp=0.jpg" /></a>
						<p>
							<a href="http://www.db.com/items/1474391960.html" target="_blank">爱疯X<br />
								跳楼价<span class=price_symbol>¥</span><span class=price_num>8388.</span><span
								class=price_change>000</span></a>
						</p></li>
					<li><a class="a1" href="http://www.db.com/items/562379.html"
						target="_blank"><img alt="站长素材"
							src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563872152904&di=f6aad7621e9b22e467413d7377fee99e&imgtype=0&src=http%3A%2F%2F2b.zol-img.com.cn%2Fproduct%2F15_200x150%2F227%2Fce2ikW1kMru.jpg" /></a>
						<p>
							<a href="http://www.db.com/items/562379.html" target="_blank">三猩W999<br />
								跳河价<span class=price_symbol>¥</span><span class=price_num>42990.</span><span
								class=price_change>00</span></a>
						</p></li>
					<li><a class="a1" href="http://www.db.com/items/1352521.html"
						target="_blank"><img alt="站长素材"
							src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563872283303&di=69663a5a063f6ec4576f1d1e8034b31f&imgtype=0&src=http%3A%2F%2Fqny.smzdm.com%2F201907%2F09%2F5d24481c9016b350.jpg_a200.jpg" /></a>
						<p>
							<a href="http://www.db.com/items/1352521.html" target="_blank">自爆米<br />
								促销价<span class=price_symbol>¥</span><span class=price_num>7990.</span><span
								class=price_change>00</span></a>
						</p></li>
					<li><a class="a1"
						href="http://www.db.com/items/1474318759.html" target="_blank"><img
							alt="站长素材"
							src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563872477307&di=fc37c1b536de7d66c7d9d52d22342b3a&imgtype=0&src=http%3A%2F%2Fimg11.360buyimg.com%2Fn2%2Fjfs%2Ft1474%2F156%2F153108797%2F218277%2Fded1df14%2F555e84fcN31447a99.jpg" /></a>
						<p>
							<a href="http://www.db.com/items/1474318759.html" target="_blank">50岁男人的浪漫<br />
								买到就是赚到价<span class=price_symbol>¥</span><span class=price_num>1390</span><span
								class=price_change></span></a>
						</p></li>
				</ul>
			</div>
		</div>

		<div id="zsgun">
			<a href="#" class="prenext zspre"></a> <a href="#"
				class="prenext zsnext"></a>
			<div id="gundiv" class="container2">
				<ul>


					<script type="text/javascript">
						var data123 = $("item1").val();
					</script>

					<c:forEach items="${itemList}" var="item" step="1">
						<li><a href="http://www.db.com/items/${item.id}.html"><img
								src="${item.images[0]}" alt="" width="153" height="153" /></a>
							<p>
								<a href="http://www.db.com/items/${item.id}.html"
									target="_blank">${item.title}</a>
							</p></li>
					</c:forEach>
				</ul>
			</div>
		</div>

		<script type="text/javascript" src="/js/hScrollPane.js"></script>
		<script type="text/javascript">
			$(function() {
				var glen = $("#gundiv ul li").length;
				$("#gundiv ul").css("width", 172 * (glen));
				$("#gundiv li").hover(function() {
					$("#gundiv li").removeClass("zslion");
					$(this).addClass("zslion");
				}, function() {
					$(this).removeClass("zslion");
				})
			});
			$("#zsgun").hScrollPane({
				mover : "ul",
				moverW : function() {
					return $("#zsgun li").length * 172 - 17;
				}(),
				showArrow : true,
				handleCssAlter : "draghandlealter"
			});
		</script>
		<!--效果html结束-->
		</div>
		<div
			style="text-align: center; margin: 50px 0; font: normal 14px/24px 'MicroSoft YaHei';">

		</div>

		<jsp:include page="../commons/footer.jsp" />

	</body>
</html>