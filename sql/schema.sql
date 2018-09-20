
drop table users;

create table users (
  user_id       number primary key,
  full_name     varchar2(200) not null,
  user_name     varchar2(100) not null,
  email         varchar2(500) not null,
  phone         varchar2(100) not null,
  website       varchar2(500)
);
