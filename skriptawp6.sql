﻿-- Ovo je SQL skripta

--use master;

--create database edunovawp6;

--drop database edunovawp6;

--use edunovawp6;

--create table smjerovi(
--sifra int,
--naziv varchar(50),
--cijena decimal(18,2),
--izvodiseod datetime,
--vaucer bit
--);

--razlika varchar i char
--varchar(10)
--'Ana'
--char(10)
--'Ana        '

--create table polaznici(
--sifra int,
--ime varchar(50),
--prezime varchar(50),
--email varchar(100),
--oib char(11)
--);

create table clanovi(
grupa int,
polaznici int,
);