//建表时创建普通索引
create table test
(
    name varchar(10) primary key,
	id int(10) unique,
	age int(4) not null,
	sex int (10),
	score float(10),
	index index_age (age)
);
//在已经存在的表上创建索引
alter table test add unique index unidex_id(id);
//直接创建索引
create index sescoindex on test(sex,score);
//删除索引使用alter
alter table test drop index index_age;
//直接删除
drop index unidex_id on test;
//查看哪个索引被使用
explain select* from test where age=10;
//查看索引
show index from test;
