-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema videogamedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `videogamedb` ;

-- -----------------------------------------------------
-- Schema videogamedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `videogamedb` DEFAULT CHARACTER SET utf8 ;
USE `videogamedb` ;

-- -----------------------------------------------------
-- Table `video_game`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `video_game` ;

CREATE TABLE IF NOT EXISTS `video_game` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(50) NOT NULL,
  `developer` VARCHAR(45) NULL,
  `publisher` VARCHAR(45) NULL,
  `description` VARCHAR(2000) NULL,
  `esrb_rating` VARCHAR(10) NULL,
  `metacritic_score` INT NULL,
  `release_date` DATE NULL,
  `boxart_url` VARCHAR(200) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS vidya@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'vidya'@'localhost' IDENTIFIED BY 'vidya';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'vidya'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `video_game`
-- -----------------------------------------------------
START TRANSACTION;
USE `videogamedb`;
INSERT INTO `video_game` (`id`, `title`, `developer`, `publisher`, `description`, `esrb_rating`, `metacritic_score`, `release_date`, `boxart_url`) VALUES (1, 'Dragon Age: Origins', 'BioWare', 'Electronic Arts', 'Dragon Age: Origins represents BioWare\'s return to its roots, delivering a fusion of the best elements of existing fantasy works with stunning visuals, emotionally-driven narrative, heart-pounding combat, powerful magic abilities and credible digital actors. The spirit of classic RPGs comes of age, as Dragon Age: Origins features a dark and mature story and gameplay.', 'M', 91, '2009-11-03', 'https://upload.wikimedia.org/wikipedia/en/8/89/Dragon_Age_Origins_cover.png');
INSERT INTO `video_game` (`id`, `title`, `developer`, `publisher`, `description`, `esrb_rating`, `metacritic_score`, `release_date`, `boxart_url`) VALUES (2, 'Borderlands 3', 'Gearbox Software', '2K Games', 'At the hard edge of the galaxy lies a group of planets ruthlessly exploited by militarized corporations. Brimming with loot and violence, this is your home – the Borderlands. Answering the call of the Siren champion Lilith, four Vault Hunters charge head-first into a spray of bullets, blood, and bandits to recover a map to ancient Vaults and prevent a universe-destroying power from falling into the wrong hands.', 'M', 81, '2019-09-13', 'https://upload.wikimedia.org/wikipedia/en/2/21/Borderlands_3_cover_art.jpg');
INSERT INTO `video_game` (`id`, `title`, `developer`, `publisher`, `description`, `esrb_rating`, `metacritic_score`, `release_date`, `boxart_url`) VALUES (3, 'Divinity: Original Sin II', 'Larian Studios', 'Bandai Namco Entertainment', 'Master deep, tactical combat. Join up to 3 other players - but know that only one of you will have the chance to become a God.', 'M', 93, '2017-09-14', 'https://upload.wikimedia.org/wikipedia/en/4/48/Divinity_Original_Sin_2_cover_art.jpg');
INSERT INTO `video_game` (`id`, `title`, `developer`, `publisher`, `description`, `esrb_rating`, `metacritic_score`, `release_date`, `boxart_url`) VALUES (4, 'Hollow Knight', 'Team Cherry', 'Team Cherry', 'Hollow Knight is a 2D action-adventure game with an emphasis on traditional 2D animation and skillful gameplay. Journey to Hallownest, a vast and ancient underground kingdom inhabited by a bizarre collection of insects and monsters.', 'E10+', 87, '2017-02-24', 'https://upload.wikimedia.org/wikipedia/en/c/c0/Hollow_Knight_cover.jpg');
INSERT INTO `video_game` (`id`, `title`, `developer`, `publisher`, `description`, `esrb_rating`, `metacritic_score`, `release_date`, `boxart_url`) VALUES (5, 'Dark Souls III', 'FromSoftware', 'Bandai Namco Entertainment', 'Developed by Japanese developer FromSoftware, DARK SOULS III is the latest chapter in the DARK SOULS series with its trademark sword and sorcery combat and rewarding action RPG gameplay.', 'M', 89, '2016-03-24', 'https://upload.wikimedia.org/wikipedia/en/b/bb/Dark_souls_3_cover_art.jpg');
INSERT INTO `video_game` (`id`, `title`, `developer`, `publisher`, `description`, `esrb_rating`, `metacritic_score`, `release_date`, `boxart_url`) VALUES (6, 'Final Fantasy IX', 'Square', 'Square', 'The last Final Fantasy for the PlayStation, Final Fantasy IX returns to the pure fantasy roots that spawned the series. This latest installment features highly detailed characters, vehicles, and environments, and breathtaking cinema-graphics.', 'T', 84, '2000-07-07', 'https://upload.wikimedia.org/wikipedia/en/5/51/Ffixbox.jpg');
INSERT INTO `video_game` (`id`, `title`, `developer`, `publisher`, `description`, `esrb_rating`, `metacritic_score`, `release_date`, `boxart_url`) VALUES (7, 'Okami', 'Clover Studio', 'Capcom', 'In Okami, the player takes the role of the mythical sun goddess Amaterasu, in the form of a wolf. Her task is to restore color (or \'life\') to the world by destroying the monsters who have stolen it. Since Amaterasu is a diety, there are naturally people who worship her and people who don\'t. The more people who worship her (as a result of her restoring color and doing other good deeds for them), the more powerful she becomes.', 'T', 92, '2006-04-20', 'https://upload.wikimedia.org/wikipedia/en/b/be/OkamiNTSCcoverFinal.jpg');
INSERT INTO `video_game` (`id`, `title`, `developer`, `publisher`, `description`, `esrb_rating`, `metacritic_score`, `release_date`, `boxart_url`) VALUES (8, 'Deus Ex: Human Revolution', 'Eidos Montréal', 'Square Enix', 'In Deus Ex: Human Revolution you play Adam Jensen, a security specialist, handpicked to oversee the defense of one of America\'s most experimental biotechnology firms. But when a black ops team breaks in and kills the scientists you were hired to protect, everything you thought you knew about your job changes.', 'M', 90, '2011-08-23', 'https://upload.wikimedia.org/wikipedia/en/0/06/Deus_Ex_Human_Revolution_cover.jpg');
INSERT INTO `video_game` (`id`, `title`, `developer`, `publisher`, `description`, `esrb_rating`, `metacritic_score`, `release_date`, `boxart_url`) VALUES (9, 'Aliens: Colonial Marines', 'Gearbox Software', 'Sega', 'In Aliens: Colonial Marines, players are part of a United States Colonial Marine squad and must prepare to face an Aliens assault more intense and horrific than ever before. Driven by an original story penned by renowned writers Bradley Thompson and David Weddle, Aliens: Colonial Marines retains the atmospheric look and feel of the original films while leveraging next-generation technology to create an entirely new interactive Aliens experience.', 'M', 45, '2013-02-12', 'https://upload.wikimedia.org/wikipedia/en/c/c5/AliensColonialMarinesBox.png');
INSERT INTO `video_game` (`id`, `title`, `developer`, `publisher`, `description`, `esrb_rating`, `metacritic_score`, `release_date`, `boxart_url`) VALUES (10, 'Viewtiful Joe', 'Capcom Production Studio 4', 'Capcom', 'Joe is no ordinary man and Viewtiful Joe is no ordinary game. Capcom\'s new superhero action game mixes funky cartoon-style visuals with classic side-scrolling gameplay and introduces the world\'s quirkiest million dollar action hero. More than just any ordinary dude, Joe must transform into the ultimate superhero. It\'s up to you to activate the correct view mode like \"slow\" or \"zoom in\" in order to clobber your enemies with beautiful style. You can also speed up or slow down your visual effects for even more \"viewtiful\" moves. Viewtiful Joe mixes an innovative viewpoint with an amazing stunt-filled action movie universe.', 'T', 93, '2003-06-26', 'https://upload.wikimedia.org/wikipedia/en/9/9a/VJbox.jpg');
INSERT INTO `video_game` (`id`, `title`, `developer`, `publisher`, `description`, `esrb_rating`, `metacritic_score`, `release_date`, `boxart_url`) VALUES (11, 'WWE 2K20', 'Visual Concepts', '2K Sports', 'For the first time ever in WWE 2K, play as both a male and female MyPLAYER in MyCAREER as you journey through the twists, turns and storylines on the path to WWE excellence - featuring cutscenes and voiceovers from your favorite Superstars.', 'T', 42, '2019-09-22', 'https://upload.wikimedia.org/wikipedia/en/c/c9/WWE_2K20_-_Game_cover.jpg');

COMMIT;

