CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_member`(
    IN member_name VARCHAR(50),
    IN member_ssn INT,
    IN member_phone VARCHAR(25),
    IN member_email VARCHAR(25),
    IN member_address VARCHAR(50),
    IN member_date DATE, 
    in member_image LONGBLOB
)
BEGIN
    INSERT INTO members (
        member_name,
        member_ssn,
        member_phone,
        member_email,
        member_address,
        member_date,
        member_image
    ) VALUES (
        member_name,
        member_ssn,
        member_phone,
        member_email,
        member_address,
        member_date,
        member_image
    );
END