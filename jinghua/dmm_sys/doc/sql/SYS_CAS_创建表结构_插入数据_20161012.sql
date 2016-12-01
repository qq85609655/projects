-----------------------------------------------
-- Export file for user TEST                 --
-- Created by zhaoyx on 2016/10/12, 16:16:13 --
-----------------------------------------------

create table T_CLASSES
(
  ID               VARCHAR2(20),
  NO_              VARCHAR2(20) not null,
  NAME_            VARCHAR2(60),
  TEACH_DEPT_ID    VARCHAR2(20),
  LENGTH_SCHOOLING NUMBER(1),
  ISLIVE           NUMBER(1),
  GRADE            NUMBER(4)
)
;

create table T_CODE
(
  CODE_         VARCHAR2(10) not null,
  NAME_         VARCHAR2(60),
  CODE_CATEGORY VARCHAR2(3),
  CODE_TYPE     VARCHAR2(32) not null,
  CODETYPE_NAME VARCHAR2(100),
  ISTRUE        NUMBER(1),
  ORDER_        NUMBER(4)
)
;
comment on table T_CODE
  is 'ͨ�ñ�׼������������һЩ�����νṹ�ı������ݣ������Ա�����������ò������';
comment on column T_CODE.CODE_
  is '����';
comment on column T_CODE.NAME_
  is '����';
comment on column T_CODE.CODE_CATEGORY
  is 'GB,HB,XB����';
comment on column T_CODE.CODE_TYPE
  is '��������';
comment on column T_CODE.CODETYPE_NAME
  is '������������';
comment on column T_CODE.ISTRUE
  is '�Ƿ����';
comment on column T_CODE.ORDER_
  is '����';
alter table T_CODE
  add primary key (CODE_, CODE_TYPE);


create table T_CODE_DEPT
(
  ID                 VARCHAR2(20) not null,
  CODE_              VARCHAR2(60) not null,
  NAME_              VARCHAR2(100) not null,
  PID                VARCHAR2(20) not null,
  PATH_              VARCHAR2(200) not null,
  LEVEL_             NUMBER(2),
  LEVEL_TYPE         VARCHAR2(20),
  ISTRUE             NUMBER(1),
  ORDER_             NUMBER(4),
  DEPT_CATEGORY_CODE VARCHAR2(10)
)
;
comment on table T_CODE_DEPT
  is '������֯�ṹ';
comment on column T_CODE_DEPT.CODE_
  is '����';
comment on column T_CODE_DEPT.NAME_
  is '����';
comment on column T_CODE_DEPT.PID
  is '���ڵ�';
comment on column T_CODE_DEPT.PATH_
  is 'ȫ����';
comment on column T_CODE_DEPT.LEVEL_
  is '���';
comment on column T_CODE_DEPT.LEVEL_TYPE
  is '�������';
comment on column T_CODE_DEPT.ISTRUE
  is '�Ƿ����';
comment on column T_CODE_DEPT.ORDER_
  is '���';
alter table T_CODE_DEPT
  add primary key (ID);


create table T_CODE_DEPT_TEACH
(
  ID         VARCHAR2(20) not null,
  CODE_      VARCHAR2(60) not null,
  NAME_      VARCHAR2(100) not null,
  PID        VARCHAR2(20) not null,
  PATH_      VARCHAR2(200),
  LEVEL_     NUMBER(2),
  LEVEL_TYPE VARCHAR2(20),
  ISTRUE     NUMBER(1),
  ORDER_     NUMBER(4),
  SUBJECT_ID VARCHAR2(20)
)
;
comment on table T_CODE_DEPT_TEACH
  is '��ѧ��֯����';
comment on column T_CODE_DEPT_TEACH.CODE_
  is '����';
comment on column T_CODE_DEPT_TEACH.NAME_
  is '����';
comment on column T_CODE_DEPT_TEACH.PID
  is '���ڵ�';
comment on column T_CODE_DEPT_TEACH.PATH_
  is 'ȫ����';
comment on column T_CODE_DEPT_TEACH.LEVEL_
  is '���';
comment on column T_CODE_DEPT_TEACH.LEVEL_TYPE
  is '�������';
comment on column T_CODE_DEPT_TEACH.ISTRUE
  is '�Ƿ����';
