
/*
 * Testdaten einfüllen
 */
-- TABLE  ABTEILUNG
COPY abteilung (abtnr, name) FROM stdin;
1	Verkauf
2	Marketing
3	Entwicklung
4	Finanzen
5	QS
\.

-- TABLE  ANGESTELLTER
COPY angestellter (persnr, name, tel, salaer, chef, abtnr, wohnort, ogc_fid) FROM stdin WITH (ENCODING 'UTF8');
1001	Marxer, Markus	234	10580.00	\N	1	Luzern	297
1002	Widmer, Anna	301	12010.00	\N	2	Adligenswil	1291
1010	Steiner, Hans	409	10867.00	\N	3	Hitzkirch	341
1019	Affolter, Vreni	233	4123.00	1001	1	Zürich	77
1100	Widmer, Karl	450	7500.00	1010	3	Emmen	470
1123	Meier, Franz	240	9765.00	1001	1	Zug	277
2098	Zürcher, Hedi	249	10019.00	1001	1	Horw	467
2109	Heiniger, Urs	345	4098.00	1002	2	Luzern	297
2298	Pauli, Monika	478	5089.00	1010	3	Luzern	297
2345	Becker, Fritz	310	6346.00	1002	2	Hochdorf	936
2567	Ammann, Fritz	467	7890.00	1010	3	Baar	366
2601	Wehrli, Anton	\N	5980.00	2567	3	Luzern	297
2666	Beeler, Hans	\N	3780.00	2567	3	Rotkreuz	\N
2701	Graber, Berta	451	4590.00	1100	3	Sursee	1434
3000	Aarburg, Werner	400	9000.00	1100	3	Abtwil	1778
3019	Kern, Veronika	401	4800.00	3000	3	Sins	471
3333	Wernli, Peter	112	8978.00	1001	1	Luzern	297
3338	Kramer, Luise	\N	4000.00	3000	3	Luzern	297
4000	Rey, Herbert	480	15000.00	\N	4	Adligenswil	1291
4010	Danuser, Vreni	481	5100.00	4000	4	Luzern	297
2000	Schnell, Marie	601	5100.00	4000	4	Luzern	297
2010	Gschwind, Fritz	602	5900.00	4000	4	Luzern	297
2020	Test, Hans	602	5900.00	4000	4	Luzern	297
\.

-- TABLE  ABTLEITUNG (ABTCHEF, ABTNR)
COPY abtleitung (abtnr, abtchef) FROM stdin;
1	1001
2	1002
3	1010
4	3000
\.

-- TABLE  PROJEKT
COPY projekt (projnr, bezeichnung, startzeit, dauer, aufwand, projleiter) FROM stdin;
25	Saturn              	1994-01-01	30	120	1001
26	Mars                	1992-12-01	500	1000	1100
27	Uranus              	\N	\N	\N	1100
30	Jupiter             	1993-02-12	10	50	1001
\.

-- TABLE  ProjektZuteilung (PERSNR,PROJNR,ZEITANTEIL, STARTZEIT, DAUER)
COPY projektzuteilung (persnr, projnr, zeitanteil, startzeit, dauer) FROM stdin;
1001	26	30	\N	\N
1001	27	30	\N	\N
1001	30	10	\N	\N
1019	25	90	\N	\N
1100	26	50	\N	\N
1123	25	50	1994-01-01	\N
1123	30	90	\N	\N
2098	26	20	\N	\N
2098	27	31	\N	\N
2298	26	89	\N	\N
2601	25	30	\N	\N
2601	26	40	\N	\N
2601	30	40	\N	\N
2701	26	90	\N	\N
\.

