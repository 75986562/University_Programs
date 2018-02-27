
--学生信息表
insert into Student values('2014221119200016','123456','舒博维','男',20,'汉','01','计算机与信息工程学院','0101','计算机科学与技术','01011402','计算机科学与技术1402班','2014.09','安徽省合肥市','02','共青团员','453789657842369872',100,0,null,null);
insert into Student values('2014221119200033','123456','葛万峰','男',21,'汉','01','计算机与信息工程学院','0101','计算机科学与技术','01011402','计算机科学与技术1401班','2014.09','安徽省合肥市','02','共青团员','453789657842369877',100,0,null,null);
--教师表
insert into Teacher values('100000','123456','比尔盖茨','男','汉','01','计算机与信息工程学院','01','讲师','18777777777','03','共产党员','45644442222111133X',null,null,null)
insert into Teacher values('100001','123456','陈景润','男','汉','05','数学与统计学院','03','教授','18777777778','03','共产党员','456444422221111333',null,null,null)
--职称表
insert into Title values('01','讲师',null)
insert into Title values('02','副教授',null)
insert into Title values('03','教授',null)

--学院信息表
insert into college values('01','计算机与信息工程学院','比尔盖茨',null,null);
insert into college values('02','体育学院','刘翔',null,null);
insert into college values('03','文学院','舒博维',null,null);
insert into college values('04','商学院','巴菲特',null,null);
insert into college values('05','数学与统计学院','陈景润',null,null);
insert into college values('06','外国语学院','俞敏洪',null,null);

--专业信息表
insert into Major values('0101','计算机科学与技术','曾诚','01','计算机与信息工程学院',null,null)
insert into Major values('0102','软件工程','余敦辉','01','计算机与信息工程学院',null,null)
insert into Major values('0103','信息安全','不知道','01','计算机与信息工程学院',null,null)
insert into Major values('0204','篮球','不知道','02','体育学院',null,null)
insert into Major values('0205','足球','不知道','02','体育学院',null,null)
insert into Major values('0306','中国文学','不知道','03','文学院',null,null)
insert into Major values('0407','经济管理','不知道','04','商学院',null,null)

--课程表
insert into Course values('01001','C语言程序设计教程',3,'必修','01','计算机与信息工程学院',null,null)
insert into Course values('05002','高等数学（1）',6,'必修','05','数学与统计学院',null,null)
insert into Course values('05003','高等数学（2）',6,'必修','05','数学与统计学院',null,null)
insert into Course values('02004','大学体育（1）',1,'必修','02','体育学院',null,null)
insert into Course values('06004','大学英语（1）',3,'必修','06','外国语学院',null,null)

--班级表
insert into Class values('01011401','计算机科学与技术1402班','肖述','01','计算机与信息工程学院',58,2014,null,null)
insert into Class values('01011402','计算机科学与技术1401班','余敦辉','01','计算机与信息工程学院',58,2014)

--教师课程表
insert into Teacher_Course values('01','01001','C语言程序设计教程','100000','比尔盖茨','考试',58,'1-16_40102',null,null)
insert into Teacher_Course values('02','05002','高等数学（1）','100001','陈景润','考试',58,'1-16_40304+50809',null,null)

--学生课程表
insert into Student_Course values('01','2014221119200016','C语言程序设计教程','舒博维',null,null)
insert into Student_Course values('02','2014221119200016','高等数学（1）','舒博维',null,null)
insert into Student_Course values('01','2014221119200033','C语言程序设计教程','葛万峰',null,null)
insert into Student_Course values('02','2014221119200033','高等数学（1）','葛万峰',null,null)

--学生成绩表
insert into Student_Score values('2014221119200016','01','C语言程序设计教程','舒博维',89,null,null)
insert into Student_Score values('2014221119200016','02','高等数学（1）','舒博维',90,null,null)
insert into Student_Score values('2014221119200033','01','C语言程序设计教程','葛万峰',100,null,null)
insert into Student_Score values('2014221119200033','02','高等数学（1）','葛万峰',99,null,null)

--管理员
insert into Admin values('1001','123456','农振华',null,null)
insert into Admin values('1002','123456','张建升',null,null)

--政治面貌表
insert into Ps_id values('01','群众',null,null)
insert into Ps_id values('02','共青团员',null,null)
insert into Ps_id values('03','共产党员',null,null)
insert into Ps_id values('04','其他党派',null,null)

--社会考试报名表

insert into Social_exam values('01','计算机二级','2017-1-11 8:00:00','100元',null,null)
insert into Social_exam values('02','教师资格证','2017-11-11 8:00:00','200元',null,null)
--社会考试查询表
insert into Se_Query values('01','2014221119200016','计算机二级','舒博维','湖北大学教4-102','410201',null,null,null)
insert into Se_Query values('01','2014221119200033','计算机二级','葛万峰','湖北大学教4-102','410202',null,null,null)
insert into Se_Query values('02','2014221119200016','教师资格证','舒博维','湖北大学教3-102','310201',null,null,null)
insert into Se_Query values('02','2014221119200016','教师资格证','葛万峰','湖北大学教3-102','310202',null,null,null)

--教学评价表
insert into Evaluate values('01','01001','C语言程序设计教程',null,null,null)
insert into Evaluate values('02','05002','高等数学（1）',null,null,null)

--考务安排表

insert into Exam values('01','01001','C语言程序设计教程','2016-07-05 8:00','2016-07-05 11:00','教3-102','01',null,null)
insert into Exam values('02','01001','高等数学（1）','2016-07-06 8:00','2016-07-06 11:00','教3-105','02',null,null)