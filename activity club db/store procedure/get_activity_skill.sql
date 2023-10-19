CREATE DEFINER=`root`@`localhost` PROCEDURE `get_activity_skill`(IN activityId INT)
BEGIN
    SELECT activity.activity_name, skills.skill_name ,skills.skill_id
    FROM activity_skills
    JOIN activity ON activity_skills.activity_id = activity.activity_id
    JOIN skills ON activity_skills.skill_id = skills.skill_id
    WHERE activity_skills.activity_id = activityId ;
END