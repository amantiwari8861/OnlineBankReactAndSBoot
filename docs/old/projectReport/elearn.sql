drop database elearn;
create database elearn;
use elearn;

create table feedback(
Contact_Id	int primary key auto_increment,
name varchar(30),
mobile varchar(15),
Contact_time	date,
email varchar(50) ,
Problem	text);

create table userDetails(
username Varchar(50) primary key,
Role Varchar(50) not null,
password Varchar(50) not null
);

create table StudentDetails(
	username Varchar(50),
    Date_of_joining	timestamp default(current_timestamp()),
	student_Email	varchar(50) not null unique,
    Student_Name	varchar(50),
    Student_Qualification	varchar(50),
    Student_DOB	date,
    Student_mobile	varchar(50),
    Student_photo	blob,
    gender varchar(20),
    city varchar(30),
    country varchar(30),
    constraint fk1 foreign key(username) references userDetails(username)
);
create table QuizDetails(
Quiz_id int primary key auto_increment,
Quiz_total_marks Varchar(50),
quiz blob,
Quiz_solution blob,
Quiz_category Varchar(50)
);
create table courseDetails(
course_Id	int primary key auto_increment,
Course_joining_date	timestamp default(current_timestamp()),
Course_type	Varchar(50) not null ,
Course_level	Varchar(50),
quiz_id int,
    constraint fk4 foreign key(quiz_id) references quizDetails(quiz_id));
    
create table TeacherDetails(
username Varchar(50) ,
Teacher_name	Varchar(50),
Teacher_Email	Varchar(50) not null unique,
Teacher_qualification	Varchar(50),
Date_of_joining	timestamp default(current_timestamp()),
Teacher_DOB	Varchar(50),
Teacher_photo	blob, 
 gender varchar(20),
    city varchar(30),
    country varchar(30),
course_id int,
    constraint fk2 foreign key(username) references userDetails(username),
        constraint fk3 foreign key(course_id) references CourseDetails(course_id)
);


select * from feedback;
select * from quizDetails;
select * from courseDetails;
select * from userDetails;
select * from studentDetails;
select * from TeacherDetails;






use elearn;
show tables;
create table newsletter( email varchar(50));
insert into feedback(contact_time,email,problem) values('2023/03/24','lavanyagoyal@gmail.com','kuch nahi');
insert into quizDetails(quiz_total_marks,quiz_category) values(200,'java');
insert into courseDetails(course_type,course_level) values('java','advance');
insert into userDetails(username,password,role) values('lavanya','1234','Admin');
insert into StudentDetails(student_email,student_name) values('amantiwari8861@gmail.com','aman tiwari');
insert into TeacherDetails(teacher_name,teacher_email) values('naman tiwari','naman@gmail.com');


insert into feedback values(2,"lavanya 2",9891062743,current_timestamp(),'lavanyagoyal@gmail.com','kuch nahi');
insert into quizDetails(quiz_total_marks,quiz_category) values(200,'java');
insert into courseDetails(course_type,course_level) values('java','advance');
insert into userDetails(username,password,role) values('sourabh','password','student');

insert into StudentDetails(username,student_email,student_name,student_qualification,student_dob,
student_mobile,gender,city,country) values("amantiwari8861",'amantiwari8861@gmail.com','Aman Tiwari',
'mca','1999-4-22',8448179216,'male','delhi','india');

select * from studentdetails;

select * from userdetails;




select * from teacherdetails;


insert into userdetails values("lavanya","admin","password");

insert into TeacherDetails(teacher_name,teacher_email) values('naman tiwari','naman@gmail.com');

-- drop database elearn;
DELIMITER $$

create trigger afterinsertstudent
after insert on userdetails
for each row
BEGIN
    insert into studentdetails(username) values(new.username);
END$$

DELIMITER ;

select * from studentdetails;
select * from userdetails;
update studentdetails set username='aman' where student_name='aman tiwari';
delete from studentdetails where student_name='xyz';
insert into teacherdetails values('lavanya',"lavanya goyal","lavanyagoyal@gmail.com","bca"
,'2023-03-24 16:58',"1999/04/22",null,"female","delhi","india",null);
delete from teacherdetails where teacher_name="naman tiwari";


--   new data 

create database myschool;
use myschool;
create table userdetails(userid int primary key auto_increment,
username varchar(255),email varchar(50),password varchar(255));

insert into userdetails values(8510,"aman","amantiwari2743@gmail.com","1234");

select * from userdetails;

use elearn;

select * from userdetails;

use myschool;
create table StudentDetails(
username Varchar(50),
    Date_of_joining	timestamp default(current_timestamp()),
	student_Email	varchar(50) not null unique,
    Student_Name	varchar(50),
    Student_Qualification	varchar(50),
    Student_DOB	date,
    Student_mobile	varchar(50),
    Student_photo	blob,
    gender varchar(20),
    city varchar(30),
    country varchar(30)
);

select * from userdetails;

create table feedback(
name varchar(30),
email varchar(50),
Contact_time timestamp default(current_timestamp()),
Problem	text);

select * from feedback;


use myschool;

select * from userdetails;

select * from studentdetails;


select * from feedback;

use elearn;
show tables;

select * from userdetails;


select * from teacherdetails;

$10$LKmoycBopLAUSPXsA8R8munrZHFguCQigUpjRwC7sL0VsnaP6LDQ2

set autocommit=on;