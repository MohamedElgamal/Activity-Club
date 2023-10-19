CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_activity`(
    IN p_activity_name VARCHAR(50),
    IN p_activity_start_age INT,
    IN p_activity_end_age INT,
    IN p_activity_description VARCHAR(100)
)
BEGIN
    INSERT INTO club.activity (
        activity_name,
        activity_start_age,
        activity_end_age,
        activity_description
    ) VALUES (
        p_activity_name,
        p_activity_start_age,
        p_activity_end_age,
        p_activity_description
    );
End