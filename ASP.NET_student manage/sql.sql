
--ѧ����Ϣ��
insert into Student values('2014221119200016','123456','�沩ά','��',20,'��','01','���������Ϣ����ѧԺ','0101','�������ѧ�뼼��','01011402','�������ѧ�뼼��1402��','2014.09','����ʡ�Ϸ���','02','������Ա','453789657842369872',100,0,null,null);
insert into Student values('2014221119200033','123456','�����','��',21,'��','01','���������Ϣ����ѧԺ','0101','�������ѧ�뼼��','01011402','�������ѧ�뼼��1401��','2014.09','����ʡ�Ϸ���','02','������Ա','453789657842369877',100,0,null,null);
--��ʦ��
insert into Teacher values('100000','123456','�ȶ��Ǵ�','��','��','01','���������Ϣ����ѧԺ','01','��ʦ','18777777777','03','������Ա','45644442222111133X',null,null,null)
insert into Teacher values('100001','123456','�¾���','��','��','05','��ѧ��ͳ��ѧԺ','03','����','18777777778','03','������Ա','456444422221111333',null,null,null)
--ְ�Ʊ�
insert into Title values('01','��ʦ',null)
insert into Title values('02','������',null)
insert into Title values('03','����',null)

--ѧԺ��Ϣ��
insert into college values('01','���������Ϣ����ѧԺ','�ȶ��Ǵ�',null,null);
insert into college values('02','����ѧԺ','����',null,null);
insert into college values('03','��ѧԺ','�沩ά',null,null);
insert into college values('04','��ѧԺ','�ͷ���',null,null);
insert into college values('05','��ѧ��ͳ��ѧԺ','�¾���',null,null);
insert into college values('06','�����ѧԺ','������',null,null);

--רҵ��Ϣ��
insert into Major values('0101','�������ѧ�뼼��','����','01','���������Ϣ����ѧԺ',null,null)
insert into Major values('0102','�������','��ػ�','01','���������Ϣ����ѧԺ',null,null)
insert into Major values('0103','��Ϣ��ȫ','��֪��','01','���������Ϣ����ѧԺ',null,null)
insert into Major values('0204','����','��֪��','02','����ѧԺ',null,null)
insert into Major values('0205','����','��֪��','02','����ѧԺ',null,null)
insert into Major values('0306','�й���ѧ','��֪��','03','��ѧԺ',null,null)
insert into Major values('0407','���ù���','��֪��','04','��ѧԺ',null,null)

--�γ̱�
insert into Course values('01001','C���Գ�����ƽ̳�',3,'����','01','���������Ϣ����ѧԺ',null,null)
insert into Course values('05002','�ߵ���ѧ��1��',6,'����','05','��ѧ��ͳ��ѧԺ',null,null)
insert into Course values('05003','�ߵ���ѧ��2��',6,'����','05','��ѧ��ͳ��ѧԺ',null,null)
insert into Course values('02004','��ѧ������1��',1,'����','02','����ѧԺ',null,null)
insert into Course values('06004','��ѧӢ�1��',3,'����','06','�����ѧԺ',null,null)

--�༶��
insert into Class values('01011401','�������ѧ�뼼��1402��','Ф��','01','���������Ϣ����ѧԺ',58,2014,null,null)
insert into Class values('01011402','�������ѧ�뼼��1401��','��ػ�','01','���������Ϣ����ѧԺ',58,2014)

--��ʦ�γ̱�
insert into Teacher_Course values('01','01001','C���Գ�����ƽ̳�','100000','�ȶ��Ǵ�','����',58,'1-16_40102',null,null)
insert into Teacher_Course values('02','05002','�ߵ���ѧ��1��','100001','�¾���','����',58,'1-16_40304+50809',null,null)

--ѧ���γ̱�
insert into Student_Course values('01','2014221119200016','C���Գ�����ƽ̳�','�沩ά',null,null)
insert into Student_Course values('02','2014221119200016','�ߵ���ѧ��1��','�沩ά',null,null)
insert into Student_Course values('01','2014221119200033','C���Գ�����ƽ̳�','�����',null,null)
insert into Student_Course values('02','2014221119200033','�ߵ���ѧ��1��','�����',null,null)

--ѧ���ɼ���
insert into Student_Score values('2014221119200016','01','C���Գ�����ƽ̳�','�沩ά',89,null,null)
insert into Student_Score values('2014221119200016','02','�ߵ���ѧ��1��','�沩ά',90,null,null)
insert into Student_Score values('2014221119200033','01','C���Գ�����ƽ̳�','�����',100,null,null)
insert into Student_Score values('2014221119200033','02','�ߵ���ѧ��1��','�����',99,null,null)

--����Ա
insert into Admin values('1001','123456','ũ��',null,null)
insert into Admin values('1002','123456','�Ž���',null,null)

--������ò��
insert into Ps_id values('01','Ⱥ��',null,null)
insert into Ps_id values('02','������Ա',null,null)
insert into Ps_id values('03','������Ա',null,null)
insert into Ps_id values('04','��������',null,null)

--��ῼ�Ա�����

insert into Social_exam values('01','���������','2017-1-11 8:00:00','100Ԫ',null,null)
insert into Social_exam values('02','��ʦ�ʸ�֤','2017-11-11 8:00:00','200Ԫ',null,null)
--��ῼ�Բ�ѯ��
insert into Se_Query values('01','2014221119200016','���������','�沩ά','������ѧ��4-102','410201',null,null,null)
insert into Se_Query values('01','2014221119200033','���������','�����','������ѧ��4-102','410202',null,null,null)
insert into Se_Query values('02','2014221119200016','��ʦ�ʸ�֤','�沩ά','������ѧ��3-102','310201',null,null,null)
insert into Se_Query values('02','2014221119200016','��ʦ�ʸ�֤','�����','������ѧ��3-102','310202',null,null,null)

--��ѧ���۱�
insert into Evaluate values('01','01001','C���Գ�����ƽ̳�',null,null,null)
insert into Evaluate values('02','05002','�ߵ���ѧ��1��',null,null,null)

--�����ű�

insert into Exam values('01','01001','C���Գ�����ƽ̳�','2016-07-05 8:00','2016-07-05 11:00','��3-102','01',null,null)
insert into Exam values('02','01001','�ߵ���ѧ��1��','2016-07-06 8:00','2016-07-06 11:00','��3-105','02',null,null)