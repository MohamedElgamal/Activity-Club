CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_activity_skills`(in activityId int , in skillId int )
BEGIN
	insert into club.activity_skills (activity_id , skill_id ) values
    (activityId , skillId);
END