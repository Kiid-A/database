with RECURSIVE ts as 
(	
	select title
	from akas
	where title_id in (
		select title_id
		from titles
		where primary_title = 'House of the Dragon'
	)
	group by title
	order by title
)

select group_concat(title, ', ')
from ts;
