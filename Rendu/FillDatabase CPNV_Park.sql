-- Use the cpnv_park database
USE cpnv_park;
GO

-- Start the transaction
BEGIN TRANSACTION cpnv_parkDataAll;

-- Reset the identity seed to 0 for the paymentmethod table
-- DBCC CHECKIDENT ('paymentmethod', RESEED, 0);

-- -----------------------------------------------------
-- Table cpnv_park.purchasingWays
-- -----------------------------------------------------
/*name : manuellement*/
INSERT INTO purchasingWays (name) VALUES ('Guichet');
INSERT INTO purchasingWays (name) VALUES ('Online');
INSERT INTO purchasingWays (name) VALUES ('Agence de loisirs');

-- -----------------------------------------------------
-- Table cpnv_park.paymentMethods
-- -----------------------------------------------------
/*name : manuellement*/
INSERT INTO paymentMethods (name) VALUES ('Cash');
INSERT INTO paymentMethods (name) VALUES ('Carte');
INSERT INTO paymentMethods (name) VALUES ('Facture papier');
INSERT INTO paymentMethods (name) VALUES ('Twint');

-- -----------------------------------------------------
-- Table cpnv_park.transactions
-- -----------------------------------------------------
/*
number : suivi d’une nomenclature à l’aide d'une formule Excel. Exemple avec 23_2_F_O :
23 > 2023 
2 > id de la transaction 
F > dépend de paymentMethod (ici Facture papier) 
O > dépend de purchasingWay (ici Online) 
dateTime : concaténation d’une date (via la fonction ALEA.ENTRE.BORNES d’Excel) et d’une heure (via l’outil Generate Random Clock Times du site catonmat.net) 
https://catonmat.net/tools/generate-random-clock-times 
paymentMethod_id : via la fonction ALEA.ENTRE.BORNES d’Excel
purchasingWay_id : via la fonction ALEA.ENTRE.BORNES d’Excel
*/
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_1_F_G', '2023-10-11 11:37:04', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_2_F_O', '2023-10-10 00:44:43', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_3_F_G', '2023-12-05 16:49:38', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_4_C2_A', '2023-11-02 00:43:00', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_5_C1_G', '2023-10-17 11:24:49', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_6_F_O', '2023-11-18 15:20:52', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_7_C2_O', '2023-11-10 04:22:37', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_8_F_G', '2023-11-07 13:15:45', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_9_T_G', '2023-11-02 05:20:14', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_10_F_A', '2023-10-18 03:44:30', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_11_C2_A', '2023-12-06 18:32:36', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_12_C1_G', '2023-11-06 09:58:16', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_13_C1_A', '2023-09-14 10:29:15', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_14_C1_A', '2023-09-18 16:15:12', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_15_C2_G', '2023-09-17 20:54:31', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_16_C1_O', '2023-11-27 04:15:20', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_17_C2_G', '2023-10-30 07:33:44', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_18_C2_A', '2023-09-23 14:59:58', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_19_F_A', '2023-09-22 16:55:55', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_20_T_O', '2023-11-02 03:28:14', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_21_C2_G', '2023-09-30 09:37:18', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_22_C2_A', '2023-10-18 09:52:18', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_23_C1_O', '2023-10-19 22:15:39', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_24_F_O', '2023-11-10 23:33:22', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_25_F_A', '2023-10-04 10:05:27', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_26_C2_A', '2023-11-22 17:07:31', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_27_C2_G', '2023-10-30 15:09:24', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_28_T_O', '2023-10-07 13:38:48', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_29_C1_A', '2023-10-12 00:07:36', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_30_C1_A', '2023-11-29 00:47:47', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_31_T_O', '2023-11-27 00:06:41', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_32_C2_O', '2023-11-20 13:25:09', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_33_C1_G', '2023-10-17 22:33:51', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_34_F_O', '2023-11-01 21:35:01', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_35_C2_G', '2023-11-04 13:11:28', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_36_F_G', '2023-11-14 06:38:04', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_37_F_G', '2023-09-14 00:18:37', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_38_T_G', '2023-12-10 20:11:15', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_39_C1_G', '2023-10-12 09:32:31', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_40_C2_G', '2023-10-02 00:59:01', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_41_C2_O', '2023-12-08 01:00:15', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_42_C2_O', '2023-10-28 04:09:02', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_43_F_A', '2023-10-10 02:29:02', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_44_F_G', '2023-10-20 19:51:20', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_45_C2_G', '2023-11-07 09:28:58', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_46_C2_G', '2023-12-13 01:45:14', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_47_C1_G', '2023-12-10 23:44:15', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_48_T_O', '2023-11-17 02:21:35', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_49_C2_A', '2023-10-10 03:39:52', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_50_C2_G', '2023-12-09 04:20:31', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_51_C1_G', '2023-11-10 04:20:05', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_52_T_O', '2023-12-01 17:51:45', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_53_F_G', '2023-11-07 14:08:18', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_54_F_G', '2023-11-15 05:43:41', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_55_C2_O', '2023-11-16 13:13:46', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_56_F_G', '2023-12-06 01:24:05', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_57_C2_G', '2023-11-22 17:39:02', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_58_T_G', '2023-12-04 03:41:21', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_59_C2_A', '2023-10-10 17:54:02', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_60_T_A', '2023-11-01 02:19:48', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_61_T_A', '2023-10-25 08:05:14', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_62_F_A', '2023-11-19 10:50:42', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_63_T_O', '2023-11-23 12:02:55', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_64_C1_A', '2023-11-04 01:22:34', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_65_C1_G', '2023-09-29 00:08:45', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_66_F_O', '2023-12-05 18:16:36', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_67_C1_O', '2023-11-06 20:46:20', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_68_C1_A', '2023-11-25 11:03:09', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_69_C1_A', '2023-12-11 06:33:21', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_70_F_O', '2023-10-22 09:49:30', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_71_C1_G', '2023-10-18 11:17:42', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_72_C2_O', '2023-12-06 05:21:31', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_73_T_A', '2023-10-13 01:02:53', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_74_C2_G', '2023-10-01 07:08:12', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_75_T_G', '2023-11-19 12:20:26', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_76_T_A', '2023-11-30 11:48:04', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_77_C2_O', '2023-10-02 15:58:54', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_78_F_A', '2023-09-30 12:49:35', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_79_T_G', '2023-12-02 05:10:30', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_80_F_A', '2023-11-17 03:43:08', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_81_F_A', '2023-09-23 09:22:30', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_82_C2_O', '2023-10-20 13:43:22', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_83_C1_G', '2023-09-16 10:57:41', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_84_C1_G', '2023-09-23 13:02:20', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_85_T_G', '2023-11-17 03:40:54', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_86_C1_G', '2023-12-03 22:51:14', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_87_C1_G', '2023-10-26 20:47:22', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_88_F_G', '2023-11-29 16:21:48', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_89_C2_A', '2023-11-29 07:32:48', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_90_F_A', '2023-11-05 09:10:37', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_91_F_A', '2023-10-02 20:10:34', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_92_C2_A', '2023-11-14 08:35:33', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_93_C2_O', '2023-09-25 15:05:05', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_94_C1_G', '2023-10-18 15:35:26', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_95_C2_G', '2023-12-05 21:47:26', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_96_C2_O', '2023-11-26 00:06:29', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_97_F_O', '2023-11-04 13:51:25', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_98_C1_A', '2023-10-20 13:49:51', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_99_C2_O', '2023-11-01 21:48:36', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_100_C1_G', '2023-10-16 12:42:41', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_101_T_A', '2023-12-05 11:45:32', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_102_T_O', '2023-11-30 02:05:03', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_103_F_O', '2023-10-26 05:32:25', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_104_F_O', '2023-11-20 08:37:57', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_105_C2_O', '2023-12-12 02:30:53', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_106_C1_A', '2023-11-08 23:13:30', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_107_C2_A', '2023-10-25 06:43:38', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_108_T_A', '2023-10-16 17:14:43', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_109_C1_G', '2023-12-13 20:38:28', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_110_C1_G', '2023-12-01 03:15:22', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_111_C1_A', '2023-10-13 00:00:11', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_112_T_A', '2023-10-30 07:03:24', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_113_C2_G', '2023-10-25 12:19:33', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_114_F_A', '2023-09-26 13:16:10', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_115_F_G', '2023-12-02 11:12:36', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_116_F_O', '2023-12-10 03:19:26', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_117_T_A', '2023-11-16 12:15:57', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_118_C2_O', '2023-12-12 22:30:35', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_119_C1_A', '2023-09-30 03:24:02', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_120_C1_O', '2023-10-21 14:56:02', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_121_C1_G', '2023-11-22 23:33:32', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_122_C1_A', '2023-12-07 09:54:54', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_123_T_O', '2023-12-05 18:03:48', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_124_F_A', '2023-09-14 21:32:35', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_125_F_G', '2023-09-17 13:40:00', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_126_C2_O', '2023-11-28 21:52:04', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_127_T_G', '2023-11-21 10:28:03', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_128_C1_O', '2023-11-02 05:14:29', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_129_C2_G', '2023-11-15 08:27:32', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_130_F_O', '2023-09-28 10:20:42', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_131_F_G', '2023-12-05 03:58:37', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_132_C2_G', '2023-10-26 21:18:46', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_133_T_A', '2023-10-18 06:28:31', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_134_T_O', '2023-10-06 02:47:14', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_135_T_O', '2023-12-07 08:40:20', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_136_F_G', '2023-12-05 02:16:25', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_137_C2_G', '2023-10-31 17:10:26', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_138_T_G', '2023-09-14 03:50:32', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_139_C2_A', '2023-09-23 11:45:50', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_140_C2_A', '2023-11-05 09:13:39', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_141_C2_G', '2023-12-13 04:06:32', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_142_T_G', '2023-09-28 16:47:21', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_143_C1_O', '2023-11-13 05:08:48', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_144_F_G', '2023-09-19 02:29:38', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_145_C2_A', '2023-10-05 05:28:05', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_146_C2_G', '2023-09-18 07:04:40', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_147_C1_O', '2023-11-07 14:49:42', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_148_F_G', '2023-10-21 23:56:09', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_149_F_G', '2023-12-02 05:10:58', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_150_F_A', '2023-10-07 07:40:33', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_151_C1_O', '2023-09-30 10:06:54', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_152_C1_O', '2023-09-16 01:40:38', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_153_F_O', '2023-10-19 18:26:41', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_154_C2_A', '2023-11-21 00:10:05', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_155_C1_A', '2023-12-13 15:42:41', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_156_T_A', '2023-10-23 15:43:36', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_157_C1_O', '2023-10-08 05:19:16', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_158_C1_A', '2023-10-15 14:13:55', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_159_T_A', '2023-09-23 14:08:23', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_160_F_O', '2023-10-16 09:48:21', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_161_T_O', '2023-12-11 13:17:06', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_162_C1_O', '2023-10-19 02:15:37', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_163_C1_O', '2023-12-09 11:33:55', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_164_F_G', '2023-10-27 21:14:39', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_165_F_A', '2023-10-24 14:52:21', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_166_F_A', '2023-11-05 07:44:08', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_167_C1_O', '2023-11-19 09:37:25', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_168_T_A', '2023-10-19 02:51:49', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_169_C1_G', '2023-09-19 20:08:01', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_170_T_A', '2023-10-23 17:18:47', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_171_F_G', '2023-11-10 14:00:53', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_172_F_G', '2023-10-30 06:01:04', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_173_F_O', '2023-09-24 13:17:04', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_174_T_A', '2023-12-10 09:48:17', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_175_C1_A', '2023-10-11 00:31:13', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_176_C1_G', '2023-11-26 11:31:37', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_177_C1_A', '2023-11-23 18:03:36', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_178_C1_O', '2023-09-17 17:26:28', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_179_C1_A', '2023-09-15 16:29:01', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_180_C1_A', '2023-11-26 10:48:24', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_181_C1_G', '2023-10-24 15:31:59', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_182_C2_A', '2023-09-27 21:19:31', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_183_T_O', '2023-11-22 18:33:25', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_184_C2_O', '2023-12-11 06:28:53', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_185_C1_G', '2023-09-23 16:41:27', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_186_F_O', '2023-10-01 02:21:21', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_187_F_A', '2023-12-02 19:21:46', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_188_C2_G', '2023-09-23 23:04:10', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_189_C1_A', '2023-11-29 11:18:53', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_190_T_G', '2023-11-27 23:18:54', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_191_C1_A', '2023-09-26 16:51:16', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_192_C2_G', '2023-10-07 13:16:13', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_193_C2_A', '2023-10-11 19:40:02', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_194_F_O', '2023-09-30 00:58:16', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_195_F_O', '2023-11-20 18:58:09', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_196_C2_A', '2023-12-06 21:36:31', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_197_C2_O', '2023-10-19 15:35:59', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_198_F_O', '2023-10-01 05:17:41', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_199_T_O', '2023-11-10 22:49:20', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_200_T_G', '2023-09-22 21:56:54', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_201_C2_G', '2023-10-25 05:21:07', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_202_C2_A', '2023-12-12 02:00:00', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_203_C1_O', '2023-10-24 07:15:11', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_204_C2_A', '2023-10-08 12:46:34', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_205_T_G', '2023-12-02 04:59:57', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_206_F_A', '2023-11-14 22:12:31', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_207_C1_O', '2023-09-25 07:03:35', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_208_F_G', '2023-12-05 14:25:35', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_209_C1_A', '2023-10-13 19:54:07', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_210_C1_O', '2023-11-02 02:56:46', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_211_C2_G', '2023-11-29 12:46:48', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_212_T_G', '2023-11-14 04:05:08', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_213_T_O', '2023-10-07 20:34:12', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_214_F_A', '2023-09-15 18:06:50', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_215_C2_A', '2023-10-23 13:05:10', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_216_F_A', '2023-11-05 17:44:26', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_217_T_A', '2023-11-01 17:25:06', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_218_T_O', '2023-10-30 18:47:31', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_219_T_O', '2023-11-07 06:31:03', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_220_C1_G', '2023-11-11 00:34:31', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_221_F_G', '2023-10-28 01:44:51', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_222_C1_A', '2023-11-08 00:03:05', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_223_F_G', '2023-09-21 08:31:25', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_224_T_A', '2023-10-26 16:21:04', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_225_C2_G', '2023-11-03 05:39:52', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_226_C1_A', '2023-11-04 14:45:21', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_227_T_A', '2023-11-13 05:31:40', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_228_T_G', '2023-11-06 09:15:47', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_229_F_O', '2023-11-01 06:04:23', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_230_C2_G', '2023-10-20 14:30:44', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_231_F_O', '2023-10-25 07:03:17', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_232_F_G', '2023-09-14 04:26:17', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_233_T_O', '2023-12-04 05:53:24', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_234_T_O', '2023-09-16 10:44:57', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_235_C1_O', '2023-12-07 13:58:29', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_236_F_G', '2023-10-15 23:12:06', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_237_C2_A', '2023-10-15 11:13:32', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_238_T_O', '2023-12-01 12:02:27', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_239_C2_G', '2023-12-09 19:47:43', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_240_C1_G', '2023-10-17 08:44:32', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_241_C2_O', '2023-11-13 04:02:35', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_242_C1_O', '2023-09-30 02:04:54', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_243_C1_O', '2023-09-22 22:06:42', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_244_C1_O', '2023-10-31 18:09:27', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_245_C2_A', '2023-11-29 22:24:55', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_246_T_A', '2023-10-09 11:01:30', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_247_C1_G', '2023-09-28 03:35:52', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_248_F_O', '2023-11-05 23:04:41', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_249_F_A', '2023-11-22 18:57:32', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_250_T_A', '2023-12-07 13:27:46', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_251_C2_O', '2023-11-09 23:32:48', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_252_F_O', '2023-11-28 13:26:26', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_253_T_A', '2023-09-14 15:08:07', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_254_T_G', '2023-12-13 16:47:38', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_255_C2_O', '2023-11-25 23:07:32', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_256_C2_O', '2023-09-18 04:42:24', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_257_T_G', '2023-10-03 09:22:03', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_258_F_G', '2023-11-04 17:45:55', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_259_F_G', '2023-10-01 19:16:24', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_260_F_A', '2023-11-16 23:16:52', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_261_C2_G', '2023-11-19 12:42:08', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_262_C1_G', '2023-11-05 19:59:51', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_263_F_G', '2023-11-23 15:39:02', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_264_F_G', '2023-12-07 22:45:31', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_265_C1_A', '2023-10-15 10:57:52', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_266_T_G', '2023-10-15 21:39:52', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_267_T_O', '2023-10-01 04:40:12', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_268_T_A', '2023-11-21 00:37:17', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_269_C2_G', '2023-12-08 09:22:44', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_270_C2_O', '2023-10-23 13:47:35', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_271_T_A', '2023-10-05 09:31:05', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_272_C2_G', '2023-12-08 22:37:46', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_273_T_G', '2023-11-11 00:49:44', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_274_T_G', '2023-10-16 23:43:03', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_275_C2_O', '2023-11-11 16:14:43', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_276_F_A', '2023-10-15 16:44:25', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_277_F_O', '2023-10-13 16:20:59', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_278_T_A', '2023-11-06 17:32:48', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_279_T_G', '2023-09-29 22:17:27', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_280_C1_A', '2023-10-08 22:42:11', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_281_F_G', '2023-09-14 15:20:37', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_282_C2_G', '2023-10-27 08:04:32', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_283_C2_A', '2023-10-16 10:28:09', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_284_C1_O', '2023-10-22 22:17:29', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_285_C2_G', '2023-09-21 21:53:37', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_286_F_A', '2023-09-30 17:20:49', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_287_F_O', '2023-10-29 12:54:07', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_288_T_A', '2023-12-06 19:30:08', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_289_C1_A', '2023-11-16 15:19:30', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_290_F_G', '2023-09-18 20:05:24', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_291_C2_A', '2023-11-30 02:30:17', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_292_C2_G', '2023-11-24 15:53:25', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_293_F_O', '2023-11-13 02:48:03', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_294_C1_A', '2023-11-05 14:31:57', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_295_T_G', '2023-10-02 19:29:31', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_296_C1_G', '2023-11-24 22:02:53', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_297_T_G', '2023-12-10 23:38:23', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_298_C2_A', '2023-10-07 16:18:00', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_299_C2_O', '2023-09-16 01:56:37', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_300_C2_G', '2023-09-28 02:06:44', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_301_T_A', '2023-11-02 02:24:48', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_302_C2_O', '2023-11-04 16:48:48', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_303_F_O', '2023-11-24 15:48:29', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_304_T_A', '2023-12-04 21:25:44', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_305_T_G', '2023-11-28 06:52:02', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_306_F_A', '2023-10-14 12:23:54', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_307_T_G', '2023-11-30 22:46:07', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_308_F_A', '2023-10-28 01:50:45', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_309_C2_O', '2023-09-26 22:37:44', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_310_F_A', '2023-11-07 23:48:40', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_311_C2_G', '2023-11-09 23:11:22', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_312_C1_A', '2023-11-12 08:03:46', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_313_C1_O', '2023-10-25 02:12:38', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_314_T_G', '2023-10-24 09:23:43', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_315_T_A', '2023-12-02 21:55:07', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_316_F_G', '2023-11-17 20:35:50', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_317_T_A', '2023-12-05 21:10:06', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_318_C2_O', '2023-11-10 04:01:16', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_319_T_G', '2023-11-12 16:28:18', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_320_F_G', '2023-11-07 16:14:05', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_321_C2_A', '2023-12-02 03:11:59', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_322_F_A', '2023-10-07 19:14:01', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_323_C1_G', '2023-09-26 21:33:24', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_324_C2_A', '2023-09-22 07:22:40', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_325_C1_G', '2023-10-07 04:41:22', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_326_F_A', '2023-10-11 15:21:50', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_327_F_G', '2023-11-12 18:07:43', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_328_C2_A', '2023-11-30 17:25:42', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_329_C2_A', '2023-10-21 18:45:19', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_330_F_G', '2023-11-16 06:49:11', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_331_F_A', '2023-10-20 05:24:28', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_332_T_O', '2023-10-24 11:22:23', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_333_C1_O', '2023-11-17 21:35:10', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_334_T_A', '2023-11-03 22:17:28', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_335_C1_A', '2023-10-07 11:55:12', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_336_C1_G', '2023-09-19 03:23:35', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_337_T_G', '2023-10-06 10:52:21', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_338_F_O', '2023-10-13 20:59:54', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_339_C1_A', '2023-12-02 10:25:26', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_340_C1_G', '2023-12-11 03:45:43', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_341_C1_A', '2023-10-22 23:51:09', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_342_C2_O', '2023-12-01 13:18:59', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_343_T_G', '2023-10-26 21:28:59', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_344_C1_G', '2023-10-03 22:28:07', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_345_C1_O', '2023-12-01 09:16:38', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_346_F_A', '2023-10-19 03:03:04', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_347_F_A', '2023-11-14 07:59:18', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_348_C1_A', '2023-10-23 07:12:13', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_349_C1_G', '2023-09-23 06:54:13', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_350_C2_O', '2023-10-20 20:02:27', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_351_C1_A', '2023-09-30 05:04:28', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_352_C2_G', '2023-10-01 13:06:06', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_353_C2_O', '2023-12-03 11:07:47', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_354_C2_A', '2023-11-03 13:58:52', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_355_F_O', '2023-10-14 18:30:58', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_356_C1_G', '2023-12-08 01:47:27', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_357_F_O', '2023-09-19 18:03:53', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_358_C1_G', '2023-12-11 22:35:39', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_359_F_O', '2023-11-25 17:29:33', '3', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_360_C1_O', '2023-10-06 18:13:18', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_361_T_A', '2023-09-30 22:29:55', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_362_C1_O', '2023-09-26 10:25:55', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_363_C2_A', '2023-12-05 22:32:52', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_364_F_A', '2023-11-26 10:30:37', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_365_F_G', '2023-12-05 05:07:03', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_366_T_A', '2023-12-13 20:52:33', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_367_C1_A', '2023-12-03 01:11:58', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_368_T_A', '2023-11-18 14:46:04', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_369_C1_G', '2023-11-23 05:13:58', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_370_C2_A', '2023-10-03 09:39:03', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_371_C2_O', '2023-09-21 14:24:55', '2', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_372_T_O', '2023-10-02 15:17:27', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_373_F_A', '2023-10-25 13:53:37', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_374_T_O', '2023-10-01 04:32:28', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_375_T_G', '2023-10-24 03:01:28', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_376_F_A', '2023-10-07 01:04:38', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_377_C2_A', '2023-12-05 17:02:15', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_378_C2_G', '2023-11-16 16:26:24', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_379_C1_G', '2023-11-30 09:31:24', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_380_T_G', '2023-11-20 19:06:50', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_381_C1_G', '2023-11-14 21:41:21', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_382_C1_G', '2023-09-26 08:15:40', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_383_C1_G', '2023-11-03 13:09:28', '1', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_384_C1_O', '2023-10-23 15:51:00', '1', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_385_F_G', '2023-10-08 15:21:23', '3', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_386_F_A', '2023-12-04 09:57:27', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_387_T_A', '2023-11-11 08:12:08', '4', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_388_C1_A', '2023-10-04 04:20:50', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_389_F_A', '2023-10-05 17:57:31', '3', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_390_T_G', '2023-10-29 16:39:32', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_391_T_O', '2023-10-27 07:13:50', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_392_C2_A', '2023-11-12 22:20:07', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_393_C2_G', '2023-09-29 18:58:28', '2', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_394_C1_A', '2023-11-02 13:24:47', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_395_C1_A', '2023-12-07 12:21:12', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_396_C2_A', '2023-10-12 00:24:06', '2', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_397_C1_A', '2023-11-02 22:12:52', '1', '3');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_398_T_G', '2023-12-06 04:11:10', '4', '1');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_399_T_O', '2023-11-21 21:20:28', '4', '2');
INSERT INTO transactions (number, dateTime, paymentMethod_id, purchasingWay_id) VALUES ('23_400_C1_A', '2023-09-27 08:46:57', '1', '3');

