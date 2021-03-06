-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: aipd_spm_development
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bidangs`
--

DROP TABLE IF EXISTS `bidangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bidangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bidang` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `indikators`
--

DROP TABLE IF EXISTS `indikators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indikators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bidang_id` int(11) DEFAULT NULL,
  `jenis_pelayanan_id` int(11) DEFAULT NULL,
  `nama_indikator` varchar(255) DEFAULT NULL,
  `nilai_default` int(11) DEFAULT NULL,
  `batas_waktu_default` int(4) DEFAULT NULL,
  `penanggungjawab` varchar(1000) NOT NULL,
  `rumus` varchar(500) DEFAULT NULL,
  `keterangan` varchar(1000) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jenis_pelayanans`
--

DROP TABLE IF EXISTS `jenis_pelayanans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis_pelayanans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bidang_id` int(11) DEFAULT NULL,
  `jenis_pelayanan_nama` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kabkots`
--

DROP TABLE IF EXISTS `kabkots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kabkots` (
  `id` int(11) NOT NULL,
  `provinsi_id` int(11) DEFAULT NULL,
  `kabkot_nama` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ni_varxes`
--

DROP TABLE IF EXISTS `ni_varxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ni_varxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinsi_id` int(11) DEFAULT NULL,
  `kabkot_id` int(11) DEFAULT NULL,
  `bidang_id` int(11) DEFAULT NULL,
  `indikator_id` int(11) DEFAULT NULL,
  `varx_id` int(11) DEFAULT NULL,
  `t02` int(11) DEFAULT NULL,
  `t03` int(11) DEFAULT NULL,
  `t04` int(11) DEFAULT NULL,
  `t05` int(11) DEFAULT NULL,
  `t06` int(11) DEFAULT NULL,
  `t07` int(11) DEFAULT NULL,
  `t08` int(11) DEFAULT NULL,
  `t09` int(11) DEFAULT NULL,
  `t10` int(11) DEFAULT NULL,
  `t11` int(11) DEFAULT NULL,
  `t12` int(11) DEFAULT NULL,
  `t13` int(11) DEFAULT NULL,
  `t14` int(11) DEFAULT NULL,
  `t15` int(11) DEFAULT NULL,
  `t16` int(11) DEFAULT NULL,
  `t17` int(11) DEFAULT NULL,
  `t18` int(11) DEFAULT NULL,
  `t19` int(11) DEFAULT NULL,
  `t20` int(11) DEFAULT NULL,
  `t21` int(11) DEFAULT NULL,
  `t22` int(11) DEFAULT NULL,
  `t23` int(11) DEFAULT NULL,
  `t24` int(11) DEFAULT NULL,
  `t25` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nilai_indikators`
--

DROP TABLE IF EXISTS `nilai_indikators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai_indikators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indikator_id` int(11) DEFAULT NULL,
  `provinsi_id` int(11) DEFAULT NULL,
  `kabkot_id` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `batas_waktu` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `provinsis`
--

DROP TABLE IF EXISTS `provinsis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provinsis` (
  `id` int(11) NOT NULL,
  `provinsi_nama` varchar(255) DEFAULT NULL,
  `jw` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sub_bidangs`
--

DROP TABLE IF EXISTS `sub_bidangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_bidangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bidang_id` int(11) DEFAULT NULL,
  `nama_sub_bidang` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `level` varchar(30) DEFAULT NULL COMMENT 'adm_pusat, adm_prov, adm_kabkot',
  `provinsi_id` int(2) DEFAULT NULL,
  `kabkot_id` int(4) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `v_indikators`
--

