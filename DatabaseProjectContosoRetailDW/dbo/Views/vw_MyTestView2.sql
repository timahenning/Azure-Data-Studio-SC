CREATE VIEW [dbo].[vw_MyTestView2]
  AS 

  SELECT TOP (1) AccountKey, ParentAccountKey, AccountLabel, AccountName, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions, ETLLoadID, LoadDate, UpdateDate
FROM   dbo.DimAccount

GO

