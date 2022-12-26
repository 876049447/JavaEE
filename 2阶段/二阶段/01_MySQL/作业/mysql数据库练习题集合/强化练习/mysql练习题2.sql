һ������һ���ݿ⣬�����ĸ���ѧ����Student�����γ̱�Course�����ɼ���Score���Լ���ʦ��Ϣ��Teacher�����ĸ���Ľṹ�ֱ����1-1�ı�һ��~���ģ���ʾ���������1-2�ı�һ��~���ģ���ʾ����SQL��䴴���ĸ�����������Ŀ��

��1-1���ݿ�ı�ṹ
��һ��Student (ѧ����)

������			��������	�ɷ�Ϊ��	�� ��
Sno				varchar (20)	��		ѧ�ţ�������
Sname			varchar (20)	��		ѧ������
Ssex			varchar (20)	��		ѧ���Ա�
Sbirthday		date			��		ѧ����������
Class			varchar (20)	��		ѧ�����ڰ༶

create table student(
	sno varchar(50) not null,
	sname varchar(50) not null,
	ssex varchar(50) not null,
	sbrithday  date,
	class varchar(50),
	primary key (sno)
);
insert into student values('108','����','��','1977-09-01','95033');
insert into student values('105','����','��','1975-10-02','95031');
insert into student values('107','����','Ů','1976-01-23','95033');
insert into student values('101','���','��','1976-02-20','95033');
insert into student values('109','����','Ů','1975-02-10','95031');
insert into student values('103','½��','��','1974-06-03','95031');

������Course���γ̱�

������			��������	�ɷ�Ϊ��	�� ��
Cno				varchar (20)	��		�γ̺ţ�������
Cname			varchar (20)	��		�γ�����
Tno				varchar (20)	��		�̹���ţ������
create table course(
	cno varchar(50) not null,
	cname varchar(50) not null,
	tno varchar(50) references tacher(tno),
	primary key (cno)
);
insert into course values('3-105','���������','825');
insert into course values('3-245','����ϵͳ','804');
insert into course values('6-166','���ֵ绰','856');
insert into course values('9-888','�ߵ���ѧ','831');
������Score(�ɼ���)

������			��������	�ɷ�Ϊ��	�� ��
Sno				varchar (20)	��		ѧ�ţ������
Cno				varchar (20)	��		�γ̺ţ������
Degree			Decimal(4,1)	��		�ɼ�
������Sno+ Cno(��������)
create table score(
	sno varchar(50) not null,
	cno varchar(50) not null,
	degree decimal(4,1),
	foreign key (sno) references student(sno),
	foreign key (cno) references course(cno)
);
insert into score values('103','3-245',86);
insert into score values('105','3-245',75);
insert into score values('109','3-245',68);
insert into score values('103','3-105',92);
insert into score values('105','3-105',88);
insert into score values('109','3-105',76);
insert into score values('101','3-105',64);
insert into score values('107','3-105',91);
insert into score values('108','3-105',78);
insert into score values('101','6-166',85);
insert into score values('107','6-166',79);
insert into score values('108','6-166',81);
���ģ�Teacher(��ʦ��)

������			��������	�ɷ�Ϊ��	�� ��
Tno				varchar (20)	��		�̹���ţ����룩
Tname			varchar (20)	��		�̹�����
Tsex			varchar (20)	��		�̹��Ա�
Tbirthday		date			��		�̹���������
Prof			varchar (20)	��		ְ��
Depart			varchar (20)	��		�̹����ڲ���
create table teacher(
	tno varchar(50) not null,
	tname varchar(50) not null,
	tsex varchar(50) not null,
	tbrithday date,
	prof varchar(50),
	depart varchar(50) not null,
	primary key(tno)
);
insert into teacher values('804','���','��','1958-12-02','������','�����ϵ');
insert into teacher values('856','����','��','1969-03-12','��ʦ','���ӹ���ϵ');
insert into teacher values('825','��Ƽ','Ů','1972-05-05','����','�����ϵ');
insert into teacher values('831','����','Ů','1977-08-14','����','���ӹ���ϵ');

