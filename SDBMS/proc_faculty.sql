CREATE DEFINER=`root`@`localhost` PROCEDURE `faculty`()
BEGIN
SELECT 
	instructors.inct_name,
    instructors.inct_surname,
	branch.brn_name
FROM
	instuctors
JOIN
	branch ON instructors.inct_brn_id = branch.brn_id
ORDER BY
	branch.brn_name, instructors.inct_name, instructors.inct_surname;
END