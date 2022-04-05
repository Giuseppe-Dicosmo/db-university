SELECT *
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990;

SELECT *
FROM `courses`
WHERE `cfu` > 10;

SELECT *
FROM `students`
WHERE 2022 - YEAR(`date_of_birth`) > 30;

SELECT *
FROM `courses`
WHERE `period` = 'I semestre' AND `year` = 1;