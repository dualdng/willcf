create table cart (
		id int(5) not null primary key auto_increment,
		cartId varchar(50) not null,
		userId int(5) not null,
		foodId int(5) not null,
		amount int(2) not null,
		price double(5,2) not null,
		created_at timestamp,
		updated_at timestamp
)
