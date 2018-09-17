create table authorities (
  username varchar(50) not null,
  authority varchar(50) not null,
  constraint fk_authorities_users
  foreign key(username) references users(username));
create unique index ix_auth_username on authorities (username, authority);

drop table authorities;
drop table users;
drop index ix_auth_username;

create table users
(
  username varchar(50) not null
    primary key,
  password varchar(50) not null,
  enabled BOOLEAN NOT NULL
)
;

select * from users;
select * from authorities;
insert into users (username, password, enabled) values ("bryan", "secret", true);
insert into authorities (username, authority)  values ("bryan", "ROLE_USER");
insert into users (username, password, enabled) values ("chris", "secret", true);
insert into authorities (username, authority)  values ("chris", "ROLE_ADMIN");
insert into authorities (username, authority)  values ("chris", "ROLE_USER");
update users set password = "5ebe2294ecd0e0f08eab7690d2a6ee69" where username = "chris"
alter table users modify password varchar(60)
update users set password = "$2a$10$0KxLD1sjgoS4GDPNILMog.WucoGwDBL12NkysBE/hJgbr88D9tXKO" where username = "chris"