-- -----------------------------------------------------
-- Table cpnv_park.fares
-- -----------------------------------------------------
/*
name : manuellement
ageRangeBeginning : manuellement
ageRangeEnding : manuellement
price : manuellement
*/
INSERT INTO fares (name, ageRangeBeginning, ageRangeEnd, price) VALUES ('Adulte', 14, 64, 75);
INSERT INTO fares (name, ageRangeBeginning, ageRangeEnd, price) VALUES ('Enfant', 3, 13, 40);
INSERT INTO fares (name, ageRangeBeginning, ageRangeEnd, price) VALUES ('Étudiant', NULL, NULL, 60);
INSERT INTO fares (name, ageRangeBeginning, ageRangeEnd, price) VALUES ('Groupe', NULL, NULL, 60);
INSERT INTO fares (name, ageRangeBeginning, ageRangeEnd, price) VALUES ('Personne agée', 65, NULL, 60);

-- -----------------------------------------------------
-- Table cpnv_park.transactions_contain_fares
-- -----------------------------------------------------
/*
quantity : via la fonction ALEA.ENTRE.BORNES d’Excel
dateOfUse : via la fonction ALEA.ENTRE.BORNES d’Excel
transaction_id : via la fonction ALEA.ENTRE.BORNES d’Excel
fare_id : via la fonction ALEA.ENTRE.BORNES d’Excel

NB : Date dans le passé pour dateOfUse pour de nombreux INSERT donc produira des erreurs à cause de la contrainte CHK_dateOfUse_NotPast.
*/
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-29', 79, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-23', 24, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-20', 6, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-23', 83, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-06', 153, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-01', 93, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-22', 34, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-18', 93, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-03-03', 65, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-12', 199, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-17', 4, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-05', 186, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-10', 43, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-29', 135, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-09', 165, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-25', 108, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-15', 106, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-14', 191, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-19', 52, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-18', 48, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-27', 24, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-03-07', 88, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-15', 194, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-23', 13, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-03', 38, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-27', 64, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-13', 147, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-22', 132, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-26', 69, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-04', 187, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-03-01', 59, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-20', 122, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-28', 57, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-08', 113, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-07', 137, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-31', 53, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-16', 167, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-11', 173, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-02', 170, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-14', 145, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-12', 108, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-22', 168, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-14', 92, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-11', 46, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-26', 15, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-19', 172, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-20', 101, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-03-06', 73, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-25', 89, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-27', 67, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-21', 166, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-19', 164, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-16', 190, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-17', 149, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-28', 173, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-04', 59, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-30', 177, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-29', 177, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-17', 76, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-09', 9, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-24', 17, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-13', 62, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-10', 172, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-31', 65, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-08', 23, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-30', 66, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-24', 23, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-15', 131, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-21', 162, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-06', 101, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-25', 16, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-03-02', 166, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-28', 19, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-03-04', 157, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-02', 134, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-03-05', 118, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-05', 100, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-10', 9, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-21', 144, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-03', 167, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-16', 139, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-07', 167, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-27', 99, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-18', 38, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-14', 109, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-23', 126, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-20', 55, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-23', 123, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-06', 154, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-01', 158, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-22', 10, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-18', 76, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-03-03', 34, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-12', 91, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-17', 101, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-05', 146, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-10', 153, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-29', 65, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-09', 130, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-25', 50, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-15', 35, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-14', 125, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-19', 59, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-18', 44, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-27', 50, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-03-07', 30, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-15', 43, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-23', 40, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-03', 41, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-27', 177, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-13', 40, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-22', 117, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-26', 29, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-04', 149, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-03-01', 120, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-20', 195, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-28', 18, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-08', 104, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-07', 29, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-31', 114, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-16', 81, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-11', 190, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-02', 165, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-14', 156, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-12', 58, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-22', 69, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-14', 113, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-11', 27, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-26', 119, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-19', 125, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-20', 46, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-03-06', 185, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-25', 9, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-27', 91, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-21', 42, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-19', 144, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-16', 67, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-17', 77, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-28', 36, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-04', 167, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-30', 30, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-29', 169, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-17', 123, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-09', 154, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-24', 38, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-13', 72, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-10', 5, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-31', 172, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-08', 63, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-30', 79, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-24', 195, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-15', 56, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-21', 179, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-06', 133, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-25', 198, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-03-02', 9, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-28', 109, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-03-04', 154, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-02', 3, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-03-05', 103, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-05', 50, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-10', 140, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-21', 127, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-03', 25, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-16', 144, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-07', 50, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-27', 162, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-18', 154, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-14', 82, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-23', 198, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-20', 101, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-23', 191, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-06', 194, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-01', 138, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-22', 19, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-18', 183, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-03-03', 158, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-12', 102, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-17', 179, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-05', 116, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-10', 190, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-29', 35, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-09', 91, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-25', 25, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-15', 14, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-14', 29, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-19', 177, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-18', 72, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-27', 130, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-03-07', 167, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-15', 31, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-23', 120, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-03', 199, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-27', 138, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-13', 7, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-22', 32, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-26', 139, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-04', 40, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-03-01', 10, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-20', 80, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-01', 142, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-28', 12, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-17', 51, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-22', 166, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-14', 50, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-05', 165, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-28', 43, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-31', 102, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-18', 116, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-03-04', 190, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-14', 64, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-26', 32, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-27', 43, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-16', 80, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-07', 23, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-29', 42, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-22', 64, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-16', 79, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-11', 152, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-10', 12, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-15', 141, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-23', 118, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-13', 14, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-18', 99, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-09', 123, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-04', 8, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-17', 93, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-24', 164, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-02', 140, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-25', 122, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-03', 35, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-20', 52, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-27', 127, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-25', 31, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-29', 122, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-15', 196, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-21', 7, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-26', 197, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-06', 172, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-14', 118, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-05', 150, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-19', 37, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-01', 67, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-22', 116, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-30', 31, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-13', 12, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-24', 138, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-24', 74, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-03-07', 76, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-18', 159, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-03', 98, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-09', 71, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-19', 111, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-06', 158, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-08', 31, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-27', 137, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-26', 21, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-15', 7, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-08', 145, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-10', 168, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-23', 150, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-12', 6, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-04', 60, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-19', 147, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-03-02', 63, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-16', 82, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-21', 14, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-11', 53, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-30', 115, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-12', 159, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-21', 132, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-29', 29, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-03-01', 19, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-20', 116, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-16', 81, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-07', 25, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-10', 40, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-23', 80, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-02', 93, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-14', 139, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-14', 168, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-18', 144, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-11', 178, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-15', 118, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-07', 121, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-01', 90, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-28', 98, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-25', 98, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-31', 26, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-22', 60, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-29', 120, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-17', 72, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-05', 73, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-23', 52, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-16', 33, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-26', 191, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-24', 51, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-13', 23, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-02', 164, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-27', 90, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-25', 173, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-15', 58, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-20', 32, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-03-03', 98, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-17', 86, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-26', 139, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-09', 41, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-03', 103, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-06', 170, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-01', 129, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-22', 109, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-30', 172, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-13', 46, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-24', 130, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-24', 62, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-03-07', 64, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-18', 147, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-09', 34, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-19', 114, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-04', 151, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-27', 132, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-16', 180, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-29', 37, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-29', 66, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-11', 104, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-26', 63, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-17', 199, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-22', 85, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-19', 58, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-15', 62, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-07', 160, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-21', 73, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-01', 164, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-28', 159, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-23', 18, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-20', 141, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-23', 95, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-06', 176, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-18', 171, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-03-03', 122, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-12', 144, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-17', 134, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-05', 132, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-10', 116, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-02-29', 137, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-09', 46, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-25', 65, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-15', 116, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-14', 52, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-19', 181, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-18', 192, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-27', 158, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-03-07', 92, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-15', 112, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-23', 97, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-03', 105, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-27', 73, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-13', 32, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-22', 109, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-26', 75, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-04', 109, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-03-01', 169, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-20', 103, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-28', 12, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-08', 115, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-07', 5, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-31', 57, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-16', 91, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-11', 40, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-02', 112, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-14', 154, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-12', 16, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-22', 82, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-14', 25, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-01-11', 43, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-26', 31, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-19', 8, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2023-12-20', 68, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-03-06', 190, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-02-25', 32, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-27', 181, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-21', 45, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-19', 161, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-16', 21, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-17', 157, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-28', 134, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-04', 149, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-30', 24, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (2, '2024-01-29', 111, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2023-12-17', 118, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-01-09', 186, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2023-12-24', 78, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-01-13', 135, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-10', 4, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2023-12-31', 189, 5);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (1, '2024-02-08', 38, 1);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2024-01-30', 120, 3);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (5, '2024-02-24', 182, 2);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (4, '2023-12-15', 31, 4);
INSERT INTO transactions_contain_fares (quantity,dateOfUse, transaction_id, fare_id) VALUES (3, '2024-02-21', 129, 3);

