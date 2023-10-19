CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_activity_skills`(IN activityId int)
BEGIN
	delete from activity_skills where activity_id = activityId;
END