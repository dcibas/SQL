create table company (

	id bigserial primary key,
	name character(30) not null,
	code character(30),
	address character (100)
	
)

insert into company (name, code, address) values ('Pamatai ir pastatai', '304607851', 'Ozeskienes 89, Kaunas')

select * from public.company

update public.company set "address" = 'Ozo 25, Vilnius' where "address" = 'OZO 25, Vilnius'
update public.company set "code" = '468844231' where "code" = 'SS-MAXIMA'

create table employee (
	
 id bigserial primary key,
 name character(30) not null,
 surname character(30) not null,
 experience integer default 0,
 salary integer not null,
 position character(30) not null,
 company_id bigserial,
	CONSTRAINT fk_company
	FOREIGN KEY (company_id) 
	REFERENCES company(id)

)

insert into employee (name, surname, salary, position, company_id) values('Tadas', 'Pivorius', 1990, 'IT', 1);
insert into employee (name, surname, salary, position, company_id) values('Romas', 'Pivorius', 2550, 'IT', 1);
insert into employee (name, surname, salary, position, company_id) values('Sofija', 'Pivorius', 1300, 'Administrator', 1);
insert into employee (name, surname, salary, position, company_id) values('Egle', 'Pivorius', 2500, 'Security', 3);
insert into employee (name, surname, salary, position, company_id) values('Jonas', 'Pivorius', 800, 'Cashier', 3);
insert into employee (name, surname, salary, position, company_id) values('Jonas', 'Pivorius', 1000, 'Cashier', 3);
insert into employee (name, surname, salary, position, company_id) values('Mindaugas', 'Pivorius', 1200, 'Builder', 2);
insert into employee (name, surname, salary, position, company_id) values('Akvile', 'Pivorius', 700, 'Builder', 2);
insert into employee (name, surname, salary, position, company_id) values('Simona', 'Pivorius', 800, 'Manager', 2);
insert into employee (name, surname, salary, position, company_id) values('Sigita', 'Pivorius', 1050, 'Manager', 2);

select * from public.employee

select * from employee join company 
on company_id = company.id where company.name = 'Maxima'

select company.name, count(*) as kiekis from employee join company 
on company_id = company.id group by company.name

select company.name, AVG(salary) from employee join company 
on company_id = company.id group by company.name

select position, max(salary) from employee join company 
on company_id = company.id group by position

select * from employee
join company
on company_id = company.id

select company.name, min(experience) from employee
join company
on company_id = company.id
group by company.name, employee.name


