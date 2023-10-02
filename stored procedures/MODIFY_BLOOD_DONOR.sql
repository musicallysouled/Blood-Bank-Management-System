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
-- Description:	Store procedure for BLOOD_DONOR
-- =============================================
CREATE PROCEDURE MODIFY_BLOOD_DONOR
(
    @bd_ID int,  
	@bd_name varchar(100),  
	@bd_age varchar(100),  
	@bd_sex varchar(100),  
	@bd_Bgroup varchar(10),  
	@bd_reg_date date,  
	@reco_ID int ,  
	@city_ID char(3),
	@QueryType     nvarchar(10)    ='INSERT'
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF @QueryType ='INSERT'
		BEGIN
		INSERT INTO Blood_Donor (
			bd_ID ,  
			bd_name,  
			bd_age ,  
			bd_sex ,  
			bd_Bgroup,  
			bd_reg_date,  
			reco_ID  ,  
			city_ID
		)
    VALUES (
        @bd_ID ,  
	@bd_name,  
	@bd_age ,  
	@bd_sex ,  
	@bd_Bgroup,  
	@bd_reg_date,  
	@reco_ID  ,  
	@city_ID
    )
	IF @@ROWCOUNT=1
			RETURN 1;
		ELSE
			RETURN 0;
		END
		ELSE IF @QueryType = 'UPDATE'
			BEGIN
				 UPDATE Blood_Donor
        SET
            bd_ID = @bd_ID ,  
			bd_name = @bd_name,  
			bd_age = @bd_age,  
			bd_sex = @bd_sex,  
			bd_Bgroup = @bd_Bgroup,  
			bd_reg_date = @bd_reg_date,  
			reco_ID  = @reco_ID,  
			city_ID = @city_ID
        WHERE
            bd_ID = @bd_ID;
        
        IF @@ROWCOUNT = 1
            RETURN 1;
        ELSE
            RETURN 0;
    END
    ELSE IF @QueryType = 'DELETE'
    BEGIN
        DELETE FROM Blood_Donor
        WHERE
            bd_ID = @bd_ID;
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