DROP DATABASE IF EXISTS board3game;

CREATE DATABASE IF NOT EXISTS board3game;
USE board3game;

DROP TABLE IF EXISTS BoardGameGeekAllRank;
CREATE TABLE BoardGameGeekTopAllRank
(
    GeekRank       INT       NOT NULL UNIQUE AUTO_INCREMENT,
    GameName       varchar(255) CHARACTER SET utf8 DEFAULT NULL UNIQUE,
    AvgRaiting     DEC(4, 2) NOT NULL,
    CollectionList varchar(255) CHARACTER SET utf8 DEFAULT NULL
);
INSERT INTO BoardGameGeekTopAllRank (GeekRank, GameName, AvgRaiting, CollectionList)
VALUES ('1', 'Brass Birmingham', 8.59, '보유'),
       ('2', 'Pandemic Legacy:Season 1', 8.52, '구입 예정'),
       ('3', 'Gloomhaven', 8.58, '보유'),
       ('4', 'Ark Nova', 8.53, '구입 예정'),
       ('5', 'Twilight Imperium: Fourth Edition', 8.59, '미보유'),
       ('6', 'Dune: Imperium', 8.43, '구입 예정'),
       ('7', 'Terraforming Mars', 8.35, '미보유'),
       ('8', 'War of the Ring: Second Edition', 8.54, '미보유'),
       ('9', 'Star Wars: Rebellion', 8.42, '미보유'),
       ('10', 'Gloomhaven: Jaws of the Lion', 8.42, '보유'),
       ('11', 'Spirit Island', 8.34, '보유'),
       ('12', 'Gaia Project', 8.37, '보유'),
       ('13', 'Twilight Struggle', 8.24, '구입 예정'),
       ('14', 'Through the Ages: A New Story of Civilization', 8.28, '미보유'),
       ('15', 'Great Western Trail', 8.19, '미보유'),
       ('16', 'The Castles of Burgundy', 8.14, '보유'),
       ('17', 'Scythe', 8.14, '구입 예정'),
       ('18', 'Eclipse: Second Dawn for the Galaxy', 8.45, '미보유'),
       ('19', '7 Wonders Duel', 8.09, '보유'),
       ('20', 'Brass Lancashire', 8.20, '보유'),
       ('21', 'Nemesis', 8.27, '미보유'),
       ('22', 'Clank! Legacy: Acquisitions Incorporated', 8.53, '구입 예정'),
       ('23', 'A Feast for Odin', 8.17, '미보유'),
       ('24', 'Concordia', 8.09, '미보유'),
       ('25', 'Frosthaven', 8.82, '구입 예정'),
       ('26', 'Great Western Trail: Second Edition', 8.33, '미보유'),
       ('27', 'Arkham Horror: The Card Game', 8.13, '미보유'),
       ('28', 'Lost Ruins of Arnak', 8.07, '보유'),
       ('29', 'Wingspan', 8.04, '미보유'),
       ('30', 'Terra Mystica', 8.06, '미보유'),
       ('31', 'Root', 8.07, '구입 예정'),
       ('32', 'Too Many Bones', 8.34, '미보유'),
       ('33', 'Orleans', 8.06, '구입 예정'),
       ('34', 'Mage Knight Board Game', 8.09, '구입 예정'),
       ('35', 'Barrage', 8.16, '구입 예정'),
       ('36', 'Everdell', 8.02, '미보유'),
       ('37', 'The Crew: Mission Deep Sea', 8.14, '구입 예정'),
       ('38', 'Dune: Imperium-Uprising', 8.74, '구입 예정'),
       ('39', 'Viticulture Essential Edition', 7.98, '미보유'),
       ('40', 'Heat: Pedal to the Metal', 8.05, '미보유'),
       ('41', 'Marvel Champions: The Card Game', 8.12, '미보유'),
       ('42', 'Food Chain Magnate', 8.06, '미보유'),
       ('43', 'Pax Pamir: Second Edition', 8.18, '미보유'),
       ('44', 'Underwater Cities', 8.06, '미보유'),
       ('45', 'Kanban EV', 8.42, '미보유'),
       ('46', 'Puerto Rico', 7.91, '보유'),
       ('47', 'Crokinole', 8.04, '보유'),
       ('48', 'Cascadia', 7.94, '구입 예정'),
       ('49', 'Carverna: The Cave Farmers', '7.94', '미보유'),
       ('50', 'Anachrony', 8.07, '보유')

