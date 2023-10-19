CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_activity`(IN activityName VARCHAR(50))
BEGIN
    DECLARE activityId INT;
    SELECT activity_id INTO activityId FROM club.activity WHERE activity_name = activityName;
    DELETE FROM club.activity_skills WHERE activity_id = activityId;
    DELETE FROM club.enroll where activity_id = activityId;
    DELETE FROM club.activity WHERE activity_name = activityName;
END