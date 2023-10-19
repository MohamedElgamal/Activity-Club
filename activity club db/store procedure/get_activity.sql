CREATE DEFINER=`root`@`localhost` PROCEDURE `get_activity`(in activityId int)
BEGIN
	select * from activity where activity_id = activityId;
END