-- -----------------------------------------------------
-- Table cpnv_park.roles
-- -----------------------------------------------------
/*name : manuellement*/
INSERT INTO roles(name) VALUES ('Technicien');
INSERT INTO roles(name) VALUES ('Serveur');
INSERT INTO roles(name) VALUES ('Caissier');
INSERT INTO roles(name) VALUES ('Animateur');
INSERT INTO roles(name) VALUES ('Nettoyeur');
INSERT INTO roles(name) VALUES ('Sécurité');
INSERT INTO roles(name) VALUES ('RH');
INSERT INTO roles(name) VALUES ('Direction');
INSERT INTO roles(name) VALUES ('Marketing');
INSERT INTO roles(name) VALUES ('Logistique');
INSERT INTO roles(name) VALUES ('Cuisinier');

-- -----------------------------------------------------
-- Table cpnv_park.zones
-- -----------------------------------------------------
/*name : manuellement*/
INSERT INTO zones(name) VALUES ('Programmation');
INSERT INTO zones(name) VALUES ('Réseau');
INSERT INTO zones(name) VALUES ('Serveur');
INSERT INTO zones(name) VALUES ('Base de données');
INSERT INTO zones(name) VALUES ('Agile');
INSERT INTO zones(name) VALUES ('Design');

-- -----------------------------------------------------
-- Table cpnv_park.attractions
-- -----------------------------------------------------
/*
name : manuellement
capacity : via la fonction ALEA.ENTRE.BORNES d’Excel
minHeight : manuellement
maxHeight : manuellement
lastCheckDate : concaténation d’une date (via la fonction ALEA.ENTRE.BORNES d’Excel) et d’une heure (via l’outil Generate Random Clock Times du site catonmat.net) 
https://catonmat.net/tools/generate-random-clock-times 
zone_id : manuellement
*/
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('Foreach Loop', 25, 140, NULL, '2023-07-13 11:37:04', 1);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('The Namespaceship', 15, 140, NULL, '2023-10-09 16:55:04', 1);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('The Infinite ZIPLine', 8, 100, NULL, '2023-10-28 15:53:15', 1);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('TDD : Test Your Limits', 12, NULL, NULL, '2023-09-06 12:15:34', 1);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('Beyond The LAN', 29, NULL, NULL, '2023-09-26 17:05:08', 2);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('The Dark VPN Tunnel', 25, 100, NULL, '2023-08-02 08:00:00', 2);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('The Coaxial Rollercoaster', 10, 140, 190, '2023-12-09 07:25:55', 2);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('Breaking The Firewall', 14, NULL, NULL, '2023-10-23 06:17:52', 2);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('The Haunted Windows 2000 Server', 17, NULL, NULL, '2023-10-20 10:54:23', 3);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('The Lords of the Pings', 30, NULL, NULL, '2023-11-18 09:51:51', 3);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('Fast Travel : The Universal Serial Bus', 29, NULL, NULL, '2023-08-26 12:03:22', 3);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('Really Fast Travel : The Nonvolatile Memory Express', 8, 140, NULL, '2023-08-11 15:12:44', 3);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('Treasure Island : The Foreign Key', 28, NULL, 190, '2023-10-16 19:00:05', 4);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('The Great Cascade', 9, NULL, NULL, '2023-11-20 16:27:03', 4);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('Escape The Constraints', 4, NULL, NULL, '2023-08-19 11:42:15', 4);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('The Waterfall : Test Your Agility', 10, NULL, NULL, '2023-06-15 08:59:16', 5);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('Sprint For Your Life', 16, 140, NULL, '2023-10-27 13:13:13', 5);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('Cascading With Style', 4, NULL, NULL, '2023-08-19 11:11:11', 6);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('The Balsamiq Recipes : Make Your Own Meal', 27, NULL, NULL, '2023-09-27 09:26:04', 6);
INSERT INTO attractions (name, capacity, minHeight, maxHeight, lastCheckDate, zone_id) VALUES ('Layers of Fear - Photoshop Edition', 26, NULL, NULL, '2023-08-01 12:06:04', 6);

