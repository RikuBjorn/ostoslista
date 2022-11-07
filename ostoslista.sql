drop database if exists ostoslista;

create database ostoslista;

use ostoslista;

create table item(
    id int primary key auto_increment,
    description varchar(255) not null,
    amount smallint unsigned not null
);

insert into item (description, amount) values ('Kahvi', 1);
insert into item (description, amount) values ('Maito',2);
insert into item (description, amount) values ('Suodatinpussi',1);
insert into item (description, amount) values ('Kauramaito',2);
insert into item (description, amount) values ('Donitsi',10);