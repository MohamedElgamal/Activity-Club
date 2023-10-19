CREATE DEFINER=`root`@`localhost` PROCEDURE `get_member_activity_skills`(in memberId int , in activityId int ,out result boolean )
BEGIN
	DECLARE memberSkillsCount INT;
    DECLARE memberAllSkillsCount INT;
	SELECT count(memberSkills.skill_id ) into memberAllSkillsCount
    FROM (SELECT skill_id FROM member_skills WHERE member_id = memberId) AS memberSkills
    INNER JOIN (SELECT skill_id FROM activity_skills WHERE activity_id = activityId) AS activitySkills 
    ON memberSkills.skill_id = activitySkills.skill_id;
    SELECT count(skill_id) into memberSkillsCount FROM activity_skills WHERE activity_id = activityId;
     IF memberSkillsCount >= memberAllSkillsCount THEN
		set result = true;
    ELSE
		set result = false;
    END IF;
END