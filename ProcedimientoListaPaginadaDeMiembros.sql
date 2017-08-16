CREATE PROCEDURE [dbo].[ListaPaginadaDeMiembros]
	@filaInicial int,
	@filaFinal int
AS
BEGIN
	SELECT  [member_no]
		   ,[lastname]
		   ,[firstname]
		   ,[middleinitial]
		   ,[street]
		   ,[city]
		   ,[state_prov]
		   
		   ,[country]
		   ,[mail_code]
		   ,[phone_no]
		   ,[issue_dt]
		   ,[expr_dt]
		   ,[corp_no]
		   ,[prev_balance]
		   ,[curr_balance]
		   ,[member_code]

	FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY member_no ) AS RowNum,
						 [member_no]
		   ,[lastname]
		   ,[firstname]
		   ,[middleinitial]
		   ,[street]
		   ,[city]
		   ,[state_prov]
		   
		   ,[country]
		   ,[mail_code]
		   ,[phone_no]
		   ,[issue_dt]
		   ,[expr_dt]
		   ,[corp_no]
		   ,[prev_balance]
		   ,[curr_balance]
		   ,[member_code]
			  FROM     [dbo].[member]          
			) AS RowConstrainedResult
	WHERE   RowNum >= @filaInicial 
		AND RowNum <= @filaFinal
	ORDER BY RowNum
END
