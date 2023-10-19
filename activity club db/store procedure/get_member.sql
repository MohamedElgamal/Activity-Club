CREATE DEFINER=`root`@`localhost` PROCEDURE `get_member`(in memberId int2)
BEGIN
	select * from members where member_id = memberId;
END