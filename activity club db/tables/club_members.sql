-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: club
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `member_name` varchar(50) NOT NULL,
  `member_ssn` int NOT NULL,
  `member_phone` varchar(25) NOT NULL,
  `member_email` varchar(25) NOT NULL,
  `member_address` varchar(50) NOT NULL,
  `member_date` date NOT NULL,
  `activity_id` int DEFAULT NULL,
  `member_image` longblob,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `member_ssn` (`member_ssn`),
  UNIQUE KEY `member_phone` (`member_phone`),
  UNIQUE KEY `member_email` (`member_email`),
  KEY `activity_id` (`activity_id`),
  CONSTRAINT `members_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (20,'Mohamed Elgamal2',7754321,'01281158810','mahmoud@gmail.com','Elmandara Bahary','1990-01-05',NULL,_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777��\0\0t\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\08\0\0\0\0\0\0!1AQa\"q���#2BR��\�$��3CSr��\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\"\0\0\0\0\0\0\0\0\0!1\"A2#�\�\0\0\0?\0�Da�Qc�\�9F\"��QU���&��\�wg�N�x��ԣ�\09\0�\�![i�1\�AN\r9�\�bY�i~���a�Ȯ\����\�9�\�Zuî\�\�NM�Fu\�p��\�u!\��zԀ���\�`h�\n�rm5�0�ÃҴ1]#E��\0�@�5,J\�E�\�ܸ�[��ʮ�\\Կ.�嚳��/�K\�1af8Q�]hYN��tO�\�t)+S�h\�\�l�\0��\0J��f��\�#_�Z�EM�\�	�k�Né��\Z\�㨮D�:�\�)�*z\�A��s\���+\�9\�W\r\�P�S2�ב\�@q]\�;\�ddNI�\�\����K\�ю�\�<\�5\�\�0S�V>\�\�4䐩����J`4�\�ˌ2�0�&����$Ւ������\�1Zˉ3Э�;k�mq��\\0\���3�VC�b\rit-]�A\��\r39�\�N�u�j6\�\�%(1�\��\�ç\\\�O���\'#ލ\�\�,V�\"\0_j,\�i=jk\�w۴�F��\��T�\Z3n1\�\�:|Yl�֚浲\�O\�\�##��w�\rNݍ\��C��\�^\��bs\�@�T,ZP3K\�JM\�ˆZP��\�\'��&\�Q%k���\"�&�J\�\��\�G#h��ivSX��]\�B	9�0\n2x�\�\\F�\�p*��QI2�j\�$*���{\�\�!H\�V]_ɻ\��99&�&go�U��\�	Hc\\K3f5)vD�\'�\�Q��<R\�d\�U[/�\��c�i�\����h\�$S��f\�x��\�\�4hd#�Q\�)�\�$�s�vx\�5��w�uMnE��Yl,\�uÿ�)�班[��~\�K9u\�F�\�)l�2oVǮx�ǽi�[⿀�;9�EU�\�\���\�5�\r�\�W�4��(\�:��s\�k\�u\�+�\�\�ņ=2k\�-j\�P��Y��=+O\�\nZ\�(�yKup\�`�8\�\���B�}\����q�Sj>+\�\�\�%ĬFCyD�G^��gm���\�8��+V��3�I��wW\�|;4\��{�ج�\�(;[�-\��9�ĺ֟|\�Yd���\�6�|�\0\\S1�Z�\\�\�\�6���5�V-kt\��<1�n���\�t��JPxc܈>tSӞ\n��w��<[#[��<\�#���u��\�<�zb9p��I\�/vQIv\�\�T��\�z{\�-Ϋ<č\�Z	\��\�\�U�\�~\����\�\�d\�6��2�\�\�e�\'��۫Ƒ��\nM�\�\"M�B\���C\� ܠ\Z�W)\�\�ڏ�N�BÚ.\�\�d�-��}5�m�4	\�\�!\�d\n��)f}\�\�Se�2�i\�\"��DM��E��\�\�\�<FT���\��33�M[\�\�\�\�Z�& H\rC�Q9!r�JM�\�QZ�s\�^*v��\\\�W\�Z[/\�&p���\'�HmK{#�פ~iM7\�k3&I�:�\�a�~u\�\�Ʌ7ZLح����A�\�(H��h�oS�9?z�\�\���\�6V4 }k\�|K!Kgbpy�\��$#�\�8Ӫ٥MDV�\���$�\0\�u\0�d��湬����s\r\�\�\�t81\�8�\��9\�Y8�,|Ad[�\�\'\�ҭ�k�����B{@#�\0�M4\�\�I5k�;�Z��ʩ�J�\0�\�6\�~3��\�^3\�m|E\�O>�\�!��D\�\�� uư�v7$��x���r�D��,Gw\�\�\�-\�oF#M/�Yܜ5�\�ӨȨ�\�d�F\�H�c\���\�\�\�\�V��\�ʋx\��}\�_�Q\�\�Pļ��G\�\�m\�4�s٩,k�ʥA�\��9���\�\�?\�/Z!f\�L\��T\�-T\�)\�QŜ�\"����0K\�Rd\nW��sL-��ᩳR\0�ġiϷ�P�V\�\�֌�i\�i�\�(K\�@h�B�ȣL����.��\�i��s M\��GV?`	���\�;m/O�\�\�An�{_z�?\�c/�Z\����c�b�5\�W�%�:\�~V_�\�\ns\�\��\���������?�\�ץ��V{Yq�5\�\��\0�_��|w�L�\�_F�\�n\�\�΀ҤY\\�Z�3\�\�.pr9ȩK�pz\Z��\�d��\"\�\�\�}?\�h\�\�\�\�:K��V7�\�\�9p�\��\0i\�V\"��\�PnJX\����[7\�\��G\�Y׸|\�x�\��sNMAcEn�\�M.\��Q/�ڵ�����JR\�pf��k\�GN:*��y\�rMW�~ѯu?��.#���aU�I.e\r1b�\�\�{\n\�\�\�i�ii\��Ͽ�N�59���:��(-&G\�h,]��N�\�;!\�C\'�eI\�X∬Ly��\�\��Lv��$��Mg�+\Z\�|P2\�}^U!\�NH	(\�\�\��!\�\�#\�N�ſҺ\�\�\�D��\�\�ͳE&�r\�\�\�F�鸟ҽ� �{\�����6�-\�o�\�1l�Z^p�m=f\�Y�\�\�r�>�\�0x\�\�\�\�X	F�x\�\�)x��ݴ���RmW!NG�1�\�9����%�R�?@ǡ��J�&\�\�QU��g�S-�\�\�og��^CS�5�QW\��x^M~����P�a�o@+6\�G�N=\�Hڼ\�\�Qӣ%]����聱5\�F9D\���W+�9n1JH��Ӯ.W Lw\�V�d�)\n�\�\��\nGf\'e70�ge\�Y�\n\�m2\�.:��\�\'\�R\�)�g<\Z\��\�\�y\�Ы�G��\�ք\\��``\�j�\�<t�\�\��o\�\"��44���A)\r)\�JI0zPcVS�D\�Ǯ([-�G��\��\�kA5�\0��\�U\\A<NeY[���A%�\�\�#%�(��\�M�Z�д\�\�f�eKx�����|���h�\�Εɞ�\�ko����-�\�2x�\���&��F#\0\n�T�O/%G\��\�Y�b�\�9\�5��\�͉�tyο3\�!\�%{\���\�.1@c��\�\�kh	rKښ\�It/�쨈�B���͸�fUm��8=EE��b#\�U��b\'�\�(\�/c\�\�\�\�\�HҭV<O*\�\�\�緽\\-\�\��zę\�\�k�_�\Z\�J�\'�\r�hy�\�\�Ԇ({PT��\n�l(�2rh{��sR\�,v�\�\��J�dq\"5�#%�Mlq�j��\"\�SO5<\�\�W�s޹\�n<\�\�g�wb�5\�!<Ol\n�A6lzU�;S{T|��f�ޤ�Q��*T���3<b\�X�\����*@�����a�4�\�]��EF\�Oޕ*+_\��\��\0\�Q��sJ�\�y�Vr�w��T�\'�\�Ff\�V�\��9��\�̆vBF\�T��^\�r�\0%d*��%�1 T\�\nT��\�\�\���*Ki� �*TL]z�x@\�JT�Hz�6A�W\n>2^��T2W�`|��2	�J�\�#0\�\��J���\�'),(24,'Mohamed Abdullah',1234467,'01281148880','mohamedelgamal@gmail.com','elmandara','1992-07-12',NULL,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0ȍ\�\�\0\0\0tEXtSoftware\0Adobe ImageReadyq\�e<\0\0�PLTE3m�в�A~�HHHF��J��0j~\�\�\�D��5p�@}�?{����\']q���GesH��J��>z�J��8s�Ϩ\�F��<y��\�\�G��G��E��=z���vUUUC��:v�I��\�\�\�9t�K���g�qpot��6q�EV]EEEJ_h��\�9Ye\�ťEt�.Zi�ܼ���7QZQQQ�ʣ;w�LLL>{����m�����G��DIKѽ�[�����Fm}L���ҨO��BMRL��Q[_���F~��X�SWYH��@w�B��I��E��E��A�@t�D��C��D��H��@|�<x�:u�>y�H��;x�B�B��H��I��:u�A~�I��C��9t����\�\�\�|l���潞PUWsh]^^_�ծ\\VQPMK����\�����g_W���Ap�\\z~8t�jNiH�F{��U��n�SJS,\�^\0\0;IDATx\�\�\�\�c\�v\0�1��=u\�@�^�����c_\�(2(�j\�\\�y�PRro\�[\�`cs{\��_�d��ǮvgfΑ\�|I�V�\�9sffw��3\���\��Ǔ�ۈ����?�\�\��\���3�\����m\�\��\�\�v|uG�z�7.^?��G�\�4~:��\�\�<�\�\�vǳ���K�~�\�ag�:�\�\��\���v\��\�\�\�\�\�\�fLN2O~\�\�1�{r�\�\�̓�7r|\�\�49:sOn���\'7O�\�ܓ[ \�e\�\�m��2�\�V\�1�{r;\�W�\'?o\�/�\'?o\�h\�=�5r,\�\�9sOn���\'�I��o�\�V\�1�{r�\�\�=�er�\�\�6�ssOn�ܵ�\'�O\�\�ܓ; wk\�\�]�;5�\�N\�]�{r7\�\�=�#�̓�7rg\�\��+sO\�ܑ�\'wH\�\�ܓ�$wb\�ɝ��0�\�n\��{r\�\��\�=�kr\�\�\�9��3O~\�\�-�{r\�v\�=9r�\��MsO����̓�7r{\��5sO��ܖ�\'\�Cn\�ܓ#\"�c\�\�1�[1�\�\�m�{r\\\�\�=92r�\��qsO��ܴ�\'\�Gn\�ܓ#$��y��Fn\�ܓ�$7i\�\�q�4�\�H\�͙{r�\�\�\�=9ZrS\�/�!sO��܌�\'\�Ln\�ܓ�&7a\�\�q�0�\�\�\�����\�b%�\�5��?�Z\�?\�\�t�x�\��\�1�o6�s\�|LԚ�\�K\�\��a�#���K7���!&���\�Q�\�\�%�5\�D~��嵢\�>�\�\�xȵ�O\���\��w�\�\�.]2r@s$\�?�\�y\��\�Dg���\�B\�H\�ZE~H\��\�Q��o�\�CBe��|Ӥx;\�r s\�r\�|\�Ø# ?�\�\�D�H��wl8\�\�y{\�T\'Ma\�\�Z���S&�/6\�VF��C�\��\�\�\�yQ8�J�m\�|��w\�\nQr]s\�\�Ŋ+�V�@�\\\�\�)y1\�лi�\�z\�ɋ�rA��:!r-sg\�\�Ujy$Q��#\�1wE�]��Gj\�\Z\�\�+�\�[��9-rusG\�\�Z]\��\"W6wC�]:�1\�O(����!?�\��xѩ�\��W�h��N�\\\�\�	�w�<\�(��!W2wC^ˣ�\�rs\'\�ENޜ�Q!W0wB~XΣ�4rysOOh�K���|��N�\\\�ܓ�\�$\�%\�\�\�\�sy*�����4�|����_}���1�\�2\�n\��Z�d^\�c\�\�%\�m�\��\�6\�N.n\�<�\'��!\'6wD~H���\���p����z*Gμ�\����\�͝=�F���\�\'\�8\�\�̝=\�Z#h^\�\'\�HɅ̝=Ǟ\�\�&z+����W\�$\�k�-�����h�y>�p��%V�xsw\�D\����s�\rR�Xs��!V�T����\"�3w��q���B:.�s�\�E�\�\�]\�):2�o\�#\nt\�O�;\�!�@s�\�e\�\�Oѓ�\���=+�B����7\�ё0w|<P���Yq\�EG@m\��D(\�䧝{/:�Hs燀\�6�\�;ѯ�\"�2w~\�_��y�w\�L\�\�\���凧���#!7wO�I�����ѱ���#8�]e8\�\�Elί�!3\��\r\�\�|?[\Z�V�%�z3^`!1G�%�\��v�z%�z3����\�\�w\�\�^�g��g�����\�Q���\� \�TǄb\����\�\�0E[�\�qD\�e����\�\�gn\�6XލTC˘\��;%\�6G�1\�b�cB_E�\�=y�9�</Q�F\�\�>\��_8\'\�4\�C.0U\��FǛ�x\���\�;\��Ǜ$�V�tr5�\��\��\�ykP\�\�\�\���$?5GE~Y��9�\�\�ĵ˻K�/F�8sr�=ڜ\']��##��ڱ���;�M\\\'��96��\�\�U\�p�\�̏ѝ���#h�[���z�ǡ�!o�\�#d���*\�\Z�2�AwD\�4GH��`~V\�g\�M֎ѿvC�\�H�Pe?Y�\�Fi\��\�N\��;$�\n��;U_C�Mm\�<\�|��.\�\�\�[\�\�\�#͝�G��[�V\�\��1M\�N\�\�G��%�\n��\�\�\�ޡ3?B�Ka\��r\�#�諸Q\�b3\��Mn\��r\�D���\�2\��\�\�\�L\�hQ2\�_Z&5wNa��\n#ۚ5�c\�d���N߼\�y��{��R,FԳ�\�\��%�2�E�Bb��<\�|�\n\�%�t�=\"�p5�D�C\�o���ZNo?Mbpߖ\��\�R\�\����y\�y�9\n�p󑪙)mǿѺ�]�,3\��\�-t[\�\�8ȯ�=\���j2ތ�f��aI���)\�<q�Q}!\�\�$9k\�=\�H\�C\�KU+�f�͉X��O�\��\0�Nt�\�\�\�X\�C\�\�T�\����a�.s4\�a\���\���	�i�Ns<\�a\�%\�\�%�6�q�sD\�a\�o��]ּ�n��\�����uW�#��9OZ ?5GEb��\��\r�y\�8��9.��r�\�Gs�4N~l��<\�|�y	\��\�y\�y��.v�\�\�d~�n��\���Cj\�yx\�f~�n��e���\�5r\�y\�N��y\�$y\�#�5b��]՜�/\r��P�_$6;�\�hQ7\�D\'g(ɯ�k\�j~�O\�P�_/��ⶉ\�1?A7@\�P�_ϑk\�\�]X�6�	r���\�|���6�y\�9CI\�kN�<d�EӜi���$\�1�H¼��dġbF\�J�\�zm{\�d�B\�$g(ɯ����\Z2E\�%g(\�{\�IL\��\'\�en]���$\�1�i^\�&\��\�J�Eo~��49CI\�c�L\�|W\�\�9tr���Ǽz�\�;\�A\�J��y׆:(9\�I~�\���\�|���3�\�jͷ͙�C�3�\�w:\���b>�$ӉF\�P���$ݥ�\�m�--Wa\��\�V�M�r\�\�\��̣+�3�\�w��w�ș�>\��\�0�\Z9\�G�h�g{���\�S=7�QtEr����\�V��y��A�&\�U\�:�G�:\�\��;*OÝn�v]-\�ލ�L\�Б?�\�{G(��L2�1tur���Q\�B%�\�Ǹ>�B\� g\�\�\�tߴ7�\�{�u��A\�!g\�Ȼ��v�2\�k7�t-r���c�v�\�T̗C�!\�&\��\�6�Gk}[T̫a3n]��a#\�7!c��,7�\�t\�6�\�Z�fR1/\�2\�i�3l\�?U�+>[G�%g\�Ƚ�&z<9\�F\�\��Й��C�a3�p�\�L\�\�%�O7�˜s�\�L\�\�)�Ok\�\\����%\�͕љ��c�\�CE�\�\��3Us\�\�O\�\r����.*�d\�ȟ����i�\�\�wa�^s�\�O\���*��.N\�c���\�~IF]��\��\�͡��W�t�.s\�\�4Y[\�V\")C\�i��|s�\Z��	=\�k��|�o\�̠\'{\�ѐon�\�z�\��0\r蜣AO��c\"�}��AO���\"��ǂ�\�5\�E��\�\�\�\�+	z�\��\�l��q�=\�k��|vX��ǁ�\�5\�G>;;$\�=\�Q�\'{\�1�\�G\�\�9�d�9B�\�\�\�[�\�1�\'�\�1�\�\�Cw�s\�\�Ps�\�w�\�=j��|vvͧ9z2\�\'�L\�&�{�d�9Jr��\�0\�Oѓ\�H\�ɏ\�7�s���9\"�\�g��=���9*�g?�^��p\�\�\"\�ȟ=�\�ƭr���%F���q��\�%��%�\�}�\�1�3\�\�~X�i��s\�\�1��_\�D��9jt�����\����3\�\�ޡ6�/�\"Eg�\�>��V�>R\�;:CNތ�\�d\n�\�g�/Ḇ�?$S\�+g��S ��B�_\�:#A��\�:\�*\'�\�H���ޯ\���3\�^\��b�s\"\��+�\'�-r*\��+��\�\�\�T\�\r�W�\�\�֒�\n:#B��lm�s*\��c쳵	N�!�yq�p2\�\n9�\�\�9tF�yq�\���:�B��\�M_\�a\������\�@��\�]_\�a��!����\'I�\�!��w\�}�S3\'B���ߠfN��\���˜�9r�\�}��9!��>\0[�n���\�#\�\�8qs\�\�H��\�\�Q��:�q����m��|t\�wp\�\�\�\�GG�}k��|߉\�#��9�ѻ���4�@>:�m�v�6�A>�\�q�	\�\�D\�GG\��D\rȜ9�\�\�*\'kN�|��M?Q�0�D�S�/r�\�ȟcJ�\nUsb\��d��̩�?�~٧��99�\�\�\��4\�2\'H�&\�+�\�I�cщ���91�\�w|�\�S#\�aN5͏\�ɑ\�0�6�G�|̯�k�S$G`NqC\�Ĝ$9�	Nܜ\Z�{󛜸99�1\�N|&nN�ܽ9�mN�ܛ\�S$�\��k�\�Ƚ��99�{\�\\Ϝ�7\�4\'H\�\��\�)�{s-s�\�\�Ԝ�\�ogN�ܛ�!��\�`\�TȽ9�9roeN�|ڛØ\"��\�\�!\�)�OO{s\0sZ\��\�(}sb\�\�G���\Z�7\�6\'G>\�\�5\�\�{sMs�\�\�\\Ϝ\"���7\�0\'I>�\�\�\�\�i�{ss�\�\�Ĝ�7�0\'E��\�gA�\�M\�7�D~\'U�_uk~�^O\�%nN��\�m�����U[�lN�<��\�2�ֽy}�|��9�Z\"�\Z�y&� �\�y:�Hd\�X\�\�o	��\��?i&y�]\�q�O���FМy�ܺŉ��*S�\�\n�\�s�vl\�1O_\�m�\��\�j\��7Q\�c�urM�Z9F�<}rwo\�\�u�\�\�qzU\�yb\�\�\�O\��i\�\�xQ\�V�ǜT}g\�ʉ~s�\��\�\�\�v\\��\�����-w\�{�s:�ΰ�?\�%\�\�?�O�s*Su���RND��\�o\�#̉L\�j��D\"\��7G\�}\�Hs\Z��a&?����\�?\���\�a\�Z9��<]N4wӻw��6Y�}gh\�\��s\�W;��\�+D_\�V�J9on��<\�{�3�\�I~�\�\����y����#$k\�\�\�\����g��s+\���\�\�:\�u/�����s/�X�3�Y�t+����۟�\���6ǋ\��o�\�gn}\���\�\r�\�\Zjsd��w21^\�˰�~��9�5��\��B̍\�{W\��\�,Yst;i�\�\'\�\�\��R\�\�\�x͑\�\�,\�t\��=[S��\�9rsd\�O\�\�K1�2��\�\�$�\�_\�\\h��_@l�c^^)\�� \��u��Q}\�j\�_���Х\�\�\�- 5G@^I�\�؏���H��oW�%�\�+\r�͏ؑ�;C@�\� ]\�b%!?Y;K�[f�a:cU\��;sL�\�,�E\�W\���(\�\"m{b��w�qgɛ\�}?\�8�\�`�f��Q��[\�_ș��gn\�*�� \"q\�p=.>]5;���퉕�_��w\nϬ�\�2?~KѨ��o\������q»�g\�_\�1\�b\�zݬ��x\�j{��qƻ(�\�y�U\��\�+\�p\�b\�\�\'h�;�g\�ɋ��VM\�|�^7�~��蟞��P�_}\�\�-\�47C��XMn)�u\�\�\��\�\�cW\�%\�-�\��X1��-�7p�Uk�f/vv&\�\�)�۩�\�\0�X����y�.���]t]y\�^�S\�x�\��\�c\�@+VPM\\G��[��Kq�N˼ž`\����7��\�\� ��o����͛E\�\�z;$�f���u�����9.�\n`\�2$+h��Rd%N����OJ�@�\����3P����y��WŞgY�17�ΰ���֡Я��IY�\�\\	P�3l\�K\"\�\�:�j�\�o�B�@g\�\�\�\�\�\�\�\�M\�)�g�\�\�9ֱÐ���\�?\rz\�tE\��ᙤ	/é�ʄV�[\�ʄ\�eݓ�1s-�J`\�\\y@��ɼ9�\�\�\'u�6̓yC\�z�oP�NdIF~@\�\�LM5\Zs}\�hLMe>ȓo%��F\��\�\�\�\�6\�?4�7\�1�10��\�0\�\�I+�\�\�Eu\��\�17�>�\�/�\Z\��y v3��Y\�o�\��[�\�9�9\�\� �\�\�\�7\�f\�H�76\�>�\�\�;�\�O\�\0Vva�D������\�!\��;\�\'��\�K2\��Ԇd4 �sPs�ޝi���ʚO@W�\�\�!6\�Tw���c:pb.2C�0\'o��7�Ú��qL��A\�\�<>�O\�ރ\r\��\�;�\�\Zϱ`\���\�\��\�\�]t8�\�dn\�&y1pe�5R\�[;%��qL�m\�4]�y���H[\�3	W\�9(sr\�4�1O�\�\�}ܙ9L�3�w\�\�����\��\�=\�\�$љy%ph�5S\�\�Wf\�/1`Lt��\�)x��s\�S\�\r��\�|�ݘy\�\\�>ͥ\�-�\�\�\�lYui�\�L\�H��[�	#\r\\l�g��$:\� /n\�3\r\\L��pj�\�L\�\�i�$sC��S�\�|@7\�\�\\?љ:��4�3�g��kGJw\�|3�8`\�\�*87Ϛ��ŭ\��\�\�!\�\�\�\�\�#�_A\�<��\�$\\�\�\0�K�6a�/g>nb�68\�\�97\�Nt�|\�\�}桳�\�Ɔ�DϺ7߁2�%�\�\�fk\�\�\�7>�)b\�\\w�\�T�,`0��M��ϥ4gj�\�s \�\�\�E#?Ff�%b��\�\�{ݙ�)�\0\�\\�\�\��4o�>\0\�Ԍ�\�\�˓���üomJ{r>\�\�T�����\�\�\�f:8�\�Zf��X\�\�\�^P]���}C�iA\�\\\�<��Ƚ�L*���\�YJ\�u��H\�sz\�JG�X\�\�\�U\�\�d��\�\�[	$\�Z]S�\�F\Z��ȫ\r�\�:仉\�\�\�!̥���n\�H�8�����L͠���y1�c.�ц�\�֩\�\"�Is�.��|A��\�\\\�E�\�p>�\�|^\�\\�Y�1������\��\"�MsI�\0��\�QqS ù�\�-�;S�\Zb��\�a\�q\�\"#D*�\�<�c.K�2�e.t\�H�\\nne\� �Vqg�\�<� 39eD�m��[��c�- 3�\�ڔ�x��íWܙ4�\�Үf�0o\0\�\�V��ykw&�1k��=X\�_1Sܧ��^�1\��\�\�1��~y��oYjʯtگt��ʙ���2Z�++��\�i�K�?p��VL!�\�*\�N\�w\�ͥ\�͖v%q�}���z��\�#%\�w&In��ˊ\��h\�\�ﯬP)\�L�|\�>:q�}\�w��\�}\��y<�\�\�.��Zlq��̄\���e�}�x�͟��\�\"��������39�u\\E]t�E�<��b/\�wt\�Eȋ��YR�\�Hn��`.\�L�\�\�p.��\�\�?�k\�Qm�k\�֘��Ҿ���澥m\�\0\�:�\�1#�����\�\�Ϋ�\�ezl\�0#7]ڕ\�c�YD^k�|\�Z?�l.HnznI�\�\�l���g N\�]\�s�\�\�\�t\��9�\'\�W5.\�l�ɐ��%Lw\�\�>ߢ5W��1	r�p+���\�\�:�\��L}^\�\\�\�����\�\�{Kq\�p�Tܙ��\�%w�S)�v�\�\Z\'���0S\�\�\�3K�Jqg\�\�6�\�V\�w���R`�&\�^�c\�\��Ԗ\�w1�)�C�\�\�\�Ǒ?��i�S\�u\�@�X\�fkL�|\�ʞ�NqOi~�i��\�\�S�W6�%������\�.xf\�Ү0�3a�i;�\�\�\�Qݯ0e(�v��	�[\����\�2\\T㎽�\�\�L�|\�\���&���\�<+#=�3Q�iK/3,(\�[�\�\r��]~@g�\�Ӷ^f0P\�E?\�2G��K/�2QrKù\�lmB�\�[$K��\�\�\'���b���鞡Xڥt&H>i\�\�D�\�.l�\"Y\�et&H>i\��\�.l>E��\�\�L�\�\�pn����A��\�\�L�|\�\���\�\�]\�|�di�Й��ͣ�\�\�\�?\�B��K\�L�|z= �\�՗\��w\"�]r@gb\�vO�~ZF�\�DJ�\�΄ȧ\�/\\\�?��O�=�h�ĉy��\�\�V���.\�\�\�n�=�h��\�\r\�L�|\��iQ�\�]\�|\��}�7lG\�<�|\�.9pq���\�{2ϵ�\�L����/�-\�2\�2ϵ�\�L�\��p�����W�tt&B~\��ᏐŽ�hN��K\r\�L��\�us\�7Te\�4K�Ԁ\�DȟX��\�]\�|�\�A�: \�\�,g��U^�\�j\�\�RJs��	��L�}K\�<�w<��N\�<��e!��\�\�\���6q�J�\�6 \�\�\'\�tqY\�e�Ns��\��]ܯ%�(�\'\�`\�]μPڝܯy�(�+\'�����\�\��K;�/�x�+\�Z��U]�;k\�R�Ԫ�\'���K�y�fi�h\�X<�G�A\�u\�Uu�)\�Ҿ\�\�v-H�\"?pe�����kzi.\�ıXrWù\�t-�l\�\�|n\�\�\�\�I�$�R&���!]���4o\�X,��N+\�ť\�v\���\�DMj@g�\�W\���\�ZJ\�<�U\�ޭya�8���B��O�-õ��,\�47�#w\�\�i%z�a�Eo�&\�ı8r�-�V��T\�\Z�\�e�7q,�ܱ��vq��5�\�(\�KNo�`\�\�\�_\�D�h��\"\���\�,������츪��Ms	�\�/*\�D�PZ�k\��Ms\�&�Ő�Hd}K\�����h\�b\�_�d}\\e\�uc㿩��h��\0����)\0\0\0\0IEND�B`�');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-19 15:45:45
