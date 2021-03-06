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

SELECT *
FROM `exams`
WHERE DATE(`date`) = '2020-06-20' AND `hour` > '14:00:00' ;

SELECT *
FROM `degrees`
WHERE `level` = 'magistrale';

SELECT COUNT(*)
FROM `departments`;

SELECT COUNT(*)
FROM `teachers`
WHERE `phone` IS NULL;



