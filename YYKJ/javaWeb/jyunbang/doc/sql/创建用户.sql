create user jyunbang identified by "jyunbang"  --����jyunbang�û�

  default tablespace USERS

  temporary tablespace TEMP

  profile DEFAULT;

  

  

grant connect,create view ,resource  to jyunbang;

grant unlimited tablespace to jyunbang;

 

 

--����Ա��Ȩ

����grant create session to jyunbang;--����jyunbang�û�����session��Ȩ�ޣ�����½Ȩ��

����grant unlimited session to jyunbang;--����jyunbang�û�ʹ�ñ�ռ��Ȩ��

����grant create table to jyunbang;--���贴�����Ȩ��

����grant drop table to jyunbang;--����ɾ�����Ȩ��

����grant insert table to jyunbang;--������Ȩ��

����grant update table to jyunbang;--�޸ı��Ȩ��

����grant all to public;--�����Ƚ���Ҫ����������Ȩ��(all)�������û�(public)

--oralce��Ȩ�޹���Ƚ��Ͻ�����ͨ�û�֮��Ҳ��Ĭ�ϲ��ܻ�����ʵ�

����grant select on tablename to jyunbang;--����jyunbang�û��鿴ָ�����Ȩ��

����grant drop on tablename to jyunbang;--����ɾ�����Ȩ��

����grant insert on tablename to jyunbang;--��������Ȩ��

����grant update on tablename to jyunbang;--�����޸ı��Ȩ��

����grant insert(id) on tablename to jyunbang;

����grant update(id) on tablename to jyunbang;--�����ָ�����ض��ֶεĲ�����޸�Ȩ�ޣ�ע�⣬ֻ����insert��update

 

--����Ȩ��

����--�����﷨ͬgrant,�ؼ���Ϊrevoke

--�鿴Ȩ��

����select * from user_sys_privs;--�鿴��ǰ�û�����Ȩ��

����select * from user_tab_privs;--�鿴�����û��Ա��Ȩ��

--��������û��ı�

����/*��Ҫ�ڱ���ǰ�����û���������*/

--Ȩ�޴���

��-- ���û�A��Ȩ������B��B���Խ�������Ȩ��������C���������£�

����grant alert table on tablename to jyunbang with admin option;--�ؼ��� with admin option

����grant alert table on tablename to jyunbang with grant option;--�ؼ��� with grant optionЧ����admin����

--��ɫ

����--��ɫ��Ȩ�޵ļ��ϣ����԰�һ����ɫ������û�

����create role myrole;--������ɫ

����grant create session to myrole;--������session��Ȩ������myrole

����grant myrole to jyunbang;--����jyunbang�û�myrole�Ľ�ɫ

����drop role myrole;--ɾ����ɫ

����/*������ЩȨ���ǲ����������ɫ�ģ�����unlimited tablespace��any�ؼ���*/
