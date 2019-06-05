drop table students;
drop table houses;

create table students (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house VARCHAR(255),
  age INT2
);

create table houses (
  name  VARCHAR(255),
  logo_locn VARCHAR(255)
);
