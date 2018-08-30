<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html lang="zh-CN" class="">
<head>
<%@ include file="./static_file.jsp" %>
<link rel="stylesheet" href="${baseUrl}css/article.css">
<title>${article.title}</title>
</head>




<body style="padding-bottom: 440px;">

<%@ include file="./header.jsp" %>
<%@ include file="./overlay.jsp" %>
	<div id="app">
		<div>
			<div class="pagewrap pagewrap-full">
				<div class="article-detail ">
					<div class="post-wrapper">
						<div id="J_normal_read_5148346"
							class="post-detail-con-box full-reading mainlib_flex_wapper">
							<div class="mainlib">
								<div class="center_content">
									<div class="content-wrapper">
										<div class="article-section" id="J_post_wrapper_5148346">
											<div class="mobile_article">
												<h1>${article.title }</h1>
												<div class="content-font">
													<section class="summary">​${article.summary }</section>
													<div>
														<section class="textblock">
															${article.html}</section>
														<!-- react-empty: 38 -->
														<div class="article-footer-ad">
															<div class="plan-image plan-lazyload-box"></div>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>
									<div class="post-detail-plan-bottom">
										<div class="plan-image plan-lazyload-box" ></div>
									</div>
								</div>
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