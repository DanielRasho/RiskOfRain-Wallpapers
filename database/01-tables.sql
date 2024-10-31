CREATE TABLE member (
    username VARCHAR(30) primary key,
    password VARCHAR(30) not null
);

CREATE TABLE wallpaper (
    id serial primary key,
    location TEXT not null,
    views int DEFAULT 0
);

create table categories (
	wallpaper int references wallpaper(id),
	category VARCHAR(30)
);

create table reaction_type (
	id int PRIMARY key,
	description varchar(30) not null
);

create table reaction (
	wallpaper int references wallpaper(id),
	reaction_type int references reaction_type(id),
	member varchar(30) references member(username)
);