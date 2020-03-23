create database randomclass;
use randomclass;
create table student( name varchar(25), roll int, id int primary key auto_increment, grade varchar(5) );
insert student(name,roll,id,grade) values ('mohit',291,29,'A'),
	('aameer',567,27,'A'),
	('laxmi',163,25,'B'),('khitish',100,23,'O'),
	('nishit',798,56,'R'),('swayam',573,79,'T'),
	('rupesh',56,10,'E');
show columns in student;
select avg(roll) from student;
select avg(roll) from student group by grade;
select grade,avg(roll) as ' avg marks' from student group by grade order by avg(roll) ;
create table hostel( room_no int primary key auto_increment, stu_id int, cost float , foreign key (stu_id) references student(id),sem int );
insert into hostel(stu_id,cost,sem) values(10,263.23,3),
	(23,789.87,7),
	(10,672.65,5),
	(25,998.234,7),(27,893.321,4),(29,78.432,2),(56,87.678,1),(79,87.253,6);
select stu_id,avg(cost) from hostel group by stu_id;
select student.id, name,round(avg(cost),4)as 'hostel fees' from student join hostel on hostel.stu_id=student.id group by student.id ord
er by avg(cost)desc;