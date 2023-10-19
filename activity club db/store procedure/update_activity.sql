CREATE DEFINER=`root`@`localhost` PROCEDURE `update_activity`(
	IN p_activity_id INT ,
	IN p_activity_name VARCHAR(50),
    IN p_activity_start_age INT,
    IN p_activity_end_age INT,
    IN p_activity_description VARCHAR(100)
)
BEGIN
	update activity set activity_name = p_activity_name, activity_start_age = p_activity_start_age
		, activity_end_age = p_activity_end_age , activity_description = p_activity_description
		where p_activity_id = activity_id
        ;
END