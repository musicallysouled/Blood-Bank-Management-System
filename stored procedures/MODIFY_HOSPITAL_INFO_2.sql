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
-- Description:	Store procedure for Hospital_info_2
-- =============================================
CREATE PROCEDURE MODIFY_HOSPITAL_INFO_2
(
    @hosp_ID int,  
	@hosp_name varchar,  
	@hosp_require_bg char,  
	@bg_qnty int,
	@QueryType nvarchar(10) ='INSERT'
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF @QueryType ='INSERT'
		BEGIN
		INSERT INTO Hospital_Info_2(
			hosp_ID,  
			hosp_name,  
			hosp_require_bg,  
			bg_qnty
		)
    VALUES (
			@hosp_ID,  
			@hosp_name,  
			@hosp_require_bg,  
			@bg_qnty
    )
	IF @@ROWCOUNT=1
			RETURN 1;
		ELSE
			RETURN 0;
		END
		ELSE IF @QueryType = 'UPDATE'
			BEGIN
				 UPDATE Hospital_Info_2
        SET
            hosp_ID = @hosp_ID,  
			hosp_name = @hosp_name,  
			hosp_require_bg = @hosp_require_bg,  
			bg_qnty = @bg_qnty
        WHERE
            hosp_ID = @hosp_ID
			AND hosp_require_bg = @hosp_require_bg;
        
        IF @@ROWCOUNT = 1
            RETURN 1;
        ELSE
            RETURN 0;
    END
    ELSE IF @QueryType = 'DELETE'
    BEGIN
        DELETE FROM Hospital_Info_2
        WHERE
           hosp_ID = @hosp_ID
		   AND hosp_require_bg = @hosp_require_bg
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