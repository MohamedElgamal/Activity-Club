CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_member_skills`(IN memberId int)
BEGIN
	delete from member_skills where member_id = memberId;
END