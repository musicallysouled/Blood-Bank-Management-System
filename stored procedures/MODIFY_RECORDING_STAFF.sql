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
-- Description:	Store procedure for Recording_Staff
-- =============================================
CREATE PROCEDURE MODIFY_RECORDING_STAFF
(
    @reco_ID int,  
	@reco_Name varchar,  
	@reco_phNo int,
	@QueryType nvarchar(10) ='INSERT'
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF @QueryType ='INSERT'
		BEGIN
		INSERT INTO Recording_Staff(
			reco_ID,  
			reco_Name,  
			reco_phNo
		)
    VALUES (
        @reco_ID,  
		@reco_Name,  
		@reco_phNo
    )
	IF @@ROWCOUNT=1
			RETURN 1;
		ELSE
			RETURN 0;
		END
		ELSE IF @QueryType = 'UPDATE'
			BEGIN
				 UPDATE Recording_Staff
        SET
            reco_ID = @reco_ID,  
			reco_Name = @reco_Name,  
			reco_phNo = @reco_phNo
        WHERE
            reco_ID = @reco_ID;
        
        IF @@ROWCOUNT = 1
            RETURN 1;
        ELSE
            RETURN 0;
    END
    ELSE IF @QueryType = 'DELETE'
    BEGIN
        DELETE FROM Recording_Staff
        WHERE
           reco_ID = @reco_ID;
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