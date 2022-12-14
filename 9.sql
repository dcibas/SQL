Create Table dogs (id serial NOT NULL, breed VARCHAR(255) UNIQUE NOT NULL, name VARCHAR(255) NOT NULL, age INTEGER NOT NULL, weight INTEGER NOT NULL, color VARCHAR(255) NOT NULL, gender VARCHAR(255) NOT NULL)
insert into dogs (breed, name, age, weight, color, gender) values ('Labrador', 'Cola', 6, 30, 'Black', 'Female')
insert into dogs (breed, name, age, weight, color, gender) values ('German Shepherd', 'Alex', 4, 35, 'Black', 'Male')
insert into dogs (breed, name, age, weight, color, gender) values ('Bulldog', 'Betty', 8, 18, 'White-Brown', 'Female')
