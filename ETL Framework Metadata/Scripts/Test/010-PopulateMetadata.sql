
/* Configure Project */
INSERT INTO [dbo].[Project]
(
    [Name]
   ,[Folder]
)
VALUES
('Example', 'ETL Framework');

/* Configure Packages */
INSERT INTO [dbo].[Package]
(
    [Name]
   ,[Enabled]
   ,[ProjectId]
   ,[Use32BitRunTime]
   ,[CatalogLoggingLevel]
)
VALUES
('PackageA.dtsx', 1, 1, 0, 3)
,('PackageB.dtsx', 1, 1, 0, 3)
,('PackageC.dtsx', 1, 1, 0, 3);

INSERT INTO [dbo].[Job]
(
    [Name]
   ,[Enabled]
)
VALUES
('Example Job', 1);

/* Configure Job Package Schedule */
INSERT INTO [dbo].[JobPackageSchedule]
(
    [JobId]
   ,[PackageId_Channel1]
   ,[PackageId_Channel2]
   ,[ExecutionOrder]
)
VALUES
(1, 1, 2, 1);

INSERT INTO [dbo].[JobPackageSchedule]
(
    [JobId]
   ,[PackageId_Channel1]
   ,[ExecutionOrder]
)
VALUES
(1, 3, 2);

/* Configure Precedence Contraint */
INSERT INTO [dbo].[PrecedenceContraint]
(
    [PackageId]
   ,[LoadedData]
   ,[UpdatedData]
   ,[DeletedData]
   ,[RejectedData]
   ,[DependantPackageId]
)
VALUES
(3, 0, 1, 0, 0, 2);