CREATE TABLE Vykdytojai (  
Nr INTEGER NOT NULL,
Pavarde CHAR(30) NOT NULL,
Kvalifikacija CHAR(16),
Issilavinimas CHAR(10)
);


insert into public.Vykdytojai values(1, 'Kazlauskas', 'IT', 'Magistras')

select * from public.Vykdytojai