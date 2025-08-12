create table student1(
  r_no int primary key,
  s_name varchar(25),
  phy number(5),
  chem number(5),
  mat number(5)
);

insert into student1 values(1,'Neymar',16,13,24);
insert into student1 values(2,'Messi',11,20,34);
insert into student1 values(3,'Cristiano',22,5,45);
insert into student1 values(4,'Bale',4,23,30);
insert into student1 values(5,'Ramos',24,15,14);
insert into student1 values(6,'Kevin',22,19,29);
insert into student1 values(7,'Bruno',20,18,20);
insert into student1 values(8,'Kylian',17,19,48);
insert into student1 values(9,'Vini',11,7,25);
insert into student1 values(10,'Luka',24,21,48);
update student1 set phy = 25 where r_no = 10;



select * from student1;

select avg(phy) as class_avg_phy from student1;
select max(mat) as highest_marks_maths from student1;
select min(chem) as lowest_mark_chemistry from student1;
select count(*) as pass_count_physics from student1 where phy>=12;
select count(*) as all_pass from student1 where phy>=12 and chem >=12 and mat >=25;
alter table student1 add totalmark int;
 update student1 set totalmark=mat+phy+chem;
    alter table student1 add results varchar(20);
    update student1 set results='FAIL' where chem <12 or mat <25 or phy <12;
    update student1 set results='PASS' where chem>=12 and mat>=25 and phy>=12;
    select * from student1 order by TotalMark desc;
select (count(case when mat>=25 then 1 end)/count(*)*100) as pass_percent_maths from student1;
select (count(case when phy>=12 and chem>=12 and mat>=25 then 1 end)/count(*)*100) as overall_pass_percent from student1;
select avg(phy+chem+mat) as class_average from student1;
select count(*) total_pass_students from student1 where phy>=12 and chem>=12 and mat>=25; 
select s_name, (phy+chem+mat) as total from student1 order by total desc fetch first 3 rows only;
select avg(phy) as avg_physics,avg(chem) as avg_chemistry, avg(mat) as avg_mathematics from student1;
select s_name from student1 where phy=25 or chem=25 or mat=50;
select s_name, mat from student1 where mat>(select avg(mat) from student1;
