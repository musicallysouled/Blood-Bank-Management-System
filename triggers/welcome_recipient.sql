CREATE TRIGGER welcome_recipient
ON Recipient
AFTER INSERT
AS
BEGIN
    DECLARE @message NVARCHAR(255);
    SELECT @message = CONCAT('Welcome, ', reci_name, '! We are here to assist you with your blood needs.')
    FROM inserted;
    PRINT @message;  -- Print the message to the console (for demonstration purposes)
END;
