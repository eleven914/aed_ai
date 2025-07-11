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

 Date: 03/07/2025 10:52:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for userpost
-- ----------------------------
DROP TABLE IF EXISTS `userpost`;
CREATE TABLE `userpost`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userpost
-- ----------------------------
INSERT INTO `userpost` VALUES (1, '张三', 'zhangsan@example.com', '咨询', '我想了解更多关于急救的知识...', '2025-07-03 09:37:18');
INSERT INTO `userpost` VALUES (2, '李四', 'zhangsan@example.com', '关于AED设备的咨询', '您好，我想了解附近有哪些地方配备了AED设备？', '2025-07-03 09:53:07');
INSERT INTO `userpost` VALUES (6, '尚越', 'broad440370@outlook.sg', '11', '11', '2025-07-03 09:54:32');
INSERT INTO `userpost` VALUES (7, 'kaito', 'francisadrianna8978@outlook.com', '11', '11', '2025-07-03 09:54:57');

SET FOREIGN_KEY_CHECKS = 1;