-- -----------------------------------------------------
-- Table cpnv_park.restaurants
-- -----------------------------------------------------
/*
name : en partie via ChatGPT, complété manuellement
phone : via ChatGPT, en donnant un exemple du format à utiliser
capacity : via la fonction ALEA.ENTRE.BORNES d’Excel
zone_id : manuellement
*/
INSERT INTO restaurants (name, phone, capacity, zone_id) VALUES ('RAMen House', '024 661 99 74', 21, 6);
INSERT INTO restaurants (name, phone, capacity, zone_id) VALUES ('Bit Byte Bites', '024 616 99 74', 25, 2);
INSERT INTO restaurants (name, phone, capacity, zone_id) VALUES ('Ctrl + Eat', '024 166 99 74', 36, 1);
INSERT INTO restaurants (name, phone, capacity, zone_id) VALUES ('Server Side Supper', '024 666 91 74', 28, 3);
INSERT INTO restaurants (name, phone, capacity, zone_id) VALUES ('Join table', '024 666 19 74', 23, 4);
INSERT INTO restaurants (name, phone, capacity, zone_id) VALUES ('Vista', '024 676 99 14', 13, 5);

-- -----------------------------------------------------
-- Table cpnv_park.types
-- -----------------------------------------------------
/*name : manuellement*/
INSERT INTO types (name) VALUES ('Infomations');
INSERT INTO types (name) VALUES ('Nourriture');
INSERT INTO types (name) VALUES ('Boissons');
INSERT INTO types (name) VALUES ('Souvenirs');

-- -----------------------------------------------------
-- Table cpnv_park.stands
-- -----------------------------------------------------
/*
name : manuellement. 
zone_id : via la fonction ALEA.ENTRE.BORNES d’Excel 
type_id : manuellement
*/
INSERT INTO stands (name, zone_id, type_id) VALUES ('Icescrums', 5, 2);
INSERT INTO stands (name, zone_id, type_id) VALUES ('Chocolatey', 2, 2);
INSERT INTO stands (name, zone_id, type_id) VALUES ('OSI : Seven Layers Cakes', 6, 2);
INSERT INTO stands (name, zone_id, type_id) VALUES ('Bits & Pieces', 4, 4);
INSERT INTO stands (name, zone_id, type_id) VALUES ('PowerToys', 5, 4);
INSERT INTO stands (name, zone_id, type_id) VALUES ('Ruby On Nails', 1, 4);
INSERT INTO stands (name, zone_id, type_id) VALUES ('ROM : Read-Only Memories', 3, 4);
INSERT INTO stands (name, zone_id, type_id) VALUES ('RAM : Random-Access Memories', 3, 4);
INSERT INTO stands (name, zone_id, type_id) VALUES ('Watercooling', 2, 3);
INSERT INTO stands (name, zone_id, type_id) VALUES ('Nougat JS', 1, 2);
INSERT INTO stands (name, zone_id, type_id) VALUES ('getInfo();', 4, 1);

