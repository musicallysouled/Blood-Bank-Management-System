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
-- Description:	Store procedure for BB_Manager
-- =============================================
CREATE PROCEDURE MODIFY_BB_MANAGER
(
    @m_id int,  
	@m_first_name varchar,
	@m_last_name varchar,
	@m_sex char,
	@m_phNo int,
	@QueryType nvarchar(10) ='INSERT'
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF @QueryType ='INSERT'
		BEGIN
		INSERT INTO BB_Manager(
			m_id,  
			m_first_name,
			m_last_name,
			m_sex,
			m_phNo
		)
    VALUES (
        @m_id,  
		@m_first_name,
		@m_last_name,
		@m_sex,
		@m_phNo
    )
	IF @@ROWCOUNT=1
			RETURN 1;
		ELSE
			RETURN 0;
		END
		ELSE IF @QueryType = 'UPDATE'
			BEGIN
				 UPDATE BB_Manager
        SET
            m_id = @m_id,  
			m_first_name = @m_first_name,
			m_last_name = @m_last_name,
			m_sex = @m_sex,
			m_phNo = @m_phNo
        WHERE
            m_id = @m_id;
        
        IF @@ROWCOUNT = 1
            RETURN 1;
        ELSE
            RETURN 0;
    END
    ELSE IF @QueryType = 'DELETE'
    BEGIN
        DELETE FROM BB_Manager
        WHERE
           m_id = @m_id;
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