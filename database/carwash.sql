drop database if exists carwash;

create database 
	carwash default character set utf8mb4;

use carwash;

create table operator(
	ID int not null primary key auto_increment,
	email varchar(50) not null,
	password char(60) not null,
	name varchar(50) not null,
	surname varchar(50) not null,
	roles varchar(10)
);

# Password: lozinka
insert into operator(email,password,name,surname,roles) values 
('leorous@edunova.hr','$2a$12$edCmYKPBzy/eKw3t8H3baeZX9DaOyKUZCW.iTBzF0KViPYijY5rP6','Leonard','Rous','admin');


create table service(
	ID int not null primary key auto_increment,
	title varchar(50) not null,
	duration int,
	price decimal(10,2)
);

create table laundry(
   ID int not null primary key auto_increment,
   title varchar(50) not null,
   service int,
   employee int
);

create table person(
   ID int not null primary key auto_increment,
   name varchar(50) not null,
   surname varchar(50) not null,
   oib char(11),
   phonenumber varchar(15),
   email varchar(100)
);

create table users(
  ID int not null primary key auto_increment,
  person int not null,
  booking varchar(50)
);

create table employee(
  ID int not null primary key auto_increment,
  person int not null,
  iban varchar(32)
);

create table users_laundry(
  wash int not null,
  users int not null
);


alter table laundry add foreign key (service) references service(ID);
alter table laundry add foreign key (employee) references employee(ID);

alter table users_laundry add foreign key (laundry) references laundry(ID);
alter table users_laundry add foreign key (users) references users(ID);

alter table users add foreign key (person) references person(ID);
alter table employee add foreign key (person) references person(ID);

