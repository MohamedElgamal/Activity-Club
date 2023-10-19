CREATE DEFINER=`root`@`localhost` PROCEDURE `disjoin_memeber_activity`(in activityId int , in memberId int )
BEGIN
	delete from enroll where activity_id = activityId and member_id = memberId;
END