-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.49-0ubuntu0.14.04.1 - (Ubuntu)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_lginnotek.lg_customer
CREATE TABLE IF NOT EXISTS `lg_customer` (
  `id` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_lginnotek.lg_customer: ~7 rows (approximately)
/*!40000 ALTER TABLE `lg_customer` DISABLE KEYS */;
INSERT INTO `lg_customer` (`id`, `name`, `address`, `email`, `telp`, `contact_person`, `password`) VALUES
	('CUS16010', 'Musashi', 'mm 2100', 'musashi@gmail.com', NULL, 'kdfjalkjfla', 'b61fd25a0abd01a16281522a323c9c3d'),
	('CUS16011', 'Anita Yolanda', 'Psr. Wahidin No. 753, Sorong 11466, NTB', 'hassanah.ami@hutagalung.ac.id', NULL, 'wijayanti.org', '894d289c7665348b386128601700b82c'),
	('CUS16012', 'Harto Okta Pangestu S.IP', 'Ki. Umalas No. 620, Serang 82053, NTB', 'Timbul59@gmail.co.id', NULL, 'Fujiati.net', '96dc1da900f967e39d7544af0155ecf8'),
	('CUS16013', 'Purwadi Hendra Putra S.E.I', 'Gg. Laswi No. 197, Kediri 65352, DKI', 'dWahyuni@gmail.com', NULL, 'Marpaung.co', '8e453208a9a46bb01155374662b0462e'),
	('CUS1606', 'Maman', 'jl akjfsjflsjl', 'alul.cholil@yahoo.com', '908080', 'kajflajl', '4504f64ca186c8b5cc1d3fa0af1e160c'),
	('CUS1608', 'LGEIN', 'jl lg eim', 'lgein@gmail.com', NULL, 'maman', '74ee55083a714aa3791f8d594fea00c9'),
	('CUS1609', 'Samsung', 'mm2100', 'samsung@email.com', NULL, 'Oreo', 'fe546279a62683de8ca334b673420696');
/*!40000 ALTER TABLE `lg_customer` ENABLE KEYS */;


-- Dumping structure for table db_lginnotek.lg_employee
CREATE TABLE IF NOT EXISTS `lg_employee` (
  `id` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `group` varchar(3) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_lginnotek.lg_employee: ~8 rows (approximately)
/*!40000 ALTER TABLE `lg_employee` DISABLE KEYS */;
INSERT INTO `lg_employee` (`id`, `name`, `email`, `password`, `group`, `telp`) VALUES
	('admin', 'admin', 'isnaini592@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'ADM', '123131'),
	('EMP16028', 'Tsubasa Ozora', 'aklfjalkj@kalfjal', '21232f297a57a5a743894a0e4a801fc3', 'SQA', '1093103'),
	('EMP16030', 'Sukoco', 'isnaini592@gmail.com', NULL, 'OQA', '1212121212'),
	('EMP16031', 'Bang Jack', 'email@asep.com', NULL, 'OQA', '98080'),
	('EMP16033', 'Inspector Gadget', 'email@asep.com', NULL, 'INS', '232323'),
	('EMP16034', 'Asep Gumasep', 'email@asep.com', 'd41d8cd98f00b204e9800998ecf8427e', 'INS', '1212121'),
	('EMP16036', 'Joko', 'isnaini592@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'OQA', '123131'),
	('EMP16037', 'Denti', 'isnaini592@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'INC', '1212121212');
/*!40000 ALTER TABLE `lg_employee` ENABLE KEYS */;


-- Dumping structure for table db_lginnotek.master_group
CREATE TABLE IF NOT EXISTS `master_group` (
  `group_code` varchar(3) DEFAULT NULL,
  `group_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_lginnotek.master_group: ~3 rows (approximately)
/*!40000 ALTER TABLE `master_group` DISABLE KEYS */;
INSERT INTO `master_group` (`group_code`, `group_name`) VALUES
	('SQA', 'Staff OQA'),
	('INC', 'Staff Incoming'),
	('OQA', 'Operator OQA');
/*!40000 ALTER TABLE `master_group` ENABLE KEYS */;


-- Dumping structure for table db_lginnotek.master_product
CREATE TABLE IF NOT EXISTS `master_product` (
  `part_no` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  PRIMARY KEY (`part_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_lginnotek.master_product: ~3 rows (approximately)
/*!40000 ALTER TABLE `master_product` DISABLE KEYS */;
INSERT INTO `master_product` (`part_no`, `model`) VALUES
	('WF1', 'TWFM-B003D'),
	('WF2', 'TWFM-L302D'),
	('WF3', 'TWFM-L302D');
/*!40000 ALTER TABLE `master_product` ENABLE KEYS */;


-- Dumping structure for table db_lginnotek.ng_detail
CREATE TABLE IF NOT EXISTS `ng_detail` (
  `ng_item_id` varchar(10) NOT NULL,
  `ng_sub_date` date DEFAULT NULL,
  `ng_result` text,
  `ng_file_name` varchar(50) DEFAULT NULL,
  `ca_description` text,
  `ca_sub_date` date DEFAULT NULL,
  `ca_file_name` varchar(50) DEFAULT NULL,
  `car_sub_date` date DEFAULT NULL,
  `car_file_name` varchar(50) DEFAULT NULL,
  `car_description` text,
  `sp_sub_date` date DEFAULT NULL,
  `sp_employee_id` varchar(10) DEFAULT NULL,
  `sp_inspector_id` varchar(10) DEFAULT NULL,
  `sp_file_name` varchar(50) DEFAULT NULL,
  `spr_sub_date` date DEFAULT NULL,
  `spr_result` text,
  `out_sub_date` date DEFAULT NULL,
  `out_file_name` varchar(50) DEFAULT NULL,
  `out_description` text,
  PRIMARY KEY (`ng_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table db_lginnotek.ng_detail: ~7 rows (approximately)
/*!40000 ALTER TABLE `ng_detail` DISABLE KEYS */;
INSERT INTO `ng_detail` (`ng_item_id`, `ng_sub_date`, `ng_result`, `ng_file_name`, `ca_description`, `ca_sub_date`, `ca_file_name`, `car_sub_date`, `car_file_name`, `car_description`, `sp_sub_date`, `sp_employee_id`, `sp_inspector_id`, `sp_file_name`, `spr_sub_date`, `spr_result`, `out_sub_date`, `out_file_name`, `out_description`) VALUES
	('NGI16010', '2016-06-09', 'nah ini dia', '01_detail_kedatangan_ngi16010.xls', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('NGI16011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('NGI1605', '2016-06-07', 'done progress1', '01_detail_kedatangan_ngi1605.xls', 'done dua', '2016-06-07', '02_cipl_cust_ngi1605.pdf', '2016-06-07', '03_car_ngi1605.ppt', 'done progress 2', '2016-06-07', 'EMP16030', 'EMP16028', NULL, NULL, NULL, NULL, NULL, NULL),
	('NGI1606', '2016-06-02', 'oke', 'asoy.pdf', 'ini udah d', '2016-06-07', 'cipl_cust_ngi1606.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('NGI1607', '2016-06-08', 'pretamax', '01_detail_kedatangan_ngi1607.xls', 'keduax', '2016-06-08', '02_cipl_cust_ngi1607.pdf', NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00', '', NULL, NULL, NULL),
	('NGI1608', '2016-06-08', 'ini upload pertamax', '01_detail_kedatangan_ngi1608.pdf', 'proses kedua', '2016-06-08', '02_cipl_cust_ngi1608.xls', '2016-06-08', '03_car_ngi1608.pdf', 'proses ketiga', '2016-06-08', 'EMP16030', 'EMP16028', 'resultanalisa_ngi1608.xls', '2016-06-08', 'sadadada', '2016-06-08', '04_pengiriman_ngi1608.xls', 'ini coy'),
	('NGI1609', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `ng_detail` ENABLE KEYS */;


-- Dumping structure for table db_lginnotek.ng_incoming
CREATE TABLE IF NOT EXISTS `ng_incoming` (
  `id` varchar(10) NOT NULL,
  `date` date DEFAULT NULL,
  `cust_id` varchar(10) DEFAULT NULL,
  `empl_id` varchar(10) DEFAULT NULL,
  `part_no` varchar(11) DEFAULT NULL,
  `no_cipl` varchar(10) DEFAULT NULL,
  `no_awb` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table db_lginnotek.ng_incoming: ~4 rows (approximately)
/*!40000 ALTER TABLE `ng_incoming` DISABLE KEYS */;
INSERT INTO `ng_incoming` (`id`, `date`, `cust_id`, `empl_id`, `part_no`, `no_cipl`, `no_awb`) VALUES
	('INC1601', '2016-06-04', 'CUS1606', 'EMP16036', 'WF1', '111111', '222222'),
	('INC1602', '2016-06-04', 'CUS1608', 'EMP16036', 'WF3', '212121', '33333'),
	('INC1603', '2016-06-04', 'CUS1606', 'EMP16036', 'WF1', '12121211', '454545454'),
	('INC1606', '2016-06-08', 'CUS16010', 'EMP16036', 'WF2', '1092381098', '9082038012');
/*!40000 ALTER TABLE `ng_incoming` ENABLE KEYS */;


-- Dumping structure for table db_lginnotek.ng_items
CREATE TABLE IF NOT EXISTS `ng_items` (
  `id` varchar(10) NOT NULL DEFAULT '',
  `cust_id` varchar(10) DEFAULT NULL,
  `req_date` date DEFAULT NULL,
  `part_no` varchar(5) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `awb` varchar(50) DEFAULT NULL,
  `remark` text,
  `empl_id` varchar(10) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_lginnotek.ng_items: ~7 rows (approximately)
/*!40000 ALTER TABLE `ng_items` DISABLE KEYS */;
INSERT INTO `ng_items` (`id`, `cust_id`, `req_date`, `part_no`, `quantity`, `awb`, `remark`, `empl_id`, `status`) VALUES
	('NGI16010', 'CUS16010', '2016-06-09', 'WF2', 1212, 'iofskdfksjl', 'klafjklasjflslfsa', 'EMP16036', 1),
	('NGI16011', 'CUS16010', '2016-06-10', 'WF1', 4, '3849238409280', 'akfaklfjalkjflka', NULL, 0),
	('NGI1605', 'CUS1606', '2016-04-02', 'WF1', 12, 'KLMN02309', 'Ini error mas bro', NULL, 3),
	('NGI1606', 'CUS1606', '2016-04-02', 'WF3', 3, 'LJFALKJFL-AKSFJL', 'Lapar eiy', NULL, 0),
	('NGI1607', 'CUS1609', '2016-05-08', 'WF1', 5, '2834729479', 'tes user samsung', NULL, 2),
	('NGI1608', 'CUS16010', '2016-06-08', 'WF1', 111, 'kdajfkljalkj', 'ga mau idup neh', 'admin', 4),
	('NGI1609', 'CUS16010', '2016-06-09', 'WF3', 123123131, 'jlksjlfjaljlsjllalfjslfaaa', 'ini kenapa ya? asfkksladjfklas ksjfklsaj fklas fklsaj fklsjafksjkfjskfjkalsjdf slkf slkjf kslfjksljf klsf ksjfksjfksjfkls  jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 'admin', 0);
/*!40000 ALTER TABLE `ng_items` ENABLE KEYS */;


-- Dumping structure for table db_lginnotek.sequences
CREATE TABLE IF NOT EXISTS `sequences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seq_name` varchar(10) NOT NULL,
  `prefix` varchar(3) NOT NULL,
  `year` year(4) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `seq_name` (`seq_name`,`year`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Dumping data for table db_lginnotek.sequences: ~5 rows (approximately)
/*!40000 ALTER TABLE `sequences` DISABLE KEYS */;
INSERT INTO `sequences` (`id`, `seq_name`, `prefix`, `year`, `value`) VALUES
	(27, 'sqemployee', 'EMP', '2016', 37),
	(28, 'sqcustomer', 'CUS', '2016', 13),
	(29, 'sqngitem', 'NGI', '2016', 11),
	(30, 'sqngdetail', 'DTL', '2016', 4),
	(31, 'sqincoming', 'INC', '2016', 6);
/*!40000 ALTER TABLE `sequences` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
