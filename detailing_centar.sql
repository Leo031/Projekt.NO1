# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Leo380\Documents\GitHub\Projekt.NO1\detailing_centar.sql

drop database if exists detailing_centar ;
create database detailing_centar default charset utf8mb4;
use detailing_centar;

create table usluga(
    sifra int not null primary key auto_increment,
    naziv_usluge varchar(50)not null,
    cijena decimal(18,2),
    trajanje datetime

);

create table djelatnik(
    sifra int not null primary key auto_increment,
    ime varchar(59) not null,
    prezime varchar(50) not null,
    email varchar(100),
    oib char(11)
    
);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    broj_telefona varchar(50) not null

);


