/*
 * Fremdschluessel setzen
 */
 ALTER TABLE Angestellter
 ADD CONSTRAINT fk_AngAng
    FOREIGN KEY (Chef) REFERENCES Angestellter (PersNr)
 ;

 ALTER TABLE Angestellter
 ADD CONSTRAINT fk_AngAbt
    FOREIGN KEY (AbtNr) REFERENCES Abteilung (AbtNr)
 ;


 ALTER TABLE Angestellter
 ADD CONSTRAINT fk_AngWohnort
    FOREIGN KEY (ogc_fid) REFERENCES ortschaft (ogc_fid)
 ;

 ALTER TABLE AbtLeitung
 ADD CONSTRAINT fk_AbtLAbt
    FOREIGN KEY (AbtNr) REFERENCES Abteilung (AbtNr)
    ON DELETE CASCADE
 ;

 ALTER TABLE AbtLeitung
 ADD CONSTRAINT fk_AbtLAng
    FOREIGN KEY (AbtChef) REFERENCES Angestellter(PersNr)
    ON DELETE CASCADE
 ;

 ALTER TABLE Projekt
 ADD CONSTRAINT fk_ProjAng
    FOREIGN KEY (ProjLeiter) REFERENCES Angestellter(PersNr)
 ;

 ALTER TABLE ProjektZuteilung
 ADD CONSTRAINT fk_ProjzAng
    FOREIGN KEY (PersNr) REFERENCES Angestellter(PersNr)
    ON DELETE CASCADE
 ;

 ALTER TABLE ProjektZuteilung
 ADD CONSTRAINT fk_ProjzProj
    FOREIGN KEY (ProjNr) REFERENCES Projekt(ProjNr)
    ON DELETE CASCADE
;
