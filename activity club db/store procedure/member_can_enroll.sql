CREATE DEFINER=`root`@`localhost` PROCEDURE `member_can_enroll`(in memberId int , in activityId int , out memberAge boolean)
BEGIN
    DECLARE member_age INT;
    DECLARE start_activity_age INT;
    DECLARE end_activity_age INT;
	SET member_age = (SELECT  DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), member_date)), '%Y') + 0 AS age 
		from members where member_id = memberId) ; 
    SET start_activity_age = (select activity_start_age from activity where activity_id = activityId);
    SET end_activity_age = (select activity_end_age from activity where activity_id = activityId);
    IF member_age >= start_activity_age and member_age <= end_activity_age
		THEN
			SET memberAge = true;
    ELSE
			SET memberAge = false;
	END IF;
END