comment on column T_CODE_DEPT_TEACH.ORDER_
  is '���';
comment on column T_CODE_DEPT_TEACH.SUBJECT_ID
  is 'רҵѧ������ID';
alter table T_CODE_DEPT_TEACH
  add primary key (ID);


create table T_SYS_DATA_SERVICE
(
  ID          NUMBER(16) not null,
  NAME_       VARCHAR2(30) not null,
  SERVICENAME VARCHAR2(100) not null
)
;
comment on table T_SYS_DATA_SERVICE
  is '���ݷ�Χ�����';
comment on column T_SYS_DATA_SERVICE.NAME_
  is '����';
comment on column T_SYS_DATA_SERVICE.SERVICENAME
  is '��������';
alter table T_SYS_DATA_SERVICE
  add primary key (ID);


create table T_SYS_OPERATE
(
  ID          NUMBER(16) not null,
  NAME_       VARCHAR2(20) not null,
  DESCRIPTION VARCHAR2(40) not null
)
;
alter table T_SYS_OPERATE
  add primary key (ID);


create table T_SYS_RESOURCES
(
  ID                 NUMBER(16) not null,
  NAME_              VARCHAR2(30) not null,
  URL_               VARCHAR2(60),
  DESCRIPTION        VARCHAR2(100),
  PID                NUMBER(16) not null,
  LEVEL_             NUMBER(2),
  PATH_              VARCHAR2(500) not null,
  ISTRUE             NUMBER(1) not null,
  ORDER_             NUMBER(4) not null,
  KEYWORD            VARCHAR2(100),
  RESOURCE_TYPE_CODE VARCHAR2(10),
  SHIRO_TAG          VARCHAR2(100) not null,
  SYSGROUP_          VARCHAR2(10),
  ISSHOW             NUMBER(1)
)
;
comment on table T_SYS_RESOURCES
  is 'ϵͳ�˵�';
comment on column T_SYS_RESOURCES.NAME_
  is '����';
comment on column T_SYS_RESOURCES.URL_
  is '·��';
comment on column T_SYS_RESOURCES.DESCRIPTION
  is 'm����';
comment on column T_SYS_RESOURCES.PID
  is '���ڵ�';
comment on column T_SYS_RESOURCES.LEVEL_
  is '���';
comment on column T_SYS_RESOURCES.PATH_
  is 'ȫϢ��';
comment on column T_SYS_RESOURCES.ISTRUE
  is '�Ƿ����';
comment on column T_SYS_RESOURCES.ORDER_
  is '����';
comment on column T_SYS_RESOURCES.KEYWORD
  is '�ؼ���';
comment on column T_SYS_RESOURCES.RESOURCE_TYPE_CODE
  is '��Դ����';
comment on column T_SYS_RESOURCES.SHIRO_TAG
  is 'shiro��Դ��ʾ';


create table T_SYS_ROLE
(
  ID             NUMBER(16) not null,
  NAME_          VARCHAR2(20),
  DESCRIPTION    VARCHAR2(40),
  ISTRUE         NUMBER(1),
  ROLE_TYPE_CODE VARCHAR2(10),
  ISMAIN         NUMBER(1),
  RESOURCEID     NUMBER(16)
)
;
comment on table T_SYS_ROLE
  is 'ϵͳ��ɫ';
comment on column T_SYS_ROLE.NAME_
  is '����';
comment on column T_SYS_ROLE.DESCRIPTION
  is '����';
comment on column T_SYS_ROLE.ISTRUE
  is '�Ƿ����';
comment on column T_SYS_ROLE.ROLE_TYPE_CODE
  is '��ɫ����';
comment on column T_SYS_ROLE.ISMAIN
  is '�Ƿ������ɫ';
comment on column T_SYS_ROLE.RESOURCEID
  is '��ԴID';


create table T_SYS_ROLE_DEPT
(
  ID           NUMBER(16) not null,
  ROLE_PERM_ID NUMBER(16) not null,
  DEPT_ID      VARCHAR2(4000) not null,
  LEVEL_       VARCHAR2(2)
)
;
comment on table T_SYS_ROLE_DEPT
  is '��ɫ-����Ȩ��-����';
comment on column T_SYS_ROLE_DEPT.ROLE_PERM_ID
  is '��ɫ-Ȩ��ID';
