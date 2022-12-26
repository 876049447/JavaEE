����
create table dept
(
deptno varchar(10) primary key,
dname varchar(10)
);
create table emp
(
empno varchar(10) primary key,
ename varchar(10),
job varchar(10),
mgr varchar(10),
sal varchar(10),
deptno varchar(10) references dept(deptno)
);
���������£�
insert into dept values ('1','��ҵ��');
insert into dept values ('2','���۲�');
insert into dept values ('3','������');
insert into dept values ('4','���̲�');
insert into emp values ('01','jacky','clerk','tom','1000','1');
insert into emp values ('02','tom','clerk','','2000','1');
insert into emp values ('07','biddy','clerk','','2000','1');
insert into emp values ('03','jenny','sales','pretty','600','2');
insert into emp values ('04','pretty','sales','','800','2');
insert into emp values ('05','buddy','jishu','canndy','1000','3');
insert into emp values ('06','canndy','jishu','','1500','3');
insert into emp values ('08','jacy','clerk','tom','1000','3');

��Ŀ��

--1 �г�emp���и����ŵĲ��źţ���߹��ʣ���͹���
SELECT DEPTNO,MAX(SAL) MAX_SAL,MIN(SAL) MIN_SAL FROM EMP GROUP BY DEPTNO;
--2 �г�emp���и�����jobΪ'CLERK'��Ա������͹��ʣ���߹���
SELECT DEPTNO,MAX(SAL) MAX_SAL,MIN(SAL) MIN_SAL FROM EMP WHERE JOB = 'CLERK' GROUP BY DEPTNO;
--3 ����emp����͹���С��2000�Ĳ��ţ��г�jobΪ'CLERK'��Ա���Ĳ��źţ���͹��ʣ���߹���
SELECT DEPTNO,MAX(SAL) MAX_SAL,MIN(SAL) MIN_SAL,JOB FROM EMP WHERE JOB = 'CLERK' AND SAL < 2000 GROUP BY DEPTNO;
--4 ���ݲ��ź��ɸ߶��ͣ������еͶ����г�ÿ��Ա�������������źţ�����
SELECT ENAME,DEPTNO,SAL FROM EMP ORDER BY DEPTNO DESC,SAL;
--5 �г�'buddy'���ڲ�����ÿ��Ա���������벿�ź�
SELECT ENAME,DEPTNO FROM EMP WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME = 'BUDDY');
--6 �г�ÿ��Ա�������������������źţ�������
SELECT E.ENAME,E.JOB,E.DEPTNO,D.DNAME FROM EMP E,DEPT D WHERE E.DEPTNO = D.DEPTNO;
--7 �г�emp�й���Ϊ'CLERK'��Ա�������������������źţ�������
SELECT E.ENAME,E.JOB,E.DEPTNO,D.DNAME FROM EMP E,DEPT D WHERE E.DEPTNO = D.DEPTNO AND E.JOB = 'CLERK';
--8 ����emp���й����ߵ�Ա�����г����������������������������Ϊmgr��
SELECT ENAME,MGR FROM EMP WHERE MGR != '';
SELECT ENAME,MGR FROM EMP WHERE MGR NOT IN ('');
--9 ����dept���У��г����в����������źţ�ͬʱ�г������Ź���Ϊ'CLERK'��Ա�����빤��
SELECT E.ENAME,E.JOB,E.DEPTNO,D.DNAME FROM EMP E,DEPT D WHERE E.DEPTNO = D.DEPTNO AND E.JOB = 'CLERK';
