
ALTER TABLE Players
ADD pRole varchar(10)

UPDATE Players
SET pRole='Jungle'
WHERE pid = 2;

CREATE TABLE Partners(
Paid int PRIMARY KEY,
PaName varchar (30) Unique NOT NULL,
PaRevenue int 
);

CREATE TABLE Is_Partner(
tid int REFERENCES Teams(tid),
Paid int REFERENCES Partners(Paid),
PRIMARY KEY (tid,Paid),
Since date NOT NULL 
);

INSERT INTO Is_Partner (tid,Paid,Since)
values (7,2,'2009-08-02')

INSERT INTO Partners (Paid,PaName,PaRevenue)
values (2,'AMD',20000)

CREATE TABLE Champions(
Cid int PRIMARY KEY,
CRole varchar(20),
CName varchar(20) UNIQUE NOT NULL
);


CREATE TABLE Match_Details(
Mid int REFERENCES Matches(Mid),
Pid int REFERENCES Players(pid),
PRIMARY KEY (Mid,Pid),
Cid int REFERENCES Champions(Cid),
MHkills int,
MHdeaths int,
MHassists int,
MHoutcome varchar(5),
);

INSERT INTO Match_Details(Mid,Pid,Cid,MHkills,MHdeaths,MHassists,MHoutcome)
values (1,2,2,8,2,2,'Win')

INSERT INTO Matches(Mid,Mserver,MLength)
values (1,'Europe',45.50);

ALTER TABLE Match_Details
 ADD CONSTRAINT campion_player UNIQUE(Mid, Cid);

INSERT INTO Champions(Cid,CRole,CName)
values (3,'Assassin','Akali')



CREATE TABLE Matches(
Mid int PRIMARY KEY,
MServer varchar(20),
MLength float,
);


INSERT INTO Matches(Mid,MServer,MLength)
values (2,'Europe West',38.45)

CREATE TABLE Coaches(
coid int PRIMARY KEY,
CoName varchar(30) NOT NULL,
CoTeam int References  Teams(tid),
CoEmail varchar(20),
CoDaob Date
);

INSERT INTO Coaches(coid,CoName,CoTeam,CoEmail,CoDaob)
values (1,'Dylan Falco',123,'dylan.fal@gmail.com','1985-12-03')

SELECT * FROM Teams
SELECT * FROM Owners
SELECT * FROM Partners
SELECT * FROM Is_Partner
SELECT * FROM Players
SELECT * FROM Champions
SELECT * FROM Match_Details
SELECT * FROM Matches
SELECT * FROM Coaches