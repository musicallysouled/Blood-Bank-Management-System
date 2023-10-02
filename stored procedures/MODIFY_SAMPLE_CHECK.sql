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
-- Description:	Store procedure for Sample_Check_table
-- =============================================
CREATE PROCEDURE MODIFY_SAMPLE_CHECK
(
    @sample_id varchar,
	@doc_first_name varchar,
	@doc_last_name varchar,
	@doc_phnno int,
	@sample_status char,
	@sample_result char,
	@QueryType nvarchar(10) ='INSERT'
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF @QueryType ='INSERT'
		BEGIN
		INSERT INTO bb_sample_check(
			sample_id ,
			doc_first_name,
			doc_last_name,
			doc_phnno,
			sample_status,
			sample_result
		)
    VALUES (
			@sample_id ,
			@doc_first_name,
			@doc_last_name,
			@doc_phnno,
			@sample_status,
			@sample_result
    )
	IF @@ROWCOUNT=1
			RETURN 1;
		ELSE
			RETURN 0;
		END
		ELSE IF @QueryType = 'UPDATE'
			BEGIN
				 UPDATE bb_sample_check
        SET
            sample_id = @sample_id,
			doc_first_name = @doc_first_name,
			doc_last_name =@doc_last_name,
			doc_phnno = @doc_phnno,
			sample_status = @sample_status,
			sample_result = @sample_result
        WHERE
            sample_id = @sample_id;
        
        IF @@ROWCOUNT = 1
            RETURN 1;
        ELSE
            RETURN 0;
    END
    ELSE IF @QueryType = 'DELETE'
    BEGIN
        DELETE FROM bb_sample_check
        WHERE
           sample_id = @sample_id;
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