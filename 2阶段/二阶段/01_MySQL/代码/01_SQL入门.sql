-- mysqlע��
/*
	mysql����ע��
*/

-- ����mysql���ݿ�
-- �﷨��   mysql  -uroot -p123456
mysql  -uroot -p123456

-- �Ͽ�����
quit;

-- �������ݿ�
-- create database ���ݿ���;
create database mydb001;
-- create database ���ݿ��� character set �����ʽ
create database mydb002 character set 'gbk';
-- create database if not exists ���ݿ���;
create database if not exists mydb001;

-- �鿴���ݿ�
show databases;


-- �鿴���ݿ�Ĵ�����Ϣ
-- show create database ���ݿ���;
show create database mydb001;

-- �޸����ݿ�ı����ʽ
-- alter database ������ character set �����ʽ;
alter database mydb002 character set 'utf8';


-- ɾ�����ݿ�
-- drop database if exists ���ݿ���;
drop database mydb001;
drop database if exists mydb002;


-- �鿴��ǰ���ݿ�
select database();


-- ѡ�����ݿ�(�Ժ������ݿ��в�����һ��Ҫ��ѡ�����ݿ�)
-- use ���ݿ���;



mysql�Ŀ��ӻ�����
	navicat
	sqlyog







