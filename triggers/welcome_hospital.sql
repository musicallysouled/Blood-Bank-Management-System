CREATE TRIGGER welcome_hospital
ON Hospital_Info_1
AFTER INSERT
AS
BEGIN
    DECLARE @message NVARCHAR(255);
    SELECT @message = CONCAT('Welcome, ', hosp_name, '! We are glad to supply blood requirements for your patients.')
    FROM inserted;
    PRINT @message;  -- Print the message to the console (for demonstration purposes)
END;
