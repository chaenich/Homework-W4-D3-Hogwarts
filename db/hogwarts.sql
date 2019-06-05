drop table students;
drop table houses;

create table houses (
  id SERIAL4 PRIMARY KEY,
  name  VARCHAR(255),
  logo_locn VARCHAR(255)
);

create table students (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house_id INT4 REFERENCES houses(id) ON DELETE CASCADE,
  age INT2
);
