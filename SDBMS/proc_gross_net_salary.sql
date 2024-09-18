CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_gross_net_sal`()
BEGIN
SELECT
	branch.brn_name,
    instructors.inct_name,
    instructors.inct_surname,
    salary.basic_salary,
    (salary.basic_salary + salary.DA_salary + salary.HRA_salary) AS gross_salary,
    ((salary.basic_salary + salary.DA_salary + salary.HRA_salary) - salary.Tax) AS net_salary
FROM
	instructors
JOIN
	Branch ON instructors.inct_brn_id = branch.brn_id
JOIN
	salary ON instructors.inct_id = salary.sal_id
ORDER BY
	branch.brn_name, instructors.inct_name;
END