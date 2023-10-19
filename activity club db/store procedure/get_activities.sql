CREATE DEFINER=`root`@`localhost` PROCEDURE `get_activities`()
BEGIN
    select * from club.activity ;
END