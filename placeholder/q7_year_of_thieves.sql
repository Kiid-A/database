select count(title_id)
from titles
where premiered = (
	select premiered
	from titles
	where primary_title = 'Army of Thieves'
);
