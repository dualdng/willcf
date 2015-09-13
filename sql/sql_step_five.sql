create table bill (
		id int(5) not null primary key auto_increment,
		userId int(5) not null,
		detail varchar(255) not null,
		price double(5,2) not null,
		created_at timestamp,
		updated_at timestamp
)
