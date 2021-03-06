SELECT *
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';


SELECT `degrees`.*, `departments`.`name` AS `dipartimento_neuroscienze`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = 'dipartimento di neuroscienze';


SELECT
  `courses`.`name`,
  `course_teacher`.`teacher_id`,
  `teachers`.`name`,
  `teachers`.`surname`
FROM `courses`
INNER JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `teachers`.`name` = 'Fulvio' AND `teachers`.`surname` = 'Amato';


SELECT
  `students`.`surname` AS `cognome_studente`,
  `students`.`name` AS `nome_studente`,
  `degrees`.`name` AS `corsi_di_laurea`,
  `departments`.`name` AS `dipartimento`
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
ORDER BY `students`.`surname`, `students`.`name` ASC;


SELECT
  `degrees`.`name` AS `corsi_di_laurea`,
  `teachers`.`name` AS `nome_insegnanti`,
  `teachers`.`surname` AS `cognome_insegnanti`
FROM `degrees`
INNER JOIN `courses`
ON `degrees`.`id` = `courses`.`degree_id`
INNER JOIN `course_teacher`
ON `course_id` = `courses`.`id`
INNER JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
ORDER BY
  `degrees`.`name`,
  `teachers`.`name`,
  `teachers`.`surname` ASC;

departments

SELECT
  `teachers`.`name` AS `nome_insegnanti`,
  `teachers`.`surname` AS `cognome_insegnanti`,
  `departments`.`name` AS `dipartimento`
FROM `teachers`
INNER JOIN `course_teacher`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
INNER JOIN `courses`
ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `degrees`
ON `degrees`.`id` = `courses`.`degree_id`
INNER JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Matematica'
ORDER BY
  `teachers`.`name`,
  `teachers`.`surname` ASC;



