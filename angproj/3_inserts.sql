
/*
 * Testdaten einfüllen
 */
-- TABLE  ABTEILUNG

INSERT INTO abteilung VALUES (1, 'Verkauf');
INSERT INTO abteilung VALUES (2, 'Marketing');
INSERT INTO abteilung VALUES (3, 'Entwicklung');
INSERT INTO abteilung VALUES (4, 'Finanzen');
INSERT INTO abteilung VALUES (5, 'QS');

-- TABLE  ANGESTELLTER

INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(1001, 'Marxer, Markus', 234, 10580.00, NULL, 1, 'Luzern', 297);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(1002, 'Widmer, Anna', 301, 12010.00, NULL, 2, 'Adligenswil', 1291);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(1010, 'Steiner, Hans', 409, 10867.00, NULL, 3, 'Hitzkirch', 341);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(1019, 'Affolter, Vreni', 233, 4123.00, 1001, 1, 'Zürich', 77);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(1100, 'Widmer, Karl', 450, 7500.00, 1010, 3, 'Emmen', 470);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(1123, 'Meier, Franz', 240, 9765.00, 1001, 1, 'Zug', 277);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(2098, 'Zürcher, Hedi', 249, 10019.00, 1001, 1, 'Horw', 467);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(2109, 'Heiniger, Urs', 345, 4098.00, 1002, 2, 'Luzern', 297);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(2298, 'Pauli, Monika', 478, 5089.00, 1010, 3, 'Luzern', 297);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(2345, 'Becker, Fritz', 310, 6346.00, 1002, 2, 'Hochdorf', 936);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(2567, 'Ammann, Fritz', 467, 7890.00, 1010, 3, 'Baar', 366);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(2601, 'Wehrli, Anton', NULL, 5980.00, 2567, 3, 'Luzern', 297);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(2666, 'Beeler, Hans', NULL, 3780.00, 2567, 3, 'Rotkreuz', NULL);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(2701, 'Graber, Berta', 451, 4590.00, 1100, 3, 'Sursee', 1434);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(3000, 'Aarburg, Werner', 400, 9000.00, 1100, 3, 'Abtwil', 1778);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(3019, 'Kern, Veronika', 401, 4800.00, 3000, 3, 'Sins', 471);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(3333, 'Wernli, Peter', 112, 8978.00, 1001, 1, 'Luzern', 297);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(3338, 'Kramer, Luise', NULL, 4000.00, 3000, 3, 'Luzern', 297);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(4000, 'Rey, Herbert', 480, 15000.00, NULL, 4, 'Adligenswil', 1291);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(4010, 'Danuser, Vreni', 481, 5100.00, 4000, 4, 'Luzern', 297);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(2000, 'Schnell, Marie', 601, 5100.00, 4000, 4, 'Luzern', 297);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(2010, 'Gschwind, Fritz', 602, 5900.00, 4000, 4, 'Luzern', 297);
INSERT INTO angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) VALUES
(2020, 'Test, Hans', 602, 5900.00, 4000, 4, 'Luzern', 297);

-- TABLE  ABTLEITUNG (ABTCHEF, ABTNR)

INSERT INTO abtleitung VALUES (1, 1001);
INSERT INTO abtleitung VALUES (2, 1002);
INSERT INTO abtleitung VALUES (3, 1010);
INSERT INTO abtleitung VALUES (4, 3000);

-- TABLE  PROJEKT

INSERT INTO projekt VALUES (25, 'Saturn              ', to_date('1994-01-01', 'YYYY-MM-DD'), 30, 120, 1001);
INSERT INTO projekt VALUES (26, 'Mars                ', to_date('1992-12-01', 'YYYY-MM-DD'), 500, 1000, 1100);
INSERT INTO projekt VALUES (27, 'Uranus              ', NULL, NULL, NULL, 1100);
INSERT INTO projekt VALUES (30, 'Jupiter             ', to_date('1993-02-12', 'YYYY-MM-DD'), 10, 50, 1001);

-- TABLE  ProjektZuteilung (PERSNR,PROJNR,ZEITANTEIL, STARTZEIT, DAUER)

INSERT INTO projektzuteilung VALUES (1001, 26, 30, NULL, NULL);
INSERT INTO projektzuteilung VALUES (1001, 27, 30, NULL, NULL);
INSERT INTO projektzuteilung VALUES (1001, 30, 10, NULL, NULL);
INSERT INTO projektzuteilung VALUES (1019, 25, 90, NULL, NULL);
INSERT INTO projektzuteilung VALUES (1100, 26, 50, NULL, NULL);
INSERT INTO projektzuteilung VALUES (1123, 25, 50, to_date('1994-01-01', 'YYYY-MM-DD'), NULL);
INSERT INTO projektzuteilung VALUES (1123, 30, 90, NULL, NULL);
INSERT INTO projektzuteilung VALUES (2098, 26, 20, NULL, NULL);
INSERT INTO projektzuteilung VALUES (2098, 27, 31, NULL, NULL);
INSERT INTO projektzuteilung VALUES (2298, 26, 89, NULL, NULL);
INSERT INTO projektzuteilung VALUES (2601, 25, 30, NULL, NULL);
INSERT INTO projektzuteilung VALUES (2601, 26, 40, NULL, NULL);
INSERT INTO projektzuteilung VALUES (2601, 30, 40, NULL, NULL);
INSERT INTO projektzuteilung VALUES (2701, 26, 90, NULL, NULL);
