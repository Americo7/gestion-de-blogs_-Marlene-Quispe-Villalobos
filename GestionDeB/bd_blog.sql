create database bd_blog;

use bd_blog;

create table posts(
id int(11) auto_increment primary key, 
fecha date, 
titulo varchar(100), 
contenido text
);
select * from posts;