comment on column T_SYS_ROLE_DEPT.DEPT_ID
  is '��֯����ID';
comment on column T_SYS_ROLE_DEPT.LEVEL_
  is '���ݲ��';


create table T_SYS_ROLE_DEPTTEACH
(
  ID            NUMBER(16) not null,
  ROLE_PERM_ID  NUMBER(16) not null,
  DEPT_TEACH_ID VARCHAR2(4000) not null,
  LEVEL_        VARCHAR2(2)
)
;
comment on table T_SYS_ROLE_DEPTTEACH
  is '��ɫ-����Ȩ��-��ѧ';
comment on column T_SYS_ROLE_DEPTTEACH.ROLE_PERM_ID
  is '��ɫ-Ȩ��ID';
comment on column T_SYS_ROLE_DEPTTEACH.DEPT_TEACH_ID
  is '��ѧ��֯����ID';
comment on column T_SYS_ROLE_DEPTTEACH.LEVEL_
  is '���ݲ��';


create table T_SYS_ROLE_PERM
(
  ID              NUMBER(16) not null,
  ROLE_ID         NUMBER(16) not null,
  RESOURCE_ID     NUMBER(16),
  OPERATE_ID      NUMBER(16),
  DATA_SERVICE_ID NUMBER(16),
  WIRLDCARD       VARCHAR2(200) not null
)
;
comment on table T_SYS_ROLE_PERM
  is 'ϵͳ��ɫ-Ȩ��';
comment on column T_SYS_ROLE_PERM.ROLE_ID
  is '��ɫID';
comment on column T_SYS_ROLE_PERM.RESOURCE_ID
  is 'ϵͳ�˵�ID';
comment on column T_SYS_ROLE_PERM.OPERATE_ID
  is '��Դ����ID';
comment on column T_SYS_ROLE_PERM.DATA_SERVICE_ID
  is '����Ȩ��ID';
comment on column T_SYS_ROLE_PERM.WIRLDCARD
  is 'shiroȨ��ͨ��';


create table T_SYS_SCHEDULE_GROUP
(
  ID   VARCHAR2(20) not null,
  URL_ VARCHAR2(40)
)
;
comment on table T_SYS_SCHEDULE_GROUP
  is 'ϵͳ-ҵ�����';
comment on column T_SYS_SCHEDULE_GROUP.URL_
  is 'url';


create table T_SYS_SCHEDULE_PLAN
(
  ID              VARCHAR2(20) not null,
  NAME_           VARCHAR2(20),
  GROUP_          VARCHAR2(20),
  CRON_EXPRESSION VARCHAR2(20),
  DESC_           VARCHAR2(200),
  ISTRUE          NUMBER(1)
)
;
comment on table T_SYS_SCHEDULE_PLAN
  is '�ƻ�';
comment on column T_SYS_SCHEDULE_PLAN.NAME_
  is '�ƻ�����';
comment on column T_SYS_SCHEDULE_PLAN.GROUP_
  is '����ҵ��ϵͳ';
comment on column T_SYS_SCHEDULE_PLAN.CRON_EXPRESSION
  is '���ʽ';
comment on column T_SYS_SCHEDULE_PLAN.DESC_
  is '����';
comment on column T_SYS_SCHEDULE_PLAN.ISTRUE
  is '�Ƿ�����';


create table T_SYS_SCHEDULE_PLAN_LOG
(
  ID        VARCHAR2(20) not null,
  PLANID    VARCHAR2(20),
  ISYES     NUMBER(1),
  STARTTIME VARCHAR2(20) not null,
  ENDTIME   VARCHAR2(200)
)
;
comment on table T_SYS_SCHEDULE_PLAN_LOG
  is '�ƻ�-��־';
comment on column T_SYS_SCHEDULE_PLAN_LOG.PLANID
  is '�ƻ�ID';
comment on column T_SYS_SCHEDULE_PLAN_LOG.ISYES
  is 'ִ�н��';
comment on column T_SYS_SCHEDULE_PLAN_LOG.STARTTIME
  is '��ʼʱ��';
comment on column T_SYS_SCHEDULE_PLAN_LOG.ENDTIME
  is '����ʱ��';


