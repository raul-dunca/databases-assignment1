CREATE TABLE Leagues(
lid int PRIMARY KEY,
LName varchar(30) NOT NULL Unique,
LDifficulty varchar(40),
LPrize int
);


UPDATE Abilities
SET Cid=1
WHERE abid = 1;

INSERT INTO Leagues(lid,LName,LDifficulty,LPrize)
values (1,'European Championship','medium',70000)

ALTER TABLE Teams
ADD lid int REFERENCES Leagues(lid)

CREATE TABLE Abilities(
abid int PRIMARY KEY,
AbName varchar(40) NOT NULL Unique,
Cid int REFERENCES Champions(Cid),
AbType varchar(10) NOT NULL,
AbManaCost int,
AbColldown int
);

INSERT INTO  Abilities(abid,cid,AbName,AbType,AbManaCost,AbColldown)
values (12,33,'Overloads','Q',40,5)

ALTER TABLE Champions
ADD CDifficulty varchar(30)

UPDATE Champions
SET CDifficulty ='Easy'
WHERE Cid=2

SELECT * FROM Teams
SELECT * FROM Owners
SELECT * FROM Partners
SELECT * FROM Is_Partner
SELECT * FROM Players
SELECT * FROM Champions
SELECT * FROM Coaches
SELECT * FROM Leagues
SELECT * FROM Abilities