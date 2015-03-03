CREATE SCHEMA pokemon;
use pokemon;

CREATE TABLE `pokemon` (
  `IDpoke` SMALLINT UNSIGNED NOT NULL ,
  `pokename` char(12) NOT NULL ,
  `HP` TINYINT UNSIGNED NOT NULL,
  `attack` TINYINT UNSIGNED NOT NULL,
  `defense` TINYINT UNSIGNED NOT NULL,
  `spattack` TINYINT UNSIGNED NOT NULL,
  `spdefense` TINYINT UNSIGNED NOT NULL,
  `speed` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY  (`IDpoke`)
) ENGINE=InnoDB;


CREATE TABLE `egggroup` (
  `IDegg` TINYINT UNSIGNED NOT NULL ,
  `eggname` char(12) NOT NULL ,
  PRIMARY KEY  (`IDegg`)
) ENGINE=InnoDB;

CREATE TABLE `type` (
	`IDtype` TINYINT UNSIGNED NOT NULL,
	`typename` char(12) NOT NULL,
	PRIMARY KEY (`IDtype`)
) ENGINE=InnoDB;

CREATE TABLE `abilities` (
	`IDability` TINYINT UNSIGNED NOT NULL,
	`abilityname` char(14) NOT NULL,
	`abilitydescrip` varchar(255) NOT NULL,
	PRIMARY KEY (`IDability`)
) ENGINE=InnoDB;





CREATE TABLE `poke-type` (
	`IDpoke` SMALLINT UNSIGNED NOT NULL ,
	`IDtype` TINYINT UNSIGNED NOT NULL,
	PRIMARY KEY (`IDpoke`,`IDtype`),
	CONSTRAINT `fk_poketype_poke` FOREIGN KEY (`IDpoke`) REFERENCES `pokemon` (`IDpoke`),
	CONSTRAINT `fk_poketype_type` FOREIGN KEY (`IDtype`) REFERENCES `type` (`IDtype`)
) ENGINE=InnoDB;


CREATE TABLE `poke-egg` (
	`IDpoke` SMALLINT UNSIGNED NOT NULL ,
	`IDegg` TINYINT UNSIGNED NOT NULL,
	PRIMARY KEY (`IDpoke`,`IDegg`),
	CONSTRAINT `fk_pokeegg_poke` FOREIGN KEY (`IDpoke`) REFERENCES `pokemon` (`IDpoke`),
	CONSTRAINT `fk_pokeegg_egg` FOREIGN KEY (`IDegg`) REFERENCES `egggroup` (`IDegg`)
) ENGINE=InnoDB;


CREATE TABLE `poke-ability` (
	`IDpoke` SMALLINT UNSIGNED NOT NULL ,
	`IDability` TINYINT UNSIGNED NOT NULL,
    `slot` char(1) NOT NULL,
	PRIMARY KEY (`IDpoke`,`IDegg`),
	CONSTRAINT `fk_pokeabi_poke` FOREIGN KEY (`IDpoke`) REFERENCES `pokemon` (`IDpoke`),
	CONSTRAINT `fk_pokeabi_abi` FOREIGN KEY (`IDability`) REFERENCES `abilities` (`IDability`)
) ENGINE=InnoDB;




INSERT INTO `pokemon` VALUES (3, 'Venusaur', 80, 82, 83, 100, 100, 80);
INSERT INTO `pokemon` VALUES (6, 'Charizard', 78, 84, 78, 109, 85, 100);
INSERT INTO `pokemon` VALUES (9, 'Blastoise', 79, 83, 100, 85, 105, 78);


