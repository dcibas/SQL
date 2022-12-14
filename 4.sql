UPDATE public.darbuotojas set "ATLYGINIMAS" = CAST (SUBSTRING("ASMENSKODAS", 1, 4) AS integer);

select "SKYRIUS_PAVADINIMAS", max("ATLYGINIMAS") from public.darbuotojas group by "SKYRIUS_PAVADINIMAS"

select "SKYRIUS_PAVADINIMAS", min("ATLYGINIMAS") from public.darbuotojas group by "SKYRIUS_PAVADINIMAS"

select "PAREIGOS", AVG("ATLYGINIMAS"), count(*) as kiekis from public.darbuotojas group by "PAREIGOS"

SELECT SUM ("ATLYGINIMAS") AS total from public.darbuotojas where "PAREIGOS" = 'Senior'

select * from public.darbuotojas