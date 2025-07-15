-- Book Table
create table book(
  book_id int primary key,
  title varchar(255) not null,
  pub_id int,
  auth_id int,
  isbn varchar(15),
  foreign key(pub_id) references publisher(pub_id),
  foreign key(auth_id) references author(auth_id)
);

-- Author Table
create table author(
  auth_id int primary key,
  name varchar(255) not null,
  email varchar(255),
  phn_no varchar(15)
);

-- Book_Author Table (Junction table for many-to-many)
create table book_author(
  book_id int,
  auth_id int,
  primary key(book_id, auth_id),
  foreign key(book_id) references book(book_id),
  foreign key(auth_id) references author(auth_id)
);

-- Publisher Table
create table publisher(
  pub_id int primary key,
  name varchar(255) not null,
  address varchar(255),
  phn_no varchar(15)
);

-- Member Table
create table memeber(
  mem_id int primary key,
  name varchar(255),
  branch varchar(255),
  yoj varchar(20),
  roll_no varchar(20),
  phone_no varchar(15),
  email varchar(255),
  status varchar(255)
);

-- Book Issue Table
create table book_issue(
  issue_id int primary key,
  doi date default sysdate,
  book_id int,
  member_id int,
  exdor varchar(255),
  foreign key(book_id) references book(book_id),
  foreign key(member_id) references memeber(mem_id)
);

-- Book Return Table
create table book_return(
  issue_id int primary key,
  actual_dor varchar(255),
  late_days int,
  late_fees int
);

-- Fine Table
create table fine(
  from_day date default sysdate,
  to_day varchar(255),
  amount int
);

-- Insert Data
insert into publisher values(1, 'amal', 'delhi', '9876543210');
insert into publisher values(2, 'jose', 'mumbai', '9123456789');

insert into author values(1, 'kurian', 'kurian@email.com', '9876501234');
insert into author values(2, 'meera', 'meera@email.com', '9834567890');

insert into book values(10, 'os', 1, 1, 'ISBN12345');
insert into book values(20, 'dbms', 2, 2, 'ISBN67890');

insert into book_author values(10, 1);
insert into book_author values(20, 2);

insert into memeber values(1, 'alan', 'cse', '2023', '23cse01', '9876543211', 'alan@email.com', 'yes');
insert into memeber values(2, 'alfred', 'ece', '2022', '22ece05', '9988776655', 'alfred@email.com', 'yes');

insert into book_issue values(100, sysdate, 10, 1, '25-jul-2025');
insert into book_issue values(101, sysdate, 20, 2, '28-jul-2025');

insert into book_return values(100, '28-jul-2025', 3, 30);
insert into book_return values(101, '30-jul-2025', 2, 20);

insert into fine values(sysdate, '31-jul-2025', 10);

-- Select Queries
select * from book;
select * from author;
select * from book_author;
select * from publisher;
select * from memeber;
select * from book_issue;
select * from book_return;
select * from fine;

-- Alter Table
alter table memeber modify status varchar(255) default 'yes';

-- Delete Book with ID 10
delete from book where book_id = 10;

-- Drop Fine Table
drop table fine;
