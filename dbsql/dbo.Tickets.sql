CREATE TABLE [dbo].[Tickets]
(
	[tktNum] CHAR(7) NOT NULL PRIMARY KEY, 
    [departureStation] NVARCHAR(10) NOT NULL, 
    [Terminus] NVARCHAR(10) NOT NULL, 
    [tktPrc] MONEY NOT NULL, 
    [departureTime] NVARCHAR(15) NOT NULL, 
    [carNum] VARCHAR(5) NOT NULL, 
    [seatLevel] NVARCHAR(5) NOT NULL
)
