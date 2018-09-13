create table authorities (
  username varchar(50) not null,
  authorities varchar(50) not null,
  constraint fk_authorities_users
  foreign key(username) references users(username));
create unique index ix_auth_username on authorities (username, authorities);

drop table authorities;
drop table users;

create table users
(
  username varchar(50) not null
    primary key,
  password varchar(50) not null,
  enabled BOOLEAN NOT NULL
)
;


