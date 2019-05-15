CREATE TABLE [dbo].[Courses] (
    [Code]              NVARCHAR (50) NOT NULL,
    [Name]              NVARCHAR (50) NOT NULL,
    [Number_Of_Credits] INT           NOT NULL,
    [Major]             NVARCHAR (50) NOT NULL,
    [Delete]            NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Code] ASC)
);

