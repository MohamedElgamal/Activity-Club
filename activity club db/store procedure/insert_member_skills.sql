CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_member_skills`(in memberId int , in skillId int )
BEGIN
	insert into club.member_skills (member_id , skill_id ) values
    (memberId , skillId);
END