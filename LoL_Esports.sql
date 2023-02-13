CREATE TABLE Teams (
tid int PRIMARY KEY,
tName varchar (40) UNIQUE,
);
CREATE TABLE Players (
pid int PRIMARY KEY,
pName varchar (40),
pTeam int references Teams(tid),
);

ALTER TABLE Teams
ADD tRegion varchar(30),
tCreated Date;

INSERT INTO Teams (tid,tName,tRegion,tCreated,oid)
values (7,'Fnatic','Europe','2011-03-11','1')


ALTER TABLE Players
ADD pRealName varchar(30),
Nationality varchar(20);

ALTER TABLE Players
ADD pRole varchar(10)

INSERT INTO Players(pid,pName,pTeam)
values (1,'Caps',123)

ALTER TABLE Players
ALTER COLUMN pNickname varchar(20) NOT NULL ;

ALTER TABLE Players
ALTER COLUMN pRealName varchar(30) NOT NULL; 

ALTER TABLE Teams
ALTER COLUMN tName varchar(40) NOT NULL;

ALTER TABLE Teams ADD UNIQUE (tName);
ALTER TABLE Players
ADD CONSTRAINT unique_Nickname UNIQUE (pNickname);
ALTER TABLE Teams Drop constraint UQ__Teams__F0288891AA3D26F4;

ALTER TABLE Players
ADD pDob Date;
UPDATE Teams
SET tName='G2 Esports'
WHERE tid = 123;

UPDATE Players
SET pNickname='caPs',pRealName = 'Rasmus Borregaard Winther', pNationality= 'Denmark',pDob='1999-11-17'
WHERE pid = 1;
INSERT INTO Players(pid,pNickname,pTeam,pRealName,pNationality,pDob)
values (23,'caPs',123,'havier',NULL,NULL)

INSERT INTO Players(pid,pNickname,pTeam,pRealName,pNationality,pDob)
values (23,'Jankos',123,'Marcin Jankowski','Poland','1995-07-23')
DELETE FROM Players WHERE pid=23;

CREATE TABLE Owners(
oid int primary key,
oName varchar(30) NOT NULL,
oDob Date,
oEmail varchar(20)

);
UPDATE Teams
SET oid=1
WHERE tid = 123;

ALTER TABLE Teams
ADD oid int references Owners(oid)

INSERT INTO Owners(oid,oName,oEmail,oDob)
values (1,'Carlos Rodriguez','carlos.r@gmail.com','1993-04-12')

ALTER TABLE Teams
ALTER COLUMN oid int NOT NULL;

ALTER TABLE Owners
ADD CONSTRAINT unique_oName UNIQUE (oName);

SELECT * FROM Teams
SELECT * FROM Players
SELECT * FROM Owners