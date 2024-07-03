select p.name, count(c.person_id) as tb from people p left join crew c on p.person_id = c.person_id group by p.person_id, p.name order by count(c.person_id) desc limit 20;
