set names utf8;
create table category (
		no int(5) not null primary key auto_increment,
		name varchar(20) not null,
		created_at timestamp,
		updated_at timestamp
)
