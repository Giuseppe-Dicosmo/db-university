SELECT COUNT(*) AS `totale`, YEAR(`enrolment_date`) AS `anno_di_iscrizione`
FROM `students`
GROUP BY YEAR(`enrolment_date`);

SELECT COUNT(*) AS `insegnanti`, `office_address` AS `ufficio`
FROM `teachers`
GROUP BY `office_address`;

SELECT AVG(`vote`) AS `media_voti`, `exam_id` AS `esame`
FROM `exam_student`
GROUP BY `exam_id`;

SELECT COUNT(`name`) AS `corsi_di_laurea`, `department_id` AS `dipartimento`
FROM `degrees`
GROUP BY `department_id`;

