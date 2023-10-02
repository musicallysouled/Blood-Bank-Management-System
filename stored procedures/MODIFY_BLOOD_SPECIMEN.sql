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
-- Description:	Store procedure for Blood_Specimen
-- =============================================
CREATE PROCEDURE MODIFY_BLOOD_SPECIMEN
(
    @spec_id varchar,
	@b_group varchar,
	@spec_status char,
	@QueryType nvarchar(10) ='INSERT'
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF @QueryType ='INSERT'
		BEGIN
		INSERT INTO bb_blood_specimen(
			spec_id,
			b_group,
			spec_status
		)
    VALUES (
        @spec_id,
		@b_group,
		@spec_status
    )
	IF @@ROWCOUNT=1
			RETURN 1;
		ELSE
			RETURN 0;
		END
		ELSE IF @QueryType = 'UPDATE'
			BEGIN
				 UPDATE bb_blood_specimen
        SET
            spec_id = @spec_id,
			b_group = @b_group,
			spec_status = @spec_status
        WHERE
            spec_id = @spec_id;
        
        IF @@ROWCOUNT = 1
            RETURN 1;
        ELSE
            RETURN 0;
    END
    ELSE IF @QueryType = 'DELETE'
    BEGIN
        DELETE FROM bb_blood_specimen
        WHERE
           spec_id = @spec_id;
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