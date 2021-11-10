-- What are the top languages in the world
select l.language, cast((c.population*l.percentage)/100) as speakers from country_language l
join country c
on c.code = l.country_code
group by 2,1
order by 2 desc;