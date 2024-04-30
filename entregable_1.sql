

create table users (
id serial PRIMARY KEY,
firstname varchar(50),
lastname varchar(50),
email varchar(50)
);

create table post (
id serial PRIMARY KEY,
creator_id int references  users(id),
title  varchar(50),
text varchar(50)
);

create table likes (
id serial PRIMARY KEY,
user_id int references users(id),
post_id int references post(id)
);

insert into users (firstname, lastname, email)values 
('juan', 'ayala', 'juan6767@gmail.com'),
('lucia', 'cardenas', 'luciamaria@gmail.com'),
('valentina', 'rodriguez', 'valerod@gmail.com');


insert into post (creator_id, title, text) values
('1', 'lorem', 'Lorem Ipsum es simplemente el texto de relleno'),
('1', 'Por qué lo usamos', 'Es un hecho establecido hace demasiado'),
('2', 'De dónde viene', 'Al contrario del pensamiento popular'),
('2', 'Donde puedo conseguirlo?', 'Hay muchas variaciones de los pasajes'),
('3', 'El pasaje estándar', 'Lorem ipsum dolor sit amet, consectetur');

insert into likes (user_id, post_id)values 
('1', '2'),
('2','1'),
('3', '1'),
('2', '3'),
('3', '2');

select * from users inner join post
on users.id = post.creator_id

select * from post inner join likes
on post.creator_id = likes.post_id