1�� ��ѯStudent���е����м�¼��Sname��Ssex��Class�С�
2�� ��ѯ��ʦ���еĵ�λ�����ظ���Depart�С�
3�� ��ѯStudent������м�¼��
4�� ��ѯScore���гɼ���60��80֮������м�¼��
5�� ��ѯScore���гɼ�Ϊ85��86��88�ļ�¼��
6�� ��ѯStudent���С�95031������Ա�Ϊ��Ů����ͬѧ��¼��
7�� ��Class�����ѯStudent������м�¼��
8�� ��Cno����Degree�����ѯScore������м�¼��
9�� ��ѯ��95031�����ѧ��������
10����ѯScore���е���߷ֵ�ѧ��ѧ�źͿγ̺š����Ӳ�ѯ��������
11����ѯÿ�ſε�ƽ���ɼ���
12����ѯScore����������5��ѧ��ѡ�޵Ĳ���3��ͷ�Ŀγ̵�ƽ��������
13����ѯ��������70��С��90��Sno�С�
14����ѯ����ѧ����Sname��Cno��Degree�С�
15����ѯ����ѧ����Sno��Cname��Degree�С�
16����ѯ����ѧ����Sname��Cname��Degree�С�
17����ѯ��95033����ѧ����ƽ���֡�
18������ʹ�������������һ��grade��

create table grade(low  int(3),upp  int(3),rank  char(1));

insert into grade values(90,100,'A');

insert into grade values(80,89,'B');

insert into grade values(70,79,'C');

insert into grade values(60,69,'D');

insert into grade values(0,59,'E');

�ֲ�ѯ����ͬѧ��Sno��Cno��rank�С�

19����ѯѡ�ޡ�3-105���γ̵ĳɼ����ڡ�109����ͬѧ�ɼ�������ͬѧ�ļ�¼��
20��ѡ�˶��ſγ̲���������γ��²�����߷ֵ�
21����ѯ�ɼ�����ѧ��Ϊ��109�����γ̺�Ϊ��3-105���ĳɼ������м�¼��
22����ѯ��ѧ��Ϊ108��101��ͬѧͬ�����������ѧ����Sno��Sname��Sbirthday�С�
23����ѯ�����񡰽�ʦ�οε�ѧ���ɼ���
24����ѯѡ��ĳ�γ̵�ͬѧ��������5�˵Ľ�ʦ������
25����ѯ95033���95031��ȫ��ѧ���ļ�¼��
26��  ��ѯ������85�����ϳɼ��Ŀγ�Cno.
27����ѯ���������ϵ����ʦ���̿γ̵ĳɼ���
28����ѯ������ ��ϵ���롰���ӹ���ϵ����ְͬ�ƵĽ�ʦ��Tname��Prof��
29����ѯѡ�ޱ��Ϊ��3-105���γ��ҳɼ����ٸ���ѡ�ޱ��Ϊ��3-245����ͬѧ��Cno��Sno��Degree,����Degree�Ӹߵ��ʹ�������
any:��������������һ���ɼ��Ϳ���
30����ѯѡ�ޱ��Ϊ��3-105���ҳɼ�����ѡ�ޱ��Ϊ��3-245���γ̵�ͬѧ��Cno��Sno��Degree.
all:���������е����гɼ�

31�� ��ѯ���н�ʦ��ͬѧ��name��sex��birthday.
32����ѯ���С�Ů����ʦ�͡�Ů��ͬѧ��name��sex��birthday.
33�� ��ѯ�ɼ��ȸÿγ�ƽ���ɼ��͵�ͬѧ�ĳɼ���
34�� ��ѯ�����ον�ʦ��Tname��Depart.
35 �� ��ѯ����δ���εĽ�ʦ��Tname��Depart.
36����ѯ������2�������İ�š�
37����ѯStudent���в��ա�������ͬѧ��¼��
38����ѯStudent����ÿ��ѧ�������������䡣
39����ѯStudent����������С��Sbirthday����ֵ��
40���԰�ź�����Ӵ�С��˳���ѯStudent���е�ȫ����¼��
41����ѯ���С���ʦ�������ϵĿγ̡�
42����ѯ��߷�ͬѧ��Sno��Cno��Degree�С�
43����ѯ�͡������ͬ�Ա������ͬѧ��Sname.
44����ѯ�͡������ͬ�Ա�ͬ���ͬѧSname.
45����ѯ����ѡ�ޡ���������ۡ��γ̵ġ��С�ͬѧ�ĳɼ���