<%@ page language="C#" autoeventwireup="true" inherits="index, App_Web_index.aspx.cdcab7d2" %>

    <style>
        body{
            background-color:#f5f5f5;
        }
        /*新闻公告*/
        .news {
            margin:10px auto;
            margin-top: 30px;
            width:1035px;
            height:270px;
            background-color:white;
            border-radius: 10px;
            border: 1px solid #eaeaea;
        }
        .newsTitle {
            float:left;
            width:40%;
            height:100%;
        }
        .newsTitleLogo {
            width:96%;
            height:25px;
            float:left;
            margin-left:20px;
            padding-top:20px;
            padding-bottom:10px;
            margin-bottom:10px;
            border-bottom: 2px solid #e5ecf0;
        }
        .newsContent {
            height:90%;
            width:96%;
            margin-left:20px;
        }
            .newsContent li {
                font-family:"微软雅黑";
                font-size:18px;
                list-style-type:none;
                line-height:30px;
            }
            .newsContent a {
                color:black;
                text-decoration:none;
            }
        .newsPic {
            float:left;
            width:60%;
            height:100%;
        }
        /*新课介绍*/
        .introduce {
            margin:10px auto;
            width:1035px;
            height:300px;
            background-color:white;
            border-radius: 10px;
            border: 1px solid #eaeaea;
            margin-top: 30px;
        }
        .introduceLogo {
            width:96%;
            height:25px;
            margin-left:20px;
            padding-top:20px;
            padding-bottom:10px;
            margin-bottom:10px;
            border-bottom: 2px solid #e5ecf0;
        }
        .introduceSubject {
            height:260px;
        }
        .Subject {
            float:left;
            width:49%;
            height:100%;
        }
        .introduceText {
            font-family:"微软雅黑";
            font-size:18px;
            list-style-type:none;
            line-height:20px;
            padding-left:10px;
            text-align:left;
            line-height:40px;
            float:left;
        }
        /*热门选课*/
        .hotSubjects {
            margin:10px auto;
            margin-top: 30px;
            width:1035px;
            height:550px;
            background-color:white;
            border-radius: 10px;
            border: 1px solid #eaeaea;
        }
        .hotSubjectsLogo {
            width:96%;
            height:25px;
            margin-left:20px;
            padding-top:20px;
            padding-bottom:10px;
            margin-bottom:10px;
            border-bottom: 2px solid #e5ecf0;
        }
        .bigPicture {
            height:82%;
            width:70%;
            float:left;

        }
        .smallPictures {
            height:82%;
            width:25%;
            float:left;
            padding-left:15px;
        }
    </style>
    <div class="news">
        <div class="newsTitle" >
            <div class="newsTitleLogo" >
                <img src="/Images/newslogo.png" />
            </div>
            <ul class="newsContent" >
                <li><a href="~/">烟台黄海渤海两船相遇 6人被救起5人遇害(09/27)</a></li>
                <li><a href="~/">烟台黄海渤海两船相遇 6人被救起5人遇害(09/27)</a></li>
                <li><a href="~/">烟台黄海渤海两船相遇 6人被救起5人遇害(09/27)</a></li>
                <li><a href="~/">烟台黄海渤海两船相遇 6人被救起5人遇害(09/27)</a></li>
                <li><a href="~/">烟台黄海渤海两船相遇 6人被救起5人遇害(09/27)</a></li>
                <li><a href="~/">烟台黄海渤海两船相遇 6人被救起5人遇害(09/27)</a></li>
            </ul>
        </div>
        <div class="newsPic" >
            <img src="/Images/newspic.jpg" style="width:550px;height:250px;padding:10px;padding-left:50px;"/>
        </div>
    </div>

    <div class="introduce" >
        <div class="introduceLogo" >
            <img src="/Images/introducelogo.png" />
        </div>
        <div class="introduceSubject" >
            <div class="Subject" >
                <img src="/Images/battlefield3.jpg" style="padding-left:20px;float:left;"/>
                <ul class="introduceText">
                    <li>课程名称 战地三示例教学</li>
                    <li>开课时间 2016年11月11日</li>
                    <li>上课时间 每周四晚7:00-9:00</li>
                    <li>上课地点 数统学院四楼机房</li>
                    <li>课程简介 介绍战地三的有关操作及战术</li>
                </ul>
            </div>
            <div class="Subject" >
                <img src="/Images/battlefield3.jpg" style="padding-left:20px;float:left;"/>
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

    <div class="hotSubjects" >
        <div class="hotSubjectsLogo" >
            <img src="/Images/hotsubjects.png" />
        </div>
        <div class="bigPicture" >
            <div style="height:83%; width:100%;padding:10px" >
                <img src="/Images/subject1.jpg" style="height:380px;width:711px"/>
            </div>
            <div style="height:12%; width:95%; padding:10px;background-color:#e5ecf0; margin-left: 12px;" >
                <ul class="introduceText">
                    <li style="font-size:20px;font-weight:bold;line-height:20px">从零开始的小提琴入门</li>
                    <li>音乐导师 葛万峰</li>
                </ul>
                <ul class="introduceText" style="padding-left:300px;padding-top:20px">
                    <li style="color:gray">每周二晚上7:00-9:00</li>
                </ul>
            </div>
        </div>
        <div class="smallPictures" >
            <img src="/Images/subject1.jpg" style="height:150px;width:250px;padding:10px;padding-left:20px" />
            <img src="/Images/subject2.jpg" style="height:150px;width:250px;padding:10px;padding-left:20px" />
            <div style="width:100%;height:50px;padding:10px;padding-left:20px;border-color:rgb(79,157,97);">
                <p style="font-family:微软雅黑;font-size:20px;color:rgb(79,157,97);text-align:center;border:1px solid rgb(97,157,79); width: 245px;height:33px; padding-top:10px">点击翻页</p>
            </div>
        </div>
    </div>



