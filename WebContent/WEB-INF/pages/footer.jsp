<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<footer class="common-footer">
	<div class="sections">
		<section class="product-section">
			<h3>产品和服务</h3>
			<div class="items-wrapper">
				<a href="" class="item"> <span class="product-icon"> <img src="img/logo.png" >
				</span> <span class="product-name"><spring:eval expression="@propertyConfigurer.getProperty('site.name.medium')" /></span> <span class="product-desc"><spring:eval expression="@propertyConfigurer.getProperty('site.slogan')" /></span>
				</a>  
			</div>
			<div class="feedback"></div>
		</section>
		<section class="link-section">
			<h3>关于<spring:eval expression="@propertyConfigurer.getProperty('site.name.medium')" /></h3>
			<div class="links">
				<a href="about/" target="_blank" rel="nofollow">关于我们</a>
				<a href="JavaScript:void(0)" target="_blank"  onclick='contactus()'>联系我们</a>
			</div>
		</section>
		<section class="partner-section">
			<h3>合作伙伴</h3>
			<ul class="footer-partner">
				<li><a href="http://www.aliyun.com" rel="nofollow" class="external" target="_blank"> <img alt="阿里云" src="img/aly.png"></a></li>
				<li><a href="https://cloud.tencent.com/" rel="nofollow" class="external" target="_blank"> <img alt="腾讯云" src="img/txyun.png"></a></li>
				<li><a href="http://upyun.com" rel="nofollow" class="external" target="_blank"> <img alt="又拍云" src="img/upy.png"></a></li>
			</ul>
		</section>
		<section class="qr-section">
			<h3>关注<spring:eval expression="@propertyConfigurer.getProperty('site.name.short')" />小程序</h3>
			<img style='width:140px;height: 140px;' class="qr" alt="关注摄养堂小程序" src="img/wechatQR.png">
		</section>
	</div>
	<div class="bottom">
		<div class="container">
			
			<div class="copyright">
				<span class="mobile-hide">本站由 <a href="http://www.aliyun.com" rel="nofollow" target="_blank"><img   alt="阿里云" style="height: 12px; vertical-align: middle; margin-right: -10px; margin-left: 10px; position: relative; top: -2px" src="img/aliyunfooter.png"></a>
				<span style='float:right;'>
				Copyright&nbsp;&nbsp;&nbsp;©&nbsp; <spring:eval expression="@propertyConfigurer.getProperty('site.year')" />&nbsp;&nbsp;  <spring:eval expression="@propertyConfigurer.getProperty('site.name.long')" /></span>
				</span>  <br>
			</div>
			
		</div>
	</div>
</footer>