/*
 * Tabellen erzeugen
 */

CREATE TABLE Abteilung (
  AbtNr INTEGER  PRIMARY KEY,
  Name VARCHAR(20)
);

CREATE TABLE Angestellter (
  PersNr INTEGER  PRIMARY KEY,
  Name VARCHAR(20) NOT NULL,
  Tel INTEGER ,
  Salaer DECIMAL (7,2) NOT NULL,
  Chef INTEGER ,
  AbtNr INTEGER  NOT NULL,
  Wohnort VARCHAR(20),
  ogc_fid INTEGER,
  Eintrittsdatum DATE DEFAULT CURRENT_DATE,
  Bonus DECIMAL (7,2) DEFAULT 0
);

CREATE TABLE AbtLeitung (
  AbtNr INTEGER,
  AbtChef INTEGER  NOT NULL,
  PRIMARY KEY(AbtNr),
  UNIQUE(AbtChef)
);

CREATE TABLE Projekt (
  ProjNr INTEGER PRIMARY KEY,
  Bezeichnung char(20),
  StartZeit DATE,
  Dauer INTEGER ,
  Aufwand INTEGER ,
  ProjLeiter INTEGER
);

CREATE TABLE ProjektZuteilung (
  PersNr INTEGER  NOT NULL,
  ProjNr INTEGER   NOT NULL,
  ZeitAnteil INTEGER  NOT NULL,
  StartZeit DATE,
  Dauer INTEGER ,
  PRIMARY KEY (PersNr, ProjNr)
);


CREATE Sequence S_Angestellter START WITH 2000 INCREMENT BY 10;

