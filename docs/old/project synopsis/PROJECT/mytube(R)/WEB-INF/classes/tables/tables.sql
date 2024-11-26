create table Admin_tube(admin_name varchar2(50) not null,admin_pass varchar2(30) not null)
/
insert into Admin_tube values('admin','surya')
/
insert into Admin_tube values('admin','kamal')
/
create table Account(email varchar2(50) not null,uname varchar2(30) not null,upass varchar2(30) not null,con_upass varchar2(30) not null,dob varchar2(20) not null,gender varchar2(10) not null)
/
create table upload_user_info(file_id varchar2(500),
file_name varchar2(500) not null,
 file_org_path varchar2(500) not null,
 file_flv_path varchar2(500) not null,
 file_thumb_path varchar2(500) not null,
 file_title varchar2(500) not null,
 file_catagory varchar2(50) not null,
 file_type varchar2(50),
 CONSTRAINT file_id_pk PRIMARY KEY (file_id)
 )
/
create table upload_Comments(client_name varchar2(50),
Date1 varchar2(100),
vedio_name varchar2(100),
comment1 varchar2(300))
/
stop
/