INSERT INTO `type` VALUES (1, 'Normal');
INSERT INTO `type` VALUES (2, 'Fighting');
INSERT INTO `type` VALUES (3, 'Flying');
INSERT INTO `type` VALUES (4, 'Poison');
INSERT INTO `type` VALUES (5, 'Ground');
INSERT INTO `type` VALUES (6, 'Rock');
INSERT INTO `type` VALUES (7, 'Bug');
INSERT INTO `type` VALUES (8, 'Ghost');
INSERT INTO `type` VALUES (9, 'Steel');
INSERT INTO `type` VALUES (10, 'Fire');
INSERT INTO `type` VALUES (11, 'Water');
INSERT INTO `type` VALUES (12, 'Grass');
INSERT INTO `type` VALUES (13, 'Electric');
INSERT INTO `type` VALUES (14, 'Psychic');
INSERT INTO `type` VALUES (15, 'Ice');
INSERT INTO `type` VALUES (16, 'Dragon');
INSERT INTO `type` VALUES (17, 'Dark');
INSERT INTO `type` VALUES (18, 'Fairy');


ALTER TABLE `pokemon` ADD COLUMN `dualtype` BOOL NOT NULL;
UPDATE `pokemon` SET dualtype=1 WHERE IDpoke=3;
UPDATE `pokemon` SET dualtype=1 WHERE IDpoke=6;
UPDATE `pokemon` SET dualtype=0 WHERE IDpoke=9;
INSERT INTO `poke-type` VALUES (3,12);
INSERT INTO `poke-type` VALUES (3,4);
INSERT INTO `poke-type` VALUES (6,10);
INSERT INTO `poke-type` VALUES (6,3);
INSERT INTO `poke-type` VALUES (9,11);


INSERT INTO `pokemon` VALUES (12, 'Butterfree', 60, 45, 50, 90, 80, 70, 1);
INSERT INTO `pokemon` VALUES (15, 'Beedrill', 65, 90, 40, 45, 80, 75, 1);
INSERT INTO `pokemon` VALUES (18, 'Pidgeot', 83, 80, 75, 70, 70, 101, 1);
INSERT INTO `pokemon` VALUES (26, 'Raichu', 60, 90, 55, 90, 80, 110, 0);
INSERT INTO `pokemon` VALUES (28, 'Sandslash', 75, 100, 110, 45, 55, 65, 0);
INSERT INTO `pokemon` VALUES (36, 'Clefable', 95, 70, 73, 95, 90, 60, 0);
INSERT INTO `pokemon` VALUES (62, 'Poliwrath', 90, 95, 95, 70, 90, 70, 1);
INSERT INTO `pokemon` VALUES (94, 'Gengar', 60, 65, 60, 130, 75, 110, 1);
INSERT INTO `pokemon` VALUES (124, 'Jynx', 65, 50, 35, 115, 95, 95, 1);
INSERT INTO `pokemon` VALUES (139, 'Omastar', 70, 60, 125, 115, 70, 55, 1);
INSERT INTO `pokemon` VALUES (376, 'Metagross', 80, 135, 130, 95, 90, 70, 1);
INSERT INTO `pokemon` VALUES (635, 'Hydreigon', 92, 105, 90, 125, 90, 98, 1);
INSERT INTO `poke-type` VALUES (12,7);
INSERT INTO `poke-type` VALUES (12,3);
INSERT INTO `poke-type` VALUES (15,7);
INSERT INTO `poke-type` VALUES (15,4);
INSERT INTO `poke-type` VALUES (18,1);
INSERT INTO `poke-type` VALUES (18,3);
INSERT INTO `poke-type` VALUES (26,13);
INSERT INTO `poke-type` VALUES (28,5);
INSERT INTO `poke-type` VALUES (36,18);
INSERT INTO `poke-type` VALUES (62,11);
INSERT INTO `poke-type` VALUES (62,2);
INSERT INTO `poke-type` VALUES (94,8);
INSERT INTO `poke-type` VALUES (94,4);
INSERT INTO `poke-type` VALUES (124,15);
INSERT INTO `poke-type` VALUES (124,14);
INSERT INTO `poke-type` VALUES (139,6);
INSERT INTO `poke-type` VALUES (139,11);
INSERT INTO `poke-type` VALUES (376,9);
INSERT INTO `poke-type` VALUES (376,14);
INSERT INTO `poke-type` VALUES (635,16);
INSERT INTO `poke-type` VALUES (635,17);