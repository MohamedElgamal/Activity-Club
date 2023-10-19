CREATE DEFINER=`root`@`localhost` PROCEDURE `get_member_skills`(IN memberId INT)
BEGIN
    SELECT members.member_name, skills.skill_name,skills.skill_id
    FROM member_skills
    JOIN members ON member_skills.member_id = members.member_id
    JOIN skills ON member_skills.skill_id = skills.skill_id
    WHERE member_skills.member_id = memberId ;
END