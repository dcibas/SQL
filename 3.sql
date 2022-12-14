select count(*) as kiekis from public.darbuotojas
select "VARDAS" as vardas from public.darbuotojas
select "PAREIGOS", count(*) as kiekis from public.darbuotojas group by "PAREIGOS"
select "SKYRIUS_PAVADINIMAS", count(*) as kiekis from public.darbuotojas group by "SKYRIUS_PAVADINIMAS"
select MAX("GIMIMOMETAI") from public.darbuotojas
select * from public.darbuotojas