<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="zh-CN" class="" style="font-size: 20px;">
<head>
<%@ include file="./static_file.jsp" %>
<title><spring:eval expression="@propertyConfigurer.getProperty('site.name.medium')" />有限公司官网</title>
<link rel="stylesheet" href="css/homepage.css">
</head>
<body style='${isMobile?"padding-bottom:0px":""}'>

<%@ include file="./header.jsp" %>
<%@ include file="./overlay.jsp" %>

	<div id="app">
		<div>
			<div class="index_syt">
				<div class="pagewrap">
					<div class="mainlib_flex_wapper">
						<div class=" mainlib">
							<div class="center_content">
								<div class="content-wrapper">
									<div class="high_projects">
										<div class="a_ds_banner_wapper">
										
											<div class="space_padding"></div>
											<div
												class="a_ds_banner index_banner slick-initialized slick-slider" role="toolbar" style="opacity: 1;">
												<button type="button" class="icon-angle-left slick-arrow" style="display: inline-block;z-index:1001;"></button>
												<div aria-live="polite" class="slick-list draggable">
													<div class="slick-track" style="opacity: 1; width: 4482px;" role="listbox">
														<div name="sliders" id="0"
															class="banner_cell radius has_title slick-slide slick-current slick-active" style="width: 800px; position: relative; left: 0px; top: 0px;z-index: 999; opacity: 1; ">
															<a target="_blank"  href="a/${slider[0].id}" style="background-image: url(&quot;${baseUrl}gallery/${slider[0].profile}&quot;);" tabindex="-1"></a>
															<div class="info">
																<div class="abstract">${slider[0].title}</div>
															</div>
														</div>
														
														<c:forEach var="a" items="${slider}" varStatus="st"
 															begin="1"> 
 															<div  name="sliders" id="${st.count}"  
															class="banner_cell radius has_title slick-slide"style="width: 800px; position: relative;top: 0px;z-index: 998;  left:0px;opacity: 0;  "> 
																<a target="_blank" href="${baseUrl}a/${a.id}" 
 																	style="background-image: url(&quot;${baseUrl}gallery/${a.profile}&quot;);" ></a> 
 																<div class="info"> 
 																	<div class="abstract">${a.title}</div> 
 																</div> 
 															</div> 
 														</c:forEach> 
													</div>
												</div>
												<button type="button" class="icon-angle-right slick-arrow" style="display: inline-block;;z-index:1001;"></button>
												<ul class="slick-dots" style="display: flex;" role="tablist">
												
												<c:forEach var="a" items="${slider}" varStatus="st" begin="1">
													<li class='<c:if test="$(st.first)">slick-active</c:if>' id="slick-slide${st.index}"><button type="button">${st.index}</button></li>
														</c:forEach>
													
												</ul>
											</div>
										</div>
									</div>
									<div class="editor_recommend_box">
										<div class="editor_recommend">

											<ul class="am-cf pc_list">
												<c:forEach var="a" items="${rec}" varStatus="st">
													<li class="radius"><div class="space_cell"></div>
														<div>
															<a target="_blank" href="${baseUrl}a/${a.id}"> <img
																src="${baseUrl}gallery/${a.profile}" alt="${a.title}"></a>
															<div class="des am-text-break">
																<a target="_blank" href="${baseUrl}a/${a.id}"><span>${a.title}</span></a>
															</div>
														</div>
														</li>
												</c:forEach>
											</ul>
											<div class="am-cf h5_list slick-initialized slick-slider"
												role="toolbar" style="">
												<button type="button" class="slick-prev slick-arrow" aria-label="Previous"
													role="button" style="display: block;">Previous</button>
												<div aria-live="polite" class="slick-list draggable">
													<div class="slick-track" style="opacity: 1; width: 0px;"
														role="listbox">
														<c:forEach var="a" items="${rec}" varStatus="st">
															<div class="cell slick-slide" style="width: 0px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms linear;">
																<a  target="_blank" href="${baseUrl}${a.id}" tabindex="-1"><img
																	src="${baseUrl}gallery/${a.profile}" alt="${a.title}"><span>${a.title}</span></a>
															</div>
														</c:forEach>



													</div>
												</div>
												<button type="button" class="slick-next slick-arrow" style="display: block;">Next</button>
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
																<c:forEach var="a" items="${latest}" varStatus="st" end="${index_l}">
																	<li><div class="am-cf inner_li">
																			<a href="${baseUrl}a/${a.id}" target="_blank">
																				<div class="img_box list-img-loaded">
																					<div href="${baseUrl}a/${a.id}" target="_blank">
																						<img alt="${a.title}" class="load-img fade"
																							src="${baseUrl}gallery/${a.profile}">
																					</div>
																				</div>
																				<div class="intro">
																					<h3 >${a.title}</h3>
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
							<div class="plan-image plan-lazyload-box" ></div>
							<div class="index-right-second">
								<div class="plan-image plan-lazyload-box" ></div>
							</div>
							<div class="real_time_intelligence pad_inner">
								<h3>
									<span>公司 快讯</span>
								</h3>
								<ul>
									<c:forEach var="a" items="${a_short}" varStatus="st">
										<li class="real_time_wrapper"><span class="triangle"></span>
											<div class="con">
												<h4>
													<span class="title" >${a.title}</span>
												</h4>
												<div class="item${st.count} hide show-content">
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