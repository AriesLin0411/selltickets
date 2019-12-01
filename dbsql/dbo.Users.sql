CREATE TABLE [dbo].[Users] (
    [name]        NVARCHAR (6)  NOT NULL,
    [password]    NVARCHAR (20) NOT NULL,
    [phonenumber] VARCHAR (11)  NOT NULL,
    [id]          VARCHAR (13)  NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);

