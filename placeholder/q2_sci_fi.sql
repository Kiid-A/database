select original_title, premiered, runtime_minutes || ' (mins)' from titles where genres like '%Sci-Fi%' order by runtime_minutes desc limit 10;
