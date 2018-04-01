/*
Add build column to *_properties tables
*/

ALTER TABLE `player_xp_for_level`
ADD COLUMN `build` SMALLINT(6) NOT NULL DEFAULT 12340 AFTER `player_lvl`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`player_lvl`,`build`),
ADD UNIQUE KEY `unique_index` (`player_lvl`,`build`) USING BTREE;

DELETE FROM `player_xp_for_level`;
INSERT INTO `player_xp_for_level` VALUES
(1, 5875, 400),
(2, 5875, 900),
(3, 5875, 1400),
(4, 5875, 2100),
(5, 5875, 2800),
(6, 5875, 3600),
(7, 5875, 4500),
(8, 5875, 5400),
(9, 5875, 6500),
(10, 5875, 7600),
(11, 5875, 8800),
(11, 8606, 8700),
(12, 5875, 10100),
(12, 8606, 9800),
(13, 5875, 11400),
(13, 8606, 11000),
(14, 5875, 12900),
(14, 8606, 12300),
(15, 5875, 14400),
(15, 8606, 13600),
(16, 5875, 16000),
(16, 8606, 15000),
(17, 5875, 17700),
(17, 8606, 16400),
(18, 5875, 19400),
(18, 8606, 17800),
(19, 5875, 21300),
(19, 8606, 19300),
(20, 5875, 23200),
(20, 8606, 20800),
(21, 5875, 25200),
(21, 8606, 22400),
(22, 5875, 27300),
(22, 8606, 24000),
(23, 5875, 29400),
(23, 8606, 25500),
(24, 5875, 31700),
(24, 8606, 27200),
(25, 5875, 34000),
(25, 8606, 28900),
(26, 5875, 36400),
(26, 8606, 30500),
(27, 5875, 38900),
(27, 8606, 32200),
(28, 5875, 41400),
(28, 8606, 33900),
(29, 5875, 44300),
(29, 8606, 36300),
(30, 5875, 47400),
(30, 8606, 38800),
(31, 5875, 50800),
(31, 8606, 41600),
(32, 5875, 54500),
(32, 8606, 44600),
(33, 5875, 58600),
(33, 8606, 48000),
(34, 5875, 62800),
(34, 8606, 51400),
(35, 5875, 67100),
(35, 8606, 55000),
(36, 5875, 71600),
(36, 8606, 58700),
(37, 5875, 76100),
(37, 8606, 62400),
(38, 5875, 80800),
(38, 8606, 66200),
(39, 5875, 85700),
(39, 8606, 70200),
(40, 5875, 90700),
(40, 8606, 74300),
(41, 5875, 95800),
(41, 8606, 78500),
(42, 5875, 101000),
(42, 8606, 82800),
(43, 5875, 106300),
(43, 8606, 87100),
(44, 5875, 111800),
(44, 8606, 91600),
(45, 5875, 117500),
(45, 8606, 96300),
(46, 5875, 123200),
(46, 8606, 101000),
(47, 5875, 129100),
(47, 8606, 105800),
(48, 5875, 135100),
(48, 8606, 110700),
(49, 5875, 141200),
(49, 8606, 115700),
(50, 5875, 147500),
(50, 8606, 120900),
(51, 5875, 153900),
(51, 8606, 126100),
(52, 5875, 160400),
(52, 8606, 131500),
(53, 5875, 167100),
(53, 8606, 137000),
(54, 5875, 173900),
(54, 8606, 142500),
(55, 5875, 180800),
(55, 8606, 148200),
(56, 5875, 187900),
(56, 8606, 154000),
(57, 5875, 195000),
(57, 8606, 159900),
(58, 5875, 202300),
(58, 8606, 165800),
(59, 5875, 209800),
(59, 8606, 172000),
(60, 5875, 494000),
(60, 8606, 494000),
(60, 12340, 290000),
(61, 5875, 574700),
(61, 8606, 574700),
(61, 12340, 317000),
(62, 5875, 614400),
(62, 8606, 614400),
(62, 12340, 349000),
(63, 5875, 650300),
(63, 8606, 650300),
(63, 12340, 386000),
(64, 5875, 682300),
(64, 8606, 682300),
(64, 12340, 428000),
(65, 5875, 710200),
(65, 8606, 710200),
(65, 12340, 475000),
(66, 5875, 734100),
(66, 8606, 734100),
(66, 12340, 527000),
(67, 5875, 753700),
(67, 8606, 753700),
(67, 12340, 585000),
(68, 5875, 768900),
(68, 8606, 768900),
(68, 12340, 648000),
(69, 5875, 779700),
(69, 8606, 779700),
(69, 12340, 717000),
(70, 12340, 1523800),
(71, 12340, 1539600),
(72, 12340, 1555700),
(73, 12340, 1571800),
(74, 12340, 1587900),
(75, 12340, 1604200),
(76, 12340, 1620700),
(77, 12340, 1637400),
(78, 12340, 1653900),
(79, 12340, 1670800),
(80, 15595, 1686300),
(81, 15595, 2121500),
(82, 15595, 4004000),
(83, 15595, 5203400),
(84, 15595, 9165100);

INSERT INTO `world_db_version` VALUES ('3', '1.3.20_build_player_xp_for_level');
