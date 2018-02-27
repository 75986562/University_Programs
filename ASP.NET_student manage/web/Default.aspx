<%@ page title="" language="C#" masterpagefile="MasterPage.master" autoeventwireup="true" inherits="Default2, App_Web_default.aspx.cdcab7d2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="css/jquery.slideBox.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/carrousel.css" />
    <link rel='stylesheet prefetch' href='css/slick.min.css' />
    <link rel="stylesheet" type="text/css" href="style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        items a {
            font-family: 微软雅黑;
            font-size: 20px;
        }

        body {
            background-color: #f6f6f6;
        }
        /*新闻公告*/
        .news {
            margin: 10px auto;
            margin-top: 30px;
            width: 1035px;
            height: 270px;
            background-color: white;
            border-radius: 10px;
            border: 1px solid #eaeaea;
        }

        .newsTitle {
            float: left;
            width: 40%;
            height: 100%;
        }

        .newsTitleLogo {
            width: 96%;
            height: 25px;
            float: left;
            margin-left: 20px;
            padding-top: 20px;
            padding-bottom: 10px;
            margin-bottom: 10px;
            border-bottom: 2px solid #e5ecf0;
        }

        .newsContent {
            height: 90%;
            width: 96%;
            margin-left: 20px;
        }

            .newsContent li {
                font-family: "微软雅黑";
                font-size: 18px;
                list-style-type: none;
                line-height: 30px;
            }

            .newsContent a {
                color: black;
                text-decoration: none;
            }

        .newsPic {
            float: left;
            width: 60%;
            height: 100%;
        }
        /*新课介绍*/
        .introduce {
            margin: 10px auto;
            width: 1035px;
            height: 300px;
            background-color: white;
            border-radius: 10px;
            border: 1px solid #eaeaea;
            margin-top: 30px;
        }

        .introduceLogo {
            width: 96%;
            height: 25px;
            margin-left: 20px;
            padding-top: 20px;
            padding-bottom: 10px;
            margin-bottom: 10px;
            border-bottom: 2px solid #e5ecf0;
        }

        .introduceSubject {
            height: 260px;
        }

        .Subject {
            float: left;
            width: 49%;
            height: 100%;
        }

        .introduceText {
            font-family: "微软雅黑";
            font-size: 18px;
            list-style-type: none;
            line-height: 20px;
            padding-left: 10px;
            text-align: left;
            line-height: 40px;
            float: left;
        }
        /*热门选课*/
        .hotSubjects {
            margin: 10px auto;
            margin-top: 30px;
            width: 1035px;
            height: 550px;
            background-color: white;
            border-radius: 10px;
            border: 1px solid #eaeaea;
        }

        .hotSubjectsLogo {
            width: 96%;
            height: 25px;
            margin-left: 20px;
            padding-top: 20px;
            padding-bottom: 10px;
            margin-bottom: 10px;
            border-bottom: 2px solid #e5ecf0;
        }

        .bigPicture {
            height: 82%;
            width: 70%;
            float: left;
        }

        .smallPictures {
            height: 82%;
            width: 25%;
            float: left;
            padding-left: 15px;
        }
    </style>
    <script src="jquery-2.1.1.min.js"></script>
    <script src="jquery.slideBox.js" type="text/javascript"></script>
    <script src="carrousel.js" type="text/javascript"></script>

    <%--<script>window.jQuery || document.write('<script src="jquery-2.1.1.min.js"><\/script>')</script>
    <script src="slick.min.js"></script>
    <script type="text/javascript">
        $(".project-detail").slick({
            slidesToShow: 1,
            arrows: false,
            asNavFor: '.project-strip',
            autoplay: true,
            autoplaySpeed: 3000
        });

        $(".project-strip").slick({
            slidesToShow: 5,
            slidesToScroll: 1,
            arrows: false,
            asNavFor: '.project-detail',
            dots: false,
            infinite: true,
            centerMode: true,
            focusOnSelect: true
        });
    </script>--%>
    <script>
        jQuery(function ($) {
            $('#demo3').slideBox({
                duration: 0.3,//滚动持续时间，单位：秒
                easing: 'linear',//swing,linear//滚动特效
                delay: 5,//滚动延迟时间，单位：秒
                hideClickBar: false,//不自动隐藏点选按键
                clickBarRadius: 10
            });
            $('#dg-container').carrousel({
                current: 0,
                autoplay: true,
                interval: 3000
            });
        });
        function test() {
            $('#dg-container').carrousel('next');
        }
    </script>

    <div class="news">
        <div class="newsTitle">
            <div class="newsTitleLogo">
                <img src="/Images/newslogo.png" />
                <a href="http://www.baidu.com">
                    <img src="/Images/more.jpg" style="float: right;" /></a>
            </div>
            <ul class="newsContent">
                <li><a href="~/">湖北大学纪念建校85周年校友代表座谈会举行</a></li>
                <li><a href="~/">湖北大学纪念建校85周年文艺晚会隆重举行</a></li>
                <li><a href="~/">尚钢为2016级新生讲授“两学一做”学习教育...</a></li>
                <li><a href="~/">我校学子在全国高校地理师范生教学技能大...</a></li>
                <li><a href="~/">2016年全国植物生物学大会在汉举行</a></li>
                <li><a href="~/">学校举办纪念红军长征胜利80周年暨建校85...</a></li>
            </ul>
        </div>
        <div class="newsPic">
            <div id="demo3" class="slideBox" style="margin: 20px auto">
                <ul class="items">
                    <li><a title="湖北大学纪念建校85周年校友代表座谈会举行" href="https://www.baidu.com">
                        <img src="/Images/01.jpg" width="570" height="235" /></a></li>
                    <li><a title="师生同心，砥砺前行——湖北大学纪念建校85周年...">
                        <img src="/Images/02.jpg" width="570" height="235" /></a></li>
                    <li><a title="不忘初心，共筑梦想——湖北大学纪念建校85周年...">
                        <img src="/Images/03.jpg" width="570" height="235" /></a></li>
                    <li><a title="武汉体育学院校长吕万刚教授来校进行学术交流">
                        <img src="/Images/04.jpg" width="570" height="235" /></a></li>
                    <li><a title="香港中文大学信息工程系的博士生导师雷志斌博士...">
                        <img src="/Images/05.jpg" width="570" height="235" /></a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="introduce">
        <div class="introduceLogo">
            <img src="/Images/introducelogo.png" />
            <a href="http://www.baidu.com">
                <img src="/Images/more.jpg" style="float: right;" /></a>
        </div>
        <div class="introduceSubject">
            <div class="Subject">
                <img src="/Images/battlefield3.jpg" style="padding-left: 20px; float: left;" />
                <ul class="introduceText">
                    <li>课程名称 战地三示例教学</li>
                    <li>开课时间 2016年11月11日</li>
                    <li>上课时间 每周四晚7:00-9:00</li>
                    <li>上课地点 数统学院四楼机房</li>
                    <li>课程简介 介绍战地三的有关操作及战术</li>
                </ul>
            </div>
            <div class="Subject">
                <img src="/Images/battlefield3.jpg" style="padding-left: 20px; float: left;" />
                <ul class="introduceText">
                    <li>课程名称 战地三示例教学</li>
                    <li>开课时间 2016年11月11日</li>
                    <li>上课时间 每周四晚7:00-9:00</li>
                    <li>上课地点 数统学院四楼机房</li>
                    <li>课程简介 介绍战地三的有关操作及战术</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="hotSubjects">
        <div class="hotSubjectsLogo">
            <img src="/Images/hotsubjects.png" />
        </div>
        <div class="htmleaf-container" style="margin: 20px; margin-top: 180px">
            <%--            <div class="section section-project">--%>
            <%--        <h2 class="section__title">热门课程</h2>--%>
            <div class="project-carousel">
                <div class="project-strip">
                    <div class="project">
                        <img src="/Images/001.jpg" alt="" />
                    </div>
                    <div class="project">
                        <img src="/Images/002.jpg" alt="" />
                    </div>
                    <div class="project">
                        <img src="/Images/003.jpg" alt="" />
                    </div>
                    <div class="project">
                        <img src="/Images/004.jpg" alt="" />
                    </div>
                    <div class="project">
                        <img src="/Images/005.jpg" alt="" />
                    </div>
                    <div class="project">
                        <img src="/Images/001.jpg" alt="" />
                    </div>
                    <div class="project">
                        <img src="/Images/002.jpg" alt="" />
                    </div>
                    <div class="project">
                        <img src="/Images/003.jpg" alt="" />
                    </div>
                    <div class="project">
                        <img src="/Images/004.jpg" alt="" />
                    </div>
                    <div class="project">
                        <img src="/Images/005.jpg" alt="" />
                    </div>
                </div>
                <div class="project-screen">
                    <div class="project-detail">
                        <div class="project">
                            <img src="/Images/001.jpg" alt="" />
                        </div>
                        <div class="project">
                            <img src="/Images/002.jpg" alt="" />
                        </div>
                        <div class="project">
                            <img src="/Images/003.jpg" alt="" />
                        </div>
                        <div class="project">
                            <img src="/Images/004.jpg" alt="" />
                        </div>
                        <div class="project">
                            <img src="/Images/005.jpg" alt="" />
                        </div>
                        <div class="project">
                            <img src="/Images/001.jpg" alt="" />
                        </div>
                        <div class="project">
                            <img src="/Images/002.jpg" alt="" />
                        </div>
                        <div class="project">
                            <img src="/Images/003.jpg" alt="" />
                        </div>
                        <div class="project">
                            <img src="/Images/004.jpg" alt="" />
                        </div>
                        <div class="project">
                            <img src="/Images/005.jpg" alt="" />
                        </div>

                    </div>
                    <%--  <div class="screen-frame" style="background-image: url('../Images/macbook.png');"></div>--%>
                </div>
            </div>
        </div>
    </div>

    <%--<div class="banner">
            <section id="dg-container" class="dg-container">
                <div class="dg-wrapper">
                    <a href="#" onclick="return false;">
                        <img src="/Images/1.jpg"/>
                    </a>
                    <a href="#" onclick="return false;">
                        <img src="/Images/2.jpg"/>
                    </a>
                    <a href="#" onclick="return false;">
                        <img src="/Images/3.jpg"/>
                    </a>
                    <a href="#" onclick="return false;">
                        <img src="/Images/4.jpg"/>
                    </a>
                    <a href="#" onclick="return false;">
                        <img src="/Images/5.jpg"/>
                    </a>
                </div>
                <ol class="button" id="lightButton">
                    <li index="0">
                    <li index="1">
                    <li index="2">
                    <li index="3">
                    <li index="4">
                </ol>
                <nav>
                    <span class="dg-prev">what</span>
                    <span class="dg-next">what</span>
                </nav>
            </section>
        </div>--%>
    <%--<div class="bigPicture">
            <div style="height: 83%; width: 100%; padding: 10px">
                <img src="/Images/subject1.jpg" style="height: 380px; width: 711px" />
            </div>
            <div style="height: 12%; width: 95%; padding: 10px; background-color: #e5ecf0; margin-left: 12px;">
                <ul class="introduceText">
                    <li style="font-size: 20px; font-weight: bold; line-height: 20px">从零开始的小提琴入门</li>
                    <li>音乐导师 葛万峰</li>
                </ul>
                <ul class="introduceText" style="padding-left: 300px; padding-top: 20px">
                    <li style="color: gray">每周二晚上7:00-9:00</li>
                </ul>
            </div>
        </div>
        <div class="smallPictures">
            <img src="/Images/subject1.jpg" style="height: 150px; width: 250px; padding: 10px; padding-left: 20px" />
            <img src="/Images/subject2.jpg" style="height: 150px; width: 250px; padding: 10px; padding-left: 20px" />
            <div style="width: 100%; height: 50px; padding: 10px; padding-left: 20px; border-color: rgb(79,157,97);">
                <p style="font-family: 微软雅黑; font-size: 20px; color: rgb(79,157,97); text-align: center; border: 1px solid rgb(97,157,79); width: 245px; height: 33px; padding-top: 10px">点击翻页</p>
            </div>
        </div>--%>
    </div>
    

    <script src="jquery-2.1.1.min.js" type="text/javascript"></script>
    <script>window.jQuery || document.write('<script src="jquery-2.1.1.min.js"><\/script>')</script>
    <script src="slick.min.js"></script>
    <script type="text/javascript">
        $(".project-detail").slick({
            slidesToShow: 1,
            arrows: false,
            asNavFor: '.project-strip',
            autoplay: true,
            autoplaySpeed: 3000
        });

        $(".project-strip").slick({
            slidesToShow: 5,
            slidesToScroll: 1,
            arrows: false,
            asNavFor: '.project-detail',
            dots: false,
            infinite: true,
            centerMode: true,
            focusOnSelect: true
        });
    </script>
</asp:Content>

