CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_marks`()
BEGIN
SELECT 
    students.stu_name,
    branch.brn_name,
    performance.total_marks
FROM 
    students
JOIN 
    branch ON students.stu_brn_id = branch.brn_id
JOIN 
    performance ON students.stu_id = performance.stu_id;
END