CREATE DEFINER=`root`@`localhost` PROCEDURE `get_member_id`(in memberName char(50))
BEGIN
	select member_id from club.members where member_name = memberName;
END