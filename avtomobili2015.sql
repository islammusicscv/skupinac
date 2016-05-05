--
-- TOC entry 1509 (class 1259 OID 16396)
-- Dependencies: 3
-- Name: avtomobili; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE avtomobili (
    id integer NOT NULL,
    letnik integer NOT NULL,
    km integer,
    ccm integer,
    kw integer,
    teza integer,
    cena real NOT NULL,
    barva_id integer NOT NULL,
    lastnik_id integer NOT NULL,
    model_id integer NOT NULL,
    opis text
);

--
-- TOC entry 1510 (class 1259 OID 16399)
-- Dependencies: 3
-- Name: barve; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE barve (
    id integer NOT NULL,
    ime character varying(50) NOT NULL,
    oznaka character varying(20),
    opis text
);

--
-- TOC entry 1511 (class 1259 OID 16405)
-- Dependencies: 3
-- Name: drzave; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE drzave (
    id integer NOT NULL,
    ime character varying(50) NOT NULL,
    kratica character varying(5)
);

--
-- TOC entry 1512 (class 1259 OID 16408)
-- Dependencies: 3
-- Name: kraji; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE kraji (
    id integer NOT NULL,
    ime character varying(80) NOT NULL,
    posta character varying(10),
    drzava_id integer NOT NULL
);

--
-- TOC entry 1513 (class 1259 OID 16411)
-- Dependencies: 3
-- Name: lastniki; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lastniki (
    id integer NOT NULL,
    ime character varying(30) NOT NULL,
    priimek character varying(40) NOT NULL,
    naslov character varying(40),
    telefon character varying(20) NOT NULL,
    eposta character varying(20),
    visina integer,
    teza integer,
    kraj_id integer NOT NULL,
    datumroj timestamp without time zone
);

--
-- TOC entry 1514 (class 1259 OID 16414)
-- Dependencies: 3
-- Name: modeli; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE modeli (
    id integer NOT NULL,
    ime character varying(20) NOT NULL,
    opis text,
    znamka_id integer NOT NULL
);

--
-- TOC entry 1516 (class 1259 OID 16424)
-- Dependencies: 3
-- Name: znamke; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE znamke (
    id integer NOT NULL,
    ime character varying(20) NOT NULL,
    opis text,
    www character varying(50),
    drzava_id integer NOT NULL
);

