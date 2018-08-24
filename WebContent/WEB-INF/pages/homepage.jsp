<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseUrl" value="http://127.0.0.1/36kr/" />
<c:set var="aUrl" value="http://127.0.0.1/36kr/a/" />
<html lang="zh-CN" class="" style="font-size: 20px;">
<head>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>

<link rel="stylesheet" href="${baseUrl}css/homepage.css">
  
<title>36氪_让一部分人先看到未来</title>
<base href="https://36kr.com/">

<link href="//36kr.com/favicon.ico" rel="shortcut icon"
	type="image/vnd.microsoft.icon">

<link rel="apple-touch-icon" href="/apple-touch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/apple-touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/apple-touch-icon-iphone4.png">


<link
	href="//sta.36krcnd.com/36krx2016-front/static/common-b94ae260c13bbc22f15f.css"
	rel="stylesheet">

<link
	href="//sta.36krcnd.com/36krx2016-front/static/app-b94ae260c13bbc22f15f.css"
	rel="stylesheet">



<script type="text/javascript" charset="utf-8" async=""
	src="//sta.36krcnd.com/36krx2016-front/static/15.15-b94ae260c13bbc22f15f.js"></script>
</head>
<body>

<%@ include file="./header.jsp" %>

	<div id="app">
		<div data-reactroot="">
			<div class="index_36kr">
				<div class="pagewrap">
					<div class="mainlib_flex_wapper">
						<div class=" mainlib">
							<div class="center_content">
								<div class="content-wrapper">
									<div class="high_projects">
										<div class="a_ds_banner_wapper">
											<div class="space_padding"></div>
											<div
												class="a_ds_banner index_banner slick-initialized slick-slider"
												role="toolbar" style="opacity: 1;">
												<button type="button" class="icon-angle-left slick-arrow"
													style="display: inline-block;"></button>
												<div aria-live="polite" class="slick-list draggable">
													<div class="slick-track" style="opacity: 1; width: 4482px;"
														role="listbox">
														<div
															class="banner_cell radius has_title slick-slide slick-current slick-active"
															data-slick-index="0" aria-hidden="false"
															style="width: 747px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 1;"
															tabindex="-1" role="option"
															aria-describedby="slick-slide00">
															<a target="_blank" data-stat-click="youxuanrongzi.1"
																href="${aUrl}${slider[0].id}"
																style="background-image: url(&quot;${slider[0].profile}&quot;);"
																tabindex="-1"></a>
															<div class="info">
																<div class="abstract">${slider[0].title}</div>
															</div>
														</div>
														<c:forEach var="a" items="${slider}" varStatus="st"
															begin="1">
															<div class="banner_cell radius has_title slick-slide"
																data-slick-index="0" aria-hidden="true"
																style="width: 747px; position: relative; left: ${-st.index*747}px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms linear;"
																tabindex="-1" role="option"
																aria-describedby="slick-slide00">
																<a target="_blank"
																	data-stat-click="youxuanrongzi.${st.count + 1}"
																	href="${aUrl}${a.id}"
																	style="background-image: url(&quot;${a.profile}&quot;);"
																	tabindex="-1"></a>
																<div class="info">
																	<div class="abstract">${a.title}</div>
																</div>
															</div>
														</c:forEach>
													</div>
												</div>
												<button type="button" class="icon-angle-right slick-arrow"
													style="display: inline-block;"></button>
												<ul class="slick-dots" style="display: flex;" role="tablist">
													<li class="" aria-hidden="true" role="presentation"
														aria-selected="true" aria-controls="navigation00"
														id="slick-slide00"><button type="button"
															data-role="none" role="button" aria-required="false"
															tabindex="0">1</button></li>
													<li aria-hidden="true" role="presentation"
														aria-selected="false" aria-controls="navigation01"
														id="slick-slide01" class=""><button type="button"
															data-role="none" role="button" aria-required="false"
															tabindex="0">2</button></li>
													<li aria-hidden="true" role="presentation"
														aria-selected="false" aria-controls="navigation02"
														id="slick-slide02" class=""><button type="button"
															data-role="none" role="button" aria-required="false"
															tabindex="0">3</button></li>
													<li aria-hidden="true" role="presentation"
														aria-selected="false" aria-controls="navigation03"
														id="slick-slide03" class=""><button type="button"
															data-role="none" role="button" aria-required="false"
															tabindex="0">4</button></li>
													<li aria-hidden="true" role="presentation"
														aria-selected="false" aria-controls="navigation04"
														id="slick-slide04" class=""><button type="button"
															data-role="none" role="button" aria-required="false"
															tabindex="0">5</button></li>
													<li aria-hidden="false" role="presentation"
														aria-selected="false" aria-controls="navigation05"
														id="slick-slide05" class="slick-active"><button
															type="button" data-role="none" role="button"
															aria-required="false" tabindex="0">6</button></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="editor_recommend_box">
										<div class="editor_recommend">

											<ul class="am-cf pc_list">
												<c:forEach var="a" items="${rec}" varStatus="st">
													<li class="radius"><div class="space_cell"></div>
														<div data-stat-click="bainjituijian.${st.count}.click">
															<a target="_blank" href="${aUrl}${a.id}"> <img
																src="${a.profile}" alt="${a.title}"></a>
															<div class="des am-text-break">
																<a target="_blank" href="${aUrl}${a.id}"><span>${a.title}</span></a>
															</div>
														</div></li>
												</c:forEach>
											</ul>
											<div class="am-cf h5_list slick-initialized slick-slider"
												role="toolbar" style="">
												<button type="button" data-role="none"
													class="slick-prev slick-arrow" aria-label="Previous"
													role="button" style="display: block;">Previous</button>
												<div aria-live="polite" class="slick-list draggable">
													<div class="slick-track" style="opacity: 1; width: 0px;"
														role="listbox">
														<c:forEach var="a" items="${rec}" varStatus="st">
															<div class="cell slick-slide" data-slick-index="0"
																aria-hidden="true" tabindex="-1" role="option"
																aria-describedby="slick-slide10"
																style="width: 0px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms linear;">
																<a data-stat-click="bainjituijian.${st.count}.click"
																	target="_blank" href="${aUrl}${a.id}" tabindex="-1"><img
																	src="${a.profile}" alt="${a.title}"><span>${a.title}</span></a>
															</div>
														</c:forEach>



													</div>
												</div>
												<button type="button" data-role="none"
													class="slick-next slick-arrow" aria-label="Next"
													role="button" style="display: block;">Next</button>
												<ul class="slick-dots" style="display: block;"
													role="tablist">
													<li class="" aria-hidden="true" role="presentation"
														aria-selected="true" aria-controls="navigation10"
														id="slick-slide10"><button type="button"
															data-role="none" role="button" aria-required="false"
															tabindex="0">1</button></li>
													<li aria-hidden="true" role="presentation"
														aria-selected="false" aria-controls="navigation11"
														id="slick-slide11" class=""><button type="button"
															data-role="none" role="button" aria-required="false"
															tabindex="0">2</button></li>
													<li aria-hidden="false" role="presentation"
														aria-selected="false" aria-controls="navigation12"
														id="slick-slide12" class="slick-active"><button
															type="button" data-role="none" role="button"
															aria-required="false" tabindex="0">3</button></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="list_con">
										<div class="kr_tab"></div>
										<div>
											<div class="">
												<div>
													<div class="kr_article_list">
														<div>
															<ul class="feed_ul">
																<c:forEach var="a" items="${latest}" varStatus="st">
																	<li><div class="am-cf inner_li">
																			<a
																				data-stat-click="latest.zhufeed.wenzhangbeijing.${st.count}"
																				href="${aUrl}${a.id}" target="_blank">
																				<div class="img_box list-img-loaded">
																					<div
																						data-stat-click="latest.zhufeed.wenzhangtupian.${st.count}"
																						href="${aUrl}${a.id}" target="_blank">
																						<img alt="${a.title}" class="load-img fade"
																							src="${a.profile}">
																					</div>
																				</div>
																				<div class="intro">
																					<h3
																						data-stat-click="latest.zhufeed.wenzhangbiaoti.${st.count}">${a.title}</h3>
																					<div class="abstract">${a.summary}</div>
																				</div>
																			</a>
																		</div></li>
																</c:forEach>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="rightlib cover_css">
							<div class="plan-image plan-lazyload-box" data-adid="17"
								data-name="a_d_bd_div"></div>
							<div class="index-right-second">
								<div class="plan-image plan-lazyload-box" data-adid="78"
									data-name="a_d_bd_div"></div>
							</div>
							<div class="real_time_intelligence pad_inner">
								<h3>
									<span>7×24h 快讯</span>
								</h3>
								<ul>
									<c:forEach var="a" items="${a_short}" varStatus="st">
										<li class="real_time_wrapper"><span class="triangle"></span>
											<div class="con">
												<h4>
													<span class="title"
														data-stat-click="kuaixunmokuai.kuaixunbiaoti.${st.count}.133052">${a.title}</span>
												</h4>
												<div class="item0 hide show-content">
													${a.summary}
												</div>
												<div>
													<span class="time" title=" "> </span>
												</div>
											</div></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




<%@ include file="./footer.jsp" %>



</body>
</html>