create table T_SYS_SCHEDULE_PLAN_LOG_DETAIL
(
  ID          VARCHAR2(20) not null,
  PLANLOGID   VARCHAR2(20),
  LOGTYPEID   VARCHAR2(20),
  ISYES       NUMBER(1),
  RESULT_DESC VARCHAR2(1200),
  LOGTYPE     VARCHAR2(20),
  STARTTIME   VARCHAR2(20),
  ENDTIME     VARCHAR2(20),
  CHECK_      VARCHAR2(200)
)
;
comment on table T_SYS_SCHEDULE_PLAN_LOG_DETAIL
  is '�ƻ�������־';
comment on column T_SYS_SCHEDULE_PLAN_LOG_DETAIL.PLANLOGID
  is '�ƻ���־ID';
comment on column T_SYS_SCHEDULE_PLAN_LOG_DETAIL.LOGTYPEID
  is '��־���͵�ִ��ID';
comment on column T_SYS_SCHEDULE_PLAN_LOG_DETAIL.ISYES
  is 'ִ�н��';
comment on column T_SYS_SCHEDULE_PLAN_LOG_DETAIL.RESULT_DESC
  is 'ִ������';
comment on column T_SYS_SCHEDULE_PLAN_LOG_DETAIL.LOGTYPE
  is '��־����';
comment on column T_SYS_SCHEDULE_PLAN_LOG_DETAIL.STARTTIME
  is '��ʼʱ��';
comment on column T_SYS_SCHEDULE_PLAN_LOG_DETAIL.ENDTIME
  is '����ʱ��';
comment on column T_SYS_SCHEDULE_PLAN_LOG_DETAIL.CHECK_
  is '���';


create table T_SYS_SCHEDULE_PLAN_WORK
(
  ID     VARCHAR2(20) not null,
  PLANID VARCHAR2(20),
  WORKID VARCHAR2(20),
  ORDER_ VARCHAR2(20)
)
;
comment on table T_SYS_SCHEDULE_PLAN_WORK
  is '�ƻ�-ҵ��';
comment on column T_SYS_SCHEDULE_PLAN_WORK.PLANID
  is '�ƻ�ID';
comment on column T_SYS_SCHEDULE_PLAN_WORK.WORKID
  is 'ҵ��ID';
comment on column T_SYS_SCHEDULE_PLAN_WORK.ORDER_
  is '����';


create table T_SYS_SCHEDULE_VERIFY
(
  ID      VARCHAR2(20) not null,
  NAME_   VARCHAR2(20),
  GROUP_  VARCHAR2(20),
  SERVICE VARCHAR2(40),
  DESC_   VARCHAR2(40),
  ISTRUE  NUMBER(1),
  ISMUST  NUMBER(1)
)
;
comment on table T_SYS_SCHEDULE_VERIFY
  is '�ƻ�-��֤';
comment on column T_SYS_SCHEDULE_VERIFY.NAME_
  is '����';
comment on column T_SYS_SCHEDULE_VERIFY.GROUP_
  is '����ҵ��ϵͳ';
comment on column T_SYS_SCHEDULE_VERIFY.SERVICE
  is 'ҵ��ϵͳurl��ַ';
comment on column T_SYS_SCHEDULE_VERIFY.DESC_
  is '����';
comment on column T_SYS_SCHEDULE_VERIFY.ISTRUE
  is '�Ƿ�����';
comment on column T_SYS_SCHEDULE_VERIFY.ISMUST
  is '�Ƿ����';


create table T_SYS_SCHEDULE_WORK
(
  ID      VARCHAR2(20) not null,
  NAME_   VARCHAR2(20),
  GROUP_  VARCHAR2(20),
  SERVICE VARCHAR2(40),
  DESC_   VARCHAR2(40),
  ISTRUE  NUMBER(1)
)
;
comment on table T_SYS_SCHEDULE_WORK
  is 'ҵ��';
comment on column T_SYS_SCHEDULE_WORK.NAME_
  is '����';
comment on column T_SYS_SCHEDULE_WORK.GROUP_
  is '����ҵ��ϵͳ';
comment on column T_SYS_SCHEDULE_WORK.SERVICE
  is 'ҵ��ϵͳurl��ַ';
comment on column T_SYS_SCHEDULE_WORK.DESC_
  is '����';
