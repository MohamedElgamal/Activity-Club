CREATE DEFINER=`root`@`localhost` PROCEDURE `update_member`(
    IN memberName VARCHAR(50),
    IN memberSSn INT,
    IN memberPhone VARCHAR(25),
    IN memberEmail VARCHAR(25),
    IN memberAddress VARCHAR(50),
    IN memberDate DATE, 
    in memberImage LONGBLOB, 
    in memberId int
)
BEGIN
    update members set member_name = memberName , 
    member_ssn = memberSSn , member_phone = memberPhone,
    member_email = memberEmail , member_address = memberAddress,
    member_date = memberDate , member_image = memberImage
    where member_id = memberId;
END