<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>摄养堂生物科技</title>
    <%@ include file="./static_file_m.jsp" %>
</head>

<body>
    <header>
        <img src='${baseUrl}img/favicon_m.png'>

    </header>
    <main>
        <section>
            <div id="sequence" class="seq">

                <div class="seq-screen">
                    <ul class="seq-canvas">
                        <li class="seq-in">
                            <div class="seq-model" style='margin-left:20%; margin-right: 1%;'>
                                <img data-seq src="${baseUrl}img/model1.png" />
                            </div>

                            <div class="seq-title" style='margin:0;'>
                                <h2 data-seq>追求卓越,成为行业主导者</h2>
                                <h3 data-seq>『卓越』是一种状态,『追求』卓越是一种精神</h3>
                            </div>
                        </li>

                        <li>
                            <div class="seq-model" style='margin-left:32%;margin-right: 1%;'>
                                <img data-seq src="${baseUrl}img/model2.png" />
                            </div>
                            <div class="seq-title" style='margin:0;width: 30%;'>
                                <h2 data-seq>摄养堂健腰夹设计理念</h2>
                                <h3 data-seq>以护腰为本,为塑型而生</h3>
                            </div>
                        </li>

                        <li>
                            <div class="seq-model" style='margin:10% 1% 0% 32%;'>
                                <img data-seq style='height: 80%;'src="${baseUrl}img/model3.png" />
                            </div>

                            <div class="seq-title" style='margin:0;width: 30%;'>
                                <h2 data-seq>产品技术</h2>
                                <h3 data-seq>自主知识产权与国家专利,将人体 服装设计结合生物医学的护腰夹产品,完美护腰</h3>
                            </div>
                        </li>
                    </ul>
                </div>

                <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
                    <button type="button" class="seq-prev" aria-label="Previous">Previous</button>
                    <button type="button" class="seq-next" aria-label="Next">Next</button>
                </fieldset>


            </div>


        </section>


    </main>
    <footer>
        <div class='details'>
            <div class='bar'>
                <span>摄养堂微信小程序</span>
            </div>
            <div class='content'>
                <img src='${baseUrl}img/wechatQR.png'/>
            </div>
        </div>
        <div class='details'>
            <div class='bar'>
                <span> 联系方式</span>
            </div>
            <div class='content'>
                    <p>联系电话 : 025-52401691</p>
                    <p>
                        <a style='color:#444;'href="mailto:services@sheyangtang.com">邮箱 : services@sheyangtang.com</a>
                    </p>    
            </div>
        </div>
        <div class='details'>
            <div class='bar'>
                <span>摄养堂公司信息</span>
            </div>
            <div class='content'>
                    <p>江苏摄养堂生物科技有限公司</p>
                    <p>公司地址 : 南京市玄武区珠江路88号1幢3118室</p>
                    <p>Copyright © 2017</p>
            </div>
        </div>


    </footer>
    <script src="${baseUrl}sequence/scripts/imagesloaded.pkgd.min.js"></script>
    <script src="${baseUrl}sequence/scripts/hammer.min.js"></script>
    <script src="${baseUrl}sequence/scripts/sequence.min.js"></script>
    <script src="${baseUrl}sequence/scripts/sequence-theme.modern-slide-in.js"></script>
</body>

</html>