-- -----------------------------------------------------
-- Table cpnv_park.employees
-- -----------------------------------------------------
/*
lastName : via ChatGPT 
firstName : via ChatGPT 
mail : concaténation de lastName, firstName et d’autres caractères via une formule Excel
street : via ChatGPT 
streetNumber : via la fonction ALEA.ENTRE.BORNES d’Excel, puis ajout de quelques lettres manuellement (12a, 25c, etc.)
city & postalCode : 
1) import dans Excel de la liste des 482 communes du canton de Vaud et de leur NPA ; 
https://www.reseaux-sante-vaud.ch/liste-des-communes-vaudoise 
2) ajout d’un “id” allant de 1 à 482 devant chacune d’entre elles ; 
3) pour chaque employé : attribution d’un nombre aléatoire entre 1 et 482 via a fonction ALEA.ENTRE.BORNES d’Excel; 
4) utilisation de la fonction RECHERCHEV d’Excel pour associer ce nombre aléatoire au nom et au NPA de la commune correspondante
phone : via ChatGPT, en donnant un exemple du format à utiliser
AVS : via la fonction ALEA.ENTRE.BORNES d’Excel
role_id : manuellement, une vingtaine d’affilée par rôle
attraction_id : via la fonction ALEA.ENTRE.BORNES d’Excel
restaurant_id : via la fonction ALEA.ENTRE.BORNES d’Excel et manuellement
stand_id : via la fonction ALEA.ENTRE.BORNES d’Excel et manuellement
*/
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Martin', 'Emma', 'Emma.Martin@cpnvpark.ch', 'Rue des Alizés', '93', 'Blonay', 1807, '0771234567', '260.5989.9256.48', 1, 8, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Dubois', 'Lucas', 'Lucas.Dubois@cpnvpark.ch', 'Avenue du Crépuscule', '108', 'Boulens', 1063, '0778901234', '954.7660.8618.93', 1, 9, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Leroy', 'Chloé', 'Chloé.Leroy@cpnvpark.ch', 'Allée des Lucioles', '80', 'Grancy', 1117, '0775678901', '457.9988.7059.29', 1, 13, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Moreau', 'Louis', 'Louis.Moreau@cpnvpark.ch', 'Boulevard des Souvenirs', '106', 'Correvon', 1410, '0772345678', '897.3061.6149.38', 1, 2, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Lambert', 'Manon', 'Manon.Lambert@cpnvpark.ch', 'Rue de l''Aventure', '1', 'Orbe', 1350, '0779012345', '416.1438.3454.60', 1, 7, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Bonnet', 'Hugo', 'Hugo.Bonnet@cpnvpark.ch', 'Avenue des Échos', '171b', 'Les Posses-sur-Bex', 1882, '0776789012', '483.8688.6086.22', 1, 15, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Roussel', 'Léa', 'Léa.Roussel@cpnvpark.ch', 'Place des Mystères', '249', 'Rossens', 1554, '0773456789', '684.2149.9150.17', 1, 10, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Lefevre', 'Gabriel', 'Gabriel.Lefevre@cpnvpark.ch', 'Passage des Brises', '193', 'Morcles', 1892, '0770123456', '623.9933.8681.16', 1, 19, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Fournier', 'Camille', 'Camille.Fournier@cpnvpark.ch', 'Rue des Lumières', '249', 'L''Isle', 1148, '0777890123', '674.2699.1633.78', 1, 11, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Girard', 'Jules', 'Jules.Girard@cpnvpark.ch', 'Impasse des Songes', '3', 'Bofflens', 1353, '0774567890', '573.6284.5297.33', 1, 14, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Muller', 'Inès', 'Inès.Muller@cpnvpark.ch', 'Boulevard de la Sérénité', '253', 'Vaux-sur-Morges', 1126, '0771234567', '158.9851.7790.67', 1, 14, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Robert', 'Maxime', 'Maxime.Robert@cpnvpark.ch', 'Allée du Réveil', '152', 'Les Posses-sur-Bex', 1882, '0778901234', '955.9146.8502.55', 1, 4, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Richard', 'Sarah', 'Sarah.Richard@cpnvpark.ch', 'Rue des Murmures', '58', 'Montricher', 1147, '0775678901', '347.3124.3281.60', 1, 13, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Petit', 'Raphaël', 'Raphaël.Petit@cpnvpark.ch', 'Avenue des Éclats', '141a', 'Cottens', 1116, '0772345678', '182.3640.2203.16', 1, 15, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Durand', 'Zoé', 'Zoé.Durand@cpnvpark.ch', 'Place des Illusions', '81', 'Combremont-le-Grand', 1535, '0779012345', '990.5955.6288.75', 1, 6, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Simon', 'Nathan', 'Nathan.Simon@cpnvpark.ch', 'Passage des Harmonies', '222', 'Penthéréaz', 1375, '0776789012', '175.9572.3274.61', 1, 19, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Laurent', 'Clara', 'Clara.Laurent@cpnvpark.ch', 'Rue des Embruns', '222', 'Bière', 1145, '0773456789', '448.1592.6080.93', 1, 14, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Lefort', 'Enzo', 'Enzo.Lefort@cpnvpark.ch', 'Allée des Chuchotements', '79', 'Lignerolle', 1357, '0770123456', '736.4714.8823.68', 1, 7, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Legrand', 'Jade', 'Jade.Legrand@cpnvpark.ch', 'Boulevard de la Flânerie', '169', 'Trey', 1552, '0777890123', '654.1523.3995.94', 1, 19, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Gauthier', 'Thomas', 'Thomas.Gauthier@cpnvpark.ch', 'Rue des Cœurs', '106', 'Fontaines-sur-Grandson', 1421, '0774567890', '133.5612.5198.81', 1, 1, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Garcia', 'Maëlle', 'Maëlle.Garcia@cpnvpark.ch', 'Place des Reflets', '117', 'Moudon', 1510, '0771234567', '427.6407.6335.11', 1, 18, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Perrin', 'Antoine', 'Antoine.Perrin@cpnvpark.ch', 'Avenue des Brumes', '37', 'Blonay', 1807, '0778901234', '455.7117.6435.67', 2, NULL, 5, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Robin', 'Océane', 'Océane.Robin@cpnvpark.ch', 'Passage des Enchantements', '25', 'Tannay', 1295, '0775678901', '784.3602.5377.15', 2, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Roux', 'Alexandre', 'Alexandre.Roux@cpnvpark.ch', 'Boulevard des Rêveries', '48', 'Forel (Lavaux)', 1072, '0772345678', '335.9872.2033.77', 2, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Masson', 'Charlotte', 'Charlotte.Masson@cpnvpark.ch', 'Allée des Étoiles', '206', 'Chevressy', 1405, '0779012345', '886.7242.1841.53', 2, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Blanc', 'Théo', 'Théo.Blanc@cpnvpark.ch', 'Rue des Silhouettes', '245', 'Yverdon-les-Bains', 1400, '0776789012', '364.4240.1071.49', 2, NULL, 3, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Guerin', 'Eva', 'Eva.Guerin@cpnvpark.ch', 'Place des Chimères', '20', 'Romainmôtier-Envy', 1323, '0773456789', '805.1997.2779.61', 2, NULL, 3, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Andre', 'Liam', 'Liam.Andre@cpnvpark.ch', 'Passage des Esprits', '48', 'Vevey', 1800, '0770123456', '302.9409.1325.97', 2, NULL, 4, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Marchand', 'Juliette', 'Juliette.Marchand@cpnvpark.ch', 'Avenue des Parfums', '71', 'Fiez', 1420, '0777890123', '610.9871.8552.25', 2, NULL, 3, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Barbier', 'Noah', 'Noah.Barbier@cpnvpark.ch', 'Rue des Arcanes', '249', 'Granges-près-Marnand', 1523, '0774567890', '251.2383.6528.90', 2, NULL, 1, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Remy', 'Léna', 'Léna.Remy@cpnvpark.ch', 'Boulevard des Mélodies', '172', 'Villars-le-Comte', 1515, '0771234567', '831.1403.8977.18', 2, NULL, 1, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Mathieu', 'Arthur', 'Arthur.Mathieu@cpnvpark.ch', 'Allée des Frissons', '115', 'Gryon', 1882, '0778901234', '729.4835.8407.99', 2, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Chevalier', 'Louna', 'Louna.Chevalier@cpnvpark.ch', 'Place des Horizons', '138', 'Saint-Saphorin (Lavaux)', 1071, '0775678901', '760.3995.2643.94', 2, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Noel', 'Bastien', 'Bastien.Noel@cpnvpark.ch', 'Rue des Éphémères', '225', 'Saint-Cergue', 1264, '0772345678', '584.8158.9528.95', 2, NULL, 5, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Henry', 'Elsa', 'Elsa.Henry@cpnvpark.ch', 'Passage des Délices', '120', 'L''Abbaye ', 1344, '0779012345', '962.7524.8728.62', 2, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Meunier', 'Ethan', 'Ethan.Meunier@cpnvpark.ch', 'Boulevard des Instants', '118', 'Valeyres-sous-Ursins', 1412, '0776789012', '614.5482.7449.15', 2, NULL, 2, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('David', 'Margaux', 'Margaux.David@cpnvpark.ch', 'Allée des Passions', '115', 'Oron-La-Ville', 1610, '0773456789', '607.9665.6529.84', 2, NULL, 3, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Fontaine', 'Pierre', 'Pierre.Fontaine@cpnvpark.ch', 'Rue des Rayons', '152', 'Champvent', 1443, '0770123456', '586.5861.4181.68', 2, NULL, 2, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Chevallier', 'Romane', 'Romane.Chevallier@cpnvpark.ch', 'Avenue des Bravos', '209', 'Montricher', 1147, '0777890123', '682.7373.7178.57', 2, NULL, 1, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Debray', 'Paul', 'Paul.Debray@cpnvpark.ch', 'Place des Sourires', '199', 'Rennaz', 1847, '0774567890', '945.7571.5250.43', 2, NULL, 3, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Caron', 'Léna', 'Léna.Caron@cpnvpark.ch', 'Passage des Saisons', '51', 'Corcelettes', 1422, '0771234567', '282.2112.1404.39', 2, NULL, 3, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Picard', 'Valentin', 'Valentin.Picard@cpnvpark.ch', 'Rue des Douceurs', '211', 'Les Charbonnières', 1343, '0778901234', '151.3982.3701.30', 2, NULL, 2, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Gallet', 'Louise', 'Louise.Gallet@cpnvpark.ch', 'Allée des Couleurs', '173', 'Bellerive', 1585, '0775678901', '851.3372.4836.49', 3, 1, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Lemoine', 'Kylian', 'Kylian.Lemoine@cpnvpark.ch', 'Boulevard des Éclipses', '234', 'Pampigny', 1142, '0772345678', '684.5758.5898.29', 3, 2, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Renard', 'Margot', 'Margot.Renard@cpnvpark.ch', 'Place des Escales', '203', 'Echallens', 1040, '0779012345', '484.6916.7964.50', 3, 3, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Bertrand', 'Martin', 'Martin.Bertrand@cpnvpark.ch', 'Avenue des Zéphyrs', '119', 'Cheseaux-sur-Lausanne', 1033, '0776789012', '250.7390.4812.90', 3, 4, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Faure', 'Alice', 'Alice.Faure@cpnvpark.ch', 'Rue des Pétillants', '14', 'Bassins', 1269, '0773456789', '307.4381.5409.85', 3, NULL, NULL, 1);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Barre', 'Timéo', 'Timéo.Barre@cpnvpark.ch', 'Impasse des Merveilles', '253', 'Servion', 1077, '0770123456', '877.7915.5851.88', 3, NULL, NULL, 5);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Leclerc', 'Elise', 'Elise.Leclerc@cpnvpark.ch', 'Allée des Voyages', '35', 'Vallamand', 1586, '0777890123', '922.9522.3126.70', 3, NULL, NULL, 7);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Colin', 'Baptiste', 'Baptiste.Colin@cpnvpark.ch', 'Boulevard des Étoiles', '132', 'Jongny', 1805, '0774567890', '576.4794.5119.23', 3, NULL, 1, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Dubois', 'Luca', 'Luca.Dubois@cpnvpark.ch', 'Rue des Orages', '11', 'Villars-Bramard', 1682, '0771234567', '478.5185.2760.33', 3, NULL, 2, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Gerber', 'Lena', 'Lena.Gerber@cpnvpark.ch', 'Avenue des Murmurations', '11', 'Syens', 1510, '0778901234', '181.6431.1608.79', 3, NULL, 3, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Rochat', 'David', 'David.Rochat@cpnvpark.ch', 'Allée des Sentiers', '74', 'Montricher', 1147, '0775678901', '750.9576.4300.59', 3, NULL, 4, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Müller', 'Noémie', 'Noémie.Müller@cpnvpark.ch', 'Boulevard des Passages', '249', 'Vuarrens', 1418, '0772345678', '801.1424.7644.48', 3, NULL, 5, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Graf', 'Nico', 'Nico.Graf@cpnvpark.ch', 'Place des Secrets', '172', 'Corcelettes', 1422, '0779012345', '383.3942.8202.11', 3, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Perrin', 'Eléa', 'Eléa.Perrin@cpnvpark.ch', 'Impasse des Rêves', '107', 'Penthalaz', 1305, '0776789012', '451.2586.9913.63', 3, NULL, NULL, 1);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Morel', 'Joel', 'Joel.Morel@cpnvpark.ch', 'Rue des Chemins', '218', 'Mauraz', 1148, '0773456789', '229.8640.5515.69', 3, NULL, NULL, 2);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Berset', 'Lara', 'Lara.Berset@cpnvpark.ch', 'Avenue des Arômes', '94', 'Romanel-sur-Morges', 1122, '0770123456', '824.3052.3975.46', 3, NULL, NULL, 3);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Roch', 'Jonas', 'Jonas.Roch@cpnvpark.ch', 'Passage des Flâneurs', '111', 'Rueyres', 1046, '0777890123', '742.6284.1802.93', 3, NULL, NULL, 4);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Blanc', 'Mia', 'Mia.Blanc@cpnvpark.ch', 'Boulevard des Écumes', '226', 'Saint-Légier - La Chiésaz', 1806, '0774567890', '704.7075.1620.47', 3, NULL, NULL, 5);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Favre', 'Adrian', 'Adrian.Favre@cpnvpark.ch', 'Allée des Ombres', '183', 'Les Aviolats', 1864, '0771234567', '308.6233.8996.27', 3, NULL, NULL, 6);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Käser', 'Sina', 'Sina.Käser@cpnvpark.ch', 'Rue des Lueurs', '55', 'Villars-Mendraz', 1061, '0778901234', '827.8357.8756.72', 3, NULL, NULL, 7);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Lüthi', 'Yanis', 'Yanis.Lüthi@cpnvpark.ch', 'Place des Brises', '223', 'Eysins', 1262, '0775678901', '965.2478.6736.24', 3, NULL, NULL, 8);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Jaquet', 'Leana', 'Leana.Jaquet@cpnvpark.ch', 'Passage des Mirages', '86', 'Cottens', 1116, '0772345678', '136.5263.8287.31', 3, NULL, NULL, 9);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Brunner', 'Marco', 'Marco.Brunner@cpnvpark.ch', 'Avenue des Esquisses', '217', 'Lovatens', 1682, '0779012345', '479.9783.6535.69', 3, NULL, NULL, 10);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Meyer', 'Alina', 'Alina.Meyer@cpnvpark.ch', 'Boulevard des Captivants', '70', 'Founex', 1297, '0776789012', '352.6456.2952.49', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Bürki', 'Jan', 'Jan.Bürki@cpnvpark.ch', 'Allée des Tendresses', '70', 'Rossinière', 1658, '0773456789', '731.2487.1540.31', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Baumann', 'Laura', 'Laura.Baumann@cpnvpark.ch', 'Rue des Frondaisons', '131', 'Moiry', 1148, '0770123456', '437.1801.2555.67', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Schmid', 'Kilian', 'Kilian.Schmid@cpnvpark.ch', 'Impasse des Regrets', '153', 'Puidoux', 1070, '0777890123', '799.2991.9555.26', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Fischer', 'Selina', 'Selina.Fischer@cpnvpark.ch', 'Place des Soupirs', '217', 'Jorat-Menthue', 1062, '0774567890', '819.1600.7662.48', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Stucki', 'Manuel', 'Manuel.Stucki@cpnvpark.ch', 'Rue des Envolées', '231', 'Leysin', 1854, '0771234567', '676.4718.8828.83', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Wenger', 'Jasmin', 'Jasmin.Wenger@cpnvpark.ch', 'Avenue des Nocturnes', '11', 'Grandcour', 1543, '0778901234', '712.1775.9347.80', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Wyss', 'Tim', 'Tim.Wyss@cpnvpark.ch', 'Allée des Souvenances', '210', 'Essertines-sur-Rolle', 1186, '0775678901', '227.5846.3300.32', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Schär', 'Alessia', 'Alessia.Schär@cpnvpark.ch', 'Boulevard des Silences', '105', 'Bru', 1422, '0772345678', '197.4901.7900.19', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Müller', 'Nicolas', 'Nicolas.Müller@cpnvpark.ch', 'Passage des Fragrances', '155', 'Le Day', 1337, '0779012345', '607.9177.5530.31', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Mäder', 'Vanessa', 'Vanessa.Mäder@cpnvpark.ch', 'Rue des Arpèges', '111', 'Etagnières', 1037, '0776789012', '504.1171.9459.86', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Rüfenacht', 'Stefan', 'Stefan.Rüfenacht@cpnvpark.ch', 'Place des Errances', '3', 'Gland', 1196, '0773456789', '426.2903.3851.73', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Hug', 'Michelle', 'Michelle.Hug@cpnvpark.ch', 'Avenue des Solitudes', '199', 'Villars-le-Comte', 1515, '0770123456', '504.6090.6199.69', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Herzog', 'Fabian', 'Fabian.Herzog@cpnvpark.ch', 'Allée des Pétales', '61', 'Naz', 1041, '0777890123', '500.5380.7864.69', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Schaller', 'Elena', 'Elena.Schaller@cpnvpark.ch', 'Boulevard des Échos', '140', 'Lignerolle', 1357, '0774567890', '493.4646.5683.89', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Vogel', 'Silvan', 'Silvan.Vogel@cpnvpark.ch', 'Rue des Ailes', '24', 'Cheseaux-sur-Lausanne', 1033, '0771234567', '260.5113.5154.17', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Fuchs', 'Sabrina', 'Sabrina.Fuchs@cpnvpark.ch', 'Impasse des Réminiscences', '160', 'Corcelles-près-Payerne', 1562, '0778901234', '446.4279.2161.78', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Reber', 'Marc', 'Marc.Reber@cpnvpark.ch', 'Place des Esquimaux', '231', 'Brent', 1817, '0775678901', '895.2846.6452.31', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Roth', 'Leila', 'Leila.Roth@cpnvpark.ch', 'Passage des Hiboux', '96', 'Montagny-Chamard', 1440, '0772345678', '634.5726.6775.74', 4, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Hugentobler', 'Dominic', 'Dominic.Hugentobler@cpnvpark.ch', 'Avenue des Pianos', '92', 'Champagne', 1424, '0779012345', '416.7043.8677.55', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Suter', 'Tamara', 'Tamara.Suter@cpnvpark.ch', 'Allée des Lucarnes', '167', 'Mauborget', 1453, '0776789012', '385.2127.9565.44', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Zimmermann', 'Leon', 'Leon.Zimmermann@cpnvpark.ch', 'Boulevard des Accords', '9', 'Goumoëns-la-Ville', 1376, '0773456789', '547.7491.7826.58', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Nussbaum', 'Fiona', 'Fiona.Nussbaum@cpnvpark.ch', 'Rue des Regains', '36', 'Bournens', 1035, '0770123456', '390.7330.5833.47', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Stauffer', 'Luca', 'Luca.Stauffer@cpnvpark.ch', 'Impasse des Saisons', '105', 'Bursins', 1183, '0777890123', '813.7267.5658.45', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Bühler', 'Celine', 'Celine.Bühler@cpnvpark.ch', 'Place des Charmes', '112', 'Chabrey', 1589, '0774567890', '513.8305.4099.31', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Hänni', 'Lars', 'Lars.Hänni@cpnvpark.ch', 'Avenue des Vignettes', '48', 'Mex', 1031, '0771234567', '858.2425.1450.60', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Spörri', 'Rebecca', 'Rebecca.Spörri@cpnvpark.ch', 'Passage des Vagabonds', '189', 'Chenaux', 1091, '0778901234', '435.3885.1338.31', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Wälti', 'Pascal', 'Pascal.Wälti@cpnvpark.ch', 'Rue des Feuilles', '247', 'La Lécherette', 1660, '0775678901', '382.7775.2238.61', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Gasser', 'Melanie', 'Melanie.Gasser@cpnvpark.ch', 'Allée des Caresses', '181', 'Boussens', 1034, '0772345678', '679.3744.5338.86', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Kuhn', 'Tobias', 'Tobias.Kuhn@cpnvpark.ch', 'Boulevard des Insomnies', '154', 'Morrens', 1054, '0779012345', '617.8308.9838.68', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Lenz', 'Larissa', 'Larissa.Lenz@cpnvpark.ch', 'Place des Baisers', '75', 'Etagnières', 1037, '0776789012', '576.1379.5533.66', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Ziegler', 'Joel', 'Joel.Ziegler@cpnvpark.ch', 'Impasse des Confluences', '80', 'Grancy', 1117, '0773456789', '594.6095.8190.29', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Meier', 'Noa', 'Noa.Meier@cpnvpark.ch', 'Avenue des Frissons', '51', 'Avenches', 1580, '0770123456', '281.8175.7136.24', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Eberle', 'Fabienne', 'Fabienne.Eberle@cpnvpark.ch', 'Rue des Avalanches', '97', 'Suchy', 1433, '0777890123', '828.2147.7349.71', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Jäger', 'Matthias', 'Matthias.Jäger@cpnvpark.ch', 'Passage des Canopées', '169', 'Valeyres-sous-Rances', 1358, '0774567890', '783.1929.4784.69', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Amstutz', 'Lukas', 'Lukas.Amstutz@cpnvpark.ch', 'Allée des Vermeils', '254', 'L''Abbaye ', 1344, '0771234567', '448.6570.5630.60', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Frei', 'Lena', 'Lena.Frei@cpnvpark.ch', 'Boulevard des Jardins', '187b', 'Les Posses-sur-Bex', 1882, '0778901234', '806.2830.1618.67', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Schaub', 'Jonas', 'Jonas.Schaub@cpnvpark.ch', 'Place des Glaces', '63', 'Assens', 1042, '0775678901', '485.2747.2161.38', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Mühle', 'Sophia', 'Sophia.Mühle@cpnvpark.ch', 'Rue des Illusions', '229', 'Les Clées', 1356, '0772345678', '194.3124.3866.57', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Zürcher', 'Finn', 'Finn.Zürcher@cpnvpark.ch', 'Avenue des Liserons', '132', 'Montaubion-Chardonney', 1041, '0779012345', '709.9159.7404.68', 5, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Ritter', 'Mia', 'Mia.Ritter@cpnvpark.ch', 'Impasse des Forêts', '180', 'Lussery-Villars', 1307, '0776789012', '281.7978.8051.97', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Schenker', 'Maximilian', 'Maximilian.Schenker@cpnvpark.ch', 'Passage des Nuances', '136', 'Corcelles-près-Concise', 1426, '0773456789', '878.8334.1803.39', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Aebersold', 'Emma', 'Emma.Aebersold@cpnvpark.ch', 'Allée des Velours', '115', 'Bière', 1145, '0770123456', '366.6461.2965.38', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Spühler', 'Leon', 'Leon.Spühler@cpnvpark.ch', 'Boulevard des Nuages', '97', 'Bassins', 1269, '0777890123', '535.9128.7152.88', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Bader', 'Anna', 'Anna.Bader@cpnvpark.ch', 'Place des Cerisiers', '31', 'Pompaples', 1318, '0774567890', '492.6317.9982.56', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Bregy', 'Tim', 'Tim.Bregy@cpnvpark.ch', 'Rue des Labyrinthes', '92', 'Montagny-Chamard', 1440, '0771234567', '414.5706.5601.81', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Fässler', 'Johanna', 'Johanna.Fässler@cpnvpark.ch', 'Avenue des Eaux', '239', 'Echallens', 1040, '0778901234', '121.9777.7184.60', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Gautschi', 'Paul', 'Paul.Gautschi@cpnvpark.ch', 'Passage des Vagues', '83', 'Dommartin', 1041, '0775678901', '424.1260.3170.77', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Holzer', 'Laura', 'Laura.Holzer@cpnvpark.ch', 'Allée des Nymphes', '225', 'Corcelles-le-Jorat', 1082, '0772345678', '626.6509.1403.20', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Jost', 'Noah', 'Noah.Jost@cpnvpark.ch', 'Boulevard des Faubourgs', '233', 'Lully', 1132, '0779012345', '893.3320.3199.48', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Koller', 'Sarah', 'Sarah.Koller@cpnvpark.ch', 'Rue des Horloges', '179', 'Bioley-Magnoux', 1407, '0776789012', '992.6145.7044.18', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Lang', 'Felix', 'Felix.Lang@cpnvpark.ch', 'Place des Valises', '224', 'Chamblon', 1436, '0773456789', '743.3109.3999.32', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Mair', 'Marie', 'Marie.Mair@cpnvpark.ch', 'Impasse des Muses', '140', 'Duillier', 1266, '0770123456', '428.7201.3362.46', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Nägeli', 'Emil', 'Emil.Nägeli@cpnvpark.ch', 'Avenue des Harmonies', '248', 'Gland', 1196, '0777890123', '122.4990.5632.35', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Odermatt', 'Clara', 'Clara.Odermatt@cpnvpark.ch', 'Passage des Voiles', '149', 'Epautheyres', 1417, '0774567890', '533.6320.7749.81', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Pfister', 'Moritz', 'Moritz.Pfister@cpnvpark.ch', 'Allée des Marquises', '110', 'Le Mont-Pèlerin', 1801, '0771234567', '445.1335.4050.71', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Quinter', 'Lina', 'Lina.Quinter@cpnvpark.ch', 'Boulevard des Horizons', '119', 'Vallamand', 1586, '0778901234', '656.4060.8381.25', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Röthlisberger', 'Luca', 'Luca.Röthlisberger@cpnvpark.ch', 'Rue des Ateliers', '113', 'Mies', 1295, '0775678901', '822.1705.6472.77', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Senn', 'Leonie', 'Leonie.Senn@cpnvpark.ch', 'Place des Flammes', '54', 'Orzens', 1413, '0772345678', '637.8111.8613.16', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Tschopp', 'Ben', 'Ben.Tschopp@cpnvpark.ch', 'Avenue des Lucioles', '115', 'Aigle', 1860, '0779012345', '330.8334.8199.69', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Uhlmann', 'Hannah', 'Hannah.Uhlmann@cpnvpark.ch', 'Impasse des Sifflements', '173', 'Luins', 1184, '0776789012', '973.5132.3148.56', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Villiger', 'Niklas', 'Niklas.Villiger@cpnvpark.ch', 'Allée des Douceurs', '45', 'Champmartin', 1588, '0773456789', '416.6811.4528.94', 6, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Waser', 'Emilia', 'Emilia.Waser@cpnvpark.ch', 'Passage des Nénuphars', '154', 'L''Auberson', 1454, '0770123456', '944.1304.1495.94', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Xenakis', 'Jan', 'Jan.Xenakis@cpnvpark.ch', 'Boulevard des Serments', '48', 'Les Tavernes', 1607, '0777890123', '924.5644.8205.33', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Yilmaz', 'Amelie', 'Amelie.Yilmaz@cpnvpark.ch', 'Rue des Cycles', '12', 'Chavannes-des-Bois', 1290, '0774567890', '673.3368.2779.14', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Zehnder', 'David', 'David.Zehnder@cpnvpark.ch', 'Place des Passerelles', '2', 'Mauraz', 1148, '0771234567', '235.8744.4242.76', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Auf der Maur', 'Julia', 'Julia.Auf der Maur@cpnvpark.ch', 'Avenue des Caprices', '144', 'Echallens', 1040, '0778901234', '970.5956.9064.88', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Bopp', 'Elias', 'Elias.Bopp@cpnvpark.ch', 'Allée des Cristaux', '91', 'Bofflens', 1353, '0775678901', '168.2909.4129.59', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Dinkel', 'Lara', 'Lara.Dinkel@cpnvpark.ch', 'Impasse des Vents', '143', 'Ferreyres', 1313, '0772345678', '299.1248.9203.44', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Egli', 'Samuel', 'Samuel.Egli@cpnvpark.ch', 'Passage des Palais', '221', 'Bougy-Villars', 1172, '0779012345', '435.6079.2204.93', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Fankhauser', 'Emily', 'Emily.Fankhauser@cpnvpark.ch', 'Boulevard des Remparts', '105', 'Longirod', 1261, '0776789012', '393.2525.1063.41', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Gasser', 'Adrian', 'Adrian.Gasser@cpnvpark.ch', 'Rue des Comètes', '121', 'Tolochenaz', 1131, '0773456789', '836.9588.9646.46', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Haas', 'Paulina', 'Paulina.Haas@cpnvpark.ch', 'Place des Tambours', '61', 'Ferlens', 1076, '0770123456', '742.7384.9009.77', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Indermühle', 'Simon', 'Simon.Indermühle@cpnvpark.ch', 'Avenue des Zéniths', '123', 'Vufflens-le-Château', 1134, '0777890123', '949.4445.1914.17', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Järmann', 'Charlotte', 'Charlotte.Järmann@cpnvpark.ch', 'Allée des Libellules', '135', 'Bursinel', 1195, '0774567890', '488.9007.3574.68', 7, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Kälin', 'Jakob', 'Jakob.Kälin@cpnvpark.ch', 'Impasse des Palettes', '64', 'Jorat-Menthue', 1062, '0771234567', '979.7665.5466.57', 8, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Lauber', 'Mila', 'Mila.Lauber@cpnvpark.ch', 'Passage des Eclipses', '246', 'Mutrux', 1428, '0778901234', '360.7193.4344.76', 8, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Meister', 'Max', 'Max.Meister@cpnvpark.ch', 'Rue des Saisons', '208', 'Montcherand', 1354, '0775678901', '807.1199.1110.93', 8, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Näf', 'Johanne', 'Johanne.Näf@cpnvpark.ch', 'Boulevard des Vestiges', '235', 'Montet', 1483, '0772345678', '745.3916.3087.53', 8, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Ogi', 'Tom', 'Tom.Ogi@cpnvpark.ch', 'Place des Mélodies', '16', 'Marchissy', 1261, '0779012345', '955.1828.1762.31', 8, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Peyer', 'Pia', 'Pia.Peyer@cpnvpark.ch', 'Avenue des Aurores', '241', 'La Cergnat', 1863, '0776789012', '322.6512.8847.89', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Rupp', 'Philipp', 'Philipp.Rupp@cpnvpark.ch', 'Allée des Rivages', '168', 'Sugnens', 1043, '0773456789', '601.3129.2038.38', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Scherer', 'Luisa', 'Luisa.Scherer@cpnvpark.ch', 'Passage des Lueurs', '180', 'Lonay', 1027, '0770123456', '439.3437.1733.68', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Thoma', 'Oskar', 'Oskar.Thoma@cpnvpark.ch', 'Rue des Jardins', '19', 'Tolochenaz', 1131, '0777890123', '669.9159.1130.83', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Vögeli', 'Sophia', 'Sophia.Vögeli@cpnvpark.ch', 'Impasse des Brumes', '112', 'Vufflens-La Mothe', 1431, '0774567890', '818.2615.8760.30', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Silva', 'João', 'João.Silva@cpnvpark.ch', 'Place des Nuits', '24', 'Romainmôtier-Envy', 1323, '0771234567', '952.1010.5869.82', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Santos', 'Maria', 'Maria.Santos@cpnvpark.ch', 'Boulevard des Ruelles', '122', 'Montagny-près-Yverdon', 1442, '0778901234', '649.2809.3780.60', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Pereira', 'Pedro', 'Pedro.Pereira@cpnvpark.ch', 'Avenue des Voûtes', '163', 'Essertes', 1078, '0775678901', '133.8302.6779.61', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Costa', 'Ana', 'Ana.Costa@cpnvpark.ch', 'Allée des Croissants', '155', 'Péroset', 1422, '0772345678', '652.7691.6680.72', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Oliveira', 'Francisco', 'Francisco.Oliveira@cpnvpark.ch', 'Rue des Poètes', '61a', 'Moudon', 1510, '0779012345', '786.1716.6883.55', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Rodrigues', 'Beatriz', 'Beatriz.Rodrigues@cpnvpark.ch', 'Impasse des Ruisseaux', '121', 'Territet', 1820, '0776789012', '913.9216.7877.13', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Martins', 'Miguel', 'Miguel.Martins@cpnvpark.ch', 'Passage des Rêveries', '32', 'Chéserex', 1275, '0773456789', '209.9188.6325.83', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Ferreira', 'Sofia', 'Sofia.Ferreira@cpnvpark.ch', 'Place des Lucarnes', '139', 'Les Bioux', 1346, '0770123456', '727.9958.1771.92', 9, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Ramos', 'Diogo', 'Diogo.Ramos@cpnvpark.ch', 'Boulevard des Essences', '172', 'Gimel', 1188, '0777890123', '456.5195.5151.66', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Almeida', 'Inês', 'Inês.Almeida@cpnvpark.ch', 'Rue des Cheminées', '90', 'Pomy', 1405, '0774567890', '830.3079.5946.74', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Carvalho', 'André', 'André.Carvalho@cpnvpark.ch', 'Avenue des Sommets', '153', 'Montagny-Chamard', 1440, '0771234567', '735.7208.2262.62', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Mendes', 'Carolina', 'Carolina.Mendes@cpnvpark.ch', 'Allée des Puits', '115', 'Eclagnens', 1376, '0778901234', '671.1032.8809.37', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Sousa', 'Tiago', 'Tiago.Sousa@cpnvpark.ch', 'Passage des Guirlandes', '36', 'Cheseaux-sur-Lausanne', 1033, '0775678901', '338.8711.6056.32', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Pereira', 'Mariana', 'Mariana.Pereira@cpnvpark.ch', 'Impasse des Bucoliques', '135', 'Chailly-sur-Montreux', 1816, '0772345678', '150.7731.3213.46', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Oliveira', 'Guilherme', 'Guilherme.Oliveira@cpnvpark.ch', 'Place des Brouillards', '37', 'Les Thioleyres', 1607, '0779012345', '153.7748.6880.67', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Fernandes', 'Leonor', 'Leonor.Fernandes@cpnvpark.ch', 'Boulevard des Eclats', '191', 'Les Clées', 1356, '0776789012', '224.1079.5515.91', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Pinto', 'Rodrigo', 'Rodrigo.Pinto@cpnvpark.ch', 'Rue des Cinq Sens', '22', 'Goumoën-le-Jux', 1376, '0773456789', '663.8755.8987.82', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Marques', 'Matilde', 'Matilde.Marques@cpnvpark.ch', 'Avenue des Méandres', '57', 'La Sauge', 1588, '0770123456', '728.9956.7535.28', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Gonçalves', 'Lucas', 'Lucas.Gonçalves@cpnvpark.ch', 'Allée des Poudreries', '47', 'Corcelettes', 1422, '0777890123', '213.7364.5804.18', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Ribeiro', 'Lara', 'Lara.Ribeiro@cpnvpark.ch', 'Passage des Songes', '193', 'Gingins', 1276, '0774567890', '307.4662.9759.20', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Popov', 'Aleksandr', 'Aleksandr.Popov@cpnvpark.ch', 'Impasse des Rochers', '6', 'Allens', 1304, '0771234567', '825.4972.7998.39', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Ivanov', 'Anastasia', 'Anastasia.Ivanov@cpnvpark.ch', 'Place des Reflets', '215', 'Eysins', 1262, '0778901234', '263.2008.2478.17', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Kuznetsov', 'Dmitri', 'Dmitri.Kuznetsov@cpnvpark.ch', 'Boulevard des Fables', '245', 'Champagne', 1424, '0775678901', '509.5453.2125.40', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Petrov', 'Ekaterina', 'Ekaterina.Petrov@cpnvpark.ch', 'Rue des Harmonies', '22', 'Vully-les-Lacs', 1853, '0772345678', '931.1958.7233.95', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Sokolov', 'Ivan', 'Ivan.Sokolov@cpnvpark.ch', 'Avenue des Allégories', '7', 'Chapelle-sur-Moudon', 1063, '0779012345', '281.8642.4338.88', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Kovalenko', 'Olga', 'Olga.Kovalenko@cpnvpark.ch', 'Allée des Lys', '151', 'Bottens', 1041, '0776789012', '982.8611.6180.83', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Novak', 'Mikhail', 'Mikhail.Novak@cpnvpark.ch', 'Passage des Quatre Vents', '181', 'Grandson', 1422, '0773456789', '824.3044.4773.80', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Kováč', 'Tatiana', 'Tatiana.Kováč@cpnvpark.ch', 'Impasse des Vibrations', '148', 'Marchissy', 1261, '0770123456', '953.2999.9130.22', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Varga', 'Yuri', 'Yuri.Varga@cpnvpark.ch', 'Place des Résurgences', '150', 'Montet', 1483, '0777890123', '342.1303.7381.82', 10, NULL, NULL, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Petrović', 'Yelena', 'Yelena.Petrović@cpnvpark.ch', 'Boulevard des Fontaines', '244', 'Donneloye', 1407, '0774567890', '701.1507.8440.81', 11, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Kovač', 'Andrei', 'Andrei.Kovač@cpnvpark.ch', 'Rue des Cavernes', '59', 'La Tour-de-Peilz', 1814, '0771234567', '874.8366.2623.13', 11, NULL, 1, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Kowalski', 'Svetlana', 'Svetlana.Kowalski@cpnvpark.ch', 'Avenue des Jaspes', '9', 'La Cure', 1265, '0778901234', '247.4706.6426.12', 11, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Szabó', 'Vladislav', 'Vladislav.Szabó@cpnvpark.ch', 'Allée des Nacres', '222', 'Gland', 1196, '0775678901', '249.2915.9444.31', 11, NULL, 2, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Tóth', 'Irina', 'Irina.Tóth@cpnvpark.ch', 'Passage des Oiseaux', '89', 'Valeyres-sous-Ursins', 1412, '0772345678', '650.2184.2693.37', 11, NULL, 2, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Horváth', 'Nikita', 'Nikita.Horváth@cpnvpark.ch', 'Impasse des Harmonicas', '100', 'Penthéréaz', 1375, '0779012345', '565.5257.2591.25', 11, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Kravchenko', 'Ksenia', 'Ksenia.Kravchenko@cpnvpark.ch', 'Place des Remparts', '149', 'Grandson', 1422, '0776789012', '438.1250.7782.88', 11, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Gavrilova', 'Sergei', 'Sergei.Gavrilova@cpnvpark.ch', 'Boulevard des Volutes', '46', 'Oron', 1610, '0773456789', '408.1487.6320.31', 11, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Krajnc', 'Natalia', 'Natalia.Krajnc@cpnvpark.ch', 'Rue des Zéphyrs', '122', 'Syens', 1510, '0770123456', '486.7460.2938.71', 11, NULL, 1, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Andreescu', 'Pavel', 'Pavel.Andreescu@cpnvpark.ch', 'Avenue des Arcades', '242', 'Féchy', 1173, '0777890123', '819.2095.1323.64', 11, NULL, 1, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Stojanović', 'Anastasiya', 'Anastasiya.Stojanović@cpnvpark.ch', 'Allée des Cariatides', '60', 'Bussy-sur-Moudon', 1514, '0774567890', '798.7739.3062.94', 11, NULL, 2, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Yilmaz', 'Mehmet', 'Mehmet.Yilmaz@cpnvpark.ch', 'Passage des Hameaux', '165', 'Avenches', 1580, '0771234567', '126.1115.7929.53', 11, NULL, 6, NULL);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Demir', 'Yasin', 'Yasin.Demir@cpnvpark.ch', 'Impasse des Terrasses', '145', 'Chexbres', 1071, '0778901234', '453.3788.6125.90', 11, NULL, NULL, 1);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Aksoy', 'Emre', 'Emre.Aksoy@cpnvpark.ch', 'Place des Songes', '63s', 'Mies', 1295, '0775678901', '438.2643.5458.79', 11, NULL, NULL, 2);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Kaya', 'Zeynep', 'Zeynep.Kaya@cpnvpark.ch', 'Boulevard des Épices', '208c', 'Bavois', 1372, '0772345678', '522.1094.8429.10', 11, NULL, NULL, 3);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Aydin', 'Can', 'Can.Aydin@cpnvpark.ch', 'Rue des Rameaux', '59', 'Chêne-Pâquier', 1464, '0779012345', '810.9544.4615.40', 11, NULL, NULL, 10);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Carpentier', 'Charlotte', 'Charlotte.Carpentier@cpnvpark.ch', 'Avenue des Courants', '29', 'Huémoz', 1884, '0776789012', '261.9161.2728.40', 11, NULL, NULL, 1);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Gagnon', 'Théo', 'Théo.Gagnon@cpnvpark.ch', 'Allée des Charpentes', '94', 'Vufflens-le-Château', 1134, '0773456789', '453.9529.3837.40', 11, NULL, NULL, 2);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Lecomte', 'Eva', 'Eva.Lecomte@cpnvpark.ch', 'Passage des Ruelles', '26', 'Hermenches', 1513, '0770123456', '455.5309.8133.41', 11, NULL, NULL, 3);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Mercier', 'Liam', 'Liam.Mercier@cpnvpark.ch', 'Impasse des Palissades', '31', 'Château-d''Oex', 1660, '0777890123', '550.2116.5560.54', 11, NULL, NULL, 10);
INSERT INTO employees (lastName, firstName, mail, street, streetNumber, city, postalCode, phone, AVS, role_id, attraction_id, restaurant_id, stand_id) VALUES ('Royer', 'Juliette', 'Juliette.Royer@cpnvpark.ch', 'Place des Coudriers', '122', 'Villeneuve', 1844, '0774567890', '634.7726.5287.55', 11, NULL, NULL, 1);