DROP TABLE IF EXISTS `v_indikators`;
/*!50001 DROP VIEW IF EXISTS `v_indikators`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_indikators` (
  `id` tinyint NOT NULL,
  `bidang_id` tinyint NOT NULL,
  `nama_bidang` tinyint NOT NULL,
  `jenis_pelayanan_id` tinyint NOT NULL,
  `jenis_pelayanan_nama` tinyint NOT NULL,
  `nama_indikator` tinyint NOT NULL,
  `nilai_default` tinyint NOT NULL,
  `batas_waktu_default` tinyint NOT NULL,
  `rumus` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_jenis_pelayanans`
--

DROP TABLE IF EXISTS `v_jenis_pelayanans`;
/*!50001 DROP VIEW IF EXISTS `v_jenis_pelayanans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_jenis_pelayanans` (
  `id` tinyint NOT NULL,
  `bidang_id` tinyint NOT NULL,
  `nama_bidang` tinyint NOT NULL,
  `jenis_pelayanan_nama` tinyint NOT NULL,
  `created_at` tinyint NOT NULL,
  `updated_at` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_kabkots`
--

DROP TABLE IF EXISTS `v_kabkots`;
/*!50001 DROP VIEW IF EXISTS `v_kabkots`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_kabkots` (
  `jw` tinyint NOT NULL,
  `provinsi_id` tinyint NOT NULL,
  `provinsi_nama` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `kabkot_nama` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ni_varxes`
--

DROP TABLE IF EXISTS `v_ni_varxes`;
/*!50001 DROP VIEW IF EXISTS `v_ni_varxes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ni_varxes` (
  `id` tinyint NOT NULL,
  `provinsi_id` tinyint NOT NULL,
  `kabkot_id` tinyint NOT NULL,
  `bidang_id` tinyint NOT NULL,
  `nama_bidang` tinyint NOT NULL,
  `indikator_id` tinyint NOT NULL,
  `nama_indikator` tinyint NOT NULL,
  `varx_id` tinyint NOT NULL,
  `var_nama` tinyint NOT NULL,
  `satuan` tinyint NOT NULL,
  `t02` tinyint NOT NULL,
  `t03` tinyint NOT NULL,
  `t04` tinyint NOT NULL,
  `t05` tinyint NOT NULL,
  `t06` tinyint NOT NULL,
  `t07` tinyint NOT NULL,
  `t08` tinyint NOT NULL,
  `t09` tinyint NOT NULL,
  `t10` tinyint NOT NULL,
  `t11` tinyint NOT NULL,
  `t12` tinyint NOT NULL,
  `t13` tinyint NOT NULL,
  `t14` tinyint NOT NULL,
  `t15` tinyint NOT NULL,
  `t16` tinyint NOT NULL,
  `t17` tinyint NOT NULL,
  `t18` tinyint NOT NULL,
  `t19` tinyint NOT NULL,
  `t20` tinyint NOT NULL,
  `t21` tinyint NOT NULL,
  `t22` tinyint NOT NULL,
  `t23` tinyint NOT NULL,
  `t24` tinyint NOT NULL,
  `t25` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_nilai_indikators`
--

DROP TABLE IF EXISTS `v_nilai_indikators`;
/*!50001 DROP VIEW IF EXISTS `v_nilai_indikators`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_nilai_indikators` (
  `id` tinyint NOT NULL,
  `bidang_id` tinyint NOT NULL,
  `nama_bidang` tinyint NOT NULL,
  `jenis_pelayanan_id` tinyint NOT NULL,
  `jenis_pelayanan_nama` tinyint NOT NULL,
  `indikator_id` tinyint NOT NULL,
  `nama_indikator` tinyint NOT NULL,
  `provinsi_id` tinyint NOT NULL,
  `provinsi_nama` tinyint NOT NULL,
  `kabkot_id` tinyint NOT NULL,
  `kabkot_nama` tinyint NOT NULL,
  `nilai` tinyint NOT NULL,
  `batas_waktu` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_users`
--

DROP TABLE IF EXISTS `v_users`;
/*!50001 DROP VIEW IF EXISTS `v_users`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_users` (
  `id` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `level` tinyint NOT NULL,
  `provinsi_id` tinyint NOT NULL,
  `provinsi_nama` tinyint NOT NULL,
  `kabkot_id` tinyint NOT NULL,
  `kabkot_nama` tinyint NOT NULL,
  `full_name` tinyint NOT NULL,
  `encrypted_password` tinyint NOT NULL,
  `reset_password_token` tinyint NOT NULL,
  `reset_password_sent_at` tinyint NOT NULL,
  `remember_created_at` tinyint NOT NULL,
  `sign_in_count` tinyint NOT NULL,
  `current_sign_in_at` tinyint NOT NULL,
  `last_sign_in_at` tinyint NOT NULL,
  `current_sign_in_ip` tinyint NOT NULL,
  `last_sign_in_ip` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `varxes`
--

DROP TABLE IF EXISTS `varxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `varxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bidang_id` int(11) DEFAULT NULL,
  `indikator_id` int(11) DEFAULT NULL,
  `var_nama` varchar(255) DEFAULT NULL,
  `satuan` varchar(30) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `v_indikators`
--

/*!50001 DROP TABLE IF EXISTS `v_indikators`*/;
/*!50001 DROP VIEW IF EXISTS `v_indikators`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root_aipd`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_indikators` AS select `indikators`.`id` AS `id`,`indikators`.`bidang_id` AS `bidang_id`,`bidangs`.`nama_bidang` AS `nama_bidang`,`indikators`.`jenis_pelayanan_id` AS `jenis_pelayanan_id`,`jenis_pelayanans`.`jenis_pelayanan_nama` AS `jenis_pelayanan_nama`,`indikators`.`nama_indikator` AS `nama_indikator`,`indikators`.`nilai_default` AS `nilai_default`,`indikators`.`batas_waktu_default` AS `batas_waktu_default`,`indikators`.`rumus` AS `rumus` from ((`indikators` left join `bidangs` on((`indikators`.`bidang_id` = `bidangs`.`id`))) left join `jenis_pelayanans` on((`indikators`.`jenis_pelayanan_id` = `jenis_pelayanans`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_jenis_pelayanans`
--

/*!50001 DROP TABLE IF EXISTS `v_jenis_pelayanans`*/;
/*!50001 DROP VIEW IF EXISTS `v_jenis_pelayanans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root_aipd`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_jenis_pelayanans` AS select `jenis_pelayanans`.`id` AS `id`,`jenis_pelayanans`.`bidang_id` AS `bidang_id`,`bidangs`.`nama_bidang` AS `nama_bidang`,`jenis_pelayanans`.`jenis_pelayanan_nama` AS `jenis_pelayanan_nama`,`jenis_pelayanans`.`created_at` AS `created_at`,`jenis_pelayanans`.`updated_at` AS `updated_at` from (`jenis_pelayanans` left join `bidangs` on((`jenis_pelayanans`.`bidang_id` = `bidangs`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_kabkots`
--

/*!50001 DROP TABLE IF EXISTS `v_kabkots`*/;
/*!50001 DROP VIEW IF EXISTS `v_kabkots`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root_aipd`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_kabkots` AS select `provinsis`.`jw` AS `jw`,`kabkots`.`provinsi_id` AS `provinsi_id`,`provinsis`.`provinsi_nama` AS `provinsi_nama`,`kabkots`.`id` AS `id`,`kabkots`.`kabkot_nama` AS `kabkot_nama` from (`kabkots` left join `provinsis` on((`kabkots`.`provinsi_id` = `provinsis`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_ni_varxes`
--

/*!50001 DROP TABLE IF EXISTS `v_ni_varxes`*/;
/*!50001 DROP VIEW IF EXISTS `v_ni_varxes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root_aipd`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ni_varxes` AS select `ni_varxes`.`id` AS `id`,`ni_varxes`.`provinsi_id` AS `provinsi_id`,`ni_varxes`.`kabkot_id` AS `kabkot_id`,`ni_varxes`.`bidang_id` AS `bidang_id`,`bidangs`.`nama_bidang` AS `nama_bidang`,`ni_varxes`.`indikator_id` AS `indikator_id`,`indikators`.`nama_indikator` AS `nama_indikator`,`ni_varxes`.`varx_id` AS `varx_id`,`varxes`.`var_nama` AS `var_nama`,`varxes`.`satuan` AS `satuan`,`ni_varxes`.`t02` AS `t02`,`ni_varxes`.`t03` AS `t03`,`ni_varxes`.`t04` AS `t04`,`ni_varxes`.`t05` AS `t05`,`ni_varxes`.`t06` AS `t06`,`ni_varxes`.`t07` AS `t07`,`ni_varxes`.`t08` AS `t08`,`ni_varxes`.`t09` AS `t09`,`ni_varxes`.`t10` AS `t10`,`ni_varxes`.`t11` AS `t11`,`ni_varxes`.`t12` AS `t12`,`ni_varxes`.`t13` AS `t13`,`ni_varxes`.`t14` AS `t14`,`ni_varxes`.`t15` AS `t15`,`ni_varxes`.`t16` AS `t16`,`ni_varxes`.`t17` AS `t17`,`ni_varxes`.`t18` AS `t18`,`ni_varxes`.`t19` AS `t19`,`ni_varxes`.`t20` AS `t20`,`ni_varxes`.`t21` AS `t21`,`ni_varxes`.`t22` AS `t22`,`ni_varxes`.`t23` AS `t23`,`ni_varxes`.`t24` AS `t24`,`ni_varxes`.`t25` AS `t25` from (((`ni_varxes` left join `bidangs` on((`ni_varxes`.`bidang_id` = `bidangs`.`id`))) left join `indikators` on((`ni_varxes`.`indikator_id` = `indikators`.`id`))) left join `varxes` on((`ni_varxes`.`varx_id` = `varxes`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_nilai_indikators`
--

/*!50001 DROP TABLE IF EXISTS `v_nilai_indikators`*/;
/*!50001 DROP VIEW IF EXISTS `v_nilai_indikators`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root_aipd`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_nilai_indikators` AS select `a`.`id` AS `id`,`v_indikators`.`bidang_id` AS `bidang_id`,`v_indikators`.`nama_bidang` AS `nama_bidang`,`v_indikators`.`jenis_pelayanan_id` AS `jenis_pelayanan_id`,`v_indikators`.`jenis_pelayanan_nama` AS `jenis_pelayanan_nama`,`a`.`indikator_id` AS `indikator_id`,`v_indikators`.`nama_indikator` AS `nama_indikator`,`a`.`provinsi_id` AS `provinsi_id`,`provinsis`.`provinsi_nama` AS `provinsi_nama`,`a`.`kabkot_id` AS `kabkot_id`,`kabkots`.`kabkot_nama` AS `kabkot_nama`,`a`.`nilai` AS `nilai`,`a`.`batas_waktu` AS `batas_waktu` from (((`nilai_indikators` `a` left join `v_indikators` on((`a`.`indikator_id` = `v_indikators`.`id`))) left join `provinsis` on((`a`.`provinsi_id` = `provinsis`.`id`))) left join `kabkots` on((`a`.`kabkot_id` = `kabkots`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_users`
--

/*!50001 DROP TABLE IF EXISTS `v_users`*/;
/*!50001 DROP VIEW IF EXISTS `v_users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root_aipd`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_users` AS select `users`.`id` AS `id`,`users`.`email` AS `email`,`users`.`level` AS `level`,`users`.`provinsi_id` AS `provinsi_id`,`provinsis`.`provinsi_nama` AS `provinsi_nama`,`users`.`kabkot_id` AS `kabkot_id`,`kabkots`.`kabkot_nama` AS `kabkot_nama`,`users`.`full_name` AS `full_name`,`users`.`encrypted_password` AS `encrypted_password`,`users`.`reset_password_token` AS `reset_password_token`,`users`.`reset_password_sent_at` AS `reset_password_sent_at`,`users`.`remember_created_at` AS `remember_created_at`,`users`.`sign_in_count` AS `sign_in_count`,`users`.`current_sign_in_at` AS `current_sign_in_at`,`users`.`last_sign_in_at` AS `last_sign_in_at`,`users`.`current_sign_in_ip` AS `current_sign_in_ip`,`users`.`last_sign_in_ip` AS `last_sign_in_ip` from ((`users` left join `provinsis` on((`users`.`provinsi_id` = `provinsis`.`id`))) left join `kabkots` on((`users`.`kabkot_id` = `kabkots`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-15 13:52:30
INSERT INTO schema_migrations (version) VALUES ('20141112140135');

INSERT INTO schema_migrations (version) VALUES ('20141117163217');

INSERT INTO schema_migrations (version) VALUES ('20141201040334');

INSERT INTO schema_migrations (version) VALUES ('20141201040418');

INSERT INTO schema_migrations (version) VALUES ('20141201040842');

INSERT INTO schema_migrations (version) VALUES ('20141201041213');

INSERT INTO schema_migrations (version) VALUES ('20141201041818');

INSERT INTO schema_migrations (version) VALUES ('20141201041853');

INSERT INTO schema_migrations (version) VALUES ('20141202110122');

INSERT INTO schema_migrations (version) VALUES ('20141202112805');

INSERT INTO schema_migrations (version) VALUES ('20150110005138');

INSERT INTO schema_migrations (version) VALUES ('20150110005139');

INSERT INTO schema_migrations (version) VALUES ('20150110005140');

INSERT INTO schema_migrations (version) VALUES ('20150110005141');

INSERT INTO schema_migrations (version) VALUES ('20150111090221');

INSERT INTO schema_migrations (version) VALUES ('20150111090222');

INSERT INTO schema_migrations (version) VALUES ('20150111090223');

INSERT INTO schema_migrations (version) VALUES ('20150112015031');

INSERT INTO schema_migrations (version) VALUES ('20150112061952');

INSERT INTO schema_migrations (version) VALUES ('20150114083128');

INSERT INTO schema_migrations (version) VALUES ('20150115023130');

INSERT INTO schema_migrations (version) VALUES ('20150115023131');

