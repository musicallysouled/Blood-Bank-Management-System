CREATE TRIGGER welcome_donor
ON Blood_Donor
AFTER INSERT
AS
BEGIN
    DECLARE @message NVARCHAR(255);
    SET @message = CONCAT('Welcome, ', (SELECT bd_name FROM inserted), '! Thank you for donating blood.');
    PRINT @message;  -- Print the message to the console (for demonstration purposes)
END;