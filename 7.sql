create table book (
id bigserial primary key,
name varchar(50),
genre varchar(50),	
release_date date
)

create table author (
id bigserial primary key,
	name varchar(30),
	surname varchar(50),
	date_of_birth date
)

create table author_books(
id bigserial primary key,
	book_id bigeserial foreign key(fk_book) references book(id),
	author_id bigeserial foreign key(fk_author) references author(id)
)

insert into book (name, genre, release_date) values ('21 Lessons for the 21st Century', 'documentary', '2022-01-01')
insert into author (name, surname, date_of_birth) values ('Antanas', 'Skema', '1950-01-05')

insert into book (name, genre, release_date) values ('Laimingoji sala', 'Kelionės', '1968-01-01')
insert into author (name, surname, date_of_birth) values ('Bengt', 'Danielsson', '1921-07-06')

select * from book
select * from author

insert into author_books (book_id, author_id) values (2,2)

select * from author_books

select * from book
join author_books on book.id = book_id
join author on author.id = author_id

where author.name = 'Antanas'

select * from author
join author_books on author.id = author_id
join book on book.id = book_id

where book.name = '21 Lessons for the 21st Century'

update public.book set "genre" = 'adventure' where "genre" = 'kelionės'

ALTER TABLE book
ADD CONSTRAINT constraint_name UNIQUE (isbn);

create table rent (
id bigserial primary key,
start_date date,
end_date date,
notes varchar(255),	
book_id bigserial,
bookworm_id bigserial,
      CONSTRAINT fk_bookworm
      FOREIGN KEY(bookworm_id)
      REFERENCES bookworm(id),
      CONSTRAINT fk_book
      FOREIGN KEY(book_id)
      REFERENCES book(id)
)

create table bookworm (
id bigserial primary key,
personal_code varchar(30) unique,
name varchar(30),
surname varchar(30),
age integer
)

insert into bookworm (personal_code,name,surname,age) values ('54512456','Redas','Rekys','24')
insert into bookworm (personal_code,name,surname,age) values ('54862145','Linas','Kazlauskas','27')
insert into bookworm (personal_code,name,surname,age) values ('53126486','Marius','Edgaravicius','28')

insert into rent(id,start_date,end_date,notes,bookworm_id,book_id)
values ('1','2022-01-21','2022-03-12','Nothing here','1','1'),('2','2022-01-21','2022-03-12','Nothing here','1','3'), ('3','2022-01-21','2022-03-12','Nothing here','1','3')

insert into rent(id,start_date,end_date,notes,bookworm_id,book_id)
values ('4','2022-05-02','2022-03-12','Nothing here','3','3'), ('5','2022-04-02','2022-04-12','Nothing here','2','3')

select * from book
join rent on rent.book_id = book.id
join bookworm on bookworm.id = rent.bookworm_id

where book.name = 'Laimingoji sala'

select end_date from rent
join book on rent.book_id = book.id
where book.name = 'Laimingoji sala'


