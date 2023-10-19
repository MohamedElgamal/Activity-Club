CREATE DEFINER=`root`@`localhost` PROCEDURE `get_members`()
BEGIN
    select * from club.members ;
END