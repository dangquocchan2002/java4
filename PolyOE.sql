CREATE DATABASE PolyOE
GO
USE PolyOE
GO

CREATE TABLE Video(
ID varchar(20) primary key NOT NULL,
Title nvarchar(50) NOT NULL,
Poster varchar(50) NOT NULL,
Views int NOT NULL,
Description nvarchar(50) NOT NULL,
Active bit NOT NULL

)
GO

CREATE TABLE Users(
ID varchar(20) primary key NOT NULL,
password varchar(50)  NOT NULL,
email varchar(50) NOT NULL,
fullname nvarchar(50) NOT NULL,
admin bit
)
go

CREATE TABLE Favorite(
ID varchar(20) primary key NOT NULL,
UserID varchar(20) references Users(ID) NOT NULL,
VideoID varchar(20) references Video(ID) NOT NULL,
LikeDate date NOT NULL
)
go

CREATE TABLE Share(
ID int identity(1,1) primary key NOT NULL,
UserID varchar(20) references Users(ID) NOT NULL,
VideoID varchar(20) references Video(ID) NOT NULL,
Emails varchar(50) NOT NULL,
ShareDate date NOT NULL
)
go