comment on column T_SYS_SCHEDULE_WORK.ISTRUE
  is '�Ƿ�����';


create table T_SYS_SCHEDULE_WORK_VERIFY
(
  ID       VARCHAR2(20) not null,
  WORKID   VARCHAR2(20),
  VERIFYID VARCHAR2(20),
  RULE     NUMBER(1),
  ORDER_   VARCHAR2(20)
)
;
comment on table T_SYS_SCHEDULE_WORK_VERIFY
  is 'ҵ��-��֤';
comment on column T_SYS_SCHEDULE_WORK_VERIFY.WORKID
  is 'ҵ��ID';
comment on column T_SYS_SCHEDULE_WORK_VERIFY.VERIFYID
  is '��֤ID';
comment on column T_SYS_SCHEDULE_WORK_VERIFY.RULE
  is '��֤�������Ǳ���';
comment on column T_SYS_SCHEDULE_WORK_VERIFY.ORDER_
  is 'ִ��˳�� ����';


create table T_SYS_USER
(
  ID                 NUMBER(16) not null,
  USERNAME           VARCHAR2(20),
  PASSWORD           VARCHAR2(60),
  REAL_NAME          VARCHAR2(60),
  SALT               VARCHAR2(60),
  ISTRUE             NUMBER(1),
  CREATE_TIME        VARCHAR2(20),
  UPDATE_TIME        VARCHAR2(20),
  DEPT_ID            VARCHAR2(20),
  DEPT_CATEGORY_CODE VARCHAR2(2),
  ID_NO              VARCHAR2(100)
)
;
comment on table T_SYS_USER
  is '�ڵ�¼�����Ƿ������ϴ�������������û�����Ч��  ϵͳ�û�';
comment on column T_SYS_USER.USERNAME
  is '��½��';
comment on column T_SYS_USER.PASSWORD
  is '����';
comment on column T_SYS_USER.REAL_NAME
  is '��ʵ����';
comment on column T_SYS_USER.SALT
  is '��ȫ����';
comment on column T_SYS_USER.ISTRUE
  is '�Ƿ���Ч';
comment on column T_SYS_USER.CREATE_TIME
  is '����ʱ��';
comment on column T_SYS_USER.UPDATE_TIME
  is '����ʱ��';
comment on column T_SYS_USER.DEPT_ID
  is '������֯��������';
comment on column T_SYS_USER.ID_NO
  is '���֤��';


create table T_SYS_USER_DEPT
(
  ID           NUMBER(16) not null,
  USER_PERM_ID NUMBER(16) not null,
  DEPT_ID      VARCHAR2(4000) not null,
  LEVEL_       VARCHAR2(2)
)
;
comment on table T_SYS_USER_DEPT
  is '�û�-��֯����';


create table T_SYS_USER_DEPTTEACH
(
  ID            NUMBER(16) not null,
  USER_PERM_ID  NUMBER(16) not null,
  DEPT_TEACH_ID VARCHAR2(4000) not null,
  LEVEL_        VARCHAR2(2)
)
;
comment on table T_SYS_USER_DEPTTEACH
  is '�û�-����Ȩ��-��ѧ';
comment on column T_SYS_USER_DEPTTEACH.USER_PERM_ID
  is '�û�Ȩ�ޱ�ID';
comment on column T_SYS_USER_DEPTTEACH.DEPT_TEACH_ID
  is '��ѧ��֯����ID';
comment on column T_SYS_USER_DEPTTEACH.LEVEL_
  is '���ݲ��';


create table T_SYS_USER_LOGGING
(
  ID         NUMBER(16) not null,
  USERNAME   VARCHAR2(20),
  LOGIN_DATE VARCHAR2(20),
  LOGIN_WAY  VARCHAR2(20)
)
;


create table T_SYS_USER_PERM
(
  ID              NUMBER(16) not null,
  USER_ID         NUMBER(16) not null,
  RESOURCE_ID     NUMBER(16),
  OPERATE_ID      NUMBER(16),
  DATA_SERVICE_ID NUMBER(16) not null,
  WIRLDCARD       VARCHAR2(200) not null
)
;
comment on table T_SYS_USER_PERM
  is '�û�-�ض�Ȩ��';
