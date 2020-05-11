CREATE TABLE IF NOT EXISTS Bezirke (
	Kenn_Nr varchar(50),
    Bezeichnung varchar(50),
    Wahl_Berechtigten varchar(50),
    Wahl_beteiligung_in_Prozent varchar(50),
    ungültige_stimmen varchar(50),
    gültige_stimmen varchar(50),
    PRIMARY KEY(Bezeichnung));

insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('1', 'Land_Niederösterreich', '1284727', '54.7', '28872', '673844');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Weinviertel', '238268', '55.58', '5478', '126952');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Waldviertel', '181369', '58.34', '5194', '100618');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Mostviertel', '194413', '56.4', '4990', '104657');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Niederösterreich_Mitte', '194645', '54.88', '4546', '102268');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Niederösterreich_Süd', '159148', '51.16', '3323', '78095');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Wien_Umgebung', '178270', '53.11', '2634', '92050');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Niederösterreich_Süd_Ost', '138614', '51.88', '2707', '69204');

CREATE TABLE IF NOT EXISTS Parteien (
    Partei varchar(50),
    Bezeichnung varchar(50),
	Stimmen varchar(50),
    Ant_Prozent varchar(50),
    Diff_in_Prozent_zur_Vorwahl varchar(50),
    primary key(Bezeichnung));

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'Land_Niederösterreich', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'Land_Niederösterreich', '154919', '22.99', '-0.23');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'Land_Niederösterreich', '128076', '19.01', '6.54');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'Land_Niederösterreich', '75257', '11.17', '4.21');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'Land_Niederösterreich', '2335', '0.35', '-2.54');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'Land_Niederösterreich', '50085', '7.43', '7.43');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'Land_Niederösterreich', '7813', '1.16', '1.16');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'Land_Niederösterreich', '11399', '1.69', '1.69');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'Land_Niederösterreich', '21882', '3.25', '3.25');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Weinviertel', '44858', '35.33', '-2.21');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Weinviertel', '28399', '22.37', '0.37');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Weinviertel', '24722', '19.47', '7.15');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Weinviertel', '12816', '10.1', '3.8');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Weinviertel', '343', '0.3', '-2.09');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Weinviertel', '8353', '6.58', '6.58');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Weinviertel', '1214', '0.96', '0.96');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Weinviertel', '2064', '1.63', '-1.63');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Weinviertel', '4140', '3.25', '3.25');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Waldviertel', '43284', '43.02', '-3.71');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Waldviertel', '19377', '19.26', '0');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Waldviertel', '16915', '16.81', '6.93');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Waldviertel', '8884', '8.83', '3.71');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Waldviertel', '343', '0.34', '-2.45');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Waldviertel', '6512', '6.47', '6.47');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Waldviertel', '1169', '1.16', '1.16');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Waldviertel', '1393', '1.38', '1.38');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Waldviertel', '2741', '2.72', '2.72');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Mostviertel', '40335', '38.54', '-2.34');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Mostviertel', '22078', '21.1', '-0.27');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Mostviertel', '18274', '17.46', '5.31');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Mostviertel', '10642', '10.17', '4.41');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Mostviertel', '407', '0.39', '-2.67');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Mostviertel', '6803', '6.5', '6.5');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Mostviertel', '1450', '1.39', '1.39');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Mostviertel', '1533', '1.46', '1.46');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Mostviertel', '3135', '3', '3');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Niederösterreich_Mitte', '31553', '30.85', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Niederösterreich_Mitte', '25172', '24.61', '-0.04');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Niederösterreich_Mitte', '19192', '18.77', '5.99');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Niederösterreich_Mitte', '11850', '11.59', '4.58');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Niederösterreich_Mitte', '358', '0.35', '-2.46');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Niederösterreich_Mitte', '7518', '7.35', '7.35');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Niederösterreich_Mitte', '1215', '1.19', '1.19');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Niederösterreich_Mitte', '1896', '1.85', '1.85');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Niederösterreich_Mitte', '3514', '3.44', '3.44');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Niederösterreich_Süd', '21862', '27.99', '-0.16');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Niederösterreich_Süd', '20947', '26.82', '-0.77');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Niederösterreich_Süd', '17157', '21.97', '7.18');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Niederösterreich_Süd', '7477', '9.57', '4.07');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Niederösterreich_Süd', '281', '0.36', '-2.87');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Niederösterreich_Süd', '5087', '6.51', '6.51');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Niederösterreich_Süd', '1087', '1.39', '1.39');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Niederösterreich_Süd', '1226', '1.57', '1.57');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Niederösterreich_Süd', '2971', '3.8', '3.8');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Wien_Umgebung', '23242', '25.25', '-2.69');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Wien_Umgebung', '20835', '22.63', '-0.88');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Wien_Umgebung', '16287', '17.69', '5.75');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Wien_Umgebung', '15477', '16.81', '4.54');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Wien_Umgebung', '291', '0.32', '-2.76');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Wien_Umgebung', '10206', '11.09', '11.09');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Wien_Umgebung', '959', '1.04', '1.04');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Wien_Umgebung', '1982', '2.15', '2.15');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Wien_Umgebung', '2771', '3.01', '3.01');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Niederösterreich_Süd_Ost', '16944', '24.48', '-0.79');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Niederösterreich_Süd_Ost', '18111', '26.17', '-0.52');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Niederösterreich_Süd_Ost', '15529', '22.44', '7.82');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Niederösterreich_Süd_Ost', '8111', '11.72', '4.15');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Niederösterreich_Süd_Ost', '269', '0.39', '-2.8');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Niederösterreich_Süd_Ost', '5606', '8.1', '8.1');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Niederösterreich_Süd_Ost', '719', '1.04', '1.04');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Niederösterreich_Süd_Ost', '1305', '1.89', '1.89');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Niederösterreich_Süd_Ost', '2610', '3.77', '3.77');



















