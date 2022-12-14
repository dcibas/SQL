Create Table car (
	
 id int primary key,
 model varchar(30),
 make varchar(30),
 horsepower integer,
 color varchar(30),
 car_factory_id bigint references car_factory (id)
	
)

Create Table car_factory (

	id int primary key,
	location varchar(30),
	income integer,
	brand varchar(30)
	
)