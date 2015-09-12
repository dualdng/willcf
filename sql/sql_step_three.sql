create table bookdetail(
		id int(5) not null primary key auto_increment,
		bookId int(5) not null,
		name varchar(50) not null,
		detail varchar(100) not null,
		created_at timestamp,
		updated_at timestamp
)
