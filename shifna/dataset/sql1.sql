create database dab1;
use dab1;
create table dab1_students(Reg_Num int primary key,student_name varchar(30),cgpa float);
select * from dab1_students;
alter table dab1_students add degree  varchar(30);
select * from dab1_students;
insert into dab1_students values(01,'arun',6.5,'BA'),(02,'raju',5.5,'BCA'),(03,'anu',7.5,'Bcom'),(04,'minu',6.2,'Bsc');
select * from dab1_students;
alter table dab1_students add blood_group varchar(30);
select * from dab1_students;
alter table dab1_students drop column blood_group;
select * from dab1_students;
create table employee(employee_id int primary key,first_name varchar(30),last_name varchar(30),salary float,joining_data date,departement varchar(20));
select * from employee;
insert into employee values(02,'jerry','mansxo',600000,'2019-01-20','IT'),(03,'philip','jose',890000,'2019-01-20','Banking'),(04,'john','abrahan',200000,'2019-01-20','Insurance'),(05,'michael','mathew',220000,'2019-01-20','Finance'); 
insert into employee values(01,'bob','kinto',100000,'2019-01-20','Finance');
select * from employee;
insert into dab1_students values(05,'aiya',6.8,'BVoc'),(06,'sonu',5.3,'BSc'),(07,'rahul',8.0,'BTech'),(08,'sherin',7.8,'BA');
select * from dab1_students;
create table dab2_students like dab1_students;
select * from dab2_students;
insert into dab2_students values(01,'arun',5.6,'Bed'),(02,'jinto',7.2,'Bsc');
select * from dab2_students;
drop table dab2_students;
select * from dab2_students;
select * from dab1_students where cgpa>6;
select Reg_Num , student_name from dab1_students where cgpa>7;
select Reg_Num , student_name from dab1_students where cgpa>6 and degree='BA';
select * from dab1_students order by cgpa; 
select * from dab1_students order by cgpa desc;
select Reg_Num , student_name from dab1_students order by cgpa desc;
select Reg_Num , student_name from dab1_students order by cgpa;
select * from dab1_students order by degree;
select * from dab1_students order by degree desc;
select * from dab1_students where cgpa between 5 and 6;
select * from dab1_students where student_name like '%u';
select * from dab1_students where student_name like 'a%';
create table coordinators (staff_id varchar(10),cname varchar(30),degree varchar(30));
select * from coordinators;
insert into coordinators value('C01','sherin','BVoc'),('C02','raju','BSc'),('C03','anu','BTech'),('C04','rana','BA');
select * from coordinators;
select student_name,cname,dab1_students.degree from dab1_students inner join coordinators where dab1_students.degree=coordinators.degree and cgpa>6;
select dab1_students.student_name,coordinators.staff_id from dab1_students inner join coordinators on dab1_students.degree=coordinators.degree;
select * from dab1_students inner join coordinators on dab1_students.degree=coordinators.degree;
select * from dab1_students left outer join coordinators on dab1_students.degree=coordinators.degree;
select * from dab1_students right outer join coordinators on dab1_students.degree=coordinators.degree;
insert into coordinators values('C05','hyra','CA'),('C06','hiba','Bed');
select * from dab1_students right outer join coordinators on dab1_students.degree=coordinators.degree;
select * from dab1_students left outer join coordinators on dab1_students.degree=coordinators.degree;
select * from dab1_students limit 4;
select min(cgpa) from dab1_students;
select count(degree) from dab1_students;
select * from dab1_students where cgpa=(select max(cgpa) from dab1_students);
select * from dab1_students where cgpa=(select min(cgpa) from dab1_students);
select sum(cgpa) from dab1_students;
select avg(cgpa) from dab1_students;
select count(student_name),degree from dab1_students group by degree;
select count(student_name),degree from dab1_students group by degree order by count(student_name);
select count(student_name),degree from dab1_students group by degree order by count(student_name) desc;