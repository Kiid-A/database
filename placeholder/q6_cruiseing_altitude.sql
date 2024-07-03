-- we all love Tom Cruise :)
select t.primary_title, r.votes from titles t, ratings r inner join crew c, people p on r.title_id = t.title_id and c.title_id = t.title_id and p.person_id = c.person_id and p.name like '%Cruise%' and p.born == 1962 order by votes desc limit 10;
