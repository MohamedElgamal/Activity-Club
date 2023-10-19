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
INSERT INTO `members` VALUES (20,'Mohamed Elgamal2',7754321,'01281158810','mahmoud@gmail.com','Elmandara Bahary','1990-01-05',NULL,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0		\n\n	\r\r\r \"\" $(4,$&1\'-=-157:::#+?D?8C49:7\n\n\n\r\r\Z\Z7%%77777777777777777777777777777777777777777777777777ÿÀ\0\0t\0®\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\08\0\0\0\0\0\0!1AQa\"q‘Á#2BR¡±\Ñ$‚ð3CSr²ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\"\0\0\0\0\0\0\0\0\0!1\"A2#ÿ\Ú\0\0\0?\0òDaŒQc•\â9F\"¡«QUóÁ¦&š©\Ùwg¬N¤x¡±Ô£¸\09\0û\Ö![i©1\ÌAN\r9\ÈbY¼i~ú¨a‘È®\ì¬ö‹«\â9\çZuÃ®\å\éNMòFu\ãpôÀ\Åu!\ÞÀzÔ€¹§¢\í`h¶\n”rm5’0õÃƒÒ´1]#Eµÿ\0­@ž5,J\ÐE¿\ÒÜ¸£[’³Ê®ù\\Ô¿.¹åš³·/—K\Ê1af8Q“]hYNÁ¨tO—\Åt)+S§h\Ñ\Ïlÿ\0µÿ\0J†ò¤fªù\å¾#_òZžEM­\ä°	©kªNÃ©¨\Z\íã¨®DÁ:Š\ç)þ*z\ßA¤¼s\Ëš…+\ï9\ÅW\r\ÐP±S2‘×‘\×@q]\Ú;\×ddNI¨\â\é¡®«K\ÙÑŽ«\Ò<\Ë5\Ñ\Å0S·V>\Í\æ‚4ä©¦Ž”…J`4‰\ÐËŒ2œ0­&•®ˆ$Õ’¶š”­‘\Å1ZË‰3Ð­µ;kŒmqš°\\0\Êô¯3ŽVC•b\rit-]’A\íœð\r39·\ìNðu´j6\Ò\Å%(1ü\Ùô\æ¤Ã§\\\ÎO—£\'#Þ\ä•\í•,Vý\"\0_j,\æi=jk\éwÛ´óªFƒù\ÜùT\Z3n1\Í\Í:|YløÖšæµ²\ÇO\Ð\ã‚##Œœwª\rNÝ\á¯CŠ\Õ^\Þbs\Å@´T,ZP3K\ÆJM\ÓË†ZPŠ¸\ï\'¶€&\ÓQ%k‹œõ\"¯&ˆJ\ä\ãƒ\çG#h«¯ivSXŸ§]\æB	9¦0\n2x£\ß\\F®\Îp*’óQI2ˆj\ï‘$*°¶ô{\È\Ó!H\ÍV]_É»\Å„99&‡&go”U•\Æ	Hc\\K3f5)vD£\'­\à¤Qº<R\äd\ÕU[/‰\ãøc°i¼\×†œ¢h\è$S³Šf\êxÁ©\Ù\è4hd#ƒQ\Ï)À\ãš$Às²vx\È5´ðwuMnE¸¼Yl,\ÎuÃ¿²)þç­[þø~\ÒK9u\íF˜\ï)l®2oVÇ®xöÇ½i¼[â¿€±;9ùEU“\É\ãõ’\ì5º\rª\êºW…4³¢(\Ú:“—s\îk\Ïu\Å+—\Ê\ÚÅ†=2k\â-j\çPšYŒõ=+O\à\nZ\ê(yKup\Û`8\Û\ëöµB‡}\Ó¬“‰q„Sj>+\Ö\ï\Ø%Ä¬FCyDžG^ž•gmø‘«\Û8ø‹+V‹º3ýI«­wW\Ñ|;4\Ö–{¨Ø¬‘\Ú(;[¸-\ëõ9¬ÄºÖŸ|\ÅYd„Ÿü\ê6þ|ÿ\0\\S1¨Z‘\\­\ä\î»6úŽ¬5™V-kt\Ü¥<1ön•¤ó\Øt¯›JPxcÜˆ>tSÓž\nûûw­‡<[#[›™<\É#²”õu÷÷\Î<›zb9p´¹I\è/vQIv\í\ëTú¹\Éz{\Õ-Î«<Ä\ØZ	\æü\Ì\ÜU­\è¦~\Ýº¸š\à\àd\Ô6µ–2ý\ê\Õe‚\'©ªÛ«Æ‘°¼\nM†\å\"M«B\ÉóõC\å Ü \Z©W)\É\ÏÚªNñBÃš.\í\Ýd‹-Š‰}5ºm—4	\î\Õ!\Äd\n£š)f}\Ì\ÕSe»2»i\Ã\"ŸDM£­E®‚\Û\Ø\Ï<FTŠŽ\â›ð33ªM[\é\Ú\Â\ÛZù& H\rCƒQ9!r¥JM\êQZ–s\å^*v—£\\\êW\ÑZ[/\í&p‹‘À\'½HmK{#ú×¤~iM7\Äk3&IŠ:Ÿ\âaô~u\Ü\ÎÉ…7ZLØ­•¶…¡A§\Ù(H hõoS÷9?zñ\ï\ß‹©\Ã6V4 }k\×|K!Kgbpy¯\Öî®¥Œ$#ú\Ò8ÓªÙ¥MDVñµ\Íõ¼$ÿ\0\Ôu\0údõ­æ¹¬¾‰£°s\r\Å\Ï\ì£t81\Æ8ô\í÷9\íY8•,|Ad[ˆ\Ã\'\åÒ­¼k›œ±¢—B{@#ÿ\0“M4\å\èI5k‘;ÀZ‘©Ê©©Jÿ\0ü\Ç6\Ô~3Œõ\Ï^3\Ím|E\áO>\å!²ºD\Â\Ïõ uÆ°úv7$¯¹x‡À´r‹DŸ,Gw\ä\Ó\Ê-\å¾oF#M/óYÜœ5¾\ãÓ¨È¨Ÿ\èµd™F\ÐHc\×õü\ê\Ü\Â\ÇV½»\ÚÊ‹x\ëò€}\Ï_µQ\ê¬\×PÄ¼¡G\Ü\Òm\êº4—sÙ©,kŸÊ¥A©\ß£9 ½²\Ó\É?\Ó/Z!f\ë“L\ËœT\Ï-T\Ó)\íQÅœš\"¼Œž0K\ïRd\nWö¡sL- ±á©³R\0§Ä¡iÏ·½PñV\Ë\æÖŒ†i\Êi”\à(K\Ø@h‹BõÈ£L©–º.±«\Úi°¯s M\ÇøGV?`	¯¤´\ë;m/O‚\Æ\ÍAn{_zñ?\Âc/ŠZ\àô¶·c÷bõ5\ìW—%®:\Ò~V_·\ï\ns\È\Íø\Æøù½€¯•¾?œ\à×¥øªV{YqÁ5\å\Äÿ\0¨_ý¨|wöL»\É_F‘\Ín\Ü\ËÎ€î‹¯Ò¤Y\\Z„3\í\Ë.pr9È©Kópz\Z¬¾\Òd…þ\"\Ä\çŸ\Ü}?\Åh\ç\Ä\Û\äŒ:K…³V7¬\æ\ß9p¸\Éÿ\0i\ïV\"òò\âPnJX\ÃüŒþ[7\ß\ÏûG\åY×¸|\âxþ\ç÷sNMAcEn‹\îM.\éúQ/½ÚµõºÀööJR\×pf•—k\ÊGN:*Žy\ã’rMWø~Ñ¯u?‰”.#¸û·aU†I.e\r1b¹\ä\Ð{\n\Ù\é\ïi”ii\Â÷Ï¿½N»59ž‹€:šž(-&G\Êh,]»ñN™\Û;!\ëC\'ŠeI\æ¸Xâˆ¬Ly¡–\æ†\ÒóLvô¨$’­Mg +\Z\é|P2\Ù}^U!\ÍNH	(\Ñ\Ú\ç‡!\í\â#\éNòž¬Å¿Òº\Ð\í\íD¬\Ç\àÍ³E&§r\ß\Å\åF£é¸ŸÒ½ø ‡{\àž¦²†6†-\æoû\Ó1lóZ^p‘m=f\æ®Y­\ã\Ïr>ñ\ã0x\ã\é\Ó\íX	Fðx\æ¶\Þ)x™ˆÝ´ž¦±RmW!NG­1‡\Ð9½†´¹%„Rœ?@Ç¡©“J±&\æ\áQUŠ¾gS-¡\Ï\Éogôž^CS£5øQW\ËðŸ£x^M~«›«¡P©aÁo@+6\ÐGN=\ëHÚ¼\Ö\ÚQÓ£%]œ–›¤è±5\ÞF9D\Ï÷¥W+¦9n1JHª¶Ó®.W Lw\ïVúd±)\ný\ê\ëý\nGf\'e70öge\ÍY¿\n\Ãm2\ç.:óö\î\'\ïR\Þ)÷g<\Z\çÁ\È\Ãy\ÓÐ«†G‘ˆ\ëÖ„\\Š’``\Ùj‘\î<t©\ä€\àÀo\Ó\"÷¢44ˆŠŽA)\r)\éJI0zPcVS‘D\ÞÇ®([-‘G‘À\ÅÀ\ÆkA5\0˜À\ÅU\\A<NeY[¡ö´A%\à\Ñ#%˜(±¨\å¤M¿Z¶Ð´\è\ïfó¦eKx™€Ÿ˜«|£¿øh÷\ÖÎ•Éž\ákoƒðýœ-\Û2xõ\çõ¨&™£F#\0\n¼Tò¢O/%G\ËÀ\éYýbˆ\Ü9\Ï5žž\ÞÍ‰tyÎ¿3\Ü!\ã%{\æ³óŠô\Í.1@cÀ¬\Ý\î™kh	rKÚš\ÅIt/–ì¨ˆ’BŽ§¥Í¸¶fUm…ø8=EE‘b#\àU¦‡b\'”\É(\Ê/c\Ü\Ó\Å\Û\â¶HÒ­V<O*\å\È\Êç·½\\-\È\ÆšzÄ™\É\ÆkŠ_µ\Z\èJŸ\'¶\r¿hy¹\å\ÜÔ†({PTüü\nžl(¦2rh{œŒsR\È,vš\ï\åõJždq\"5¹#%¨MlqjÀ\"\äSO5<\È\àW‹sÞ¹\än<\Ô\Üg½wbö5\ß!<Ol\nñA6lzU“;S{T|„üf†Þ¤´Q¸‘*Tª±³3<b\çX†\Ùø‰¤*@ô­þaˆ4ò\Î]³üEF\àOÞ•*+_\âÁ\Æÿ\0\ÚQ®ºsJ‰\ÑyúVröw‡šT«\'ô\×Ff\æV–\à‡9±ú\åÌ†vBF\ÚT©œ^\Êrÿ\0%d*¹­%‘1 T\à\nT©¥\ì\Ï\Íü–*Ki’ ½*TL]z´x@\ÏJTªHzÀ6A©W\n>2^”©T2W `|´2	¥J \ã©#0\ä\æ¥J¸“ÿ\Ù'),(24,'Mohamed Abdullah',1234467,'01281148880','mohamedelgamal@gmail.com','elmandara','1992-07-12',NULL,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0ó\0\0ò\0\0\0È\×\Ü\0\0\0tEXtSoftware\0Adobe ImageReadyq\Ée<\0\0€PLTE3m‚Ð²“A~šHHHF„¢JŒ®0j~\Ñ\È\ÑD€5p…@}™?{–³³°\']q†‡†GesH†¥J‹¬>z•JŠ«8sŠÏ¨\ÎF†¥<y“þ\æ\ÏG‡§G…¤E„£=z”¡‹vUUUCž:vIŠ¬\ä\Ö\ã9tKŒ­¬gªqpot‡„6qˆEV]EEEJ_hþð\ã9Ye\âÅ¥EtŠ.ZiýÜ¼°ª—7QZQQQñÊ£;wLLL>{–“›˜m’ž·œ‚Gƒ DIKÑ½£[‰› ¥¢Fm}LƒšýÒ¨O‡ŸBMRL¯Q[_ÿÿÿF~š¤X¢SWYHˆ¨@wB€œI‰©E‚ Eƒ¡A›@t‹D‚ CDƒ¡Hˆ§@|—<x‘:u>y“H‰ª;x‘BœB€H‰©IŠª:uŽA~™Iˆ¨C€9tŒº‚¹\é\æ\éŽ|lóóóæ½žPUWsh]^^_ýÕ®\\VQPMKùôùó\êóþüùg_WþøñAp„\\z~8tŽjNiH›F{”’U‘n€SJS,\ß^\0\0;IDATx\Ú\ì\Ý\ëc\Çv\0ð1¢±=u\ã@Á^§ºµˆ¤c_\×(2(Šj\Å\\¨y¥PRro\Ó[\Ù`cs{\Ýö_¯dù¡Ç®vgfÎ‘\ç|IòVû\Ë9sffw–ý3\Âø›\ÈøÇ“øÛˆø‡¿?ý\é\çŸþ\ãÿ¥3þ\Ðÿù‡m\Æ\ß÷\Å\åv|uGÿz­7.^?‹Gñ\è4~:Š§\í\Ø<‰\æ¿\ÏvÇ³£øó¥K—~ù\åag¼:‰\Ç\í¸\Ð¿Žv\Æó\î\ë‰\É\É\É\éfLN2O~\Þ\È1š{r³\ä\ÓÌ“Ÿ7r|\æž\Ü49:sOnœ›¹\'7OŽ\ÌÜ“[ \Çe\î\Ém£2÷\äV\È1™{r;\äW˜\'?o\ä/™\'?o\äh\Ì=¹5r,\æž\Ü9sOn‘‡¹\'·IŽ¢o÷\äV\É1˜{r»\ä\Ì=¹er÷\æž\Ü6¹ssOnÜµ¹\'·O\î\ØÜ“; wk\î\É];5÷\äN\È]š{r7\ä\Í=¹#òÌ“Ÿ7rg\æž\Ü¹+sO\îŽÜ‘¹\'wH\î\ÆÜ“»$wb\îÉ’»0÷\än\É˜{r\Ç\äö\Í=¹kr\ë\æž\Ü9ù¿3O~\Þ\È-›{r\äv\Í=9r«\æž¹MsOŽƒü÷Ì“Ÿ7r{\æž¹5sOŽ†Ü–¹\'\ÇCn\ÉÜ“#\"·c\î\É1‘[1÷\ä¨\Èm˜{r\\\ä\Ì=92ró\æž¹qsOŽŽÜ´¹\'\ÇGn\ØÜ“#$ÿšyòóFn\ÔÜ“£$7i\î\Éq’4÷\äH\ÉÍ™{r¬\ä\Æ\Ì=9ZrS\æž/¹!sOŽ˜ÜŒ¹\'\ÇLn\ÄÜ“£&7a\î\Éq“0÷\ä\È\Éÿƒò\Ãb%\Î5£–?‰Z\ë?\Ó\ét±xŽ\ÈÁ\Í1’o6±s\å|LÔšø\ÅK\ç€\Úùa¥#­¢œK7ù¿±!&ÿ±Ÿ\ÝQð\Å\á%‡5\ÇD~˜®åµ¢\é>œ\ä \æxÈµÁO\Ý‡\Òùwð\ã\Ö.]2r@s$\ä?¦\Ëy\à¨Š\ÃDgŽƒü\ÇB\ÞH\ÔZE~H\ÈÁ\ÌQ›o\íCBeŽ|Ó¤x;\Ùr s\ä•r\Þ|\é“Ã˜# ?¬\å\íD®Hüwl8\È\Óy{\ÑT\'Ma\îž\ÜZ’ŸªS&ÿ/6\äVFòõCº\äú\æ\î\ÉyQ8¤J®m\îœ|³–w\å\nQr]s\×\äÅŠ+òV@’\\\Ó\Ü)y1\íÐ»iŠ\äz\æÉ‹…rAœ¦:!r-sg\ä\ßUjy$Q®#\×1wEþ]ºœGj\ä\Z\æ®\È+¨\Ä[õý9-rusG\ä\ÅZ]\Ô\"W6wCþ]:1\ÊO(‘«š»!?¬\åóxÑ©\É‘Wòh£‰N†\\\Í\Ü	ùw…<\â(‘!W2wC^Ë£Ž\Úrs\'\äENÞœ²Q!W0wB~XÎ£4rysOOhK›û±|ÀNƒ\\\ÖÜ“¬\î$\È%\Í\Ý\Ì\Ësy*ñ„¹œ¹ò4ò|Ž¹”¹_}‹ù1ü\ä2\æn\ÈÿZ¦d^\æc\è\É%\Ìmž\Öò¤\â6\ÃN.n\îˆ<\'œ!\'6wD~H¼™\èüŸp“‹š»z*GÎ¼™\èü÷¨\ÉÍ=ûF¼•\è\'\è8\É\ÅÌ=\áZ#h^\æ\'\èHÉ…Ì=Çž\Î\ç‰&z+¹ˆ¹»W\Ê$\Íkü-¹€¹»”h¦y>¿p„þ%Vòxsw\äD\Óü¸¸sþ\rRòXs‡¯!VòTƒ÷¢£\"3wù²q¬ùB:.òs—\äE²\ä\Ç]\Ü):2òo\Ú#\nt\ÍOŠ;\ç!ù@s§\ä›e\Â\æ·OÑ“ø\È™»=+¦B˜ü¬¸7\ÑÑ‘0w|<PŽ²ùYq\ïEG@m\îúD(\Òä§{/:òHsç‡€\Ñ6¿\Í;Ñ¯ \"2w~\Ô_š¶y™w\ÅL\ä\æ\îô¬å‡§¸Ÿ #!7wO¾Iœ¼»¸·Ñ±‡š#8]e8\ß\ßElÎ¯ !3\Çð¡\r\É\á|?[\Z©V«%´z3^`!1Gñ%©\Ùùv©z%´z3þ‚„¼\ß\Çw\Ò\Ä^÷g–«g±·¸·\ÐQ÷™\ã \ßTÇ„b\Î‡‚¼\×\É0E[¸\íqD\èe†Ž¼\Ç\Ëgn\Å6XÞTCË˜\Î ;%\ï6Gó1\ë´b’cB_Eÿ\Æ=y—9žï—‹</QªF\Å\È>\Ö½_8\'\ï4\ÇC.0U\Û©FÇ›x\Íù®\É;\Ì‘Ç›$¯V—tr5…\î˜ü\Ìù\åšykP\ß\Ç\Ù\Ä£»$?5GE~Y›¼9¨\Ä\ÙÄµË»Kò/Fò8srõ=Úœ\']’›##¿¬Ú±÷¤ú;”M\\\'ºò¶96òÁ\æ\ÛU\Ñp›\êƒÌÑ™£#h¾[•—£zÇ¡»!o™\ã#d¾ÿ¦*\î\Zø2AwD\Þ4GHþÀ`~V\àg\ÐMÖŽÑ¿vCþ\ÃHþPe?Y–\ÛFi\Îù\×N\È˜;$ÿ\n¬²;U_C·Mm\î’<\Ú|¦ª.\Ô\ã\Í[\è\Ö\É#Í’Gš¿[®V\Õ\Õ÷1M\ÖN\Ð\í“G™»%ÿ\n¬\ë\é\æÞ¡3?B·Ka\î˜ür\Ä#ïªºQ\Êb3\ç±Mn\îšür\ÎDš—ø\È2\Íþ\î\Ì\ÌL\ÌhQ2\ç_Z&5wNaþ®\n#Ûš5þc\éd—§ôNß¼\Ýy˜¹{òóR,FÔ³ý\Ý\ÌÁ%ý2—E·BbŽ€<\Ü|¹\n\Ë%…t·=\"ñp5—D·C\ÞoŽüZNo?Mbpß–\È÷\ÝR\è\Æý¶¾y\ÝyŸ9\nòpó‘ª™)mÇ¿Ñº»]Š,3\Ûú\æ-t[\ä½\æ8È¯…=\ßþ±j2ÞŒ”f²»aI¿›)\Å<qùQ}!\î\ì$9k\ä=\æH\ÈC\ÍKU+ñf¤Í‰X©õO±\åý\0óNt³\ä\Ý\æX\ÈC\Í\ßTñ\Æ€ùºaò.s4\äa\æ«˜\ã€ù	ºiòNs<\äa\æ%\Ô\æ%ó6ºqòsD\äa\æoªô]Ö¼…nžü\Ìùµ¢±uW«#º´9OZ ?5GEb¾\Üü\rŒy\Ý8ù‰9.òóró\êGsž4N~lŽŒ<\Ä|»y	\Èü\Ýy\Ûy¿ù.vò\Ð\â®d~ŒnŽü\ÈùµCj\Ãyx\ç®f~„n¼eŽü\Ú5r\Ãy\èN‹¢y\Ý$y\Ó#ù5b³óˆ]Õœó/\r’ÁP’_$6;\ØhQ7\ïD\'g(É¯“k\ášj~†O\ÎP’_/½¾â¶‰\Ó1?A7@\ÎP’_Ï‘k\áª\Õ]Xó6º	r†’¼\×|„‚ù6°y\Ý9CI\ÞkN<d›EÓœi†œ¡$\ï1ÿHÂ¼¤ódÄ¡bF\ÈJò\ëzm{\ÈdB\×$g(É¯§©­¼\Z2E\×%g(\É{\ÌIL\Õú\'\èen]›œ¡$\ï1¡i^\ã&\Ðõ\ÉJò‹Eo~ö49CI\Þc¾L\Ã|W\é\Ì9tr†’¼Ç¼z¾\Í;\ÐA\ÈJò‹½y×†:(9\ÃI~‘\Þô¼\ß|£‘3œ\äjÍ·Í™¡C‘3œ\äw:\Ïþ b>¿$Ó‰F\ÎP’¯¶$Ý¥µ\×mž--Wa\ÑÁ\ÈVòŽM‹r\æ»\í\ç÷Ì£+‘3„\äw—»wªÈ™Ÿ>\âñ\Ù0º\Z9\ÃGþh¼g{’šù\ÙS=7¹QtEr†ü‡\ÞV˜Šy©ÿA®&\ÑU\É:òG÷:\î\Ùò;*OÃn¦v]-\ìˆÞ®L\ÎÐ‘?º\Ù{G(™÷L2¸1tur†ŽüQ\ßB%ó\ÞÇ¸>›B\× g\è\È\ïtß´7´\Ì{¯u•›A\×!g\ØÈ»†óv¢2\ïk7¹t-r†¼c¦v’\èTÌ—CŽ!\á&\Ðõ\È6òGk}[TÌ«a3n]œa#\ï7!cöú,7‚\Ît\È6ò\î©Z»fR1/\Ù2\çœi3l\ä?U‡+>[G%g\ØÈ½¹&z<9\ÃF\î\ÍõÐ™ª¹Còa3¯p«\èL\Õ\Ü%ùO7‡Ëœs›\èL\Õ\Ü)ùOk\Þ\\©š»%\êÍ•Ñ™ª¹cò§\ãCE¾\Æ\í¡3Us\×\äO\ï\r•ù·†.*žd\ØÈŸ®•ù¢ió\Ó\Åwaò^s÷\äO\ï•ù*·„.N\ÞcŽ€ü\é~IF]‚¼\Ûù\ÓÍ¡š W¸tò.s\ä›\Ã4Y[\æV\")C\ÞiŽ„|s˜\Z÷Ž	=\ÙkŽ…|óŽo\áÌ \'{\ÍÑonú\Îz²\×ù0\rèœ£AOöšc\"¢}‘£AOöš£\"¢ýÇ‚ž\ì5\ÇEþô\é\Ð\Ì\Ð+	z²\×ù\Ðl­­qŽ=\ÙkŽŽ|vXŠûÇž\ì5\ÇG>;;$\Å=\ÉQ \'{\Í1’\ÏG\ç¾\È9ôd¿9Bò\Ù\á\Ø[û\Ì1 \'û\Í1’\Ï\ÎCw“s\è\ÉPs„\ä³wý\ä=jŽ‘|vvÍ§9z2\Ô\'ùL\×&¸{ôd„9Jrú‰\î0\ÍOÑ“\æH\ÉÉ\è7¸sô¤ˆ9\"ò\Ùg‹þ=ô¤ˆ9*òg?^Œ«p\ç\è\"\æ¸ÈŸ=£\ÜÆ­rŽ¡%F¸º¯qŽ\á%ÿó%ª\Õ}¹\Â1£3\Ä\ä—~X¦iþ™s\Ì\è1ù¥_\îD¿Á9jt†™ü—‡\Ñ‘‡£3\Ô\äÞ¡6¦/£\"Eg¸\É>üžV÷>R\á;:CNÞŒ»\ãd\nü\âgŽ/BÌ±“?$S\á+gô™S øŠB_\ãœ:#AþŠ\Â:\ì*\'‚\ÎH¿úÞ¯\ÄÀ¡3\ä¯^\á„b™s\"\èŒù+ü\'ˆ-r*\èŒù+ü\Í\Ü\àT\Ð\ròW¯\Ð\ÏÖ’œ\n:#Bþûlms*\èŒùcì³µ	N!üyq¯p2\èŒ\n9ò\â¾\Æ9tF…yqŸ\àœŒ:£Bþø\ÂM_\Úa\Ðò‹¾´½\í@†ü\Â]_\Úa‚‘!¿€¹¸\'I™\Ó!¿€w\Í}‘S3\'BŽ¸¸ß fN…ü\Â¬ªËœ˜9r´\Å}‘˜9!ò>\0[¡nŽ˜ü\Î#\Ä\Ö8qs\Ì\äH»¸\Ä\ÍQ“ÿ:ŠqŠ¾œ¤mŽœ|t\Õwp\Ð\æ\Ø\ÉGG—}kŽŸ|ß‰\Ï#œ²9òÑ»¾ƒƒ4§@>:Šmºv“6§A>Š\íq™	\Â\æD\ÈGG\×üD\rÈœ9²\é\Ú*\'kN‡|ôùM?Qƒ0§DþS¢/rª\æ¤ÈŸcJô\nUsb\äˆdš·Ì©‘?ÿ~Ù§¹ž99ò\ç\Ï\ïù4\×2\'HŽ&\Ñ+¤\ÍI‘cÑ‰¦ù±91ò\çw|š\ëšS#\ÇaN5Í\ÌÉ‘\ã0¯6§Gþ|Ì¯´k™S$G`NqC\íÄœ$9ó	NÜœ\Z¹{ó›œ¸99ò1\çN|&nNÜ½9§mNÜ›\ë™S$÷\æúk¯\ÔÈ½¹¶99ò±{\Þ\\Ïœ¹7\×4\'H\î\Íõ\Ì)’{s-s’\ä\ÞÔœù\ØogNƒÜ›š!Ÿô\æ`\æTÈ½9˜9roeN‡|Ú›Ã˜\"Ÿ¾\ë\Í!\Ì)‘OO{s\0sZ\ä“þ\Ñ(}sb\ä®\ÍG†Àœ\Z¹7\×6\'G>\í\Í5\Í\é‘{sMs‚\ä\Þ\\Ïœ\"ùô²7\×0\'I>½\æ\Í\Õ\Íi’{ssš\ä\ÞÄœ¹7‡0\'Eþý\ÇgA®\ÝM\Ò7§D~\'U¯_uk~µ^O\Ý%nNˆü\àm½ŽÁ¼¾U[ lNˆ<¸\×2ÿÖ½y}¢|›®9òƒZ\"ñ\Z‹y&‘ ™\êŒy:‘Hd\ëX\Ì\ëo	Š©\Î‘?i&y¢]\Úq˜O´®§FÐœyºÜºÅ‰óñ£*S«\ïŒ\nù\ïs‰vl\á1O_\ÒmŠ\æø\Éj\Ç÷7Q\Çc¾urM´Z9Fƒ<}rwo\Û\æu·\æŸ\ÚqzU\åyb\æ\è\ÉO\ëúi\Û\îxQ\æV½ÇœT}g\ÈÊ‰~s§\Åý\Û\ã‹\Èv\\ú\Îð“§‰óú-w\ä{õs:©Î°“?\É%\Â\Í?¹Oós*Su†œ¼RND˜»\Ño\Õ#Ì‰L\Õjò…D\"\Òü7G\Õ}\ï·Hs\Zõa&?›”‡™\×?\í¹­\ìa\æZ9†˜<]N4wÓ»w·6Yú}gh\É\ä‰s\èW;ÿþ\Ð+D_\ßVòJ9on½‹<\Â{ª3œ\äI~¶\Þ\î½›¼y‘·‘›#$k\Þ\Â\Í\í¢÷g¢¯s+\Ç’‡\Ì\Ð:\âu/úž“ö­s/•Xª3„Yžt+Ÿ™¨ÛŸ²\íõ’6Ç‹\Î¶o’\æ–gn}\êû‹\ï\r¼\Ð\Zjsdóòw21^\ïË°·~«“9¶5öÁ\æ÷BÌ\ê{W\Ãþ\Ö,Yst;iƒ\Í\'\Â\î¾\áúR\×\ã\ÍxÍ‘\ï—\Ç,\Êt\Ô÷=[S´ø\é9rsd\äO\Ò\ëK1·2 þ\é–\Õ$¯\×_\Ç\\h›_@lŽc^^)\Ü‚ \Îüuº‘Q}\ïj\ä_—Š¹Ð¥\æ\Ù\É- 5G@^I¯\íØ¹•©H„úoW­%ù\é+\rƒÍØ‘¥;C@þ\à ]\Îb%!?Y;Kõ[f—a:cU\Ì;sLþ\à,¿E\ÍW\ë®À(\ë\"m{b¿ûw¡qgÉ›\é}?\è8ó\ì`‰f‡Q¿ú[\Ì_È™£gn\È*…õ \"q\íp=.>]5;‹µí‰•¨_˜›w\nÏ¬“\â2?~KÑ¨ú­o\ãÿŽ”²ùqÂ»‚g\É_\Ó1\Üb\æ©zÝ¬ºˆx\Üj{œùqÆ»(õ\Ìy³U\á¦\ç+\îp\êb\â\Ç\'hš;g\ÆÉ‹•ðVM\Ý|¢^7§~õ“èŸž½P‰_}\Ô\Ü-\Ø47Cþ²XMn)ó·u\á\ì\á÷\Ä\ÅcW\Û%\Í-ò\ÌùX1­À-´7põUk•f/vv&\Õ\Â)˜Û©õ\Ì\0ùX¥¨‡€yª.Ÿ„’]t]y\í^ˆS\Èx“\æÀ\äc\é@+VPM\\G‰[œ“Kq±NË¼Å¾`\Ì˜¼¸7Ÿ¨\Ë\Ç õ½oþÀ·¦Í›E\Þ\Üz;$¹f’‹™u•ˆ¬ðò9.²\n`\ì˜2$+h“÷Rd%Nø¡Š½OJ˜@º\àŽ ¾3PòõÀŽyª®WÅžgY…17‚Î°‘™¯Ö¡Ð¯ªþIY\Ë\\	P¢3l\äK\"\æ\Ù:ºj–\Ço¤B™@g\È\È\Å\Ì\Ê\æ\Ý\ÇM\í)“g¶\Ì\á9Ö±Ãš§”\Í?\rz\étE\Êá™¤	/Ã©¬Ê„V÷[\êÊ„\ÐeÝ“œ1s-òJ`\Õ\\y@ÿÉ¼9Ž\å\ê\'uó·6ÍƒyC\æz«oP¿NdIF~@\ß\ÊLM5\Zs}\ÑhLMe>È“o%¬šF\Ìõ\Ö\Ø\ï\Û6\Ð?4µ7\â¢1•10œš\ï˜0\×\ÛI+¶\Í\ÇEu\âÁ\Û17µ>œ\ë/¾\Z\Òùy v3…·Y\Þoˆ\Çû[°\Ã9 9\ä\Î ö\Ë\ï\Û7\Ýf\ÉH˜76\æ>€\ç\æ;À\æšO\Å\0VvaóD¶´Ÿ°¿‡\Î!\Í«;\Ó\'‡¬\ì‚K2\ÂúÔ†d4 ‡sPs¸Þi“­¹ÊšO@Wö\ã˜\Î!6\ÖTw¦ý¸c:pb.2Cÿ0\'o¾±7œÃšƒµqL—üA\à\È<>˜O\ÚÞƒ\r\çÀ\æ; \æ\ZÏ±`\Í÷…\Í\ïÁ\æ¢\Õ]t8‡\Údn\ã˜&y1pež5R\Ù[;%™µqLóm\à4]†y³¡¡H[\Ý3	W\æ9(sr\è4—1O©\ì\Õ}Ü™9L¢3½w\Ò\Öš¯š©\ìñ\Õ=\ë\Î$Ñ™y%phž5S\Ù\ãWf\Ä/1`Lt¦õ\æ)xš÷s\àS\î™\r­˜\Ò|²Ý˜y\Æ\\>Í¥\Ì-¿\Î\é™\ÚlYui‘\èL\çH‚[ó	#\r\\l¢gš$:\Ó /n\Í3\r\\L·•pj\èL\ã\ài¾$sC£÷Sµ\Ó|@7\î\Ø\\?Ñ™:¹‰4—3¿g¦kGJw\á|3õ8`\Í\åŽ*87Ïš˜§Å­\Æ®\Í\ç!\Í\å\È\Î\Í#–_A\Ò<ª\Ë$\\›\ï\0šK–6a¾/g>nbž68\Ñ\ï97\×Nt¦|\î\Û}æ¡³µ\ÔÆ†ÁDÏº7ß2—%¯\Ì\Ãfk\ï\ç \Ì7>¨)b\Ú\\wº\ÆTô,`0›­M‘Ï¥4gj¦\Ìs \æ\Ò\äE#?Ff‹%b¶–\æ\Ô{Ý™š)ó\0\Â\\þ\Ø\Þó¬¡4o¤>\0\ÌÔŒ™\Ï\ë›Ë“¿¼Ã¼omJ{r>\è…\ÅT…ùŽ¶¹\Â\á\Üf:8ó°\ÙZfª¡X\à\ç\â^P]•¼¼}C÷iA\Ó\\\å<öóÈ½µL*üó\è™YJ\àu¨·H\Ìsz\æJGðX\Ì\ã\ÞU\Ü\Êd«½\È\ë‰[	$\æZ]Sú\ÐF\Z¹È«\r„\Ê:ä»‰\æ\Í\ç!Ì¥¾­²n\ê§H“8¥÷„òLÍ ù€¹y1Àc.òÑ†Œ\ÆÖ©\Æ\"œIs.Ž©|A©€\È\\\èEô\Ìp>Ž\È|^\×\\ò£Y÷1™‹¼ˆ¾ó\Þù\"óMsIòƒ\0“¹\ÐQqS Ã¹ü\å-‹;Sø\Zb•¹\Øa\îq\è\"#D*\É<§c.Kþ2Àe.t\ÊHÀ\\nne\ß ¸Vqgò\ß<­ 39eD¤m‹…[³‹còŸ¹- 3ú\ÜÚ”þxžÁÃ­WÜ™4¹\ÉÒ®fž0o\0\Ì\ÔV–¬ykw&ý1k“¥=X\Ú_1SÜ§ô—^³1\à\í˜\×1—ú~yÁøoYjÊ¯tÚ¯tÿ§Ê™±«2Zû++‹\Èi˜K‘?pòó–VL!•\Ñ*\íN\Ðw\ÔÍ¥\ÈÍ–v%q¡}–†özû„\å#%\Ìw&In¡´ËŠ\í³h\ï«\Åï¯¬P)\îL’|\ì>:q¡}\íw‘ý\Û}\Ü„y<¹\å\Ò.øþZlq¯ýÌ„\ØþŠeõ}óxò±´ÍŸ´¶\Ï\"°ƒµ¿²¾¸39ò±u\\E]tŸEÀ<¶¿b/\Ùwt\ÍEÈ‹ÁöYRº\ÊHn¯`.\îLŠ\Ü\Òp.¿—\Õ\Ý?k\ÜQmk\ÎÖ˜¹…Ò¾´¯´æ¾¥m\Þ\0\Þ:·Âž\Ó1#€¬¤÷†\æ\ÃÎ«ª\×ezl\×0#7]Ú•\Åc÷YD^k€|\ÅZ?¯l.HnznIý\Î\Æl¢‹˜g N\ï¶]\àsª\æ¢\ä¦\át\Ì÷9½\'\ÜW5.\ßlÉŸ©%Lw\Í\ã>ß¢5W™­1	ró‹p+¦Š»\Þ\Þ:¥\ÝôL}^\Å\\œ\Üüžš©\âž\Ñ{Kq\íp®TÜ™¹…\Ç%w±S)–v•\Ù\Z\'·±—0S\Ü\Å\Ì3K»Jqg\â\ä6ö\ÔV\Ìw±ƒ…R`¯&\â^Šc\â\ä“öÔ–\Ìw1ó)€Cú\í›\ï\è˜Ç‘?±±i S\Üu\Í@ŠX\ÎfkL˜|\ÒÊžšNqOi~„i¾´\Û\ØSW6%Ÿ´òô£™\â.xf\ÅÒ®0 3aòi;\È\è\ÔQÝ¯0e(–vù	“[\Îõô”\Î2\\TãŽ½´\Ë\èL”|\Ú\Ò¯û&Š»½\Û<+#= 3QòiK/3,(\î[‚\æ\rŠ¥]~@g¢\äÓ¶^f0P\ÜE?\Ð2G²´K/¿2QrKÃ¹\ÞlmBó\Û[$K»ô€\Î\É\'­½Àb ¸Ÿéž¡XÚ¥t&H>i\ï\ÝDø\â.lž\"Y\Úet&H>i\ïø\â.l>E²´\Ë\èL\Ü\Úpn¢¸º¡A²´\Ë\èLŒ|\Ú\æû¨\à\Å]\Ø|Ždi—Ð™ù´Í£À\×\Ü\Å?\ÑB³´K\èLŒ|z= ’\è¯Õ—\áúw\"¥]r@gb\ävO‚~ZFù\ØDJ»\ä€Î„È§\í/\\\Ü?ˆ›OÁ=ühõÄ‰yóÁ\ä\ÓV—€.\î\ß\Æn€=ühµ´\Ë\r\èLˆ|\ÚòiQ°\Å]\Â|\ì¹ö}«7lG\Þ<Ž|\Ú.9pq—ùœ\æ{2Ïµ«\èLˆüÀò/€-\î2\æ2Ïµ«\èL„\Üöpü“Œù‘W–tt&B~\ÅþáÅ½¡hN¨´K\r\èL„ü\åºus\È7Te\Ì4K»Ô€\ÎDÈŸXÿ \Å]\Æ|Ž\ÂAš: \é\â,gžU^†\ëj\Ü\ßRJs™	¿L´}K\Ã<£w<˜›N\Ç<œüe! •\è\ã’\çû†6q¤J»\Ì6 \é\â\'\ètqY\Õe¸Nsÿ\éö]Ü¯%ó(ò\'\æ`\Å]Î¼PÚÜ¯yó(ò+\'¿¬¸§¤\Ì\çôK;ö/ò°xò+\é€Z¢¿U]†;k\ÜRœÔª‹\'¿²KôŒºy†fi—h\âX<ùG¿A\çu\ÅUuó)\ÝÒ¾\ä\èv-Hš\"?peÀ÷†‚ùkzi.\ÞÄ±XrWÃ¹\Þt-£l\Þ\Ð|n\ß\Õ\Ý\ÊI™$¿R&úªô!]û½4o\âX,¹³N+\ÑÅ¥\×v\ãþš\ÚDMj@g±\äW\Üý\éZJ\Ù<£U\ÚÞ­yaó8ò‡¿B£¸O¨-Ãµ›¸,\Å47#w\Ø\Âi%z a¾Eo¢&\ÓÄ±8r—-œV¢§T\Í\Z¥\Ýeš7q,ŽÜ±ù’vqŸ’5Ÿ\Ó(\íKNo–`\Ç\â\È_\ÑD­h¾‘\"\ÙÁ‰\è,ŽüÀ±¹úì¸ªùÿMs	ó\ä/*\ÕDŸPZ†k\ÆÿMs\Ñ&ŽÅ¿Hd}K\Íü¨¦¹h\Çb\È_¬d}\\e\éucã¿©¦¹h÷ÿ\0Ž©­ñ¬)\0\0\0\0IEND®B`‚');
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
