create table t_food (
		no int(5) not null primary key auto_increment,
		name varchar(20) not null comment 'food name',
		avatar varchar(50) not null comment 'food avatar',
		video varchar(50) comment 'food video',
		detail varchar(100) not null comment 'food description',
		cookbook int(4) not null comment 'cookbook',
		category varchar(50) not null comment 'food category and separated by ,',
		sort tinyint not null comment 'sort number',
		top tinyint not null comment 'top and 0:主厨推荐;1:今日特价;置顶',
		rate int(5) comment 'food click rate 热门'
);
create table t_nav (
		no int(5) not null primary key auto_increment,
		name varchar(20) not null comment 'food category',
		avatar varchar(50) comment 'category avatar',
		detail varchar(100) not null comment 'description',
		id tinyint not null comment 'category id',
		parentId tinyint not null comment 'parent id and use 0 if main'
);
create table t_cookbook (
		no int(5) not null primary key auto_increment,
		name varchar(20) not null comment 'cookbook name',
		avatar varchar(100) comment 'cookbook pic',
		detail varchar(100) not null comment 'cookbook detail,every part separated by ,',
		category varchar(50) not null comment 'cookbook category and separated by ,',
		sort tinyint not null comment 'sort number',
		top tinyint not null comment 'top and 0:主厨推荐;1:今日特价;置顶',
		rate int(5) comment 'click rate 热门'
)
