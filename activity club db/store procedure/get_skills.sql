CREATE DEFINER=`root`@`localhost` PROCEDURE `get_skills`()
BEGIN
    select * from club.skills ;
END