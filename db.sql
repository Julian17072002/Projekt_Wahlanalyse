CREATE TABLE IF NOT EXISTS Bezirke (
	Kenn_Nr varchar(50),
    Bezeichnung varchar(50),
    Wahl_Berechtigten varchar(50),
    Wahl_beteiligung_in_Prozent varchar(50),
    ungültige_stimmen varchar(50),
    gültige_stimmen varchar(50),
    PRIMARY KEY(Bezeichnung));

CREATE TABLE IF NOT EXISTS Parteien (
    Partei varchar(50),
    Bezeichnung varchar(50),
	Stimmen varchar(50),
    Ant_Prozent varchar(50),
    Diff_in_Prozent_zur_Vorwahl varchar(50),
    primary key(Bezeichnung));

insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('1', 'Land_Niederösterreich', '1284727', '54.7', '28872', '673844');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Weinviertel', '238268', '55.58', '5478', '126952');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Waldviertel', '181369', '58.34', '5194', '100618');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Mostviertel', '194413', '56.4', '4990', '104657');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Niederösterreich_Mitte', '194645', '54.88', '4546', '102268');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Niederösterreich_Süd', '159148', '51.16', '3323', '78095');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Wien_Umgebung', '178270', '53.11', '2634', '92050');
insert into Bezirke (Kenn_Nr,Bezeichnung,Wahl_Berechtigten,Wahl_beteiligung_in_Prozent,ungültige_stimmen,gültige_stimmen) values ('2', 'WK_Niederösterreich_Süd_Ost', '138614', '51.88', '2707', '69204');


insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'Land_Niederösterreich', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'Land_Niederösterreich', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'Land_Niederösterreich', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'Land_Niederösterreich', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'Land_Niederösterreich', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'Land_Niederösterreich', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'Land_Niederösterreich', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'Land_Niederösterreich', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'Land_Niederösterreich', '222078', '32.96', '-2.22');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Weinviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Weinviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Weinviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Weinviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Weinviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Weinviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Weinviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Weinviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Weinviertel', '222078', '32.96', '-2.22');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Waldviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Waldviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Waldviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Waldviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Waldviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Waldviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Waldviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Waldviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Waldviertel', '222078', '32.96', '-2.22');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Mostviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Mostviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Mostviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Mostviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Mostviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Mostviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Mostviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Mostviertel', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Mostviertel', '222078', '32.96', '-2.22');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Niederösterreich_Mitte', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Niederösterreich_Mitte', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Niederösterreich_Mitte', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Niederösterreich_Mitte', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Niederösterreich_Mitte', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Niederösterreich_Mitte', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Niederösterreich_Mitte', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Niederösterreich_Mitte', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Niederösterreich_Mitte', '222078', '32.96', '-2.22');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Niederösterreich_Süd', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Niederösterreich_Süd', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Niederösterreich_Süd', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Niederösterreich_Süd', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Niederösterreich_Süd', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Niederösterreich_Süd', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Niederösterreich_Süd', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Niederösterreich_Süd', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Niederösterreich_Süd', '222078', '32.96', '-2.22');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Wien_Umgebung', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Wien_Umgebung', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Wien_Umgebung', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Wien_Umgebung', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Wien_Umgebung', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Wien_Umgebung', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Wien_Umgebung', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Wien_Umgebung', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Wien_Umgebung', '222078', '32.96', '-2.22');

insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ÖVP', 'WK_Niederösterreich_Süd_Ost', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('SPÖ', 'WK_Niederösterreich_Süd_Ost', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('FPÖ', 'WK_Niederösterreich_Süd_Ost', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('GRÜNE', 'WK_Niederösterreich_Süd_Ost', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('BZÖ', 'WK_Niederösterreich_Süd_Ost', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('NEOS', 'WK_Niederösterreich_Süd_Ost', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('REKOS', 'WK_Niederösterreich_Süd_Ost', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('ANDERS', 'WK_Niederösterreich_Süd_Ost', '222078', '32.96', '-2.22');
insert into Parteien (Partei,Bezeichnung,Stimmen,Ant_Prozent,Diff_in_Prozent_zur_Vorwahl) values ('EUSTOP', 'WK_Niederösterreich_Süd_Ost', '222078', '32.96', '-2.22');




















