/*
 Navicat MySQL Dump SQL

 Source Server         : AED
 Source Server Type    : MySQL
 Source Server Version : 80042 (8.0.42)
 Source Host           : localhost:3306
 Source Schema         : aed

 Target Server Type    : MySQL
 Target Server Version : 80042 (8.0.42)
 File Encoding         : 65001

 Date: 03/07/2025 09:11:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aed_devices
-- ----------------------------
DROP TABLE IF EXISTS `aed_devices`;
CREATE TABLE `aed_devices`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `location` point NULL,
  `images_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aed_devices
-- ----------------------------
INSERT INTO `aed_devices` VALUES (1, 'AED @ 市中心医院站站台（10号线）', '市中心医院地铁站十号线站台', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (2, 'AED @ 碧沙岗站站厅D出口（1号线）', '碧沙岗公园地铁站D出口', ST_GeomFromText('POINT(113.630255 34.75128)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (3, 'AED @ 郑州中原万达广场', '河南省郑州市中原区中原中路171号', ST_GeomFromText('POINT(113.601543 34.746421)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (4, 'AED @ 二砂站站台（10号线）', '二砂地铁站站台', ST_GeomFromText('POINT(113.643821 34.746075)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (5, 'AED @ 秦岭路站站台B端（1号线）', '1号线秦岭路站站台B端', ST_GeomFromText('POINT(113.60333 34.756676)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (6, 'AED @ 西流湖公园南站站台（10号线）', '西流湖公园南站站台', ST_GeomFromText('POINT(113.583419 34.74745)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (7, 'AED @ 绿城广场站站台上行处（1号线）', '站台上行处', ST_GeomFromText('POINT(113.633434 34.747477)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (8, 'AED @ 月季公园站站厅自动售票机旁（5号线）', '河南省郑州市中原区金水西路71-1号', ST_GeomFromText('POINT(113.616594 34.767187)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (9, 'AED @ 绿城广场站站厅（10号线）', '地铁十号线绿城广场站厅', ST_GeomFromText('POINT(113.633434 34.747477)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (10, 'AED @ 医学院站站厅D出口旁（1号线）', '河南省郑州市二七区中原东路106号', ST_GeomFromText('POINT(113.641168 34.746887)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (11, 'AED @ 医学院站站台A端（1号线）', '医学院地铁站1号线站台A端', ST_GeomFromText('POINT(113.64266 34.74755)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (12, 'AED @ 市骨科医院站站台机电材料间旁(7号线)', '站台机电材料间旁', ST_GeomFromText('POINT(113.64401 34.7364)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (13, 'AED @ 嵩淮站站厅BC口安检机前（6号线）', '站厅BC口安检机前', ST_GeomFromText('POINT(113.62835 34.72887)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (14, 'AED @ 桐淮站站厅A端柱子旁（5号线）', '桐淮地铁站站厅A端柱子旁', ST_GeomFromText('POINT(113.613578 34.728771)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (15, 'AED @ 卧龙岗站站厅车控室前（6号线）', '河南省郑州市中原区秦岭路238-1号', ST_GeomFromText('POINT(113.60302 34.728287)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (16, 'AED @ 李江沟站站厅车控室旁（6号线）', '河南省郑州市中原区淮河西路112-20号', ST_GeomFromText('POINT(113.590688 34.730248)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (17, 'AED @ 市第二人民医院站站台中部（5号线）', '站台中部', ST_GeomFromText('POINT(113.64299 34.720726)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (23, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (24, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (25, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (26, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (27, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (28, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (29, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (30, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (31, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (32, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (33, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (34, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (35, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (36, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (37, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (38, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (39, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (40, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (41, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (42, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (43, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (44, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (45, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (46, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (47, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (48, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (49, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (50, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (51, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (52, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (53, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (54, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (55, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (56, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (57, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (58, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (59, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (60, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (61, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (62, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (63, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (64, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (65, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (66, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (67, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (68, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (69, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (70, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (71, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (72, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (73, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (74, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (75, 'AED @ 市中心医院站站台（1号线）', '市中心医院地铁站1号线站台A端', ST_GeomFromText('POINT(113.613692 34.746931)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (76, '浪客', '某市某县', ST_GeomFromText('POINT(113.535807 34.81732)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (77, '郑州大学图书馆', '郑州大学', ST_GeomFromText('POINT(113.538821 34.817068)', 4326), NULL);
INSERT INTO `aed_devices` VALUES (78, '尚越', '某市某县', ST_GeomFromText('POINT(113.535807 34.81732)', 4326), NULL);

SET FOREIGN_KEY_CHECKS = 1;
