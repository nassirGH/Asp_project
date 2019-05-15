CREATE TABLE [dbo].[Registered_Courses] (
    [ID]       INT           NOT NULL,
    [Major]    NVARCHAR (50) DEFAULT (NULL) NOT NULL,
    [Code]     NVARCHAR (50)  NOT NULL,
    [C_Number] INT           NULL, 
    CONSTRAINT [PK_Registered_Courses] PRIMARY KEY ([Code])
);

