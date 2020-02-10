/*
  MovieSurvey.sql
*/
DROP DATABASE movies;

CREATE DATABASE movies;
USE movies;
/*************************************************/



CREATE TABLE movies (
  ID INT NOT NULL AUTO_INCREMENT,
  MovieName VARCHAR(65) NOT NULL,
  PRIMARY KEY (`ID`));

INSERT INTO movies(MovieName)
VALUES ("Jumanji: The Next Level"),
	("Frozen 2"),
	("Like a Boss"),
	("Star Wars: The Rise of Skywalker"),
	("The Gentlemen"),
	("Bad Boys for Life");


CREATE TABLE Reviewers (
  ID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(45) NOT NULL,
  Age INT,
  Parent CHAR(1) NOT NULL,	
  PRIMARY KEY (`ID`));


INSERT INTO Reviewers (Name, Age, Parent)
VALUES ("Angel",45,"Y"),
    ("Maria",32,"Y"),
    ("Anabell",36,"Y"),
    ("Jessica",34,"Y"),
    ("Laura",42,"Y");

CREATE TABLE Ratings (
  ReviewerID INT NOT NULL,
  MovieID INT NOT NULL,
  Rating INT NOT NULL,
  PRIMARY KEY (ReviewerID, MovieID),
  FOREIGN KEY (ReviewerID) REFERENCES Reviewers (ID) ON UPDATE CASCADE,
  FOREIGN KEY (movieID) REFERENCES movies (ID) ON UPDATE CASCADE
  );

INSERT INTO Ratings (ReviewerID, MovieID, Rating)
VALUES(1,1,4),
	(1,2,3),
	(1,3,0),
	(1,4,4),
	(1,5,0),
	(1,6,0),
	(2,1,4),
	(2,2,3),
	(2,3,0),
	(2,4,4),
	(2,5,0),
	(2,6,0),
	(3,1,3),
	(3,2,3),
	(3,3,0),
	(3,4,4),
	(3,5,0),
	(3,6,0),
	(4,1,4),
	(4,2,3),
	(4,3,4),
	(4,4,4),
	(4,5,0),
	(4,6,0),
	(5,1,3),
	(5,2,3),
	(5,3,4),
	(5,4,4),
	(5,5,0),
	(5,6,0);
	
    
 