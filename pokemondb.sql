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
	PRIMARY KEY (`IDpoke`,`IDability`),
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



INSERT INTO `egggroup` VALUES (1, 'Monster');
INSERT INTO `egggroup` VALUES (2, 'Water 1');
INSERT INTO `egggroup` VALUES (3, 'Bug');
INSERT INTO `egggroup` VALUES (4, 'Flying');
INSERT INTO `egggroup` VALUES (5, 'Field');
INSERT INTO `egggroup` VALUES (6, 'Fairy');
INSERT INTO `egggroup` VALUES (7, 'Grass');
INSERT INTO `egggroup` VALUES (8, 'Human-Like');
INSERT INTO `egggroup` VALUES (9, 'Water 3');
INSERT INTO `egggroup` VALUES (10, 'Mineral');
INSERT INTO `egggroup` VALUES (11, 'Amorphous');
INSERT INTO `egggroup` VALUES (12, 'Water 2');
INSERT INTO `egggroup` VALUES (13, 'Ditto');
INSERT INTO `egggroup` VALUES (14, 'Dragon');
INSERT INTO `egggroup` VALUES (15, 'Undiscovered');
INSERT INTO `egggroup` VALUES (16, 'Genderless');


INSERT INTO `abilities` VALUES (65, 'Overgrow', 'Amplifies Grass-type attacks when HP is low');
INSERT INTO `abilities` VALUES (66, 'Blaze', 'Amplifies Fire-type attacks when HP is low');
INSERT INTO `abilities` VALUES (67, 'Torrent', 'Amplifies Water-type attacks when HP is low');
INSERT INTO `abilities` VALUES (14, 'Compound Eyes', 'Boosts Accuracy');
INSERT INTO `abilities` VALUES (68, 'Swarm', 'Amplifies Bug-type attacks when HP is low');
INSERT INTO `abilities` VALUES (51, 'Keen Eye', 'Accuracy cannot be reduced by an opponent');
INSERT INTO `abilities` VALUES (77, 'Tangled Feet', 'Raises Speed when confused');
INSERT INTO `abilities` VALUES (9, 'Static', 'May paralyze an opponent that makes contact');
INSERT INTO `abilities` VALUES (8, 'Sand Veil', 'Increases Evasion in a sandstorm');
INSERT INTO `abilities` VALUES (56, 'Cute Charm', 'May cause infatuation on contact');
INSERT INTO `abilities` VALUES (98, 'Magic Guard', 'Grants total protection from indirect damage');
INSERT INTO `abilities` VALUES (11, 'Water Absorb', 'Water-type attacks heal the Pokémon');
INSERT INTO `abilities` VALUES (6, 'Damp', 'Prevents use of self-destruction attacks by any Pokémon on the field');
INSERT INTO `abilities` VALUES (26, 'Levitate', 'Grants immunity to Ground-type moves');
INSERT INTO `abilities` VALUES (12, 'Oblivious', 'Prevents infatuation');
INSERT INTO `abilities` VALUES (108, 'Forewarn', 'Shows the opponents most powerful move');
INSERT INTO `abilities` VALUES (33, 'Swift Swim', 'Doubles speed under rain conditions');
INSERT INTO `abilities` VALUES (75, 'Shell Armor', 'Grants protection from critical hits');
INSERT INTO `abilities` VALUES (29, 'Clear Body', 'Stats cannot be lowered by an opponent');
INSERT INTO `abilities` VALUES (34, 'Chlorophyll', 'Doubles speed under intense sunlight');
INSERT INTO `abilities` VALUES (94, 'Solar Power', 'Under intense sunlight, Sp. Attack increased, 1/8 HP lost every turn');
INSERT INTO `abilities` VALUES (44, 'Rain Dish', 'Gradually recovers HP in rain');
INSERT INTO `abilities` VALUES (110, 'Tinted Lens', 'Raises power of uneffective moves');
INSERT INTO `abilities` VALUES (92, 'Sniper', 'Increases power of critical hits');
INSERT INTO `abilities` VALUES (145, 'Big Pecks', 'Defense cannot be lowered by an opponent');
INSERT INTO `abilities` VALUES (31, 'Lightning Rod', 'Redirects Electric-type attacks towards this Pokémon, nullifies them and increases Sp. Attack');
INSERT INTO `abilities` VALUES (146, 'Sand Rush', 'Doubles speed in a sandstorm');
INSERT INTO `abilities` VALUES (132, 'Friend Guard', 'Decreases damage inflicted against ally Pokémon');
INSERT INTO `abilities` VALUES (87, 'Dry Skin', 'Recovers HP in rain, loses HP under intense sunlight');
INSERT INTO `abilities` VALUES (133, 'Weak Armor', 'Raises Speed and lowers Defense upon being hit');
INSERT INTO `abilities` VALUES (135, 'Light Metal', 'Halves weight');



