SELECT
	MAX(votes.quality) AS quality,
	COUNT(votes.quality) AS number,
	locatie,
	DATE_FORMAT(voting_date, '%M') AS period,
	MAX(CONCAT(persons.first_name, ' ', persons.last_name)) AS name
FROM
	votes
	JOIN persons ON votes.voter = persons.ID
WHERE
	votes.valid = '1'
GROUP BY
	persons.id,
	locatie,
	DATE_FORMAT(voting_date, '%M')

UNION
SELECT
	MAX(votes.quality) AS quality,
	COUNT(votes.quality) AS number,
	locatie,
	CONCAT('Q', QUARTER(voting_date)) AS period,
	MAX(CONCAT(persons.first_name, ' ', persons.last_name)) AS name
FROM
	votes
	JOIN persons ON votes.voter = persons.ID
WHERE
	votes.valid = '1'
GROUP BY
	persons.id,
	locatie,
	QUARTER(voting_date)

UNION
SELECT
    MAX(votes.quality) AS quality,
    COUNT(votes.quality) AS number,
    locatie,
    YEAR(voting_date) AS period,
    MAX(CONCAT(persons.first_name, ' ', persons.last_name)) AS name
FROM
    votes
    JOIN persons ON votes.voter = persons.ID
WHERE
    votes.valid = '1'
GROUP BY
    persons.id,
    persons.locatie,
    YEAR(voting_date)
ORDER BY
    name;