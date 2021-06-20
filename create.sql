create table publisher(
id integer primary key,
name text,
country text
);

--TABLE-2
create table books(
id integer primary key,
title text,
publisher integer references publisher(id)
);

--TABLE-3
create table subjects(
id integer primary key,
name text
);

--TABLE-4
create table books_subjects(
book integer references books(id),
subject integer references subjects(id)
);