-- -----------------------------------------------------
-- Table cpnv_park.products
-- -----------------------------------------------------
/*
number : manuellement
name : en partie via ChatGPT, complété manuellement
price : manuellement
*/
INSERT INTO products (number, name, price) VALUES ('dr_1', 'Pepsi', '1.9');
INSERT INTO products (number, name, price) VALUES ('dr_2', 'Fanta', '1.9');
INSERT INTO products (number, name, price) VALUES ('dr_3', 'Sprite', '1.9');
INSERT INTO products (number, name, price) VALUES ('dr_4', 'Nestea', '1.9');
INSERT INTO products (number, name, price) VALUES ('dr_5', 'Rivella', '1.5');
INSERT INTO products (number, name, price) VALUES ('dr_6', 'Dr Pepper', '1.5');
INSERT INTO products (number, name, price) VALUES ('dr_7', 'Schweppes', '1.5');
INSERT INTO products (number, name, price) VALUES ('dr_8', 'Ice Tea', '1.9');
INSERT INTO products (number, name, price) VALUES ('dr_9', 'Orangina', '1.9');
INSERT INTO products (number, name, price) VALUES ('dr_10', 'Oasis', '1.9');
INSERT INTO products (number, name, price) VALUES ('ch_1', 'Toblerone', '3.9');
INSERT INTO products (number, name, price) VALUES ('ch_2', 'Cailler', '2.5');
INSERT INTO products (number, name, price) VALUES ('ch_3', 'Lindt Swiss Chocolate', '2.5');
INSERT INTO products (number, name, price) VALUES ('ch_4', 'Frey Chocolate', '2.5');
INSERT INTO products (number, name, price) VALUES ('ch_5', 'Ragusa', '2.2');
INSERT INTO products (number, name, price) VALUES ('ch_6', 'Milka', '2.2');
INSERT INTO products (number, name, price) VALUES ('ch_7', 'Suchard', '2.8');
INSERT INTO products (number, name, price) VALUES ('ch_8', 'Ovomaltine Chocolate Bar', '1.9');
INSERT INTO products (number, name, price) VALUES ('ch_9', 'Nestlé Swiss Chocolate', '2.5');
INSERT INTO products (number, name, price) VALUES ('ch_10', 'Kinder Bueno', '1.9');
INSERT INTO products (number, name, price) VALUES ('ch_11', 'Twix', '1.9');
INSERT INTO products (number, name, price) VALUES ('ch_12', 'Mars', '1.9');
INSERT INTO products (number, name, price) VALUES ('ch_13', 'M&M''s', '2.9');
INSERT INTO products (number, name, price) VALUES ('ch_14', 'Sneaker', '1.9');
INSERT INTO products (number, name, price) VALUES ('ch_15', 'Lion', '1.9');
INSERT INTO products (number, name, price) VALUES ('ch_16', 'Branche', '1.5');
INSERT INTO products (number, name, price) VALUES ('ic_1', 'Vanille Caramel Swirl', '5.9');
INSERT INTO products (number, name, price) VALUES ('ic_2', 'Chocolat Fudge Dream', '3.8');
INSERT INTO products (number, name, price) VALUES ('ic_3', 'Fraise Passion Sorbet', '7.8');
INSERT INTO products (number, name, price) VALUES ('ic_4', 'Pistache Praliné Fusion', '4');
INSERT INTO products (number, name, price) VALUES ('ic_5', 'Mangue Litchi Delight', '5.6');
INSERT INTO products (number, name, price) VALUES ('ic_6', 'Cookie Dough Extravaganza', '7.6');
INSERT INTO products (number, name, price) VALUES ('ic_7', 'Framboise Chocolat Noir', '4.3');
INSERT INTO products (number, name, price) VALUES ('ic_8', 'Noix de Coco Tropical', '7.8');
INSERT INTO products (number, name, price) VALUES ('ic_9', 'Café Expresso Crunch', '8');
INSERT INTO products (number, name, price) VALUES ('ic_10', 'Citron Basilic Frais', '6.9');
INSERT INTO products (number, name, price) VALUES ('so_1', 'T-shirt S', '49.9');
INSERT INTO products (number, name, price) VALUES ('so_2', 'T-shirt M', '49.9');
INSERT INTO products (number, name, price) VALUES ('so_3', 'T-shirt L', '49.9');
INSERT INTO products (number, name, price) VALUES ('so_4', 'Chapeau thématique', '19.9');
INSERT INTO products (number, name, price) VALUES ('so_5', 'Tasse', '9');
INSERT INTO products (number, name, price) VALUES ('so_6', 'Aimant', '2');
INSERT INTO products (number, name, price) VALUES ('so_7', 'Porte-clés', '3');
INSERT INTO products (number, name, price) VALUES ('so_8', 'Pin', '2');
INSERT INTO products (number, name, price) VALUES ('so_9', 'Peluche', '29');
INSERT INTO products (number, name, price) VALUES ('so_10', 'Pack de 6 autocollants', '2');
INSERT INTO products (number, name, price) VALUES ('so_11', 'Serviette de plage', '15');
INSERT INTO products (number, name, price) VALUES ('so_12', 'Lunette de soleil', '20');
INSERT INTO products (number, name, price) VALUES ('so_13', 'Sac à dos', '69');
INSERT INTO products (number, name, price) VALUES ('so_14', 'Puzzle thématique', '15');
INSERT INTO products (number, name, price) VALUES ('so_15', 'Carnet de notes', '8');
INSERT INTO products (number, name, price) VALUES ('so_16', 'Boîte à musique ', '25');
INSERT INTO products (number, name, price) VALUES ('so_17', 'Cadre photo', '10');
INSERT INTO products (number, name, price) VALUES ('so_18', 'Stylos', '3');
INSERT INTO products (number, name, price) VALUES ('so_19', 'Biscuits thématiques', '6');
INSERT INTO products (number, name, price) VALUES ('so_20', 'Bouteille isotherme 5 dL', '24');
INSERT INTO products (number, name, price) VALUES ('bk_1', 'Brownie', '4');
INSERT INTO products (number, name, price) VALUES ('bk_2', 'Cookie', '2');
INSERT INTO products (number, name, price) VALUES ('bk_3', 'Muffin', '3');
INSERT INTO products (number, name, price) VALUES ('bk_4', 'Gauffre', '7');
INSERT INTO products (number, name, price) VALUES ('bk_5', 'Crêpe', '7');
INSERT INTO products (number, name, price) VALUES ('bk_6', 'Churro', '7');

