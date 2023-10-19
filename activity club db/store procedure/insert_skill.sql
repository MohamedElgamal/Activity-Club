CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_skill`(
    IN skillName VARCHAR(50)
)
BEGIN
    INSERT INTO skills (
        skill_name
    ) VALUES (
		skillName
    );
END