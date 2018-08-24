<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="baseUrl" value="http://127.0.0.1/36kr/" />
<c:set var="aUrl" value="http://127.0.0.1/36kr/a/" />
<html lang="zh-CN" class="">
<head>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
  <link rel="stylesheet"
	href="//sta.36krcnd.com/common-module/common-header/style-3322e.css">
<link rel="stylesheet" href="${baseUrl}css/article.css">

<title>${article.title}</title>
<base href="https://36kr.com">
<link href="//36kr.com/favicon.ico" rel="shortcut icon"
	type="image/vnd.microsoft.icon">

<link rel="apple-touch-icon" href="/apple-touch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/apple-touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/apple-touch-icon-iphone4.png">
<script type="text/javascript" async=""
	src="http://www.qipus.cn/cmp/cmp.api?r=&amp;s=5006&amp;u=file%3A%2F%2F%2FC%3A%2FUsers%2FA%2FDesktop%2Farticle.html"></script>
<link
	href="//sta.36krcnd.com/36krx2016-front/static/common-b94ae260c13bbc22f15f.css"
	rel="stylesheet">
<link
	href="//sta.36krcnd.com/36krx2016-front/static/app-b94ae260c13bbc22f15f.css"
	rel="stylesheet">
</head>





<body style="padding-bottom: 68px;">
	<div class="header-notice"></div>
	<link rel="stylesheet" href="//sta.36krcnd.com/common-module/common-header/style-3322e.css">


<%@ include file="./header.jsp" %>


	<div id="app">
		<div data-reactroot="">
			<div class="pagewrap pagewrap-full">
				<div class="article-detail ">
					<div class="post-wrapper">
						<div id="J_normal_read_5148346"
							class="post-detail-con-box full-reading mainlib_flex_wapper">
							<div class="mainlib">
								<div class="center_content">
									<div class="content-wrapper">
										<div class="article-section" data-articleid="5148346"
											id="J_post_wrapper_5148346">
											<div class="mobile_article">
												<h1>${article.title }</h1>
												<div class="content-font">
													<div class="am-cf author-panel">
														<div class="author am-fl">
															<span class="name" data-stat-click="wenzhang.zuozhexingming">36氪特约评论员</span>
														</div>
													</div>
													<section class="summary">​${article.summary }</section>
													<div>
														<section class="textblock">
															${fn:replace(article.content,"\\","")}</section>
														<!-- react-empty: 38 -->
														<div class="article-footer-ad">
															<div class="plan-image plan-lazyload-box" data-adid="87"
																data-name="a_d_article_bottom"></div>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>
									<div class="post-detail-plan-bottom">
										<div class="plan-image plan-lazyload-box" data-adid="73"
											data-name="a_d_bd_div"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="share-nav-h5">
					<div class="inner">
						<div class="box am-cf">
							<div class="each-cell">
								<span class="icon-collect cell"></span>
							</div>
							<div class="each-cell">
								<span class="icon-comments cell"></span>
							</div>
							<div class="each-cell">
								<a class="icon-weibo weibo cell"
									href="http://share.baidu.com/s?type=text&amp;searchPic=1&amp;sign=on&amp;to=tsina&amp;key=595885820&amp;url=https://36kr.com/p/5148346.html&amp;title=%E7%84%A6%E7%82%B9%E5%88%86%E6%9E%90%20%7C%20%E8%BF%99%E4%B8%AA%E6%9A%91%E6%9C%9F%E6%A1%A3%EF%BC%8C%E4%BC%9A%E6%98%AF%E5%BD%B1%E8%A7%86%E5%9C%88%E6%98%8E%E6%98%9F%E8%AF%9D%E8%AF%AD%E6%9D%83%E7%9A%84%E8%BD%AC%E6%8A%98%E7%82%B9%E5%90%97%EF%BC%9F"></a>
							</div>
							<div class="each-cell">
								<span class="icon-back-top back cell"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="article-detail"
					style="position: relative; z-index: 1111;">
					<!-- react-empty: 218 -->
					<div class=""></div>
					<div class="only-article " style="height: 492px;">
						<div class="center-content">
							<div class="content-wrapper">
								<div class="loading_article">
									<div>
										<div class="circle">
											<i class="icon-loading"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<link rel="stylesheet"
		href="//sta.36krcnd.com/common-module/common-footer/footer-b6116.css">
	<footer class="common-footer">
		<div class="bottom">
			<div class="container">
				<div class="footer-logo">
					<a href="http://36kr.com"> <img
						src="//sta.36krcnd.com/common-module/common-footer/images/2017/logo_white@2x-ae14b.png"
						alt="">
					</a>
				</div>
				<div class="copyright">
					<span class="law">© 2011~2018 北京品新传媒文化有限公司 | 京ICP备12031756号
						| 京ICP证150143号 <span class="mobile-hide">| <a
							href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502036099"
							target="_blank">京公网安备11010502036099号</a></span>
					</span> <br>
				</div>
				<div class="share">
					<a class="iconfooter-weibo" href="http://weibo.com/wow36kr"
						target="_blank" rel="nofollow"></a> <a class="iconfooter-rss"
						href="http://36kr.com/feed" target="_blank" rel="nofollow"></a>
				</div>
			</div>
		</div>
	</footer>






</body>
</html>