-- -----------------------------------------------------
-- Table cpnv_park.stands_contain_products
-- -----------------------------------------------------
/*
quantity : via la fonction ALEA.ENTRE.BORNES d’Excel
stand_id : manuellement, pour des raisons de cohérence entre le stand et les produits qu’il contien 
product_id : partiellement via la fonction ALEA.ENTRE.BORNES d’Excel et partiellement manuellement, pour des raisons de cohérence

NB : Valeur négative pour quantity pour le 1er INSERT donc produira une erreur à cause de la contrainte CHK_quantity_Positive.
*/
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (-1, 1, 27);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (7, 1, 28);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (48, 1, 29);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (8, 1, 30);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (56, 1, 31);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (20, 1, 32);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (25, 1, 33);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (60, 1, 34);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (1, 1, 35);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (22, 1, 36);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (11, 2, 11);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (42, 2, 12);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (80, 2, 13);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (52, 2, 14);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (59, 2, 15);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (48, 2, 16);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (70, 2, 17);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (25, 2, 18);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (53, 2, 19);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (25, 2, 20);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (52, 2, 21);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (86, 2, 22);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (92, 2, 23);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (33, 2, 24);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (65, 2, 25);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (0, 2, 26);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (29, 3, 57);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (13, 3, 58);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (43, 3, 59);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (50, 3, 60);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (20, 3, 61);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (18, 3, 62);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (97, 4, 46);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (5, 4, 46);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (34, 4, 44);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (91, 4, 39);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (29, 4, 53);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (52, 4, 37);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (94, 4, 49);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (34, 4, 56);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (60, 4, 51);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (31, 4, 39);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (14, 5, 51);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (56, 5, 55);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (51, 5, 56);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (31, 5, 48);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (91, 5, 55);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (30, 5, 46);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (68, 5, 41);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (2, 5, 45);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (80, 5, 52);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (41, 5, 38);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (86, 5, 43);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (49, 5, 44);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (45, 5, 46);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (33, 5, 54);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (42, 5, 56);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (51, 6, 54);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (46, 6, 44);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (78, 6, 40);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (34, 6, 49);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (9, 6, 39);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (33, 6, 37);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (27, 6, 55);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (98, 6, 45);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (12, 6, 38);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (59, 6, 52);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (40, 6, 44);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (78, 6, 37);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (36, 7, 40);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (73, 7, 44);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (28, 7, 48);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (10, 7, 48);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (55, 7, 44);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (53, 7, 49);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (85, 7, 42);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (52, 7, 50);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (55, 7, 45);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (28, 8, 45);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (50, 8, 54);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (6, 8, 51);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (12, 8, 55);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (97, 8, 39);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (38, 8, 49);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (22, 9, 1);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (86, 9, 2);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (79, 9, 3);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (96, 9, 4);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (30, 9, 5);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (80, 9, 6);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (12, 9, 7);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (78, 9, 8);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (18, 9, 9);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (98, 9, 10);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (71, 10, 22);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (85, 10, 11);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (87, 10, 21);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (18, 10, 22);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (35, 10, 14);
INSERT INTO stands_contain_products (quantity, stand_id, product_id) VALUES (6, 10, 23);

-- Commit the transaction
COMMIT TRANSACTION cpnv_parkDataAll;