-- What are the top languages in the world
select l.language, c.population*l.percentage/100 as speakers from country_language l
join country c
on c.code = l.country_code
group by l.language
order by population;