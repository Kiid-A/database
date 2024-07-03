SELECT name
FROM people
WHERE person_id IN (
    SELECT person_id
    FROM crew
    WHERE category IN ('actor', 'actress') AND title_id IN (
        SELECT title_id
        FROM crew
        WHERE person_id IN (
            SELECT person_id
            FROM people
            WHERE name = 'Nicole Kidman' AND born = 1967
        )
    )
)
GROUP BY person_id
ORDER BY name;