INSERT INTO `poke-egg` VALUES (3,1);
INSERT INTO `poke-egg` VALUES (3,7);
INSERT INTO `poke-egg` VALUES (6,1);
INSERT INTO `poke-egg` VALUES (6,14);
INSERT INTO `poke-egg` VALUES (9,1);
INSERT INTO `poke-egg` VALUES (9,2);
INSERT INTO `poke-egg` VALUES (12,3);
INSERT INTO `poke-egg` VALUES (15,3);
INSERT INTO `poke-egg` VALUES (18,4);
INSERT INTO `poke-egg` VALUES (26,5);
INSERT INTO `poke-egg` VALUES (26,6);
INSERT INTO `poke-egg` VALUES (28,5);
INSERT INTO `poke-egg` VALUES (36,6);
INSERT INTO `poke-egg` VALUES (62,2);
INSERT INTO `poke-egg` VALUES (94,11);
INSERT INTO `poke-egg` VALUES (124,8);
INSERT INTO `poke-egg` VALUES (139,2);
INSERT INTO `poke-egg` VALUES (139,9);
INSERT INTO `poke-egg` VALUES (376,16);
INSERT INTO `poke-egg` VALUES (635,14);


UPDATE `abilities` SET IDability=97 WHERE IDability=92;
INSERT INTO `poke-ability` VALUES (3,65,'1');
INSERT INTO `poke-ability` VALUES (3,34,'3');
INSERT INTO `poke-ability` VALUES (6,66,'1');
INSERT INTO `poke-ability` VALUES (6,94,'3');
INSERT INTO `poke-ability` VALUES (9,67,'1');
INSERT INTO `poke-ability` VALUES (9,44,'3');
INSERT INTO `poke-ability` VALUES (12,14,'1');
INSERT INTO `poke-ability` VALUES (12,110,'3');
INSERT INTO `poke-ability` VALUES (15,68,'1');
INSERT INTO `poke-ability` VALUES (15,97,'3');
INSERT INTO `poke-ability` VALUES (18,51,'1');
INSERT INTO `poke-ability` VALUES (18,77,'2');
INSERT INTO `poke-ability` VALUES (18,145,'3');
INSERT INTO `poke-ability` VALUES (26,9,'1');
INSERT INTO `poke-ability` VALUES (26,31,'3');
INSERT INTO `poke-ability` VALUES (28,8,'1');
INSERT INTO `poke-ability` VALUES (28,146,'3');
INSERT INTO `poke-ability` VALUES (36,56,'1');
INSERT INTO `poke-ability` VALUES (36,98,'2');
INSERT INTO `poke-ability` VALUES (36,132,'3');
INSERT INTO `poke-ability` VALUES (62,11,'1');
INSERT INTO `poke-ability` VALUES (62,6,'2');
INSERT INTO `poke-ability` VALUES (62,33,'3');
INSERT INTO `poke-ability` VALUES (94,26,'1');
INSERT INTO `poke-ability` VALUES (124,12,'1');
INSERT INTO `poke-ability` VALUES (124,108,'2');
INSERT INTO `poke-ability` VALUES (124,87,'3');
INSERT INTO `poke-ability` VALUES (139,33,'1');
INSERT INTO `poke-ability` VALUES (139,75,'2');
INSERT INTO `poke-ability` VALUES (139,133,'3');
INSERT INTO `poke-ability` VALUES (376,29,'1');
INSERT INTO `poke-ability` VALUES (376,135,'3');
INSERT INTO `poke-ability` VALUES (635,26,'1');


CREATE TABLE `categories` (
  `IDcat` TINYINT UNSIGNED NOT NULL,
  `category` char(8) NOT NULL,
   PRIMARY KEY  (`IDcat`)
) ENGINE=InnoDB;

