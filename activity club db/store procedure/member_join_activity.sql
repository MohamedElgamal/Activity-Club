CREATE DEFINER=`root`@`localhost` PROCEDURE `member_join_activity`(in memberId int , out memberJoinNum boolean)
BEGIN
	DECLARE number_of_joined_activity int;
	set number_of_joined_activity = (select count(*) from club.enroll where member_id = memberId);
	IF(number_of_joined_activity < 3) THEN 
		set memberJoinNum = true;
    ELSE
		set memberJoinNum = false;
    END IF;
END