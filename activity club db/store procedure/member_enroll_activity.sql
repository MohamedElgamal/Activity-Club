CREATE DEFINER=`root`@`localhost` PROCEDURE `member_enroll_activity`(IN memberId INT, IN activityId INT)
BEGIN
	DECLARE ageCheck BOOLEAN;
	DECLARE ownedSkillsCheck BOOLEAN;
	DECLARE joinedActivityCheck BOOLEAN;
	
	CALL member_age(memberId, activityId, ageCheck);
	CALL get_member_activity_equality(memberId, activityId, ownedSkillsCheck);
	CALL member_join_activity(memberId, joinedActivityCheck);
	
	IF ageCheck = TRUE THEN
		IF ownedSkillsCheck = TRUE THEN
			IF joinedActivityCheck = TRUE THEN
				INSERT INTO enroll (activity_id, member_id) VALUES (activityId, memberId);
			ELSE
				SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Member enrolled in more than 3 activities';
			END IF;
		ELSE
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Member does not have the required skills';
		END IF;
	ELSE
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Member age is not in the required range';
	END IF;
END