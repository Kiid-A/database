WITH individuals AS (
    SELECT p.person_id, p.name, c.title_id
    FROM people p
    JOIN crew c ON c.person_id = p.person_id
    WHERE p.born = 1955
),
rt AS (
    SELECT
        i.person_id,
        i.name,
        i.title_id,
        AVG(r.rating) AS avg_rating
    FROM individuals i
    JOIN titles t ON t.title_id = i.title_id
    JOIN ratings r ON i.title_id = r.title_id
    GROUP BY i.person_id, i.name
),
ranked_individuals AS (
    SELECT
        person_id,
        name,
        avg_rating,
        NTILE(10) OVER (ORDER BY avg_rating DESC) AS decile
    FROM rt
)
SELECT
    name || '|' || ROUND(avg_rating, 2) AS result
FROM ranked_individuals
WHERE decile = 9
ORDER BY avg_rating DESC, name;