comment on column T_SYS_USER_PERM.USER_ID
  is '�û�ID';
comment on column T_SYS_USER_PERM.RESOURCE_ID
  is '��ԴID';
comment on column T_SYS_USER_PERM.OPERATE_ID
  is '��������ID';
comment on column T_SYS_USER_PERM.DATA_SERVICE_ID
  is '����Ȩ��';
comment on column T_SYS_USER_PERM.WIRLDCARD
  is 'shiroȨ��ͨ��';


create table T_SYS_USER_ROLE
(
  ID      NUMBER(16) not null,
  USER_ID NUMBER(16),
  ROLE_ID NUMBER(16)
)
;
comment on table T_SYS_USER_ROLE
  is '�û�-��ɫ��';
comment on column T_SYS_USER_ROLE.USER_ID
  is '�û�id';
comment on column T_SYS_USER_ROLE.ROLE_ID
  is '��ɫID';

---seq����
create sequence ID_SEQ
minvalue 1
maxvalue 9999999999
start with 100
increment by 1
nocache;



--��������
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('01', 'ѧ��', 'SYS', 'ROLE_TYPE_CODE', '��ɫ���ʹ���', 1, 1);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('02', '��ְ��', 'SYS', 'ROLE_TYPE_CODE', '��ɫ���ʹ���', 1, 2);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('03', '����', 'SYS', 'ROLE_TYPE_CODE', '��ɫ���ʹ���', 1, 3);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('01', '����ģ��', 'SYS', 'RESOURCE_TYPE', '��Դ����', 1, 1);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('02', '�˵�ҳ��', 'SYS', 'RESOURCE_TYPE', '��Դ����', 1, 2);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('03', '���ܰ�ť', 'SYS', 'RESOURCE_TYPE', '��Դ����', 1, 3);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('04', '�Զ������', 'SYS', 'RESOURCE_TYPE', '��Դ����', 1, 4);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('05', '�ֶ�����', 'SYS', 'RESOURCE_TYPE', '��Դ����', 1, 5);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('04', '����Ա', 'SYS', 'ROLE_TYPE_CODE', '��ɫ���ʹ���', 1, 4);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('06', 'ҵ��ϵͳ', 'SYS', 'RESOURCE_TYPE', '��Դ����', 1, 6);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('01', '�й���������Ա', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('02', '�й�������Ԥ����Ա', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('03', '�й���������Ա', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('04', '�й�����Ա', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('05', '�й�����ͬ����Ա', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('06', '�й������������Ա', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('07', '�й������ٽ����Ա', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('08', '�й�ũ����������Ա', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('09', '�й��¹�����Ա', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('10', '����ѧ����Ա', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('11', '̨����������ͬ����Ա', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('12', '�޵���������ʿ', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('13', 'Ⱥ��', 'GB', 'POLITICS_CODE', '������ò����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('01', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('02', '�ɹ���', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('03', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('04', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('05', 'ά�����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('06', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('07', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('08', '׳��', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('09', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('10', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('11', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('12', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('13', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('14', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('15', '�����塡', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('16', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('17', '��������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('18', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('19', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('20', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('21', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('22', '���', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('23', '��ɽ��', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('24', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('25', 'ˮ��', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('26', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('27', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('28', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('29', '�¶�������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('30', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('31', '���Ӷ���', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('32', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('33', 'Ǽ��', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('34', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('35', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('36', 'ë����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('37', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('01', '���޿�', 'SYS', 'COURSE_TYPE_CODE', '�γ����ʹ���', 1, 1);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('01', '��ְ��', 'SYS', 'AFTER_GW_CODE', '��λ�䶯����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('38', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('39', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('40', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('41', '��������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('42', 'ŭ��', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('43', '���α����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('44', '����˹��', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('45', '���¿���', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('46', '�°���', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('47', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('48', 'ԣ����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('49', '����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('50', '��������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('51', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('52', '���״���', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('53', '������', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('54', '�Ű���', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('55', '�����', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('56', '��ŵ��', 'GB', 'NATION_CODE', '�й����������Ƶ�������ĸƴд���ʹ���', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('01', '��Ⱥ', 'XB', 'DEPT_CATEGORY_CODE', '��֯�����ĵ�λ������', 1, 1);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('02', '����', 'XB', 'DEPT_CATEGORY_CODE', '��֯�����ĵ�λ������', 1, 2);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('03', '��ѧ��λ', 'XB', 'DEPT_CATEGORY_CODE', '��֯�����ĵ�λ������', 1, 3);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('04', '�̸�', 'XB', 'DEPT_CATEGORY_CODE', '��֯�����ĵ�λ������', 1, 4);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('1', '��', 'GB', 'SEX_CODE', '�Ա����', 1, null);
insert into T_CODE (CODE_, NAME_, CODE_CATEGORY, CODE_TYPE, CODETYPE_NAME, ISTRUE, ORDER_)
values ('2', 'Ů', 'GB', 'SEX_CODE', '�Ա����', 1, null);
insert into T_SYS_DATA_SERVICE (ID, NAME_, SERVICENAME)
values (4, '��ְ�����ڵĵ�λ', 'deptPermissionService?getMyDeptSqlbyDataServe');
insert into T_SYS_DATA_SERVICE (ID, NAME_, SERVICENAME)
values (1, '�Զ����ѧ��֯����', 'deptPermissionService?getDeptTeachIdSqlbyDataServe');
insert into T_SYS_DATA_SERVICE (ID, NAME_, SERVICENAME)
values (2, '�Զ���������֯����', 'deptPermissionService?getDeptIdSqlbyDataServe');
insert into T_SYS_DATA_SERVICE (ID, NAME_, SERVICENAME)
values (3, '����Ա����İ༶', 'deptPermissionService?getDeptClassIdSqlbyDataServe');
commit;
insert into T_SYS_OPERATE (ID, NAME_, DESCRIPTION)
values (1, 'view', '�鿴');
insert into T_SYS_OPERATE (ID, NAME_, DESCRIPTION)
values (2, 'add', '���');
insert into T_SYS_OPERATE (ID, NAME_, DESCRIPTION)
values (3, 'update', '����');
insert into T_SYS_OPERATE (ID, NAME_, DESCRIPTION)
values (4, 'delete', 'ɾ��');
insert into T_SYS_OPERATE (ID, NAME_, DESCRIPTION)
values (5, 'print', '��ӡ');
insert into T_SYS_OPERATE (ID, NAME_, DESCRIPTION)
values (6, '*', 'ȫ��');
commit;

insert into T_SYS_USER (ID, USERNAME, PASSWORD, REAL_NAME, SALT, ISTRUE, CREATE_TIME, UPDATE_TIME, DEPT_ID, DEPT_CATEGORY_CODE, ID_NO)
values (1, 'admin', '518f1de10142208410de88f3d14c8aa3', 'admin', '6e2cd3ddaed8e27462c367939bbc8758', 1, null, '2016-09-22 10:21:56', null, null, null);
commit;

insert into T_SYS_USER_ROLE (ID, USER_ID, ROLE_ID)
values (1, 1, 1);
commit;


insert into t_sys_role (ID, NAME_, DESCRIPTION, ISTRUE, ROLE_TYPE_CODE, ISMAIN, RESOURCEID)
values (1, 'admin', 'admin', 1, '04', 1, 1000110757);

insert into t_sys_role (ID, NAME_, DESCRIPTION, ISTRUE, ROLE_TYPE_CODE, ISMAIN, RESOURCEID)
values (2, 'teacher', '��ʦ', 1, '02', 1, 1000110757);

insert into t_sys_role (ID, NAME_, DESCRIPTION, ISTRUE, ROLE_TYPE_CODE, ISMAIN, RESOURCEID)
values (3, 'student', 'ѧ��', 1, '01', 1, 1000110618);

insert into t_sys_resources (ID, NAME_, URL_, DESCRIPTION, PID, LEVEL_, PATH_, ISTRUE, ORDER_, KEYWORD, RESOURCE_TYPE_CODE, SHIRO_TAG, SYSGROUP_, ISSHOW)
values ('0', '��Դ', null, '��Դ', '-1', '1', '0000', '1', '1', '1', '01', 'zy', null, '1');

insert into t_sys_resources (ID, NAME_, URL_, DESCRIPTION, PID, LEVEL_, PATH_, ISTRUE, ORDER_, KEYWORD, RESOURCE_TYPE_CODE, SHIRO_TAG, SYSGROUP_, ISSHOW)
values ('1000152313', '��̨ϵͳ', 'http://192.168.30.31:8088/sys', '��̨ϵͳ', '0', '2', '00001000152313', '1', '2', '��̨', '06', 'ht', '0', '1');

insert into t_sys_resources (ID, NAME_, URL_, DESCRIPTION, PID, LEVEL_, PATH_, ISTRUE, ORDER_, KEYWORD, RESOURCE_TYPE_CODE, SHIRO_TAG, SYSGROUP_, ISSHOW)
values ('1000110756', 'Ȩ�޹���', null, 'Ȩ�޹���', '1000152313', '3', '000010001523131000110756', '1', '1', '�û�����', '01', 'qx', '1000152313', '1');

insert into t_sys_resources (ID, NAME_, URL_, DESCRIPTION, PID, LEVEL_, PATH_, ISTRUE, ORDER_, KEYWORD, RESOURCE_TYPE_CODE, SHIRO_TAG, SYSGROUP_, ISSHOW)
values ('1000110757', '�û�����', '/user/list', '�û�����', '1000110756', '4', '0000100015231310001107561000110757', '1', '1', '�û�����', '02', 'qx:yh', '1000152313', '1');

insert into t_sys_resources (ID, NAME_, URL_, DESCRIPTION, PID, LEVEL_, PATH_, ISTRUE, ORDER_, KEYWORD, RESOURCE_TYPE_CODE, SHIRO_TAG, SYSGROUP_, ISSHOW)
values ('1000110758', '��ɫ����', '/system/role/getrole', '��ɫ����', '1000110756', '4', '0000100015231310001107561000110758', '1', '2', '��ɫ����', '02', 'qx:js', '1000152313', '1');

insert into t_sys_resources (ID, NAME_, URL_, DESCRIPTION, PID, LEVEL_, PATH_, ISTRUE, ORDER_, KEYWORD, RESOURCE_TYPE_CODE, SHIRO_TAG, SYSGROUP_, ISSHOW)
values ('1000110759', '��Դ����', '/system/user/resource', '��Դ����', '1000110756', '4', '0000100015231310001107561000110759', '1', '3', '��Դ����', '02', 'qx:zy', '1000152313', '1');

insert into t_sys_resources (ID, NAME_, URL_, DESCRIPTION, PID, LEVEL_, PATH_, ISTRUE, ORDER_, KEYWORD, RESOURCE_TYPE_CODE, SHIRO_TAG, SYSGROUP_, ISSHOW)
values ('1000114547', '�������', null, '�������', '1000152313', '3', '000010001523131000114547', '1', '2', '�������', '01', 'dd', '1000152313', '1');

insert into t_sys_resources (ID, NAME_, URL_, DESCRIPTION, PID, LEVEL_, PATH_, ISTRUE, ORDER_, KEYWORD, RESOURCE_TYPE_CODE, SHIRO_TAG, SYSGROUP_, ISSHOW)
values ('1000114548', '�ƻ�����', '/system/task/plan', '�ƻ�����', '1000114547', '4', '0000100015231310001145471000114548', '1', '1', '�ƻ�����', '02', 'dd:jh', '1000152313', '1');

insert into t_sys_resources (ID, NAME_, URL_, DESCRIPTION, PID, LEVEL_, PATH_, ISTRUE, ORDER_, KEYWORD, RESOURCE_TYPE_CODE, SHIRO_TAG, SYSGROUP_, ISSHOW)
values ('1000114549', 'ҵ�����', '/system/task/work', 'ҵ�����', '1000114547', '4', '0000100015231310001145471000114549', '1', '2', 'ҵ�����', '02', 'dd:yw', '1000152313', '1');

insert into t_sys_resources (ID, NAME_, URL_, DESCRIPTION, PID, LEVEL_, PATH_, ISTRUE, ORDER_, KEYWORD, RESOURCE_TYPE_CODE, SHIRO_TAG, SYSGROUP_, ISSHOW)
values ('1000114550', '��֤����', '/system/task/verify', '��֤����', '1000114547', '4', '0000100015231310001145471000114550', '1', '3', '��֤����', '02', 'dd:yz', '1000152313', '1');

commit;