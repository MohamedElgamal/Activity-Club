CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_member`(IN memberId int)
BEGIN
	DELETE FROM club.enroll where member_id = memberId;
    DELETE FROM member_skills where member_id = memberId;
    DELETE FROM club.members WHERE member_id = memberId;
END