CREATE TABLE `moves` (
  `IDmove` SMALLINT UNSIGNED NOT NULL,
  `movename` char(16) NOT NULL ,
  `IDtype` TINYINT UNSIGNED NOT NULL,
  `IDcat` TINYINT UNSIGNED NOT NULL,
  `power` TINYINT UNSIGNED NOT NULL,
  `accuracy` TINYINT UNSIGNED NOT NULL,
  `PP` TINYINT UNSIGNED NOT NULL,
  `effect` varchar(255) NOT NULL,
  PRIMARY KEY  (`IDmove`),
  CONSTRAINT `fk_moves_type` FOREIGN KEY (`IDtype`) REFERENCES `type` (`IDtype`),
  CONSTRAINT `fk_moves_cat` FOREIGN KEY (`IDcat`) REFERENCES `categories` (`IDcat`)
) ENGINE=InnoDB;

CREATE TABLE `learnsets` (
	`IDpoke` SMALLINT UNSIGNED NOT NULL,
	`IDmove` SMALLINT UNSIGNED NOT NULL,
    `level` TINYINT UNSIGNED NOT NULL,
	PRIMARY KEY (`IDpoke`,`IDmove`),
	CONSTRAINT `fk_learnset_poke` FOREIGN KEY (`IDpoke`) REFERENCES `pokemon` (`IDpoke`),
	CONSTRAINT `fk_learnset_move` FOREIGN KEY (`IDmove`) REFERENCES `moves` (`IDmove`)
) ENGINE=InnoDB;


INSERT INTO `categories` VALUES (1, 'Physical');
INSERT INTO `categories` VALUES (2, 'Special');
INSERT INTO `categories` VALUES (3, 'Status');


INSERT INTO `moves` VALUES (56, 'Hydro Pump', 11, 2, 110, 80, 5, 'None');
INSERT INTO `moves` VALUES (350, 'Rock Blast', 6, 1, 25, 90, 10, 'Hits 2-5 times');
INSERT INTO `moves` VALUES (131, 'Spike Cannon', 1, 1, 20, 100, 15, 'Hits 2-5 times');
INSERT INTO `moves` VALUES (246, 'Ancient Power', 6, 2, 60, 200, 5, 'May raise all stats');
INSERT INTO `moves` VALUES (362, 'Brine', 11, 2, 65, 100, 15, 'Double damage against opponent whose HP is below 1/2');
INSERT INTO `moves` VALUES (341, 'Mud Shot', 5, 2, 55, 95, 15, 'Lowers targets speed');
INSERT INTO `moves` VALUES (205, 'Rollout', 6, 1, 30, 90, 20, 'Attacks for five turns, doubling damage unless interrupted');
INSERT INTO `moves` VALUES (55, 'Water Gun', 11, 2, 40, 100, 25, 'None');
INSERT INTO `moves` VALUES (44, 'Bite', 17, 1, 60, 100, 25, 'May cause the target to flinch');

INSERT INTO `learnsets` VALUES (139, 56, 75);
INSERT INTO `learnsets` VALUES (139, 350, 56);
INSERT INTO `learnsets` VALUES (139, 131, 40);
INSERT INTO `learnsets` VALUES (139, 246, 37);
INSERT INTO `learnsets` VALUES (139, 362, 28);
INSERT INTO `learnsets` VALUES (139, 341, 25);
INSERT INTO `learnsets` VALUES (139, 205, 16);
INSERT INTO `learnsets` VALUES (139, 55, 10);
INSERT INTO `learnsets` VALUES (139, 44, 7);
INSERT INTO `learnsets` VALUES (9, 56, 60);
INSERT INTO `learnsets` VALUES (9, 44, 16);
INSERT INTO `learnsets` VALUES (9, 55, 7);

ALTER TABLE `pokemon` ADD UNIQUE (`pokename`);
ALTER TABLE `egggroup` ADD UNIQUE (`eggname`);
ALTER TABLE `type` ADD UNIQUE (`typename`);
ALTER TABLE `abilities` ADD UNIQUE (`abilityname`);
ALTER TABLE `categories` ADD UNIQUE (`category`);
ALTER TABLE `moves` ADD UNIQUE (`movename`);

DELIMITER //
CREATE function stat_average(pokeno SMALLINT UNSIGNED) returns decimal(6,2)
READS SQL DATA
begin
DECLARE statavg decimal(6,2);
SELECT (HP+attack+defense+spattack+spdefense+speed)/6.0 into statavg
from `pokemon`
WHERE IDpoke=pokeno;
RETURN statavg;
END //
DELIMITER ;

DELIMITER //
CREATE function base_stat_total(pokeno SMALLINT UNSIGNED) returns SMALLINT
READS SQL DATA
begin
DECLARE bst SMALLINT;
SELECT HP+attack+defense+spattack+spdefense+speed into bst
from `pokemon`
WHERE IDpoke=pokeno;
RETURN bst;
END //
DELIMITER ;

