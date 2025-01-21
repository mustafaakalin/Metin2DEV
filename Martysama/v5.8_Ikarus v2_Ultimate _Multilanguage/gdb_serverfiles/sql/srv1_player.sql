/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.1.56
 Source Server Type    : MariaDB
 Source Server Version : 101109 (10.11.9-MariaDB)
 Source Host           : 192.168.1.56:3306
 Source Schema         : srv1_player

 Target Server Type    : MariaDB
 Target Server Version : 101109 (10.11.9-MariaDB)
 File Encoding         : 65001

 Date: 12/11/2024 23:29:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for affect
-- ----------------------------
DROP TABLE IF EXISTS `affect`;
CREATE TABLE `affect`  (
  `dwPID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bType` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `bApplyOn` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `lApplyValue` int(11) NOT NULL DEFAULT 0,
  `dwFlag` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lDuration` int(11) NOT NULL DEFAULT 0,
  `lSPCost` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`dwPID`, `bType`, `bApplyOn`, `lApplyValue`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of affect
-- ----------------------------
INSERT INTO `affect` VALUES (1, 534, 0, 4, 10000005, 1892114073, 0);
INSERT INTO `affect` VALUES (1, 550, 0, 0, 0, 1217986, 0);
INSERT INTO `affect` VALUES (2, 541, 0, 0, 0, 1892159603, 0);
INSERT INTO `affect` VALUES (3, 550, 0, 0, 0, 1294854, 0);
INSERT INTO `affect` VALUES (4, 534, 0, 4, 10000030, 1892159991, 0);
INSERT INTO `affect` VALUES (4, 535, 0, 4, 10000031, 1892159991, 0);

-- ----------------------------
-- Table structure for banword
-- ----------------------------
DROP TABLE IF EXISTS `banword`;
CREATE TABLE `banword`  (
  `word` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`word`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banword
-- ----------------------------
INSERT INTO `banword` VALUES ('aryan');
INSERT INTO `banword` VALUES ('asshole');
INSERT INTO `banword` VALUES ('bastard');
INSERT INTO `banword` VALUES ('bastards');
INSERT INTO `banword` VALUES ('bitch');
INSERT INTO `banword` VALUES ('bitches');
INSERT INTO `banword` VALUES ('bitching');
INSERT INTO `banword` VALUES ('bitchy');
INSERT INTO `banword` VALUES ('boob');
INSERT INTO `banword` VALUES ('boobie');
INSERT INTO `banword` VALUES ('boobies');
INSERT INTO `banword` VALUES ('boobs');
INSERT INTO `banword` VALUES ('booby');
INSERT INTO `banword` VALUES ('boobys');
INSERT INTO `banword` VALUES ('bullshit');
INSERT INTO `banword` VALUES ('bullshitter');
INSERT INTO `banword` VALUES ('bullshitters');
INSERT INTO `banword` VALUES ('bullshitting');
INSERT INTO `banword` VALUES ('chickenshit');
INSERT INTO `banword` VALUES ('chickenshits');
INSERT INTO `banword` VALUES ('clit');
INSERT INTO `banword` VALUES ('cock');
INSERT INTO `banword` VALUES ('cockhead');
INSERT INTO `banword` VALUES ('cocks');
INSERT INTO `banword` VALUES ('cocksuck');
INSERT INTO `banword` VALUES ('cocksucker');
INSERT INTO `banword` VALUES ('cocksucking');
INSERT INTO `banword` VALUES ('cumming');
INSERT INTO `banword` VALUES ('cunt');
INSERT INTO `banword` VALUES ('cuntree');
INSERT INTO `banword` VALUES ('cuntry');
INSERT INTO `banword` VALUES ('cunts');
INSERT INTO `banword` VALUES ('dipshit');
INSERT INTO `banword` VALUES ('dipshits');
INSERT INTO `banword` VALUES ('dumbfuck');
INSERT INTO `banword` VALUES ('dumbfucks');
INSERT INTO `banword` VALUES ('dumbshit');
INSERT INTO `banword` VALUES ('dumbshits');
INSERT INTO `banword` VALUES ('fag');
INSERT INTO `banword` VALUES ('faggot');
INSERT INTO `banword` VALUES ('faggots');
INSERT INTO `banword` VALUES ('faggy');
INSERT INTO `banword` VALUES ('fags');
INSERT INTO `banword` VALUES ('fuck');
INSERT INTO `banword` VALUES ('fucka');
INSERT INTO `banword` VALUES ('fucke');
INSERT INTO `banword` VALUES ('fucked');
INSERT INTO `banword` VALUES ('fucken');
INSERT INTO `banword` VALUES ('fucker');
INSERT INTO `banword` VALUES ('fuckers');
INSERT INTO `banword` VALUES ('fuckface');
INSERT INTO `banword` VALUES ('fuckhead');
INSERT INTO `banword` VALUES ('fuckheads');
INSERT INTO `banword` VALUES ('fuckhed');
INSERT INTO `banword` VALUES ('fuckin');
INSERT INTO `banword` VALUES ('fucking');
INSERT INTO `banword` VALUES ('fucks');
INSERT INTO `banword` VALUES ('fuckup');
INSERT INTO `banword` VALUES ('fuckups');
INSERT INTO `banword` VALUES ('fukk');
INSERT INTO `banword` VALUES ('fukka');
INSERT INTO `banword` VALUES ('golem');
INSERT INTO `banword` VALUES ('goniff');
INSERT INTO `banword` VALUES ('heb');
INSERT INTO `banword` VALUES ('hebe');
INSERT INTO `banword` VALUES ('hebes');
INSERT INTO `banword` VALUES ('kike');
INSERT INTO `banword` VALUES ('kikes');
INSERT INTO `banword` VALUES ('kunt');
INSERT INTO `banword` VALUES ('kuntree');
INSERT INTO `banword` VALUES ('kuntry');
INSERT INTO `banword` VALUES ('kunts');
INSERT INTO `banword` VALUES ('motherfuck');
INSERT INTO `banword` VALUES ('motherfucken');
INSERT INTO `banword` VALUES ('motherfucker');
INSERT INTO `banword` VALUES ('motherfuckers');
INSERT INTO `banword` VALUES ('motherfuckin');
INSERT INTO `banword` VALUES ('motherfucking');
INSERT INTO `banword` VALUES ('nazi');
INSERT INTO `banword` VALUES ('nigga');
INSERT INTO `banword` VALUES ('niggah');
INSERT INTO `banword` VALUES ('niggahs');
INSERT INTO `banword` VALUES ('niggard');
INSERT INTO `banword` VALUES ('niggardly');
INSERT INTO `banword` VALUES ('niggas');
INSERT INTO `banword` VALUES ('niggaz');
INSERT INTO `banword` VALUES ('nigger');
INSERT INTO `banword` VALUES ('niggers');
INSERT INTO `banword` VALUES ('penis');
INSERT INTO `banword` VALUES ('piss');
INSERT INTO `banword` VALUES ('porn');
INSERT INTO `banword` VALUES ('porno');
INSERT INTO `banword` VALUES ('pornography');
INSERT INTO `banword` VALUES ('pussy');
INSERT INTO `banword` VALUES ('schlimazel');
INSERT INTO `banword` VALUES ('schlimiel');
INSERT INTO `banword` VALUES ('shit');
INSERT INTO `banword` VALUES ('shitface');
INSERT INTO `banword` VALUES ('shitfaced');
INSERT INTO `banword` VALUES ('shithead');
INSERT INTO `banword` VALUES ('shitheads');
INSERT INTO `banword` VALUES ('shithed');
INSERT INTO `banword` VALUES ('shits');
INSERT INTO `banword` VALUES ('shitting');
INSERT INTO `banword` VALUES ('shitty');
INSERT INTO `banword` VALUES ('slut');
INSERT INTO `banword` VALUES ('sluts');
INSERT INTO `banword` VALUES ('slutty');
INSERT INTO `banword` VALUES ('titties');
INSERT INTO `banword` VALUES ('titty');
INSERT INTO `banword` VALUES ('vagina');
INSERT INTO `banword` VALUES ('vaginal');
INSERT INTO `banword` VALUES ('whore');
INSERT INTO `banword` VALUES ('whores');
INSERT INTO `banword` VALUES ('whoring');

-- ----------------------------
-- Table structure for guild
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT 'snprintf(12u)',
  `sp` smallint(6) NOT NULL DEFAULT 1000,
  `master` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(2) NULL DEFAULT NULL,
  `exp` int(11) NULL DEFAULT NULL,
  `skill_point` tinyint(2) NOT NULL DEFAULT 0,
  `skill` tinyblob NULL DEFAULT NULL,
  `win` int(11) NOT NULL DEFAULT 0,
  `draw` int(11) NOT NULL DEFAULT 0,
  `loss` int(11) NOT NULL DEFAULT 0,
  `ladder_point` int(11) NOT NULL DEFAULT 0,
  `gold` bigint(16) NULL DEFAULT NULL,
  `token` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild
-- ----------------------------
INSERT INTO `guild` VALUES (1, 'GDB', 0, 1, 1, 0, 0, 0x000000000000000000000000, 0, 0, 0, 0, 0, 18113846297741621876);

-- ----------------------------
-- Table structure for guild_comment
-- ----------------------------
DROP TABLE IF EXISTS `guild_comment`;
CREATE TABLE `guild_comment`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guild_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `notice` tinyint(4) NULL DEFAULT NULL,
  `content` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `aaa`(`notice` ASC, `id` ASC, `guild_id` ASC) USING BTREE,
  INDEX `guild_id`(`guild_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_comment
-- ----------------------------

-- ----------------------------
-- Table structure for guild_grade
-- ----------------------------
DROP TABLE IF EXISTS `guild_grade`;
CREATE TABLE `guild_grade`  (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `grade` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT 'strlen(s) <= 12',
  `auth` set('ADD_MEMBER','REMOVE_MEMEBER','NOTICE','USE_SKILL') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`guild_id`, `grade`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_grade
-- ----------------------------
INSERT INTO `guild_grade` VALUES (1, 1, '[LS;927]', 'ADD_MEMBER,REMOVE_MEMEBER,NOTICE,USE_SKILL');
INSERT INTO `guild_grade` VALUES (1, 2, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 3, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 4, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 5, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 6, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 7, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 8, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 9, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 10, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 11, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 12, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 13, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 14, '[LS;928]', '');
INSERT INTO `guild_grade` VALUES (1, 15, '[LS;928]', '');

-- ----------------------------
-- Table structure for guild_member
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member`  (
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `grade` tinyint(2) NULL DEFAULT NULL,
  `is_general` tinyint(1) NOT NULL DEFAULT 0,
  `offer` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`guild_id`, `pid`) USING BTREE,
  UNIQUE INDEX `pid`(`pid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_member
-- ----------------------------
INSERT INTO `guild_member` VALUES (1, 1, 1, 0, 0);

-- ----------------------------
-- Table structure for guild_war
-- ----------------------------
DROP TABLE IF EXISTS `guild_war`;
CREATE TABLE `guild_war`  (
  `id_from` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `id_to` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_from`, `id_to`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_war
-- ----------------------------

-- ----------------------------
-- Table structure for guild_war_bet
-- ----------------------------
DROP TABLE IF EXISTS `guild_war_bet`;
CREATE TABLE `guild_war_bet`  (
  `login` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `gold` bigint(16) NULL DEFAULT NULL,
  `guild` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `war_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`war_id`, `login`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_war_bet
-- ----------------------------

-- ----------------------------
-- Table structure for guild_war_reservation
-- ----------------------------
DROP TABLE IF EXISTS `guild_war_reservation`;
CREATE TABLE `guild_war_reservation`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guild1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `warprice` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `initscore` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `started` tinyint(1) NOT NULL DEFAULT 0,
  `bet_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bet_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `winner` int(11) NOT NULL DEFAULT -1,
  `power1` int(11) NOT NULL DEFAULT 0,
  `power2` int(11) NOT NULL DEFAULT 0,
  `handicap` int(11) NOT NULL DEFAULT 0,
  `result1` int(11) NOT NULL DEFAULT 0,
  `result2` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guild_war_reservation
-- ----------------------------

-- ----------------------------
-- Table structure for horse_name
-- ----------------------------
DROP TABLE IF EXISTS `horse_name`;
CREATE TABLE `horse_name`  (
  `id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONAME' COMMENT 'CHARACTER_NAME_MAX_LEN+1 so 24+null',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of horse_name
-- ----------------------------

-- ----------------------------
-- Table structure for ikashop_auction_offer
-- ----------------------------
DROP TABLE IF EXISTS `ikashop_auction_offer`;
CREATE TABLE `ikashop_auction_offer`  (
  `seller` int(10) UNSIGNED NOT NULL,
  `buyer` int(10) UNSIGNED NOT NULL,
  `buyer_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  `seen` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`seller`, `buyer`, `price`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ikashop_auction_offer
-- ----------------------------

-- ----------------------------
-- Table structure for ikashop_notification
-- ----------------------------
DROP TABLE IF EXISTS `ikashop_notification`;
CREATE TABLE `ikashop_notification`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `owner` int(10) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL,
  `who` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `what` int(10) UNSIGNED NOT NULL,
  `format` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT 0,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ikashop_notification
-- ----------------------------

-- ----------------------------
-- Table structure for ikashop_offlineshop
-- ----------------------------
DROP TABLE IF EXISTS `ikashop_offlineshop`;
CREATE TABLE `ikashop_offlineshop`  (
  `owner` int(10) UNSIGNED NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `map` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `x` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `y` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `decoration` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `decoration_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lock_index` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`owner`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ikashop_offlineshop
-- ----------------------------

-- ----------------------------
-- Table structure for ikashop_private_offer
-- ----------------------------
DROP TABLE IF EXISTS `ikashop_private_offer`;
CREATE TABLE `ikashop_private_offer`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller` int(10) UNSIGNED NOT NULL,
  `buyer` int(10) UNSIGNED NOT NULL,
  `item` int(10) UNSIGNED NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `notified` tinyint(3) UNSIGNED NOT NULL,
  `accepted` tinyint(3) UNSIGNED NOT NULL,
  `buyer_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `datetime` datetime NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ikashop_private_offer
-- ----------------------------

-- ----------------------------
-- Table structure for ikashop_safebox
-- ----------------------------
DROP TABLE IF EXISTS `ikashop_safebox`;
CREATE TABLE `ikashop_safebox`  (
  `owner` int(10) UNSIGNED NOT NULL,
  `gold` bigint(20) UNSIGNED NOT NULL,
  `cheque` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`owner`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ikashop_safebox
-- ----------------------------
INSERT INTO `ikashop_safebox` VALUES (1, 0, 0);

-- ----------------------------
-- Table structure for ikashop_sale
-- ----------------------------
DROP TABLE IF EXISTS `ikashop_sale`;
CREATE TABLE `ikashop_sale`  (
  `id` int(10) UNSIGNED NOT NULL,
  `vnum` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ikashop_sale
-- ----------------------------

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `window` enum('INVENTORY','EQUIPMENT','SAFEBOX','MALL','DRAGON_SOUL_INVENTORY','BELT_INVENTORY','GROUND','IKASHOP_OFFLINESHOP','IKASHOP_SAFEBOX','IKASHOP_AUCTION') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pos` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `count` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `vnum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `socket0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `attrtype0` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue0` smallint(6) NOT NULL DEFAULT 0,
  `attrtype1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue1` smallint(6) NOT NULL DEFAULT 0,
  `attrtype2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue2` smallint(6) NOT NULL DEFAULT 0,
  `attrtype3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue3` smallint(6) NOT NULL DEFAULT 0,
  `attrtype4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue4` smallint(6) NOT NULL DEFAULT 0,
  `attrtype5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue5` smallint(6) NOT NULL DEFAULT 0,
  `attrtype6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue6` smallint(6) NOT NULL DEFAULT 0,
  `ikashop_data` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `owner_id_idx`(`owner_id` ASC) USING BTREE,
  INDEX `item_vnum_index`(`vnum` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90000017 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (10000003, 1, 'EQUIPMENT', 8, 1, 72702, 0, 44, 2962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL);
INSERT INTO `item` VALUES (10000004, 1, 'EQUIPMENT', 7, 1, 72701, 0, 43, 1764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for item_attr
-- ----------------------------
DROP TABLE IF EXISTS `item_attr`;
CREATE TABLE `item_attr`  (
  `apply` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','BLEEDING_REDUCE','BLEEDING_PCT','ATT_BONUS_TO_WOLFMAN','RESIST_WOLFMAN','RESIST_CLAW','ACCEDRAIN_RATE','RESIST_MAGIC_REDUCTION','ENCHANT_ELECT','ENCHANT_FIRE','ENCHANT_ICE','ENCHANT_WIND','ENCHANT_EARTH','ENCHANT_DARK','ATTBONUS_CZ','ATTBONUS_INSECT','ATTBONUS_DESERT','ATTBONUS_SWORD','ATTBONUS_TWOHAND','ATTBONUS_DAGGER','ATTBONUS_BELL','ATTBONUS_FAN','ATTBONUS_BOW','ATTBONUS_CLAW','RESIST_HUMAN','RESIST_MOUNT_FALL','UNK_117','MOUNT') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'MAX_HP',
  `prob` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv4` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv5` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weapon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `body` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `wrist` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `foots` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `neck` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `head` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `shield` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ear` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `costume_body` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `costume_hair` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `costume_weapon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pendant` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `glove` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_attr
-- ----------------------------
INSERT INTO `item_attr` VALUES ('MAX_HP', 35, 500, 500, 1000, 1500, 2000, 0, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('MAX_SP', 35, 10, 20, 30, 50, 80, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('CON', 11, 2, 4, 6, 8, 12, 5, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('INT', 11, 2, 4, 6, 8, 12, 5, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('STR', 11, 2, 4, 6, 8, 12, 5, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('DEX', 11, 2, 4, 6, 8, 12, 5, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('ATT_SPEED', 8, 1, 2, 3, 5, 8, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('MOV_SPEED', 18, 2, 4, 6, 10, 20, 0, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('CAST_SPEED', 8, 2, 4, 6, 10, 20, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('HP_REGEN', 60, 4, 8, 12, 20, 30, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('SP_REGEN', 60, 4, 8, 12, 20, 30, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('POISON_PCT', 8, 1, 2, 3, 5, 8, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('STUN_PCT', 18, 1, 2, 3, 5, 8, 5, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr` VALUES ('SLOW_PCT', 35, 1, 2, 3, 5, 8, 5, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('CRITICAL_PCT', 18, 1, 2, 3, 5, 10, 5, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('PENETRATE_PCT', 30, 1, 2, 3, 5, 10, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_HUMAN', 20, 1, 2, 3, 5, 10, 5, 0, 5, 0, 0, 5, 5, 5, 0, 0, 0, 5, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_ANIMAL', 35, 2, 4, 6, 10, 20, 5, 0, 5, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_ORC', 35, 2, 4, 6, 10, 20, 5, 0, 5, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_MILGYO', 35, 2, 4, 6, 10, 20, 5, 0, 5, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_UNDEAD', 35, 2, 4, 6, 10, 20, 5, 0, 5, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_DEVIL', 35, 2, 4, 6, 10, 20, 5, 0, 5, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('STEAL_HP', 50, 1, 2, 3, 5, 10, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('STEAL_SP', 50, 1, 2, 3, 5, 10, 0, 5, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('MANA_BURN_PCT', 18, 1, 2, 3, 5, 10, 0, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('BLOCK', 10, 2, 4, 6, 10, 15, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('DODGE', 10, 2, 4, 6, 10, 15, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('RESIST_SWORD', 18, 2, 4, 6, 10, 15, 0, 5, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('RESIST_TWOHAND', 18, 2, 4, 6, 10, 15, 0, 5, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('RESIST_DAGGER', 18, 2, 4, 6, 10, 15, 0, 5, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('RESIST_BELL', 18, 2, 4, 6, 10, 15, 0, 5, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('RESIST_FAN', 18, 2, 4, 6, 10, 15, 0, 5, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('RESIST_BOW', 18, 2, 4, 6, 10, 15, 0, 5, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('RESIST_MAGIC', 25, 2, 4, 6, 10, 15, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('REFLECT_MELEE', 18, 1, 2, 3, 6, 10, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('POISON_REDUCE', 18, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('EXP_DOUBLE_BONUS', 10, 2, 4, 6, 8, 20, 0, 0, 0, 5, 5, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('GOLD_DOUBLE_BONUS', 10, 2, 4, 6, 8, 20, 0, 0, 0, 5, 5, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('ITEM_DROP_BONUS', 7, 2, 4, 6, 8, 20, 0, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('IMMUNE_STUN', 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('IMMUNE_SLOW', 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('ATT_GRADE_BONUS', 15, 5, 10, 15, 30, 50, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_TWOHAND', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_SWORD', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_DAGGER', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_BELL', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_FAN', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_BOW', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr` VALUES ('RESIST_HUMAN', 5, 2, 3, 3, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_DESERT', 10, 10, 15, 15, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_INSECT', 10, 10, 15, 15, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr` VALUES ('ATTBONUS_CZ', 10, 10, 15, 15, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr` VALUES ('RESIST_MOUNT_FALL', 10, 2, 4, 6, 10, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);

-- ----------------------------
-- Table structure for item_attr_rare
-- ----------------------------
DROP TABLE IF EXISTS `item_attr_rare`;
CREATE TABLE `item_attr_rare`  (
  `apply` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','BLEEDING_REDUCE','BLEEDING_PCT','ATT_BONUS_TO_WOLFMAN','RESIST_WOLFMAN','RESIST_CLAW','ACCEDRAIN_RATE','RESIST_MAGIC_REDUCTION','ENCHANT_ELECT','ENCHANT_FIRE','ENCHANT_ICE','ENCHANT_WIND','ENCHANT_EARTH','ENCHANT_DARK','ATTBONUS_CZ','ATTBONUS_INSECT','ATTBONUS_DESERT','ATTBONUS_SWORD','ATTBONUS_TWOHAND','ATTBONUS_DAGGER','ATTBONUS_BELL','ATTBONUS_FAN','ATTBONUS_BOW','ATTBONUS_CLAW','RESIST_HUMAN','RESIST_MOUNT_FALL','UNK_117','MOUNT') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'MAX_HP',
  `prob` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv4` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv5` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weapon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `body` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `wrist` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `foots` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `neck` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `head` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `shield` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ear` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `costume_body` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `costume_hair` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `costume_weapon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pendant` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `glove` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_attr_rare
-- ----------------------------
INSERT INTO `item_attr_rare` VALUES ('MAX_HP', 1, 500, 500, 500, 500, 500, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('MAX_SP', 1, 50, 50, 50, 50, 50, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('CON', 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('INT', 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('STR', 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('DEX', 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('CRITICAL_PCT', 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('PENETRATE_PCT', 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('ATT_GRADE_BONUS', 1, 50, 50, 50, 50, 50, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('ATT_BONUS_TO_MONSTER', 1, 10, 10, 10, 10, 10, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('ATT_BONUS_TO_WARRIOR', 1, 10, 10, 10, 10, 10, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('ATT_BONUS_TO_ASSASSIN', 1, 10, 10, 10, 10, 10, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('ATT_BONUS_TO_SURA', 1, 10, 10, 10, 10, 10, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('ATT_BONUS_TO_SHAMAN', 1, 10, 10, 10, 10, 10, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('RESIST_WARRIOR', 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('RESIST_ASSASSIN', 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('RESIST_SURA', 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('RESIST_SHAMAN', 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('ATT_SPEED', 1, 2, 2, 2, 2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_rare` VALUES ('MOV_SPEED', 1, 8, 8, 8, 8, 8, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for item_attr_wolfman
-- ----------------------------
DROP TABLE IF EXISTS `item_attr_wolfman`;
CREATE TABLE `item_attr_wolfman`  (
  `apply` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','BLEEDING_REDUCE','BLEEDING_PCT','ATT_BONUS_TO_WOLFMAN','RESIST_WOLFMAN','RESIST_CLAW','ACCEDRAIN_RATE','RESIST_MAGIC_REDUCTION','ENCHANT_ELECT','ENCHANT_FIRE','ENCHANT_ICE','ENCHANT_WIND','ENCHANT_EARTH','ENCHANT_DARK','ATTBONUS_CZ','ATTBONUS_INSECT','ATTBONUS_DESERT','ATTBONUS_SWORD','ATTBONUS_TWOHAND','ATTBONUS_DAGGER','ATTBONUS_BELL','ATTBONUS_FAN','ATTBONUS_BOW','ATTBONUS_CLAW','RESIST_HUMAN','RESIST_MOUNT_FALL','UNK_117','MOUNT') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'MAX_HP',
  `prob` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv4` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv5` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weapon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `body` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `wrist` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `foots` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `neck` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `head` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `shield` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ear` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `costume_body` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `costume_hair` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `costume_weapon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pendant` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `glove` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_attr_wolfman
-- ----------------------------
INSERT INTO `item_attr_wolfman` VALUES ('MAX_HP', 35, 500, 500, 1000, 1500, 2000, 0, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('MAX_SP', 35, 10, 20, 30, 50, 80, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('CON', 11, 2, 4, 6, 8, 12, 5, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('INT', 11, 2, 4, 6, 8, 12, 5, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('STR', 11, 2, 4, 6, 8, 12, 5, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('DEX', 11, 2, 4, 6, 8, 12, 5, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATT_SPEED', 8, 1, 2, 3, 5, 8, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('MOV_SPEED', 18, 2, 4, 6, 10, 20, 0, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('CAST_SPEED', 8, 2, 4, 6, 10, 20, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('HP_REGEN', 60, 4, 8, 12, 20, 30, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('SP_REGEN', 60, 4, 8, 12, 20, 30, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('POISON_PCT', 8, 1, 2, 3, 5, 8, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('STUN_PCT', 18, 1, 2, 3, 5, 8, 5, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('SLOW_PCT', 35, 1, 2, 3, 5, 8, 5, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('CRITICAL_PCT', 18, 1, 2, 3, 5, 10, 5, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('PENETRATE_PCT', 30, 1, 2, 3, 5, 10, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_HUMAN', 20, 1, 2, 3, 5, 10, 5, 0, 5, 0, 0, 5, 5, 5, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_ANIMAL', 35, 2, 4, 6, 10, 20, 5, 0, 5, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_ORC', 35, 2, 4, 6, 10, 20, 5, 0, 5, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_MILGYO', 35, 2, 4, 6, 10, 20, 5, 0, 5, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_UNDEAD', 35, 2, 4, 6, 10, 20, 5, 0, 5, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_DEVIL', 35, 2, 4, 6, 10, 20, 5, 0, 5, 0, 0, 5, 5, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('STEAL_HP', 50, 1, 2, 3, 5, 10, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('STEAL_SP', 50, 1, 2, 3, 5, 10, 0, 5, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('MANA_BURN_PCT', 18, 1, 2, 3, 5, 10, 0, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('BLOCK', 10, 2, 4, 6, 10, 15, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('DODGE', 10, 2, 4, 6, 10, 15, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('RESIST_SWORD', 18, 2, 4, 6, 10, 15, 0, 5, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('RESIST_TWOHAND', 18, 2, 4, 6, 10, 15, 0, 5, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('RESIST_DAGGER', 18, 2, 4, 6, 10, 15, 0, 5, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('RESIST_BELL', 18, 2, 4, 6, 10, 15, 0, 5, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('RESIST_FAN', 18, 2, 4, 6, 10, 15, 0, 5, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('RESIST_BOW', 18, 2, 4, 6, 10, 15, 0, 5, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('RESIST_MAGIC', 25, 2, 4, 6, 10, 15, 0, 5, 5, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('REFLECT_MELEE', 18, 1, 2, 3, 6, 10, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('POISON_REDUCE', 18, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('EXP_DOUBLE_BONUS', 10, 2, 4, 6, 8, 20, 0, 0, 0, 5, 5, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('GOLD_DOUBLE_BONUS', 10, 2, 4, 6, 8, 20, 0, 0, 0, 5, 5, 0, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ITEM_DROP_BONUS', 7, 2, 4, 6, 8, 20, 0, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('IMMUNE_STUN', 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('IMMUNE_SLOW', 5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATT_GRADE_BONUS', 15, 5, 10, 15, 30, 50, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_TWOHAND', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_SWORD', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_DAGGER', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_BELL', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_FAN', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_BOW', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_CLAW', 15, 1, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('RESIST_HUMAN', 5, 2, 3, 3, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_DESERT', 10, 10, 15, 15, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_INSECT', 10, 10, 15, 15, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('ATTBONUS_CZ', 10, 10, 15, 15, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);
INSERT INTO `item_attr_wolfman` VALUES ('RESIST_MOUNT_FALL', 10, 2, 4, 6, 10, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);

-- ----------------------------
-- Table structure for item_award
-- ----------------------------
DROP TABLE IF EXISTS `item_award`;
CREATE TABLE `item_award`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `login` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT 'LOGIN_MAX_LEN=30',
  `vnum` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `given_time` datetime NOT NULL DEFAULT current_timestamp(),
  `taken_time` datetime NULL DEFAULT NULL,
  `item_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `why` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `socket0` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `socket1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `socket2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `attrtype0` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue0` smallint(6) NOT NULL DEFAULT 0,
  `attrtype1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue1` smallint(6) NOT NULL DEFAULT 0,
  `attrtype2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue2` smallint(6) NOT NULL DEFAULT 0,
  `attrtype3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue3` smallint(6) NOT NULL DEFAULT 0,
  `attrtype4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue4` smallint(6) NOT NULL DEFAULT 0,
  `attrtype5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue5` smallint(6) NOT NULL DEFAULT 0,
  `attrtype6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attrvalue6` smallint(6) NOT NULL DEFAULT 0,
  `mall` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `given_time_idx`(`given_time` ASC) USING BTREE,
  INDEX `taken_time_idx`(`taken_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_award
-- ----------------------------

-- ----------------------------
-- Table structure for item_proto
-- ----------------------------
DROP TABLE IF EXISTS `item_proto`;
CREATE TABLE `item_proto`  (
  `vnum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varbinary(24) NOT NULL DEFAULT 'Noname',
  `locale_name` varbinary(24) NOT NULL DEFAULT 'Noname',
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `subtype` tinyint(2) NOT NULL DEFAULT 0,
  `weight` tinyint(3) NULL DEFAULT 0,
  `size` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `antiflag` int(11) UNSIGNED NULL DEFAULT 0,
  `flag` int(11) UNSIGNED NULL DEFAULT 0,
  `wearflag` int(11) UNSIGNED NULL DEFAULT 0,
  `immuneflag` set('PARA','CURSE','STUN','SLEEP','SLOW','POISON','TERROR') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `gold` bigint(16) NULL DEFAULT NULL,
  `shop_buy_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refined_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refine_set` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `refine_set2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `magic_pct` tinyint(4) NOT NULL DEFAULT 0,
  `limittype0` tinyint(4) UNSIGNED NULL DEFAULT 0,
  `limitvalue0` int(11) NULL DEFAULT 0,
  `limittype1` tinyint(4) UNSIGNED NULL DEFAULT 0,
  `limitvalue1` int(11) NULL DEFAULT 0,
  `applytype0` tinyint(4) UNSIGNED NULL DEFAULT 0,
  `applyvalue0` int(11) NULL DEFAULT 0,
  `applytype1` tinyint(4) UNSIGNED NULL DEFAULT 0,
  `applyvalue1` int(11) NULL DEFAULT 0,
  `applytype2` tinyint(4) UNSIGNED NULL DEFAULT 0,
  `applyvalue2` int(11) NULL DEFAULT 0,
  `value0` int(11) NULL DEFAULT 0,
  `value1` int(11) NULL DEFAULT 0,
  `value2` int(11) NULL DEFAULT 0,
  `value3` int(11) NULL DEFAULT 0,
  `value4` int(11) NULL DEFAULT 0,
  `value5` int(11) NULL DEFAULT 0,
  `socket0` tinyint(4) NULL DEFAULT -1,
  `socket1` tinyint(4) NULL DEFAULT -1,
  `socket2` tinyint(4) NULL DEFAULT -1,
  `socket3` tinyint(4) NULL DEFAULT -1,
  `socket4` tinyint(4) NULL DEFAULT -1,
  `socket5` tinyint(4) NULL DEFAULT -1,
  `specular` tinyint(4) NOT NULL DEFAULT 0,
  `socket_pct` tinyint(4) NOT NULL DEFAULT 0,
  `addon_type` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_proto
-- ----------------------------

-- ----------------------------
-- Table structure for land
-- ----------------------------
DROP TABLE IF EXISTS `land`;
CREATE TABLE `land`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `map_index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `x` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `y` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `width` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `guild_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_level_limit` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `enable` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NO',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 293 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of land
-- ----------------------------
INSERT INTO `land` VALUES (1, 1, 20200, 10000, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (2, 1, 23500, 13600, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (3, 1, 27600, 10900, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (4, 1, 55600, 9600, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (5, 1, 57100, 3800, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (6, 1, 60900, 5200, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (7, 1, 66100, 7900, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (8, 1, 81400, 16800, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (9, 1, 90700, 20400, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (10, 1, 94300, 23700, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (11, 1, 10800, 108500, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (12, 1, 5900, 108500, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (13, 1, 7700, 104300, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (14, 1, 23400, 46200, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (15, 1, 17200, 44400, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (16, 1, 20000, 40100, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (17, 1, 25800, 36900, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (18, 1, 16900, 35800, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (75, 4, 9600, 13100, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (76, 4, 16100, 15600, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (77, 4, 9100, 19500, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (78, 4, 14900, 19500, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (79, 4, 27700, 19500, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (80, 4, 23600, 23000, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (81, 4, 31800, 24200, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (82, 4, 27900, 27300, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (83, 4, 35500, 35400, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (84, 4, 32800, 39300, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (85, 4, 39700, 39600, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (86, 4, 36100, 42700, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (87, 4, 24400, 39000, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (88, 4, 19900, 41600, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (89, 4, 14400, 41700, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (90, 4, 10200, 39100, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (91, 4, 7700, 34600, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (92, 4, 8400, 29500, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (101, 21, 29400, 11400, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (102, 21, 33600, 12700, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (103, 21, 36300, 16300, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (104, 21, 55900, 17200, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (105, 21, 72800, 8500, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (106, 21, 76300, 5400, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (107, 21, 77600, 10200, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (108, 21, 84200, 47200, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (109, 21, 87800, 61000, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (110, 21, 32100, 113800, 3000, 3000, 0, 10, 45000000, 'YES');
INSERT INTO `land` VALUES (111, 21, 28800, 117200, 3000, 3000, 0, 10, 45000000, 'YES');
INSERT INTO `land` VALUES (112, 21, 24400, 118700, 3000, 3000, 0, 10, 45000000, 'YES');
INSERT INTO `land` VALUES (113, 21, 22600, 114400, 3000, 3000, 0, 10, 45000000, 'YES');
INSERT INTO `land` VALUES (114, 21, 34800, 92300, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (115, 21, 37500, 89000, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (116, 21, 35100, 73600, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (117, 21, 35400, 69200, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (118, 21, 35400, 55600, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (175, 24, 7100, 5200, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (176, 24, 12800, 4800, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (177, 24, 9700, 9900, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (178, 24, 14500, 13300, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (179, 24, 36900, 26000, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (180, 24, 38600, 29800, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (181, 24, 36500, 33900, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (182, 24, 33600, 38600, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (183, 24, 30900, 33500, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (184, 24, 25700, 33500, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (185, 24, 25600, 37800, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (186, 24, 20900, 37800, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (187, 24, 20900, 33700, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (188, 24, 14200, 33700, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (189, 24, 10000, 37100, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (190, 24, 5800, 34800, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (191, 24, 8800, 29800, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (192, 24, 10500, 26100, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (201, 41, 66100, 9400, 3000, 3000, 0, 10, 45000000, 'YES');
INSERT INTO `land` VALUES (202, 41, 70300, 7900, 3000, 3000, 0, 10, 45000000, 'YES');
INSERT INTO `land` VALUES (203, 41, 73600, 11500, 3000, 3000, 0, 10, 45000000, 'YES');
INSERT INTO `land` VALUES (204, 41, 70900, 15100, 3000, 3000, 0, 10, 45000000, 'YES');
INSERT INTO `land` VALUES (205, 41, 71800, 61900, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (206, 41, 77000, 64100, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (207, 41, 60700, 66800, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (208, 41, 74500, 68200, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (209, 41, 67900, 110800, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (210, 41, 67900, 115700, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (211, 41, 62800, 114800, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (212, 41, 16600, 95300, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (213, 41, 5400, 94100, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (214, 41, 18600, 89300, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (215, 41, 4600, 89800, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (216, 41, 11200, 36000, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (217, 41, 8200, 31800, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (218, 41, 12000, 29200, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (275, 44, 5400, 7700, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (276, 44, 9700, 7300, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (277, 44, 5500, 11500, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (278, 44, 5100, 15500, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (279, 44, 8900, 17900, 3000, 3000, 0, 10, 40000000, 'YES');
INSERT INTO `land` VALUES (280, 44, 22200, 15600, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (281, 44, 43000, 3700, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (282, 44, 38900, 27200, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (283, 44, 30200, 29900, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (284, 44, 40000, 34500, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (285, 44, 32800, 37000, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (286, 44, 40600, 39300, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (287, 44, 35600, 40600, 3000, 3000, 0, 10, 50000000, 'YES');
INSERT INTO `land` VALUES (288, 44, 18500, 33600, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (289, 44, 17300, 38500, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (290, 44, 13500, 39400, 3000, 3000, 0, 10, 70000000, 'YES');
INSERT INTO `land` VALUES (291, 44, 9100, 38700, 3000, 3000, 0, 10, 65000000, 'YES');
INSERT INTO `land` VALUES (292, 44, 5000, 36300, 3000, 3000, 0, 10, 65000000, 'YES');

-- ----------------------------
-- Table structure for lotto_list
-- ----------------------------
DROP TABLE IF EXISTS `lotto_list`;
CREATE TABLE `lotto_list`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `server` varchar(56) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'server%s=get_table_postfix(); std::string so dunno; at least 6',
  `pid` int(10) UNSIGNED NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lotto_list
-- ----------------------------

-- ----------------------------
-- Table structure for marriage
-- ----------------------------
DROP TABLE IF EXISTS `marriage`;
CREATE TABLE `marriage`  (
  `is_married` tinyint(4) NOT NULL DEFAULT 0,
  `pid1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pid2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `love_point` int(11) UNSIGNED NULL DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`pid1`, `pid2`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of marriage
-- ----------------------------

-- ----------------------------
-- Table structure for messenger_list
-- ----------------------------
DROP TABLE IF EXISTS `messenger_list`;
CREATE TABLE `messenger_list`  (
  `account` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT '24 at maximum',
  `companion` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT '24 at maximum',
  PRIMARY KEY (`account`, `companion`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messenger_list
-- ----------------------------

-- ----------------------------
-- Table structure for mob_proto
-- ----------------------------
DROP TABLE IF EXISTS `mob_proto`;
CREATE TABLE `mob_proto`  (
  `vnum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Noname',
  `locale_name` varbinary(24) NOT NULL DEFAULT 'Noname',
  `rank` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `battle_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `level` smallint(3) UNSIGNED NOT NULL DEFAULT 1,
  `size` enum('SMALL','MEDIUM','BIG') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'SMALL',
  `ai_flag` set('AGGR','NOMOVE','COWARD','NOATTSHINSU','NOATTCHUNJO','NOATTJINNO','ATTMOB','BERSERK','STONESKIN','GODSPEED','DEATHBLOW','REVIVE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mount_capacity` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `setRaceFlag` set('ANIMAL','UNDEAD','DEVIL','HUMAN','ORC','MILGYO','INSECT','FIRE','ICE','DESERT','TREE','ATT_ELEC','ATT_FIRE','ATT_ICE','ATT_WIND','ATT_EARTH','ATT_DARK') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `setImmuneFlag` set('STUN','SLOW','FALL','CURSE','POISON','TERROR','REFLECT') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `empire` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `folder` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `on_click` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `st` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `dx` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ht` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `iq` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `damage_min` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `damage_max` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `max_hp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `regen_cycle` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `regen_percent` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gold_min` bigint(16) NULL DEFAULT NULL,
  `gold_max` bigint(16) NULL DEFAULT NULL,
  `exp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `def` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `attack_speed` smallint(6) UNSIGNED NOT NULL DEFAULT 100,
  `move_speed` smallint(6) UNSIGNED NOT NULL DEFAULT 100,
  `aggressive_hp_pct` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `aggressive_sight` smallint(10) UNSIGNED NOT NULL DEFAULT 0,
  `attack_range` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `drop_item` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resurrection_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_curse` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_slow` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_poison` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_stun` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_critical` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_penetrate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `resist_sword` tinyint(4) NOT NULL DEFAULT 0,
  `resist_twohand` tinyint(4) NOT NULL DEFAULT 0,
  `resist_dagger` tinyint(4) NOT NULL DEFAULT 0,
  `resist_bell` tinyint(4) NOT NULL DEFAULT 0,
  `resist_fan` tinyint(4) NOT NULL DEFAULT 0,
  `resist_bow` tinyint(4) NOT NULL DEFAULT 0,
  `resist_fire` tinyint(4) NOT NULL DEFAULT 0,
  `resist_elect` tinyint(4) NOT NULL DEFAULT 0,
  `resist_magic` tinyint(4) NOT NULL DEFAULT 0,
  `resist_wind` tinyint(4) NOT NULL DEFAULT 0,
  `resist_poison` tinyint(4) NOT NULL DEFAULT 0,
  `dam_multiply` float NULL DEFAULT NULL,
  `summon` int(11) NULL DEFAULT NULL,
  `drain_sp` int(11) NULL DEFAULT NULL,
  `mob_color` int(10) UNSIGNED NULL DEFAULT NULL,
  `polymorph_item` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_level0` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum0` int(10) UNSIGNED NULL DEFAULT NULL,
  `skill_level1` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum1` int(10) UNSIGNED NULL DEFAULT NULL,
  `skill_level2` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum2` int(10) UNSIGNED NULL DEFAULT NULL,
  `skill_level3` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum3` int(10) UNSIGNED NULL DEFAULT NULL,
  `skill_level4` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum4` int(10) UNSIGNED NULL DEFAULT NULL,
  `sp_berserk` tinyint(4) NOT NULL DEFAULT 0,
  `sp_stoneskin` tinyint(4) NOT NULL DEFAULT 0,
  `sp_godspeed` tinyint(4) NOT NULL DEFAULT 0,
  `sp_deathblow` tinyint(4) NOT NULL DEFAULT 0,
  `sp_revive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mob_proto
-- ----------------------------

-- ----------------------------
-- Table structure for monarch
-- ----------------------------
DROP TABLE IF EXISTS `monarch`;
CREATE TABLE `monarch`  (
  `empire` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pid` int(10) UNSIGNED NULL DEFAULT NULL,
  `windate` datetime NULL DEFAULT NULL,
  `money` bigint(20) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`empire`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of monarch
-- ----------------------------

-- ----------------------------
-- Table structure for monarch_candidacy
-- ----------------------------
DROP TABLE IF EXISTS `monarch_candidacy`;
CREATE TABLE `monarch_candidacy`  (
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date` datetime NULL DEFAULT current_timestamp(),
  `name` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `windate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of monarch_candidacy
-- ----------------------------

-- ----------------------------
-- Table structure for monarch_election
-- ----------------------------
DROP TABLE IF EXISTS `monarch_election`;
CREATE TABLE `monarch_election`  (
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `selectedpid` int(10) UNSIGNED NULL DEFAULT 0,
  `electiondata` datetime NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of monarch_election
-- ----------------------------

-- ----------------------------
-- Table structure for myshop_pricelist
-- ----------------------------
DROP TABLE IF EXISTS `myshop_pricelist`;
CREATE TABLE `myshop_pricelist`  (
  `owner_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_vnum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `list_id`(`owner_id` ASC, `item_vnum` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of myshop_pricelist
-- ----------------------------

-- ----------------------------
-- Table structure for object
-- ----------------------------
DROP TABLE IF EXISTS `object`;
CREATE TABLE `object`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `land_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `map_index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `x` int(11) NOT NULL DEFAULT 0,
  `y` int(11) NOT NULL DEFAULT 0,
  `x_rot` float NOT NULL DEFAULT 0,
  `y_rot` float NOT NULL DEFAULT 0,
  `z_rot` float NOT NULL DEFAULT 0,
  `life` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of object
-- ----------------------------

-- ----------------------------
-- Table structure for object_proto
-- ----------------------------
DROP TABLE IF EXISTS `object_proto`;
CREATE TABLE `object_proto`  (
  `vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `materials` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `upgrade_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `upgrade_limit_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `life` int(11) NOT NULL DEFAULT 0,
  `reg_1` int(11) NOT NULL DEFAULT 0,
  `reg_2` int(11) NOT NULL DEFAULT 0,
  `reg_3` int(11) NOT NULL DEFAULT 0,
  `reg_4` int(11) NOT NULL DEFAULT 0,
  `npc` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `group_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dependent_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of object_proto
-- ----------------------------
INSERT INTO `object_proto` VALUES (14013, '?? ???', 20000000, '90010,20/90011,30/90012,20', 0, 0, 0, -10, -10, 10, 10, 20044, 2, 1);
INSERT INTO `object_proto` VALUES (14014, '??? ???', 20000000, '90010,20/90011,30/90012,20', 0, 0, 0, -10, -10, 10, 10, 20045, 2, 1);
INSERT INTO `object_proto` VALUES (14015, '???? ???', 20000000, '90010,20/90011,30/90012,20', 0, 0, 0, -10, -10, 10, 10, 20046, 2, 1);
INSERT INTO `object_proto` VALUES (14043, '????? ???', 20000000, '90010,15/90011,20/90012,25', 0, 0, 0, -10, -10, 10, 10, 20060, 3, 1);
INSERT INTO `object_proto` VALUES (14045, '??? ???', 20000000, '90010,15/90011,20/90012,25', 0, 0, 0, -10, -10, 10, 10, 20062, 3, 1);
INSERT INTO `object_proto` VALUES (14046, '?? ???', 20000000, '90010,15/90011,20/90012,25', 0, 0, 0, -10, -10, 10, 10, 20063, 3, 1);
INSERT INTO `object_proto` VALUES (14047, '? ???', 20000000, '90010,15/90011,20/90012,25', 0, 0, 0, -10, -10, 10, 10, 20064, 3, 1);
INSERT INTO `object_proto` VALUES (14048, '? ???', 20000000, '90010,15/90011,20/90012,25', 0, 0, 0, -10, -10, 10, 10, 20065, 3, 1);
INSERT INTO `object_proto` VALUES (14049, '?? ???', 20000000, '90010,15/90011,20/90012,25', 0, 0, 0, -10, -10, 10, 10, 20066, 3, 1);
INSERT INTO `object_proto` VALUES (14050, '??? ???', 20000000, '90010,15/90011,20/90012,25', 0, 0, 0, -10, -10, 10, 10, 20067, 3, 1);
INSERT INTO `object_proto` VALUES (14051, '?? ???', 20000000, '90010,15/90011,20/90012,25', 0, 0, 0, -10, -10, 10, 10, 20068, 3, 1);
INSERT INTO `object_proto` VALUES (14052, '?? ???', 20000000, '90010,15/90011,20/90012,25', 0, 0, 0, -10, -10, 10, 10, 20069, 3, 1);
INSERT INTO `object_proto` VALUES (14053, '?? ???', 20000000, '90010,15/90011,20/90012,25', 0, 0, 0, -10, -10, 10, 10, 20070, 3, 1);
INSERT INTO `object_proto` VALUES (14054, '??? ???', 20000000, '90010,15/90011,20/90012,25', 0, 0, 0, -10, -10, 10, 10, 20071, 3, 1);
INSERT INTO `object_proto` VALUES (14055, '?? ???', 20000000, '90010,15/90011,20/90012,25', 0, 0, 0, -10, -10, 10, 10, 20072, 3, 1);
INSERT INTO `object_proto` VALUES (14061, '?? ??', 25000000, '90010,25/90011,25/90012,25', 0, 0, 0, -10, -10, 10, 10, 20077, 4, 1);
INSERT INTO `object_proto` VALUES (14062, '?? ??', 500000000, '90010,50/90011,50/90012,50', 0, 0, 0, -10, -10, 10, 10, 20078, 4, 4);
INSERT INTO `object_proto` VALUES (14063, '?? ??', 750000000, '90010,75/90011,75/90012,75', 0, 0, 0, -10, -10, 10, 10, 20079, 4, 4);
INSERT INTO `object_proto` VALUES (14100, '?(1)', 20000000, '90010,20/90011,30/90012,25', 0, 0, 0, -10, -10, 10, 10, 0, 1, 0);
INSERT INTO `object_proto` VALUES (14110, '?(2)', 20000000, '90010,20/90011,30/90012,25', 0, 0, 0, -10, -10, 10, 10, 0, 1, 0);
INSERT INTO `object_proto` VALUES (14120, '?(3)', 20000000, '90010,20/90011,30/90012,25', 0, 0, 0, -10, -10, 10, 10, 0, 1, 0);
INSERT INTO `object_proto` VALUES (14200, '?? ??', 3000000, '90011,5/90012,5', 0, 0, 0, -10, -10, 10, 10, 0, 0, 1);
INSERT INTO `object_proto` VALUES (14300, '?1', 300000, '90010,5', 0, 0, 0, -10, -10, 10, 10, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14301, '?2', 300000, '90010,5', 0, 0, 0, -10, -10, 10, 10, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14302, '?3', 300000, '90010,7', 0, 0, 0, -10, -10, 10, 10, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14303, '?4', 300000, '90010,7', 0, 0, 0, -10, -10, 10, 10, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14304, '?5', 300000, '90010,7', 0, 0, 0, -10, -10, 10, 10, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14305, '?6', 300000, '90010,8', 0, 0, 0, -10, -10, 10, 10, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14306, '?7', 300000, '90010,8', 0, 0, 0, -10, -10, 10, 10, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14307, '?8', 300000, '90010,8', 0, 0, 0, -10, -10, 10, 10, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14308, '?9', 300000, '90010,9', 0, 0, 0, -10, -10, 10, 10, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14309, '?10', 300000, '90010,9', 0, 0, 0, -10, -10, 10, 10, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14400, '??1', 2000000, '90011,5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14401, '??2', 2000000, '90011,5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14402, '??3', 2000000, '90011,7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14403, '??4', 2000000, '90011,7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14404, '??5', 2000000, '90011,7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14405, '??6', 2000000, '90011,9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14406, '??7', 2000000, '90011,9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14407, '??8', 2000000, '90011,9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `object_proto` VALUES (14408, '??9', 2000000, '90011,9', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for pcbang_ip
-- ----------------------------
DROP TABLE IF EXISTS `pcbang_ip`;
CREATE TABLE `pcbang_ip`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pcbang_id` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '000.000.000.000',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ip`(`ip` ASC) USING BTREE,
  INDEX `pcbang_id`(`pcbang_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pcbang_ip
-- ----------------------------

-- ----------------------------
-- Table structure for player
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONAME',
  `job` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `voice` tinyint(1) NOT NULL DEFAULT 0,
  `dir` tinyint(2) NOT NULL DEFAULT 0,
  `x` int(11) NOT NULL DEFAULT 0,
  `y` int(11) NOT NULL DEFAULT 0,
  `z` int(11) NOT NULL DEFAULT 0,
  `map_index` int(11) NOT NULL DEFAULT 0,
  `exit_x` int(11) NOT NULL DEFAULT 0,
  `exit_y` int(11) NOT NULL DEFAULT 0,
  `exit_map_index` int(11) NOT NULL DEFAULT 0,
  `hp` int(11) NOT NULL DEFAULT 0,
  `mp` int(11) NOT NULL DEFAULT 0,
  `stamina` smallint(6) NOT NULL DEFAULT 0,
  `random_hp` smallint(5) NOT NULL DEFAULT 0 COMMENT 'if lvl 0, it will be negative',
  `random_sp` smallint(5) NOT NULL DEFAULT 0 COMMENT 'if lvl 0, it will be negative',
  `playtime` int(11) NOT NULL DEFAULT 0,
  `level` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `level_step` tinyint(1) NOT NULL DEFAULT 0,
  `st` smallint(3) NOT NULL DEFAULT 0,
  `ht` smallint(3) NOT NULL DEFAULT 0,
  `dx` smallint(3) NOT NULL DEFAULT 0,
  `iq` smallint(3) NOT NULL DEFAULT 0,
  `exp` int(11) NOT NULL DEFAULT 0,
  `gold` bigint(16) NULL DEFAULT NULL,
  `cheque` int(11) NOT NULL DEFAULT 0,
  `stat_point` smallint(3) NOT NULL DEFAULT 0,
  `skill_point` smallint(3) NOT NULL DEFAULT 0,
  `quickslot` tinyblob NULL DEFAULT NULL,
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0.0.0.0',
  `part_main` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `part_base` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `part_hair` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `part_acce` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `skill_group` tinyint(4) NOT NULL DEFAULT 0,
  `skill_level` blob NULL DEFAULT NULL,
  `alignment` int(11) NOT NULL DEFAULT 0,
  `last_play` datetime NOT NULL DEFAULT current_timestamp(),
  `change_name` tinyint(1) NOT NULL DEFAULT 0,
  `mobile` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_skill_point` smallint(3) NOT NULL DEFAULT 0,
  `stat_reset_count` tinyint(4) NOT NULL DEFAULT 0,
  `horse_hp` smallint(4) NOT NULL DEFAULT 0,
  `horse_stamina` smallint(4) NOT NULL DEFAULT 0,
  `horse_level` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `horse_hp_droptime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `horse_riding` tinyint(1) NOT NULL DEFAULT 0,
  `horse_skill_point` smallint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `account_id_idx`(`account_id` ASC) USING BTREE,
  INDEX `name_idx`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player
-- ----------------------------
INSERT INTO `player` VALUES (1, 1, 'ROOT', 0, 0, 0, 959226, 269689, 0, 41, 959226, 269689, 41, 8516, 2402, 1135, 5236, 2142, 1361, 120, 0, 14, 67, 3, 3, 0, 61121910257478, 0, 289, 52, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '192.168.1.57', 0, 0, 0, 0, 1, 0x000000000000000400000000000600000000011400000000011400000000000600000000011400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 490, '2024-11-09 09:59:18', 0, NULL, 111, 0, 18, 30, 11, 1731400750, 0, 0);
INSERT INTO `player` VALUES (2, 2, 'ROOT1', 0, 0, 0, 960107, 270237, 0, 41, 960107, 270237, 41, 1244, 340, 860, 164, 80, 36, 5, 0, 6, 4, 3, 3, 0, 10541219877743, 0, 12, 4, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '192.168.1.57', 0, 0, 0, 0, 0, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 60, '2024-11-09 05:08:06', 0, NULL, 0, 0, 18, 30, 11, 1731384082, 0, 0);
INSERT INTO `player` VALUES (3, 3, 'ROOT2', 5, 0, 0, 960430, 268908, 0, 41, 960430, 268908, 41, 918, 340, 1315, 148, 80, 28, 5, 0, 4, 3, 6, 3, 0, 207776664, 3, 12, 4, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '192.168.1.38', 0, 0, 0, 0, 0, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0, '2024-11-03 16:40:43', 0, NULL, 0, 0, 18, 30, 11, 1730905939, 0, 0);
INSERT INTO `player` VALUES (4, 1, 'TESAT', 0, 0, 0, 958188, 264892, 0, 41, 958188, 264892, 41, 928, 340, 820, 168, 80, 0, 5, 0, 6, 4, 3, 3, 0, 0, 0, 12, 4, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '192.168.1.57', 11209, 0, 0, 0, 0, 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0, '2024-11-09 05:08:06', 0, NULL, 0, 0, 18, 30, 11, 1731384056, 0, 0);

-- ----------------------------
-- Table structure for player_deleted
-- ----------------------------
DROP TABLE IF EXISTS `player_deleted`;
CREATE TABLE `player_deleted`  (
  `id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONAME',
  `job` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `voice` tinyint(1) NOT NULL DEFAULT 0,
  `dir` tinyint(2) NOT NULL DEFAULT 0,
  `x` int(11) NOT NULL DEFAULT 0,
  `y` int(11) NOT NULL DEFAULT 0,
  `z` int(11) NOT NULL DEFAULT 0,
  `map_index` int(11) NOT NULL DEFAULT 0,
  `exit_x` int(11) NOT NULL DEFAULT 0,
  `exit_y` int(11) NOT NULL DEFAULT 0,
  `exit_map_index` int(11) NOT NULL DEFAULT 0,
  `hp` int(11) NOT NULL DEFAULT 0,
  `mp` int(11) NOT NULL DEFAULT 0,
  `stamina` smallint(6) NOT NULL DEFAULT 0,
  `random_hp` smallint(5) NOT NULL DEFAULT 0 COMMENT 'if lvl 0, it will be negative',
  `random_sp` smallint(5) NOT NULL DEFAULT 0 COMMENT 'if lvl 0, it will be negative',
  `playtime` int(11) NOT NULL DEFAULT 0,
  `level` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `level_step` tinyint(1) NOT NULL DEFAULT 0,
  `st` smallint(3) NOT NULL DEFAULT 0,
  `ht` smallint(3) NOT NULL DEFAULT 0,
  `dx` smallint(3) NOT NULL DEFAULT 0,
  `iq` smallint(3) NOT NULL DEFAULT 0,
  `exp` int(11) NOT NULL DEFAULT 0,
  `gold` bigint(16) NULL DEFAULT NULL,
  `cheque` int(11) NOT NULL DEFAULT 0,
  `stat_point` smallint(3) NOT NULL DEFAULT 0,
  `skill_point` smallint(3) NOT NULL DEFAULT 0,
  `quickslot` tinyblob NULL DEFAULT NULL,
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0.0.0.0',
  `part_main` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `part_base` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `part_hair` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `part_acce` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `skill_group` tinyint(4) NOT NULL DEFAULT 0,
  `skill_level` blob NULL DEFAULT NULL,
  `alignment` int(11) NOT NULL DEFAULT 0,
  `last_play` datetime NOT NULL DEFAULT current_timestamp(),
  `change_name` tinyint(1) NOT NULL DEFAULT 0,
  `mobile` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_skill_point` smallint(3) NOT NULL DEFAULT 0,
  `stat_reset_count` tinyint(4) NOT NULL DEFAULT 0,
  `horse_hp` smallint(4) NOT NULL DEFAULT 0,
  `horse_stamina` smallint(4) NOT NULL DEFAULT 0,
  `horse_level` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `horse_hp_droptime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `horse_riding` tinyint(1) NOT NULL DEFAULT 0,
  `horse_skill_point` smallint(3) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_deleted
-- ----------------------------

-- ----------------------------
-- Table structure for player_index
-- ----------------------------
DROP TABLE IF EXISTS `player_index`;
CREATE TABLE `player_index`  (
  `id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pid1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pid2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pid3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pid4` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pid5` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `empire` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid1_key`(`pid1` ASC) USING BTREE,
  INDEX `pid2_key`(`pid2` ASC) USING BTREE,
  INDEX `pid3_key`(`pid3` ASC) USING BTREE,
  INDEX `pid4_key`(`pid4` ASC) USING BTREE,
  INDEX `pid5_key`(`pid5` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_index
-- ----------------------------
INSERT INTO `player_index` VALUES (1, 1, 4, 0, 0, 0, 3);
INSERT INTO `player_index` VALUES (2, 2, 0, 0, 0, 0, 3);
INSERT INTO `player_index` VALUES (3, 3, 0, 0, 0, 0, 3);

-- ----------------------------
-- Table structure for quest
-- ----------------------------
DROP TABLE IF EXISTS `quest`;
CREATE TABLE `quest`  (
  `dwPID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `szName` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szState` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lValue` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`dwPID`, `szName`, `szState`) USING BTREE,
  INDEX `pid_idx`(`dwPID` ASC) USING BTREE,
  INDEX `name_idx`(`szName` ASC) USING BTREE,
  INDEX `state_idx`(`szState` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest
-- ----------------------------
INSERT INTO `quest` VALUES (0, 'oxevent_status', '', 0);
INSERT INTO `quest` VALUES (0, 'threeway_war', '', 1);
INSERT INTO `quest` VALUES (0, 'threeway_war_boss_count', '', 5);
INSERT INTO `quest` VALUES (0, 'threeway_war_choice', '', 1);
INSERT INTO `quest` VALUES (0, 'threeway_war_dead_count', '', 25);
INSERT INTO `quest` VALUES (0, 'threeway_war_kill_count', '', 250);
INSERT INTO `quest` VALUES (0, 'threeway_war_level_max', '', 39);
INSERT INTO `quest` VALUES (0, 'threeway_war_level_min', '', 15);
INSERT INTO `quest` VALUES (0, 'threeway_war_open_gate1', '', 1);
INSERT INTO `quest` VALUES (0, 'threeway_war_open_gate2', '', 1);
INSERT INTO `quest` VALUES (0, 'threeway_war_open_gate3', '', 1);
INSERT INTO `quest` VALUES (0, 'threeway_war_pass_idx', '', 1);
INSERT INTO `quest` VALUES (0, 'threeway_war_sungzi_idx', '', 0);
INSERT INTO `quest` VALUES (1, 'change_guild_master', 'open_count', 3);
INSERT INTO `quest` VALUES (1, 'change_guild_master', 'open_item_storage_count', 1);
INSERT INTO `quest` VALUES (1, 'change_guild_master', '__status', -1800287157);
INSERT INTO `quest` VALUES (1, 'collect_quest_lv30', '__status', 695801987);
INSERT INTO `quest` VALUES (1, 'dragon_soul_shop', '__status', 695801987);
INSERT INTO `quest` VALUES (1, 'energy_system', '__status', -1515020254);
INSERT INTO `quest` VALUES (1, 'give_basic_weapon', 'basic_weapon', 1);
INSERT INTO `quest` VALUES (1, 'guild_war_join', '__status', 695801987);
INSERT INTO `quest` VALUES (1, 'stash', 'open_count', 3);
INSERT INTO `quest` VALUES (1, 'stash', 'open_item_storage_count', 2);
INSERT INTO `quest` VALUES (1, 'stash', '__status', -1800287157);
INSERT INTO `quest` VALUES (1, 'training_grandmaster_skill', 'basic_weapon', 1);
INSERT INTO `quest` VALUES (2, 'give_basic_weapon', 'basic_weapon', 1);
INSERT INTO `quest` VALUES (2, 'give_basic_weapon', '__status', 668443392);
INSERT INTO `quest` VALUES (2, 'skill_group', '__status', 1349952704);
INSERT INTO `quest` VALUES (3, 'give_basic_weapon', 'basic_weapon', 1);
INSERT INTO `quest` VALUES (3, 'give_basic_weapon', '__status', 668443392);
INSERT INTO `quest` VALUES (3, 'skill_group', '__status', 1349952704);
INSERT INTO `quest` VALUES (4, 'give_basic_weapon', 'basic_weapon', 1);
INSERT INTO `quest` VALUES (4, 'give_basic_weapon', '__status', 668443392);
INSERT INTO `quest` VALUES (4, 'skill_group', '__status', 1349952704);

-- ----------------------------
-- Table structure for refine_proto
-- ----------------------------
DROP TABLE IF EXISTS `refine_proto`;
CREATE TABLE `refine_proto`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vnum0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count0` smallint(6) NOT NULL DEFAULT 0,
  `vnum1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count1` smallint(6) NOT NULL DEFAULT 0,
  `vnum2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count2` smallint(6) NOT NULL DEFAULT 0,
  `vnum3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count3` smallint(6) NOT NULL DEFAULT 0,
  `vnum4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count4` smallint(6) NOT NULL DEFAULT 0,
  `cost` bigint(11) NOT NULL DEFAULT 0,
  `src_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `result_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `prob` smallint(6) NOT NULL DEFAULT 100,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 760 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of refine_proto
-- ----------------------------
INSERT INTO `refine_proto` VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (7, 30053, 1, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (8, 30073, 2, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (9, 30033, 2, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (14, 30030, 2, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (15, 30075, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (16, 30056, 2, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (17, 30022, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (18, 30067, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (23, 30079, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (24, 30015, 1, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (25, 30016, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (26, 30089, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (27, 30091, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (34, 30034, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (35, 30011, 2, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (36, 30035, 2, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (41, 30052, 2, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (42, 30046, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (43, 30045, 2, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (44, 30025, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (45, 30058, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (50, 30083, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (51, 30060, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (52, 30061, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (53, 30088, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (54, 30019, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (61, 30070, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (62, 30072, 2, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (63, 30017, 2, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (68, 30041, 1, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (69, 30008, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (70, 30057, 1, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (71, 30081, 1, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (72, 30077, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (77, 30009, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (78, 30039, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (79, 30040, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (80, 30048, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (81, 30090, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (88, 30031, 1, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (89, 30032, 2, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (90, 30033, 2, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (95, 30008, 2, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (96, 30075, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (97, 30006, 2, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (98, 30022, 1, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (99, 30067, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (104, 30079, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (105, 30015, 1, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (106, 30086, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (107, 30050, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (108, 30091, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (115, 30071, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (116, 30018, 2, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (117, 30017, 2, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (122, 30005, 2, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (123, 30076, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (124, 30051, 1, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (125, 30081, 1, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (126, 30047, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (131, 30009, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (132, 30080, 1, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (133, 30040, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (134, 30049, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (135, 30090, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (142, 30038, 1, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (143, 30023, 2, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (144, 30074, 2, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (149, 30007, 2, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (150, 30078, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (151, 30045, 2, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (152, 30055, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (153, 30047, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (158, 30059, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (159, 30080, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (160, 30085, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (161, 30014, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (162, 30042, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (169, 30010, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (170, 30031, 1, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (171, 30032, 2, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (174, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (176, 30021, 2, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (177, 30008, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (178, 30057, 2, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (179, 30006, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (180, 30022, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (185, 30082, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (186, 30079, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (187, 30087, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (188, 30086, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (189, 30050, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (196, 30038, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (197, 30011, 2, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (198, 30074, 1, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (203, 30007, 2, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (204, 30046, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (205, 30045, 2, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (206, 30055, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (207, 30058, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (212, 30059, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (213, 30060, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (214, 30061, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (215, 30014, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (216, 30042, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (223, 30071, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (224, 30023, 1, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (225, 30074, 2, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 96);
INSERT INTO `refine_proto` VALUES (227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 93);
INSERT INTO `refine_proto` VALUES (228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (230, 30005, 1, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (231, 30078, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (232, 30051, 1, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (233, 30055, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (234, 30047, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (239, 30059, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (240, 30080, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (241, 30085, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (242, 30049, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (243, 30042, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (250, 30070, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (251, 30018, 2, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (252, 30017, 2, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (257, 30041, 2, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (258, 30076, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (259, 30051, 2, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (260, 30081, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (261, 30077, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (266, 30009, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (267, 30039, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (268, 30040, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (269, 30048, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (270, 30090, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (277, 30010, 1, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (278, 30072, 2, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (279, 30032, 1, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (284, 30021, 1, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (285, 30008, 1, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (286, 30057, 1, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (287, 30006, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (288, 30077, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (293, 30082, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (294, 30039, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (295, 30087, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (296, 30086, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (297, 30050, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (304, 30053, 1, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (305, 30073, 1, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (306, 30035, 2, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (310, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (311, 30030, 2, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (312, 30075, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (313, 30056, 2, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (314, 30025, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (315, 30067, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (318, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (320, 30083, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (321, 30015, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (322, 30016, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (323, 30089, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (324, 30019, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (329, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (330, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (331, 30034, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (332, 30073, 2, 0, 0, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (333, 30035, 2, 0, 0, 0, 0, 0, 0, 0, 0, 75000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (338, 30052, 2, 0, 0, 0, 0, 0, 0, 0, 0, 13000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (339, 30046, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (340, 30056, 2, 27799, 1, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (341, 30025, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 70000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (342, 30058, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (343, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (347, 30083, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (348, 30060, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (349, 30061, 2, 30193, 2, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (350, 30088, 2, 30193, 4, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (351, 30019, 2, 30193, 6, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (400, 30192, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (401, 30194, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (402, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (404, 30083, 2, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (405, 30060, 2, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (406, 30061, 2, 30193, 2, 0, 0, 0, 0, 0, 0, 45000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (407, 30088, 2, 30193, 4, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (408, 30019, 2, 30193, 6, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (430, 30005, 1, 0, 0, 0, 0, 0, 0, 0, 0, 26000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (431, 30078, 1, 0, 0, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (432, 30051, 1, 27799, 1, 0, 0, 0, 0, 0, 0, 80000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (433, 30055, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (434, 30047, 2, 27987, 1, 0, 0, 0, 0, 0, 0, 240000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (501, 25040, 2, 70031, 1, 0, 0, 0, 0, 0, 0, 100000, 0, 0, 100);
INSERT INTO `refine_proto` VALUES (502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 140000, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 170000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (507, 30050, 2, 0, 0, 0, 0, 0, 0, 0, 0, 290000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (508, 30083, 2, 27992, 1, 0, 0, 0, 0, 0, 0, 340000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (509, 30040, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 410000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (510, 30089, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 500000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7500, 0, 0, 90);
INSERT INTO `refine_proto` VALUES (532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15000, 0, 0, 81);
INSERT INTO `refine_proto` VALUES (533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25000, 0, 0, 72);
INSERT INTO `refine_proto` VALUES (534, 30196, 2, 0, 0, 0, 0, 0, 0, 0, 0, 40000, 0, 0, 63);
INSERT INTO `refine_proto` VALUES (535, 30090, 3, 0, 0, 0, 0, 0, 0, 0, 0, 65000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (536, 30195, 2, 0, 0, 0, 0, 0, 0, 0, 0, 90000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (537, 30197, 4, 27992, 1, 0, 0, 0, 0, 0, 0, 120000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (538, 30198, 2, 27993, 1, 0, 0, 0, 0, 0, 0, 150000, 0, 0, 27);
INSERT INTO `refine_proto` VALUES (539, 30199, 2, 27994, 1, 0, 0, 0, 0, 0, 0, 200000, 0, 0, 18);
INSERT INTO `refine_proto` VALUES (701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000000, 0, 0, 25);
INSERT INTO `refine_proto` VALUES (703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100);
INSERT INTO `refine_proto` VALUES (751, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 0, 45);
INSERT INTO `refine_proto` VALUES (752, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500000, 0, 0, 54);
INSERT INTO `refine_proto` VALUES (753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000000, 0, 0, 36);
INSERT INTO `refine_proto` VALUES (758, 71123, 2, 71129, 3, 0, 0, 0, 0, 0, 0, 125000, 0, 0, 100);
INSERT INTO `refine_proto` VALUES (759, 71123, 3, 71129, 4, 0, 0, 0, 0, 0, 0, 200000, 0, 0, 100);

-- ----------------------------
-- Table structure for safebox
-- ----------------------------
DROP TABLE IF EXISTS `safebox`;
CREATE TABLE `safebox`  (
  `account_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `size` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `password` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `gold` bigint(16) NULL DEFAULT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of safebox
-- ----------------------------
INSERT INTO `safebox` VALUES (1, 1, '', 0);

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `vnum` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Noname',
  `npc_vnum` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (1, '????', 9001);
INSERT INTO `shop` VALUES (2, '?????', 9009);
INSERT INTO `shop` VALUES (3, '????', 9003);
INSERT INTO `shop` VALUES (4, '?????', 9002);
INSERT INTO `shop` VALUES (5, 'imba_shop2', 9007);
INSERT INTO `shop` VALUES (6, 'imba_shop1', 9008);
INSERT INTO `shop` VALUES (7, 'gold_bar_shop', 9005);
INSERT INTO `shop` VALUES (8, 'firework_shop', 9004);
INSERT INTO `shop` VALUES (9, '?? ???', 20042);
INSERT INTO `shop` VALUES (10, 'pick_shop', 20015);
INSERT INTO `shop` VALUES (1001, 'all_sword', 20086);
INSERT INTO `shop` VALUES (1002, 'all_dualhand_sword', 0);
INSERT INTO `shop` VALUES (1003, 'all_bow', 0);
INSERT INTO `shop` VALUES (1004, 'all_twohand_sword', 0);
INSERT INTO `shop` VALUES (1005, 'all_bell', 0);
INSERT INTO `shop` VALUES (1006, 'all_fan', 0);
INSERT INTO `shop` VALUES (1007, 'all_warrior_armour', 20087);
INSERT INTO `shop` VALUES (1008, 'all_assassin_armour', 0);
INSERT INTO `shop` VALUES (1009, 'all_sura_armour', 0);
INSERT INTO `shop` VALUES (1010, 'all_shaman_armour', 0);
INSERT INTO `shop` VALUES (1011, 'all_warrior_helmet', 0);
INSERT INTO `shop` VALUES (1012, 'all_assassin_helmet', 0);
INSERT INTO `shop` VALUES (1013, 'all_sura_helmet', 0);
INSERT INTO `shop` VALUES (1014, 'all_shaman_helmet', 0);
INSERT INTO `shop` VALUES (1015, 'all_shield', 0);
INSERT INTO `shop` VALUES (1016, 'all_bracelet', 0);
INSERT INTO `shop` VALUES (1017, 'all_shoe', 0);
INSERT INTO `shop` VALUES (1018, 'all_necklace', 0);
INSERT INTO `shop` VALUES (1019, 'all_ring', 0);
INSERT INTO `shop` VALUES (2000, 'hairstyles_mage', 20094);
INSERT INTO `shop` VALUES (2001, 'hairstyles_ninja', 20094);
INSERT INTO `shop` VALUES (2002, 'hairstyles_warrior', 20094);
INSERT INTO `shop` VALUES (2003, 'hairstyles_sura', 20094);

-- ----------------------------
-- Table structure for shop_item
-- ----------------------------
DROP TABLE IF EXISTS `shop_item`;
CREATE TABLE `shop_item`  (
  `shop_vnum` int(11) NOT NULL DEFAULT 0,
  `item_vnum` int(11) NOT NULL DEFAULT 0,
  `count` tinyint(4) UNSIGNED NOT NULL DEFAULT 1,
  UNIQUE INDEX `vnum_unique`(`shop_vnum` ASC, `item_vnum` ASC, `count` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_item
-- ----------------------------
INSERT INTO `shop_item` VALUES (1, 20, 1);
INSERT INTO `shop_item` VALUES (1, 40, 1);
INSERT INTO `shop_item` VALUES (1, 60, 1);
INSERT INTO `shop_item` VALUES (1, 80, 1);
INSERT INTO `shop_item` VALUES (1, 1040, 1);
INSERT INTO `shop_item` VALUES (1, 2010, 1);
INSERT INTO `shop_item` VALUES (1, 2030, 1);
INSERT INTO `shop_item` VALUES (1, 2050, 1);
INSERT INTO `shop_item` VALUES (1, 2070, 1);
INSERT INTO `shop_item` VALUES (1, 3010, 1);
INSERT INTO `shop_item` VALUES (1, 3030, 1);
INSERT INTO `shop_item` VALUES (1, 3050, 1);
INSERT INTO `shop_item` VALUES (1, 3070, 1);
INSERT INTO `shop_item` VALUES (1, 4000, 1);
INSERT INTO `shop_item` VALUES (1, 4010, 1);
INSERT INTO `shop_item` VALUES (1, 4020, 1);
INSERT INTO `shop_item` VALUES (1, 5010, 1);
INSERT INTO `shop_item` VALUES (1, 5030, 1);
INSERT INTO `shop_item` VALUES (1, 7010, 1);
INSERT INTO `shop_item` VALUES (1, 7030, 1);
INSERT INTO `shop_item` VALUES (1, 7050, 1);
INSERT INTO `shop_item` VALUES (1, 8000, 100);
INSERT INTO `shop_item` VALUES (1, 8000, 200);
INSERT INTO `shop_item` VALUES (2, 27400, 1);
INSERT INTO `shop_item` VALUES (2, 27600, 1);
INSERT INTO `shop_item` VALUES (2, 27610, 1);
INSERT INTO `shop_item` VALUES (2, 27800, 5);
INSERT INTO `shop_item` VALUES (2, 27800, 50);
INSERT INTO `shop_item` VALUES (2, 27801, 5);
INSERT INTO `shop_item` VALUES (2, 27801, 50);
INSERT INTO `shop_item` VALUES (3, 14000, 1);
INSERT INTO `shop_item` VALUES (3, 15000, 1);
INSERT INTO `shop_item` VALUES (3, 16000, 1);
INSERT INTO `shop_item` VALUES (3, 17000, 1);
INSERT INTO `shop_item` VALUES (3, 22010, 5);
INSERT INTO `shop_item` VALUES (3, 27001, 20);
INSERT INTO `shop_item` VALUES (3, 27001, 200);
INSERT INTO `shop_item` VALUES (3, 27002, 20);
INSERT INTO `shop_item` VALUES (3, 27002, 200);
INSERT INTO `shop_item` VALUES (3, 27003, 20);
INSERT INTO `shop_item` VALUES (3, 27003, 200);
INSERT INTO `shop_item` VALUES (3, 27004, 20);
INSERT INTO `shop_item` VALUES (3, 27004, 200);
INSERT INTO `shop_item` VALUES (3, 27005, 20);
INSERT INTO `shop_item` VALUES (3, 27005, 200);
INSERT INTO `shop_item` VALUES (3, 27006, 20);
INSERT INTO `shop_item` VALUES (3, 27006, 200);
INSERT INTO `shop_item` VALUES (3, 27103, 10);
INSERT INTO `shop_item` VALUES (3, 27104, 10);
INSERT INTO `shop_item` VALUES (3, 27105, 10);
INSERT INTO `shop_item` VALUES (3, 27110, 10);
INSERT INTO `shop_item` VALUES (3, 50200, 1);
INSERT INTO `shop_item` VALUES (3, 50901, 10);
INSERT INTO `shop_item` VALUES (3, 71113, 5);
INSERT INTO `shop_item` VALUES (4, 11200, 1);
INSERT INTO `shop_item` VALUES (4, 11220, 1);
INSERT INTO `shop_item` VALUES (4, 11230, 1);
INSERT INTO `shop_item` VALUES (4, 11400, 1);
INSERT INTO `shop_item` VALUES (4, 11420, 1);
INSERT INTO `shop_item` VALUES (4, 11430, 1);
INSERT INTO `shop_item` VALUES (4, 11600, 1);
INSERT INTO `shop_item` VALUES (4, 11620, 1);
INSERT INTO `shop_item` VALUES (4, 11630, 1);
INSERT INTO `shop_item` VALUES (4, 11800, 1);
INSERT INTO `shop_item` VALUES (4, 11820, 1);
INSERT INTO `shop_item` VALUES (4, 11830, 1);
INSERT INTO `shop_item` VALUES (4, 12200, 1);
INSERT INTO `shop_item` VALUES (4, 12340, 1);
INSERT INTO `shop_item` VALUES (4, 12480, 1);
INSERT INTO `shop_item` VALUES (4, 12620, 1);
INSERT INTO `shop_item` VALUES (4, 13000, 1);
INSERT INTO `shop_item` VALUES (5, 3100, 1);
INSERT INTO `shop_item` VALUES (5, 5020, 1);
INSERT INTO `shop_item` VALUES (5, 5030, 1);
INSERT INTO `shop_item` VALUES (5, 5040, 1);
INSERT INTO `shop_item` VALUES (5, 5050, 1);
INSERT INTO `shop_item` VALUES (5, 5070, 1);
INSERT INTO `shop_item` VALUES (5, 5080, 1);
INSERT INTO `shop_item` VALUES (5, 7020, 1);
INSERT INTO `shop_item` VALUES (5, 7050, 1);
INSERT INTO `shop_item` VALUES (5, 7060, 1);
INSERT INTO `shop_item` VALUES (5, 7090, 1);
INSERT INTO `shop_item` VALUES (5, 7100, 1);
INSERT INTO `shop_item` VALUES (6, 14000, 1);
INSERT INTO `shop_item` VALUES (6, 14020, 1);
INSERT INTO `shop_item` VALUES (6, 14040, 1);
INSERT INTO `shop_item` VALUES (6, 14060, 1);
INSERT INTO `shop_item` VALUES (6, 14080, 1);
INSERT INTO `shop_item` VALUES (6, 14140, 1);
INSERT INTO `shop_item` VALUES (6, 15000, 1);
INSERT INTO `shop_item` VALUES (6, 15020, 1);
INSERT INTO `shop_item` VALUES (6, 15040, 1);
INSERT INTO `shop_item` VALUES (6, 15060, 1);
INSERT INTO `shop_item` VALUES (6, 15080, 1);
INSERT INTO `shop_item` VALUES (6, 15160, 1);
INSERT INTO `shop_item` VALUES (6, 16000, 1);
INSERT INTO `shop_item` VALUES (6, 16020, 1);
INSERT INTO `shop_item` VALUES (6, 16040, 1);
INSERT INTO `shop_item` VALUES (6, 16060, 1);
INSERT INTO `shop_item` VALUES (6, 16080, 1);
INSERT INTO `shop_item` VALUES (6, 16180, 1);
INSERT INTO `shop_item` VALUES (6, 17000, 1);
INSERT INTO `shop_item` VALUES (6, 17020, 1);
INSERT INTO `shop_item` VALUES (6, 17040, 1);
INSERT INTO `shop_item` VALUES (6, 17060, 1);
INSERT INTO `shop_item` VALUES (6, 17080, 1);
INSERT INTO `shop_item` VALUES (6, 17180, 1);
INSERT INTO `shop_item` VALUES (7, 80003, 1);
INSERT INTO `shop_item` VALUES (7, 80004, 1);
INSERT INTO `shop_item` VALUES (7, 80005, 1);
INSERT INTO `shop_item` VALUES (7, 80006, 1);
INSERT INTO `shop_item` VALUES (7, 80007, 1);
INSERT INTO `shop_item` VALUES (8, 50100, 100);
INSERT INTO `shop_item` VALUES (8, 50101, 100);
INSERT INTO `shop_item` VALUES (8, 50102, 100);
INSERT INTO `shop_item` VALUES (8, 50103, 100);
INSERT INTO `shop_item` VALUES (8, 50104, 100);
INSERT INTO `shop_item` VALUES (8, 50105, 100);
INSERT INTO `shop_item` VALUES (9, 11901, 1);
INSERT INTO `shop_item` VALUES (9, 11903, 1);
INSERT INTO `shop_item` VALUES (9, 50201, 1);
INSERT INTO `shop_item` VALUES (10, 29101, 1);
INSERT INTO `shop_item` VALUES (11, 50054, 1);
INSERT INTO `shop_item` VALUES (11, 50055, 1);
INSERT INTO `shop_item` VALUES (11, 50056, 1);
INSERT INTO `shop_item` VALUES (1001, 15, 1);
INSERT INTO `shop_item` VALUES (1001, 25, 1);
INSERT INTO `shop_item` VALUES (1001, 35, 1);
INSERT INTO `shop_item` VALUES (1001, 45, 1);
INSERT INTO `shop_item` VALUES (1001, 55, 1);
INSERT INTO `shop_item` VALUES (1001, 65, 1);
INSERT INTO `shop_item` VALUES (1001, 75, 1);
INSERT INTO `shop_item` VALUES (1001, 85, 1);
INSERT INTO `shop_item` VALUES (1001, 95, 1);
INSERT INTO `shop_item` VALUES (1001, 105, 1);
INSERT INTO `shop_item` VALUES (1001, 115, 1);
INSERT INTO `shop_item` VALUES (1001, 125, 1);
INSERT INTO `shop_item` VALUES (1001, 135, 1);
INSERT INTO `shop_item` VALUES (1002, 1000, 1);
INSERT INTO `shop_item` VALUES (1002, 1010, 1);
INSERT INTO `shop_item` VALUES (1002, 1020, 1);
INSERT INTO `shop_item` VALUES (1002, 1030, 1);
INSERT INTO `shop_item` VALUES (1002, 1040, 1);
INSERT INTO `shop_item` VALUES (1002, 1050, 1);
INSERT INTO `shop_item` VALUES (1002, 1060, 1);
INSERT INTO `shop_item` VALUES (1002, 1070, 1);
INSERT INTO `shop_item` VALUES (1002, 1080, 1);
INSERT INTO `shop_item` VALUES (1002, 1090, 1);
INSERT INTO `shop_item` VALUES (1002, 4000, 1);
INSERT INTO `shop_item` VALUES (1002, 4010, 1);
INSERT INTO `shop_item` VALUES (1002, 4020, 1);
INSERT INTO `shop_item` VALUES (1003, 2000, 1);
INSERT INTO `shop_item` VALUES (1003, 2010, 1);
INSERT INTO `shop_item` VALUES (1003, 2020, 1);
INSERT INTO `shop_item` VALUES (1003, 2030, 1);
INSERT INTO `shop_item` VALUES (1003, 2040, 1);
INSERT INTO `shop_item` VALUES (1003, 2050, 1);
INSERT INTO `shop_item` VALUES (1003, 2060, 1);
INSERT INTO `shop_item` VALUES (1003, 2070, 1);
INSERT INTO `shop_item` VALUES (1003, 2080, 1);
INSERT INTO `shop_item` VALUES (1003, 2090, 1);
INSERT INTO `shop_item` VALUES (1003, 2100, 1);
INSERT INTO `shop_item` VALUES (1003, 2110, 1);
INSERT INTO `shop_item` VALUES (1003, 2120, 1);
INSERT INTO `shop_item` VALUES (1003, 8000, 50);
INSERT INTO `shop_item` VALUES (1003, 8000, 200);
INSERT INTO `shop_item` VALUES (1004, 3000, 1);
INSERT INTO `shop_item` VALUES (1004, 3010, 1);
INSERT INTO `shop_item` VALUES (1004, 3020, 1);
INSERT INTO `shop_item` VALUES (1004, 3030, 1);
INSERT INTO `shop_item` VALUES (1004, 3040, 1);
INSERT INTO `shop_item` VALUES (1004, 3050, 1);
INSERT INTO `shop_item` VALUES (1004, 3060, 1);
INSERT INTO `shop_item` VALUES (1004, 3070, 1);
INSERT INTO `shop_item` VALUES (1004, 3080, 1);
INSERT INTO `shop_item` VALUES (1004, 3090, 1);
INSERT INTO `shop_item` VALUES (1004, 3100, 1);
INSERT INTO `shop_item` VALUES (1004, 3110, 1);
INSERT INTO `shop_item` VALUES (1004, 3120, 1);
INSERT INTO `shop_item` VALUES (1005, 5000, 1);
INSERT INTO `shop_item` VALUES (1005, 5010, 1);
INSERT INTO `shop_item` VALUES (1005, 5020, 1);
INSERT INTO `shop_item` VALUES (1005, 5030, 1);
INSERT INTO `shop_item` VALUES (1005, 5040, 1);
INSERT INTO `shop_item` VALUES (1005, 5050, 1);
INSERT INTO `shop_item` VALUES (1005, 5060, 1);
INSERT INTO `shop_item` VALUES (1005, 5070, 1);
INSERT INTO `shop_item` VALUES (1005, 5080, 1);
INSERT INTO `shop_item` VALUES (1006, 7000, 1);
INSERT INTO `shop_item` VALUES (1006, 7010, 1);
INSERT INTO `shop_item` VALUES (1006, 7020, 1);
INSERT INTO `shop_item` VALUES (1006, 7030, 1);
INSERT INTO `shop_item` VALUES (1006, 7040, 1);
INSERT INTO `shop_item` VALUES (1006, 7050, 1);
INSERT INTO `shop_item` VALUES (1006, 7060, 1);
INSERT INTO `shop_item` VALUES (1006, 7070, 1);
INSERT INTO `shop_item` VALUES (1006, 7080, 1);
INSERT INTO `shop_item` VALUES (1006, 7090, 1);
INSERT INTO `shop_item` VALUES (1006, 7100, 1);
INSERT INTO `shop_item` VALUES (1006, 7110, 1);
INSERT INTO `shop_item` VALUES (1006, 7120, 1);
INSERT INTO `shop_item` VALUES (1007, 11200, 1);
INSERT INTO `shop_item` VALUES (1007, 11210, 1);
INSERT INTO `shop_item` VALUES (1007, 11220, 1);
INSERT INTO `shop_item` VALUES (1007, 11230, 1);
INSERT INTO `shop_item` VALUES (1007, 11240, 1);
INSERT INTO `shop_item` VALUES (1007, 11250, 1);
INSERT INTO `shop_item` VALUES (1007, 11260, 1);
INSERT INTO `shop_item` VALUES (1008, 11400, 1);
INSERT INTO `shop_item` VALUES (1008, 11410, 1);
INSERT INTO `shop_item` VALUES (1008, 11420, 1);
INSERT INTO `shop_item` VALUES (1008, 11430, 1);
INSERT INTO `shop_item` VALUES (1008, 11440, 1);
INSERT INTO `shop_item` VALUES (1008, 11450, 1);
INSERT INTO `shop_item` VALUES (1008, 11460, 1);
INSERT INTO `shop_item` VALUES (1009, 11600, 1);
INSERT INTO `shop_item` VALUES (1009, 11610, 1);
INSERT INTO `shop_item` VALUES (1009, 11620, 1);
INSERT INTO `shop_item` VALUES (1009, 11630, 1);
INSERT INTO `shop_item` VALUES (1009, 11640, 1);
INSERT INTO `shop_item` VALUES (1009, 11650, 1);
INSERT INTO `shop_item` VALUES (1009, 11660, 1);
INSERT INTO `shop_item` VALUES (1010, 11800, 1);
INSERT INTO `shop_item` VALUES (1010, 11810, 1);
INSERT INTO `shop_item` VALUES (1010, 11820, 1);
INSERT INTO `shop_item` VALUES (1010, 11830, 1);
INSERT INTO `shop_item` VALUES (1010, 11840, 1);
INSERT INTO `shop_item` VALUES (1010, 11850, 1);
INSERT INTO `shop_item` VALUES (1010, 11860, 1);
INSERT INTO `shop_item` VALUES (1011, 12200, 1);
INSERT INTO `shop_item` VALUES (1011, 12220, 1);
INSERT INTO `shop_item` VALUES (1011, 12240, 1);
INSERT INTO `shop_item` VALUES (1012, 12340, 1);
INSERT INTO `shop_item` VALUES (1012, 12360, 1);
INSERT INTO `shop_item` VALUES (1012, 12380, 1);
INSERT INTO `shop_item` VALUES (1013, 12480, 1);
INSERT INTO `shop_item` VALUES (1013, 12500, 1);
INSERT INTO `shop_item` VALUES (1013, 12520, 1);
INSERT INTO `shop_item` VALUES (1014, 12620, 1);
INSERT INTO `shop_item` VALUES (1014, 12640, 1);
INSERT INTO `shop_item` VALUES (1014, 12660, 1);
INSERT INTO `shop_item` VALUES (1015, 13000, 1);
INSERT INTO `shop_item` VALUES (1015, 13040, 1);
INSERT INTO `shop_item` VALUES (1016, 14000, 1);
INSERT INTO `shop_item` VALUES (1016, 14020, 1);
INSERT INTO `shop_item` VALUES (1016, 14040, 1);
INSERT INTO `shop_item` VALUES (1016, 14060, 1);
INSERT INTO `shop_item` VALUES (1016, 14080, 1);
INSERT INTO `shop_item` VALUES (1016, 14100, 1);
INSERT INTO `shop_item` VALUES (1016, 14120, 1);
INSERT INTO `shop_item` VALUES (1016, 14140, 1);
INSERT INTO `shop_item` VALUES (1016, 14160, 1);
INSERT INTO `shop_item` VALUES (1016, 14180, 1);
INSERT INTO `shop_item` VALUES (1016, 14200, 1);
INSERT INTO `shop_item` VALUES (1017, 15000, 1);
INSERT INTO `shop_item` VALUES (1017, 15020, 1);
INSERT INTO `shop_item` VALUES (1017, 15040, 1);
INSERT INTO `shop_item` VALUES (1017, 15060, 1);
INSERT INTO `shop_item` VALUES (1017, 15080, 1);
INSERT INTO `shop_item` VALUES (1017, 15100, 1);
INSERT INTO `shop_item` VALUES (1017, 15120, 1);
INSERT INTO `shop_item` VALUES (1017, 15140, 1);
INSERT INTO `shop_item` VALUES (1017, 15160, 1);
INSERT INTO `shop_item` VALUES (1017, 15180, 1);
INSERT INTO `shop_item` VALUES (1017, 15200, 1);
INSERT INTO `shop_item` VALUES (1017, 15220, 1);
INSERT INTO `shop_item` VALUES (1018, 16000, 1);
INSERT INTO `shop_item` VALUES (1018, 16020, 1);
INSERT INTO `shop_item` VALUES (1018, 16040, 1);
INSERT INTO `shop_item` VALUES (1018, 16060, 1);
INSERT INTO `shop_item` VALUES (1018, 16080, 1);
INSERT INTO `shop_item` VALUES (1018, 16100, 1);
INSERT INTO `shop_item` VALUES (1018, 16120, 1);
INSERT INTO `shop_item` VALUES (1018, 16140, 1);
INSERT INTO `shop_item` VALUES (1018, 16160, 1);
INSERT INTO `shop_item` VALUES (1018, 16180, 1);
INSERT INTO `shop_item` VALUES (1018, 16200, 1);
INSERT INTO `shop_item` VALUES (1019, 17000, 1);
INSERT INTO `shop_item` VALUES (1019, 17020, 1);
INSERT INTO `shop_item` VALUES (1019, 17040, 1);
INSERT INTO `shop_item` VALUES (1019, 17060, 1);
INSERT INTO `shop_item` VALUES (1019, 17080, 1);
INSERT INTO `shop_item` VALUES (1019, 17100, 1);
INSERT INTO `shop_item` VALUES (1019, 17120, 1);
INSERT INTO `shop_item` VALUES (1019, 17140, 1);
INSERT INTO `shop_item` VALUES (1019, 17160, 1);
INSERT INTO `shop_item` VALUES (1019, 17180, 1);
INSERT INTO `shop_item` VALUES (1019, 17200, 1);
INSERT INTO `shop_item` VALUES (2000, 73751, 1);
INSERT INTO `shop_item` VALUES (2000, 73752, 1);
INSERT INTO `shop_item` VALUES (2000, 73753, 1);
INSERT INTO `shop_item` VALUES (2000, 73754, 1);
INSERT INTO `shop_item` VALUES (2000, 73755, 1);
INSERT INTO `shop_item` VALUES (2000, 73756, 1);
INSERT INTO `shop_item` VALUES (2000, 73757, 1);
INSERT INTO `shop_item` VALUES (2000, 73758, 1);
INSERT INTO `shop_item` VALUES (2000, 73759, 1);
INSERT INTO `shop_item` VALUES (2000, 73760, 1);
INSERT INTO `shop_item` VALUES (2000, 73761, 1);
INSERT INTO `shop_item` VALUES (2000, 73762, 1);
INSERT INTO `shop_item` VALUES (2001, 73251, 1);
INSERT INTO `shop_item` VALUES (2001, 73252, 1);
INSERT INTO `shop_item` VALUES (2001, 73253, 1);
INSERT INTO `shop_item` VALUES (2001, 73254, 1);
INSERT INTO `shop_item` VALUES (2001, 73255, 1);
INSERT INTO `shop_item` VALUES (2001, 73256, 1);
INSERT INTO `shop_item` VALUES (2001, 73257, 1);
INSERT INTO `shop_item` VALUES (2001, 73258, 1);
INSERT INTO `shop_item` VALUES (2001, 73259, 1);
INSERT INTO `shop_item` VALUES (2001, 73260, 1);
INSERT INTO `shop_item` VALUES (2001, 73261, 1);
INSERT INTO `shop_item` VALUES (2001, 73262, 1);
INSERT INTO `shop_item` VALUES (2002, 73001, 1);
INSERT INTO `shop_item` VALUES (2002, 73002, 1);
INSERT INTO `shop_item` VALUES (2002, 73003, 1);
INSERT INTO `shop_item` VALUES (2002, 73004, 1);
INSERT INTO `shop_item` VALUES (2002, 73005, 1);
INSERT INTO `shop_item` VALUES (2002, 73006, 1);
INSERT INTO `shop_item` VALUES (2002, 73007, 1);
INSERT INTO `shop_item` VALUES (2002, 73008, 1);
INSERT INTO `shop_item` VALUES (2002, 73009, 1);
INSERT INTO `shop_item` VALUES (2002, 73010, 1);
INSERT INTO `shop_item` VALUES (2002, 73011, 1);
INSERT INTO `shop_item` VALUES (2002, 73012, 1);
INSERT INTO `shop_item` VALUES (2003, 73501, 1);
INSERT INTO `shop_item` VALUES (2003, 73502, 1);
INSERT INTO `shop_item` VALUES (2003, 73503, 1);
INSERT INTO `shop_item` VALUES (2003, 73504, 1);
INSERT INTO `shop_item` VALUES (2003, 73505, 1);
INSERT INTO `shop_item` VALUES (2003, 73506, 1);
INSERT INTO `shop_item` VALUES (2003, 73507, 1);
INSERT INTO `shop_item` VALUES (2003, 73508, 1);
INSERT INTO `shop_item` VALUES (2003, 73509, 1);
INSERT INTO `shop_item` VALUES (2003, 73510, 1);
INSERT INTO `shop_item` VALUES (2003, 73511, 1);
INSERT INTO `shop_item` VALUES (2003, 73512, 1);

-- ----------------------------
-- Table structure for sms_pool
-- ----------------------------
DROP TABLE IF EXISTS `sms_pool`;
CREATE TABLE `sms_pool`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` int(11) NOT NULL DEFAULT 0,
  `sender` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `receiver` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mobile` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sent` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N',
  `msg` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sent_idx`(`sent` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sms_pool
-- ----------------------------

-- ----------------------------
-- Table structure for string
-- ----------------------------
DROP TABLE IF EXISTS `string`;
CREATE TABLE `string`  (
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of string
-- ----------------------------

-- ----------------------------
-- Triggers structure for table player
-- ----------------------------
DROP TRIGGER IF EXISTS `MakeCharacter`;
delimiter ;;
CREATE TRIGGER `MakeCharacter` BEFORE INSERT ON `player` FOR EACH ROW BEGIN
	IF(new.`name` REGEXP '[^A-Za-z0-9]')THEN
		SET new.`name`=NULL;
	END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
