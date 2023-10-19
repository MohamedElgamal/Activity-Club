CREATE DEFINER=`root`@`localhost` PROCEDURE `get_activity_id`(in activityName char(50))
BEGIN
	select activity_id from club.activity where activity_name = activityName;
END