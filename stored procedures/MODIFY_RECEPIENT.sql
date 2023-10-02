-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sayantani Dey
-- Create date: 02/10/23
-- Description:	Store procedure for RECEPIENT
-- =============================================
CREATE PROCEDURE MODIFY_RECEPIENT
(
    @reci_ID int,  
	@reci_name varchar,  
	@reci_age varchar,
	@reci_sex char ,
	@reci_Brgp char,  
	@reci_Bqnty float,  
	@reco_ID int,
	@reci_reg_date date,
	@city_ID char,  
	@m_id int,
	@QueryType nvarchar(10) ='INSERT'
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF @QueryType ='INSERT'
		BEGIN
		INSERT INTO Recipient(
			reci_ID,  
			reci_name,  
			reci_age,
			reci_sex,
			reci_Brgp,  
			reci_Bqnty,  
			reco_ID,
			reci_reg_date,
			city_ID,  
			m_id
		)
    VALUES (
        @reci_ID,  
			@reci_name,  
			@reci_age,
			@reci_sex,
			@reci_Brgp,  
			@reci_Bqnty,  
			@reco_ID,
			@reci_reg_date,
			@city_ID,  
			@m_id
    )
	IF @@ROWCOUNT=1
			RETURN 1;
		ELSE
			RETURN 0;
		END
		ELSE IF @QueryType = 'UPDATE'
			BEGIN
				 UPDATE Recipient
        SET
            reci_ID = @reci_ID,  
			reci_name = @reci_name,  
			reci_age = @reci_age,
			reci_sex = @reci_sex,
			reci_Brgp = @reci_Brgp,  
			reci_Bqnty = @reci_Bqnty,  
			reco_ID = @reco_ID,
			reci_reg_date = @reci_reg_date,
			city_ID = @city_ID,  
			m_id = @m_id
        WHERE
            reci_ID = @reci_ID;
        
        IF @@ROWCOUNT = 1
            RETURN 1;
        ELSE
            RETURN 0;
    END
    ELSE IF @QueryType = 'DELETE'
    BEGIN
        DELETE FROM Recipient
        WHERE
           reci_ID = @reci_ID;
        IF @@ROWCOUNT = 1
            RETURN 1;
        ELSE
            RETURN 0;
    END
    ELSE
    BEGIN
        -- Invalid @QueryType
        RETURN -1;
    END
END