--
-- TOC entry 1816 (class 0 OID 16396)
-- Dependencies: 1509
-- Data for Name: avtomobili; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (1, 1997, 160000, 1600, 74, NULL, 4000, 2, 9, 1, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (2, 2003, 50000, 1600, 75, NULL, 12000, 4, 20, 1, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (3, 2005, 4486, 1600, 75, NULL, 20000, 4, 15, 1, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (4, 2001, 101106, 1900, 75, NULL, 10000, 7, 11, 1, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (6, 2002, 161000, 1900, 96, NULL, 14000, 4, 21, 2, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (9, 2000, 182000, 1422, 55, NULL, 8000, 1, 7, 3, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (10, 2002, 103000, 1400, 55, NULL, 10500, 6, 10, 3, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (11, 2006, 12000, 1350, 51, 1020, 11000, 2, 18, 4, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (12, 1996, 172000, 1400, 39, 1090, 500, 2, 16, 4, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (13, 1993, 119644, 1400, 55, 890, 800, 2, 5, 5, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (14, 1995, 170000, 1200, 43, 920, 800, 7, 14, 5, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (15, 2006, 10, 1200, NULL, NULL, 10000, 3, 16, 5, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (16, 2003, 45000, 1400, 72, 880, 6000, 7, 21, 5, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (17, 2005, 48000, 1500, 65, 890, 5000, 5, 20, 5, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (18, 1998, 119000, 1600, 66, 1100, 2500, 7, 6, 6, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (20, 2002, 67000, 1900, 59, 1090, 8000, 6, 9, 6, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (21, 2003, 104000, 1900, 88, 1075, 9500, 4, 10, 7, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (22, 1991, 165555, 1200, 43, 900, 500, 4, 18, 8, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (23, 1995, 164000, 1200, 45, NULL, 350, 7, 19, 8, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (24, 2007, NULL, 3600, 250, NULL, 700000, 9, 30, 28, NULL);
INSERT INTO avtomobili (id, letnik, km, ccm, kw, teza, cena, barva_id, lastnik_id, model_id, opis) VALUES (7, 2005, 33500, 1900, 85, NULL, 20350, 2, 19, 2, NULL);


--
-- TOC entry 1817 (class 0 OID 16399)
-- Dependencies: 1510
-- Data for Name: barve; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO barve (id, ime, oznaka, opis) VALUES (1, 'Modra', 'KL453', NULL);
INSERT INTO barve (id, ime, oznaka, opis) VALUES (2, 'Črna', 'ZZ053', NULL);
INSERT INTO barve (id, ime, oznaka, opis) VALUES (3, 'Bela', 'OP253', NULL);
INSERT INTO barve (id, ime, oznaka, opis) VALUES (4, 'Rdeča', 'EE153', NULL);
INSERT INTO barve (id, ime, oznaka, opis) VALUES (5, 'Rumena', 'KI450', NULL);
INSERT INTO barve (id, ime, oznaka, opis) VALUES (6, 'Siva', 'LV300', NULL);
INSERT INTO barve (id, ime, oznaka, opis) VALUES (7, 'Zlata', 'TT430', NULL);
INSERT INTO barve (id, ime, oznaka, opis) VALUES (8, 'Svetlo modra', 'VL500', NULL);
INSERT INTO barve (id, ime, oznaka, opis) VALUES (9, 'črna', NULL, NULL);


--
-- TOC entry 1818 (class 0 OID 16405)
-- Dependencies: 1511
-- Data for Name: drzave; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO drzave (id, ime, kratica) VALUES (1, 'Slovenija', 'SLO');
INSERT INTO drzave (id, ime, kratica) VALUES (2, 'Hrvaška', 'HR');
INSERT INTO drzave (id, ime, kratica) VALUES (3, 'Bosna in Hercegovina', 'BIH');
INSERT INTO drzave (id, ime, kratica) VALUES (4, 'Avstrija', 'A');
INSERT INTO drzave (id, ime, kratica) VALUES (5, 'Nemčija', 'D');
INSERT INTO drzave (id, ime, kratica) VALUES (6, 'Francija', 'F');
INSERT INTO drzave (id, ime, kratica) VALUES (7, 'Španija', NULL);
INSERT INTO drzave (id, ime, kratica) VALUES (8, 'Italija', 'I');
INSERT INTO drzave (id, ime, kratica) VALUES (9, 'Švedska', 'S');
INSERT INTO drzave (id, ime, kratica) VALUES (10, 'Češka', NULL);


--
-- TOC entry 1819 (class 0 OID 16408)
-- Dependencies: 1512
-- Data for Name: kraji; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (800, 'Stuttgart', NULL, 5);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (1, 'Adlešiči', '8341', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (2, 'Ajdovščina', '5270', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (3, 'Ankaran/Ancarano', '6280', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (4, 'Apače', '9253', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (5, 'Artiče', '8253', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (6, 'Begunje na Gorenjskem', '4275', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (7, 'Begunje pri Cerknici', '1382', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (8, 'Beltinci', '9231', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (9, 'Benedikt', '2234', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (10, 'Bistrica ob Dravi', '2345', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (11, 'Bistrica ob Sotli', '3256', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (12, 'Bizeljsko', '8259', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (13, 'Blagovica', '1223', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (14, 'Blanca', '8283', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (15, 'Bled', '4260', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (16, 'Blejska Dobrava', '4273', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (17, 'Bodonci', '9265', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (18, 'Bogojina', '9222', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (19, 'Bohinjska Bela', '4263', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (20, 'Bohinjska Bistrica', '4264', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (21, 'Bohinjsko jezero', '4265', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (22, 'Borovnica', '1353', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (23, 'Boštanj', '8294', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (24, 'Bovec', '5230', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (25, 'Branik', '5295', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (26, 'Braslovče', '3314', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (27, 'Breginj', '5223', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (28, 'Brestanica', '8280', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (29, 'Bresternica', '2354', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (30, 'Brezje', '4243', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (31, 'Brezovica pri Ljubljani', '1351', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (32, 'Brežice', '8250', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (33, 'Brnik aerodrom', '4210', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (34, 'Brusnice', '8321', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (35, 'Buče', '3255', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (36, 'Bučka ', '8276', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (37, 'Cankova', '9261', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (38, 'Celje', '3000', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (39, 'Celje - poštni predali', '3001', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (40, 'Cerklje na Gorenjskem', '4207', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (41, 'Cerklje ob Krki', '8263', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (42, 'Cerknica', '1380', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (43, 'Cerkno', '5282', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (44, 'Cerkvenjak', '2236', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (45, 'Ceršak', '2215', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (46, 'Cirkovce', '2326', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (47, 'Cirkulane', '2282', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (48, 'Col', '5273', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (49, 'Čatež ob Savi', '8251', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (50, 'Čemšenik', '1413', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (51, 'Čepovan', '5253', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (52, 'Črenšovci', '9232', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (53, 'Črna na Koroškem', '2393', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (54, 'Črni Kal', '6275', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (55, 'Črni Vrh nad Idrijo', '5274', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (56, 'Črniče', '5262', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (57, 'Črnomelj', '8340', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (58, 'Dekani', '6271', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (59, 'Deskle', '5210', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (60, 'Destrnik', '2253', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (61, 'Divača', '6215', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (62, 'Dob', '1233', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (63, 'Dobje pri Planini', '3224', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (64, 'Dobova', '8257', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (65, 'Dobovec', '1423', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (66, 'Dobravlje', '5263', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (67, 'Dobrna', '3204', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (68, 'Dobrnič', '8211', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (69, 'Dobrova', '1356', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (70, 'Dobrovnik/Dobronak ', '9223', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (71, 'Dobrovo v Brdih', '5212', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (72, 'Dol pri Hrastniku', '1431', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (73, 'Dol pri Ljubljani', '1262', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (74, 'Dole pri Litiji', '1273', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (75, 'Dolenja vas', '1331', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (76, 'Dolenjske Toplice', '8350', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (77, 'Domžale', '1230', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (78, 'Dornava', '2252', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (79, 'Dornberk', '5294', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (80, 'Draga', '1319', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (81, 'Dragatuš', '8343', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (82, 'Dramlje', '3222', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (83, 'Dravograd', '2370', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (84, 'Duplje', '4203', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (85, 'Dutovlje', '6221', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (86, 'Dvor', '8361', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (87, 'Fala', '2343', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (88, 'Fokovci', '9208', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (89, 'Fram', '2313', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (90, 'Frankolovo', '3213', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (91, 'Gabrovka', '1274', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (92, 'Globoko', '8254', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (93, 'Godovič', '5275', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (94, 'Golnik', '4204', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (95, 'Gomilsko', '3303', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (96, 'Gorenja vas', '4224', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (97, 'Gorica pri Slivnici', '3263', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (98, 'Gorišnica', '2272', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (99, 'Gornja Radgona', '9250', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (100, 'Gornji Grad', '3342', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (101, 'Gozd Martuljek', '4282', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (102, 'Gračišče', '6272', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (103, 'Grad', '9264', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (104, 'Gradac', '8332', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (105, 'Grahovo', '1384', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (106, 'Grahovo ob Bači', '5242', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (107, 'Grgar', '5251', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (108, 'Griže', '3302', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (109, 'Grobelno', '3231', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (110, 'Grosuplje', '1290', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (111, 'Hajdina', '2288', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (112, 'Hinje', '8362', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (113, 'Hoče', '2311', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (114, 'Hodoš/Hodos', '9205', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (115, 'Horjul', '1354', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (116, 'Hotedršica', '1372', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (117, 'Hrastnik', '1430', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (118, 'Hruševje', '6225', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (119, 'Hrušica', '4276', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (120, 'Idrija', '5280', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (121, 'Ig', '1292', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (122, 'Ilirska Bistrica', '6250', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (123, 'Ilirska Bistrica-Trnovo', '6251', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (124, 'Ivančna Gorica', '1295', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (125, 'Ivanjkovci', '2259', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (126, 'Izlake', '1411', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (127, 'Izola/Isola', '6310', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (128, 'Jakobski Dol', '2222', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (129, 'Jarenina', '2221', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (130, 'Jelšane', '6254', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (131, 'Jesenice', '4270', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (132, 'Jesenice na Dolenjskem', '8261', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (133, 'Jurklošter', '3273', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (134, 'Jurovski Dol', '2223', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (135, 'Juršinci', '2256', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (136, 'Kal nad Kanalom', '5214', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (137, 'Kalobje', '3233', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (138, 'Kamna Gorica', '4246', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (139, 'Kamnica', '2351', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (140, 'Kamnik', '1241', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (141, 'Kanal', '5213', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (142, 'Kapele', '8258', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (143, 'Kapla', '2362', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (144, 'Kidričevo', '2325', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (145, 'Kisovec', '1412', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (146, 'Knežak', '6253', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (147, 'Kobarid', '5222', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (148, 'Kobilje', '9227', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (149, 'Kočevje', '1330', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (150, 'Kočevska Reka', '1338', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (151, 'Kog', '2276', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (152, 'Kojsko', '5211', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (153, 'Komen', '6223', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (154, 'Komenda', '1218', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (155, 'Koper/Capodistria', '6000', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (156, 'Koper/Capodistria - poštni predali', '6001', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (157, 'Koprivnica', '8282', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (158, 'Kostanjevica na Krasu', '5296', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (159, 'Kostanjevica na Krki', '8311', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (160, 'Košana', '6256', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (161, 'Kotlje', '2394', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (162, 'Kozina', '6240', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (163, 'Kozje', '3260', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (164, 'Kranj', '4000', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (165, 'Kranj - poštni predali', '4001', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (166, 'Kranjska Gora', '4280', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (167, 'Kresnice', '1281', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (168, 'Križe', '4294', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (169, 'Križevci', '9206', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (170, 'Križevci pri Ljutomeru', '9242', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (171, 'Krka', '1301', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (172, 'Krmelj', '8296', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (173, 'Kropa', '4245', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (174, 'Krška vas', '8262', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (175, 'Krško', '8270', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (176, 'Kuzma', '9263', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (177, 'Laporje', '2318', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (178, 'Laško', '3270', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (179, 'Laze v Tuhinju', '1219', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (180, 'Lenart v Slovenskih goricah', '2230', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (181, 'Lendava/Lendva', '9220', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (182, 'Lesce', '4248', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (183, 'Lesično', '3261', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (184, 'Leskovec pri Krškem', '8273', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (185, 'Libeliče', '2372', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (186, 'Limbuš', '2341', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (187, 'Litija', '1270', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (188, 'Ljubečna', '3202', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (189, 'Ljubljana', '1000', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (190, 'Ljubljana - poštni predali', '1001', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (191, 'Ljubljana Črnuče', '1231', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (192, 'Ljubljana-Dobrunje', '1261', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (193, 'Ljubljana Polje', '1260', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (194, 'Ljubljana Šentvid', '1210', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (195, 'Ljubljana-Šmartno', '1211', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (196, 'Ljubno ob Savinji', '3333', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (197, 'Ljutomer', '9240', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (198, 'Loče', '3215', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (199, 'Log pod Mangartom', '5231', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (200, 'Log pri Brezovici', '1358', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (201, 'Logatec', '1370', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (202, 'Logatec', '1371', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (203, 'Loka pri Zidanem Mostu', '1434', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (204, 'Loka pri Žusmu', '3223', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (205, 'Lokev', '6219', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (206, 'Loški Potok', '1318', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (207, 'Lovrenc na Dravskem polju', '2324', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (208, 'Lovrenc na Pohorju', '2344', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (209, 'Luče', '3334', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (210, 'Lukovica', '1225', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (211, 'Mačkovci', '9202', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (212, 'Majšperk', '2322', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (213, 'Makole', '2321', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (214, 'Mala Nedelja', '9243', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (215, 'Malečnik', '2229', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (216, 'Marezige', '6273', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (217, 'Maribor', '2000', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (218, 'Maribor - poštni predali', '2001', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (219, 'Marjeta na Dravskem polju', '2206', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (220, 'Markovci', '2281', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (221, 'Martjanci', '9221', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (222, 'Materija', '6242', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (223, 'Mavčiče', '4211', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (224, 'Medvode', '1215', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (225, 'Mengeš', '1234', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (226, 'Metlika', '8330', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (227, 'Mežica', '2392', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (228, 'Miklavž na Dravskem polju', '2204', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (229, 'Miklavž pri Ormožu', '2275', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (230, 'Miren', '5291', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (231, 'Mirna', '8233', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (232, 'Mirna Peč', '8216', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (233, 'Mislinja', '2382', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (234, 'Mojstrana', '4281', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (235, 'Mokronog', '8230', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (236, 'Moravče', '1251', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (237, 'Moravske Toplice', '9226', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (238, 'Most na Soči', '5216', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (239, 'Motnik', '1221', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (240, 'Mozirje', '3330', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (241, 'Murska Sobota', '9000', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (242, 'Murska Sobota - poštni predali', '9001', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (243, 'Muta', '2366', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (244, 'Naklo', '4202', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (245, 'Nazarje', '3331', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (246, 'Notranje Gorice', '1357', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (247, 'Nova Cerkev', '3203', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (248, 'Nova Gorica', '5000', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (249, 'Nova Gorica - poštni predali', '5001', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (250, 'Nova vas', '1385', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (251, 'Novo mesto', '8000', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (252, 'Novo mesto - poštni predali', '8001', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (253, 'Obrov', '6243', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (254, 'Odranci', '9233', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (255, 'Oplotnica', '2317', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (256, 'Orehova vas', '2312', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (257, 'Ormož', '2270', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (258, 'Ortnek', '1316', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (259, 'Osilnica', '1337', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (260, 'Otočec', '8222', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (261, 'Ožbalt', '2361', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (262, 'Pernica', '2231', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (263, 'Pesnica pri Mariboru', '2211', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (264, 'Petrovci', '9203', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (265, 'Petrovče', '3301', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (266, 'Piran/Pirano', '6330', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (267, 'Pišece', '8255', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (268, 'Pivka', '6257', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (269, 'Planina', '6232', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (270, 'Planina pri Sevnici', '3225', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (271, 'Pobegi', '6276', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (272, 'Podbočje', '8312', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (273, 'Podbrdo', '5243', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (274, 'Podčetrtek', '3254', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (275, 'Podgorci', '2273', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (276, 'Podgorje', '6216', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (277, 'Podgorje pri Slovenj Gradcu', '2381', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (278, 'Podgrad', '6244', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (279, 'Podkum', '1414', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (280, 'Podlehnik', '2286', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (281, 'Podnanos', '5272', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (282, 'Podnart', '4244', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (283, 'Podplat', '3241', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (284, 'Podsreda', '3257', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (285, 'Podvelka', '2363', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (286, 'Pohorje', '2208', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (287, 'Polenšak', '2257', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (288, 'Polhov Gradec', '1355', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (289, 'Poljane nad Škofjo Loko', '4223', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (290, 'Poljčane', '2319', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (291, 'Polšnik', '1272', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (292, 'Polzela', '3313', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (293, 'Ponikva', '3232', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (294, 'Portorož/Portorose', '6320', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (295, 'Postojna', '6230', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (296, 'Pragersko', '2331', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (297, 'Prebold', '3312', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (298, 'Preddvor', '4205', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (299, 'Prem', '6255', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (300, 'Preserje', '1352', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (301, 'Prestranek', '6258', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (302, 'Prevalje', '2391', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (303, 'Prevorje', '3262', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (304, 'Primskovo ', '1276', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (305, 'Pristava pri Mestinju', '3253', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (306, 'Prosenjakovci/Partosfalva', '9207', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (307, 'Prvačina', '5297', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (308, 'Ptuj', '2250', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (309, 'Ptujska Gora', '2323', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (310, 'Puconci', '9201', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (311, 'Rače', '2327', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (312, 'Radeče', '1433', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (313, 'Radenci', '9252', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (314, 'Radlje ob Dravi', '2360', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (315, 'Radomlje', '1235', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (316, 'Radovljica', '4240', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (317, 'Raka', '8274', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (318, 'Rakek', '1381', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (319, 'Rateče-Planica', '4283', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (320, 'Ravne na Koroškem', '2390', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (321, 'Rečica ob Savinji', '3332', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (322, 'Renče', '5292', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (323, 'Ribnica', '1310', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (324, 'Ribnica na Pohorju', '2364', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (325, 'Rimske Toplice', '3272', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (326, 'Rob', '1314', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (327, 'Ročinj', '5215', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (328, 'Rogaška Slatina', '3250', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (329, 'Rogašovci', '9262', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (330, 'Rogatec', '3252', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (331, 'Rovte', '1373', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (332, 'Ruše', '2342', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (333, 'Sava', '1282', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (334, 'Sečovlje/Sicciole', '6333', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (335, 'Selca', '4227', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (336, 'Selnica ob Dravi', '2352', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (337, 'Semič', '8333', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (338, 'Senovo', '8281', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (339, 'Senožeče', '6224', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (340, 'Sevnica', '8290', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (341, 'Sežana', '6210', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (342, 'Sladki Vrh', '2214', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (343, 'Slap ob Idrijci', '5283', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (344, 'Slovenj Gradec', '2380', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (345, 'Slovenska Bistrica', '2310', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (346, 'Slovenske Konjice', '3210', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (347, 'Smlednik', '1216', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (348, 'Soča', '5232', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (349, 'Sodražica', '1317', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (350, 'Solčava', '3335', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (351, 'Solkan', '5250', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (352, 'Sorica', '4229', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (353, 'Sovodenj', '4225', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (354, 'Spodnja Idrija', '5281', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (355, 'Spodnji Duplek', '2241', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (356, 'Spodnji Ivanjci', '9245', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (357, 'Središče ob Dravi', '2277', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (358, 'Srednja vas v Bohinju', '4267', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (359, 'Sromlje ', '8256', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (360, 'Srpenica', '5224', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (361, 'Stahovica', '1242', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (362, 'Stara Cerkev', '1332', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (363, 'Stari trg ob Kolpi', '8342', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (364, 'Stari trg pri Ložu', '1386', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (365, 'Starše', '2205', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (366, 'Stoperce', '2289', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (367, 'Stopiče', '8322', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (368, 'Stranice', '3206', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (369, 'Straža', '8351', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (370, 'Struge', '1313', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (372, 'Studenec', '8293', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (373, 'Suhor', '8331', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (374, 'Sv. Ana v Slovenskih goricah', '2233', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (375, 'Sv. Duh na Ostrem Vrhu', '2353', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (376, 'Sv. Jurij ob Ščavnici', '9244', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (377, 'Sv. Trojica v Slovenskih goricah', '2235', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (378, 'Sveti Štefan', '3264', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (379, 'Sveti Tomaž', '2258', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (380, 'Šalovci', '9204', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (381, 'Šempas', '5261', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (382, 'Šempeter pri Gorici', '5290', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (383, 'Šempeter v Savinjski dolini', '3311', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (384, 'Šenčur', '4208', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (385, 'Šentilj v Slovenskih goricah', '2212', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (386, 'Šentjanž', '8297', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (387, 'Šentjanž pri Dravogradu', '2373', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (388, 'Šentjernej', '8310', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (389, 'Šentjur', '3230', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (390, 'Šentrupert', '3271', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (391, 'Šentrupert', '8232', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (392, 'Šentvid pri Stični', '1296', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (393, 'Škocjan', '8275', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (394, 'Škofije', '6281', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (395, 'Škofja Loka', '4220', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (396, 'Škofja vas', '3211', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (397, 'Škofljica', '1291', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (398, 'Šmarje', '6274', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (399, 'Šmarje-Sap', '1293', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (400, 'Šmarje pri Jelšah', '3240', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (401, 'Šmarješke Toplice', '8220', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (402, 'Šmartno na Pohorju', '2315', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (403, 'Šmartno ob Dreti', '3341', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (404, 'Šmartno ob Paki', '3327', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (405, 'Šmartno pri Litiji', '1275', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (406, 'Šmartno pri Slovenj Gradcu', '2383', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (407, 'Šmartno v Rožni dolini', '3201', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (408, 'Šoštanj', '3325', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (409, 'Štanjel', '6222', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (410, 'Štore', '3220', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (411, 'Tabor', '3304', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (412, 'Teharje', '3221', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (413, 'Tišina', '9251', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (414, 'Tolmin', '5220', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (415, 'Topolšica', '3326', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (416, 'Trbonje', '2371', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (417, 'Trbovlje', '1420', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (418, 'Trebelno ', '8231', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (419, 'Trebnje', '8210', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (420, 'Trnovo pri Gorici', '5252', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (421, 'Trnovska vas', '2254', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (422, 'Trojane', '1222', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (423, 'Trzin', '1236', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (424, 'Tržič', '4290', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (425, 'Tržišče', '8295', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (426, 'Turjak', '1311', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (427, 'Turnišče', '9224', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (428, 'Uršna sela', '8323', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (429, 'Vače', '1252', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (430, 'Vas', '1336', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (431, 'Velenje', '3320', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (432, 'Velenje - poštni predali', '3322', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (433, 'Velika Loka', '8212', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (434, 'Velika Nedelja', '2274', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (435, 'Velika Polana', '9225', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (436, 'Velike Lašče', '1315', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (437, 'Veliki Gaber', '8213', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (438, 'Veržej', '9241', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (439, 'Videm-Dobrepolje', '1312', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (440, 'Videm pri Ptuju', '2284', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (441, 'Vinica', '8344', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (442, 'Vipava', '5271', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (443, 'Visoko', '4212', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (444, 'Višnja Gora', '1294', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (445, 'Vitanje', '3205', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (446, 'Vitomarci', '2255', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (447, 'Vodice', '1217', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (448, 'Vojnik', '3212', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (449, 'Volčja Draga', '5293', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (450, 'Voličina', '2232', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (451, 'Vransko', '3305', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (452, 'Vremski Britof', '6217', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (453, 'Vrhnika', '1360', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (454, 'Vuhred', '2365', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (455, 'Vuzenica', '2367', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (456, 'Zabukovje ', '8292', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (457, 'Zagorje ob Savi', '1410', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (458, 'Zagradec', '1303', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (459, 'Zavrč', '2283', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (460, 'Zdole ', '8272', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (461, 'Zgornja Besnica', '4201', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (462, 'Zgornja Korena', '2242', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (463, 'Zgornja Kungota', '2201', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (464, 'Zgornja Ložnica', '2316', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (465, 'Zgornja Polskava', '2314', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (466, 'Zgornja Velka', '2213', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (467, 'Zgornje Gorje', '4247', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (468, 'Zgornje Jezersko', '4206', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (469, 'Zgornji Leskovec', '2285', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (470, 'Zidani Most', '1432', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (471, 'Zreče', '3214', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (472, 'Žabnica', '4209', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (473, 'Žalec', '3310', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (474, 'Železniki', '4228', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (475, 'Žetale', '2287', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (476, 'Žiri', '4226', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (477, 'Žirovnica', '4274', 1);
INSERT INTO kraji (id, ime, posta, drzava_id) VALUES (478, 'Žužemberk', '8360', 1);


--
-- TOC entry 1820 (class 0 OID 16411)
-- Dependencies: 1513
-- Data for Name: lastniki; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (1, 'Janez', 'Novak', 'Prešernova ulica 15', '', '', 180, 97, 2, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (2, 'Mitja', 'Napoli', 'Trg revolucija 77', '031112342', '', 176, 54, 67, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (3, 'Drago', 'Napak', 'Trnovo 65a', '', '', NULL, 100, 122, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (4, 'Klemen', 'Koren', 'Vhr 35', '040786291', '', 178, 87, 127, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (5, 'Matej', 'Horvat', 'Ljubljanska 66', '', '', 198, 110, 159, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (6, 'Mojca', 'Vrhovnik', 'Spodje dole 3', '', '', 187, 69, 183, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (7, 'Miha', 'Arčan', 'Kocbekova 56', '', '', 182, 87, 188, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (8, 'Jure', 'Kladivar', '', '', '', NULL, NULL, 166, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (9, 'Emir', 'Korlat', 'Letoviška 66', '', '', NULL, 77, 147, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (10, 'Denis', 'Vršik', 'Kopališka cesta 5', '', '', 189, 100, 342, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (11, 'Tina', 'Gorenšek', '', '', '', NULL, NULL, 325, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (12, 'Kristina', 'Veljak', '', '', '', NULL, NULL, 308, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (13, 'Marija', 'Korpa', '', '', '', NULL, NULL, 123, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (14, 'Andreja', 'Maruk', '', '', '', 177, 61, 352, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (15, 'Veljko', 'Hrsijak', '', '', 'vhrnjak@gmail.com', NULL, 101, 77, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (16, 'Nada', 'Ozim', '', '', '', NULL, NULL, 250, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (17, 'Maja', 'Novinar', '', '', '', NULL, NULL, 407, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (18, 'Sabina', 'Mali', '', '', '', 155, 55, 263, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (19, 'Senad', 'Divjak', '', '', '', 195, 95, 119, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (21, 'Matic', 'Kline', '', '', '', 167, 80, 357, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (20, 'Edisa', 'Divjak', '', '', '', 177, 62, 183, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (26, 'Islam', 'Mušić', 'Goriška c. 63', '031546548', 'sldkhdsldhf', 194, 96, 431, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (27, 'Islam', 'Mušić', 'Goriška c. 63', '031546548', 'sldkhdsldhf', 194, 96, 431, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (25, 'Islam', 'Mušić', 'Goriška c. 63', '041653723', NULL, NULL, NULL, 431, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (22, 'Matic', 'Žove', NULL, '041653723', NULL, 190, 115, 183, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (23, 'Peter', 'Čuš', NULL, '041653723', NULL, 198, 220, 183, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (24, 'Tamara', 'Šeliga', NULL, '041653723', NULL, 200, 200, 200, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (30, 'Tamara', 'Pustoslemšek', NULL, '041653723', NULL, NULL, NULL, 321, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (31, 'Boris', 'Becker', NULL, '041653723', NULL, NULL, NULL, 800, NULL);
INSERT INTO lastniki (id, ime, priimek, naslov, telefon, eposta, visina, teza, kraj_id, datumroj) VALUES (32, 'Boris', 'Becker', NULL, '041653723', NULL, NULL, NULL, 800, NULL);


--
-- TOC entry 1821 (class 0 OID 16414)
-- Dependencies: 1514
-- Data for Name: modeli; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (1, 'A3', 'Audijev model!', 1);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (2, 'A4', 'Audijev model!', 1);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (3, 'A2', 'Audijev model!', 1);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (4, 'Ibiza', 'Seat model za družino.', 6);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (5, 'Clio', 'Vse kar imajo veliki.', 7);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (6, 'Megan', '', 7);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (7, 'Laguna', '', 7);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (8, '5', '', 7);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (9, 'Cordoba', '', 6);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (10, 'Punto', '', 9);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (11, 'Talia', '', 7);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (12, 'Brava', '', 9);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (13, 'Bravo', '', 9);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (14, 'Favorit', '', 11);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (15, 'C3', '', 8);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (16, 'Z-3', '', 4);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (17, 'Z-8', '', 4);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (18, 'M-3', '', 4);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (19, 'Vito', '', 2);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (20, 'Roadster SL', '', 2);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (21, 'V-40', '', 10);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (22, 'C-70', '', 10);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (23, '960', '', 10);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (24, 'Berlingo', '', 8);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (25, 'Xsara', '', 8);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (26, 'Felicia', '', 11);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (27, 'Octavia', '', 11);
INSERT INTO modeli (id, ime, opis, znamka_id) VALUES (28, 'GT2', NULL, 12);


--
-- TOC entry 1822 (class 0 OID 16424)
-- Dependencies: 1516
-- Data for Name: znamke; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO znamke (id, ime, opis, www, drzava_id) VALUES (1, 'Audi', 'info@audi.com', 'www.audi.com', 5);
INSERT INTO znamke (id, ime, opis, www, drzava_id) VALUES (2, 'Mercedes', 'info@mercedes.com', 'www.mercedes.com', 5);
INSERT INTO znamke (id, ime, opis, www, drzava_id) VALUES (3, 'TAM', '', '', 1);
INSERT INTO znamke (id, ime, opis, www, drzava_id) VALUES (4, 'BMW', 'info@bmw.com', '', 5);
INSERT INTO znamke (id, ime, opis, www, drzava_id) VALUES (5, 'TAS', 'info@tas.ba', 'www.tas.ba', 3);
INSERT INTO znamke (id, ime, opis, www, drzava_id) VALUES (6, 'Seat', '', '', 7);
INSERT INTO znamke (id, ime, opis, www, drzava_id) VALUES (7, 'Renault', '', '', 6);
INSERT INTO znamke (id, ime, opis, www, drzava_id) VALUES (8, 'Citroen', '', '', 7);
INSERT INTO znamke (id, ime, opis, www, drzava_id) VALUES (12, 'Porsche', NULL, NULL, 5);
INSERT INTO znamke (id, ime, opis, www, drzava_id) VALUES (10, 'Volvo', '', 'www.volvo.com', 9);
INSERT INTO znamke (id, ime, opis, www, drzava_id) VALUES (11, 'Škoda', '', '', 10);
INSERT INTO znamke (id, ime, opis, www, drzava_id) VALUES (9, 'Fiat', 'www.fiat.it', '', 8);
--
-- TOC entry 1796 (class 2606 OID 16431)
-- Dependencies: 1509 1509
-- Name: pk_avtomobili; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY avtomobili
    ADD CONSTRAINT pk_avtomobili PRIMARY KEY (id);


--
-- TOC entry 1798 (class 2606 OID 16433)
-- Dependencies: 1510 1510
-- Name: pk_barva; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY barve
    ADD CONSTRAINT pk_barve PRIMARY KEY (id);


--
-- TOC entry 1800 (class 2606 OID 16435)
-- Dependencies: 1511 1511
-- Name: pk_drzave; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY drzave
    ADD CONSTRAINT pk_drzave PRIMARY KEY (id);


--
-- TOC entry 1802 (class 2606 OID 16437)
-- Dependencies: 1512 1512
-- Name: pk_kraji; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY kraji
    ADD CONSTRAINT pk_kraji PRIMARY KEY (id);


--
-- TOC entry 1804 (class 2606 OID 16439)
-- Dependencies: 1513 1513
-- Name: pk_lastniki; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lastniki
    ADD CONSTRAINT pk_lastniki PRIMARY KEY (id);


--
-- TOC entry 1806 (class 2606 OID 16441)
-- Dependencies: 1514 1514
-- Name: pk_modeli; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY modeli
    ADD CONSTRAINT pk_modeli PRIMARY KEY (id);


--
-- TOC entry 1808 (class 2606 OID 16443)
-- Dependencies: 1516 1516
-- Name: pk_znamka; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY znamke
    ADD CONSTRAINT pk_znamke PRIMARY KEY (id);


--
-- TOC entry 1815 (class 2606 OID 16444)
-- Dependencies: 1516 1799 1511
-- Name: ima_sedez; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY znamke
    ADD CONSTRAINT ima_sedez FOREIGN KEY (drzava_id) REFERENCES drzave(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1813 (class 2606 OID 16449)
-- Dependencies: 1513 1801 1512
-- Name: ima_stalno_prebivalisce_v; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lastniki
    ADD CONSTRAINT ima_stalno_prebivalisce_v FOREIGN KEY (kraj_id) REFERENCES kraji(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1809 (class 2606 OID 16454)
-- Dependencies: 1803 1513 1509
-- Name: ima_v_lasti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY avtomobili
    ADD CONSTRAINT ima_v_lasti FOREIGN KEY (lastnik_id) REFERENCES lastniki(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1814 (class 2606 OID 16459)
-- Dependencies: 1514 1807 1516
-- Name: izdeluje; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY modeli
    ADD CONSTRAINT izdeluje FOREIGN KEY (znamka_id) REFERENCES znamke(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1810 (class 2606 OID 16464)
-- Dependencies: 1510 1797 1509
-- Name: je_dolocene; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY avtomobili
    ADD CONSTRAINT je_dolocene FOREIGN KEY (barva_id) REFERENCES barve(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1811 (class 2606 OID 16469)
-- Dependencies: 1805 1514 1509
-- Name: je_dolocenega; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY avtomobili
    ADD CONSTRAINT je_dolocenega FOREIGN KEY (model_id) REFERENCES modeli(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1812 (class 2606 OID 16474)
-- Dependencies: 1512 1799 1511
-- Name: je_v; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kraji
    ADD CONSTRAINT je_v FOREIGN KEY (drzava_id) REFERENCES drzave(id) ON UPDATE RESTRICT ON DELETE RESTRICT;