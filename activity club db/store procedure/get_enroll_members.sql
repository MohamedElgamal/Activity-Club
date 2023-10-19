CREATE DEFINER=`root`@`localhost` PROCEDURE `get_enroll_members`(in memberId int)
BEGIN
	SELECT members.member_name, activity.activity_name
    FROM enroll
    JOIN members ON enroll.member_id = members.member_id
    JOIN activity ON enroll.activity_id = activity.activity_id
    WHERE enroll.member_id = memberId ;
END