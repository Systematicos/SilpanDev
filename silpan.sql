-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.26 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para silpan
CREATE DATABASE IF NOT EXISTS `silpan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `silpan`;

-- Copiando estrutura para tabela silpan.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.auth_group: ~2 rows (aproximadamente)
DELETE FROM `auth_group`;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` (`id`, `name`) VALUES
	(1, 'Dono'),
	(2, 'vendedor');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.auth_group_permissions: ~117 rows (aproximadamente)
DELETE FROM `auth_group_permissions`;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
	(1, 1, 1),
	(2, 1, 2),
	(3, 1, 3),
	(4, 1, 4),
	(5, 1, 5),
	(6, 1, 6),
	(7, 1, 7),
	(8, 1, 8),
	(9, 1, 9),
	(10, 1, 10),
	(11, 1, 11),
	(12, 1, 12),
	(13, 1, 13),
	(14, 1, 14),
	(15, 1, 15),
	(16, 1, 16),
	(17, 1, 17),
	(18, 1, 18),
	(19, 1, 19),
	(20, 1, 20),
	(21, 1, 21),
	(22, 1, 22),
	(23, 1, 23),
	(24, 1, 24),
	(25, 1, 25),
	(26, 1, 26),
	(27, 1, 27),
	(28, 1, 28),
	(29, 1, 29),
	(30, 1, 30),
	(31, 1, 31),
	(32, 1, 32),
	(33, 1, 33),
	(34, 1, 34),
	(35, 1, 35),
	(36, 1, 36),
	(37, 1, 37),
	(38, 1, 38),
	(39, 1, 39),
	(40, 1, 40),
	(41, 1, 41),
	(42, 1, 42),
	(43, 1, 43),
	(44, 1, 44),
	(45, 1, 45),
	(46, 1, 46),
	(47, 1, 47),
	(48, 1, 48),
	(49, 1, 49),
	(50, 1, 50),
	(51, 1, 51),
	(52, 1, 52),
	(53, 1, 53),
	(54, 1, 54),
	(55, 1, 55),
	(56, 1, 56),
	(57, 1, 57),
	(58, 1, 58),
	(59, 1, 59),
	(60, 1, 60),
	(61, 1, 61),
	(62, 1, 62),
	(63, 1, 63),
	(64, 1, 64),
	(65, 1, 65),
	(66, 1, 66),
	(67, 1, 67),
	(68, 1, 68),
	(69, 1, 69),
	(70, 1, 70),
	(71, 1, 71),
	(72, 1, 72),
	(73, 1, 73),
	(74, 1, 74),
	(75, 1, 75),
	(76, 1, 76),
	(77, 2, 25),
	(78, 2, 26),
	(79, 2, 27),
	(80, 2, 28),
	(81, 2, 29),
	(82, 2, 30),
	(83, 2, 31),
	(84, 2, 32),
	(85, 2, 33),
	(86, 2, 34),
	(87, 2, 35),
	(88, 2, 36),
	(89, 2, 37),
	(90, 2, 38),
	(91, 2, 39),
	(92, 2, 40),
	(93, 2, 41),
	(94, 2, 42),
	(95, 2, 43),
	(96, 2, 44),
	(97, 2, 45),
	(98, 2, 46),
	(99, 2, 47),
	(100, 2, 48),
	(101, 2, 49),
	(102, 2, 50),
	(103, 2, 51),
	(104, 2, 52),
	(105, 2, 53),
	(106, 2, 54),
	(107, 2, 55),
	(108, 2, 56),
	(109, 2, 57),
	(110, 2, 58),
	(111, 2, 59),
	(112, 2, 61),
	(113, 2, 62),
	(114, 2, 73),
	(115, 2, 74),
	(116, 2, 75),
	(117, 2, 76);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.auth_permission: ~68 rows (aproximadamente)
DELETE FROM `auth_permission`;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add Categoria', 7, 'add_categoria'),
	(26, 'Can change Categoria', 7, 'change_categoria'),
	(27, 'Can delete Categoria', 7, 'delete_categoria'),
	(28, 'Can view Categoria', 7, 'view_categoria'),
	(29, 'Can add Marca', 8, 'add_marca'),
	(30, 'Can change Marca', 8, 'change_marca'),
	(31, 'Can delete Marca', 8, 'delete_marca'),
	(32, 'Can view Marca', 8, 'view_marca'),
	(33, 'Can add produto', 9, 'add_produto'),
	(34, 'Can change produto', 9, 'change_produto'),
	(35, 'Can delete produto', 9, 'delete_produto'),
	(36, 'Can view produto', 9, 'view_produto'),
	(37, 'Can add Forma de Pagamento', 10, 'add_formadepagamento'),
	(38, 'Can change Forma de Pagamento', 10, 'change_formadepagamento'),
	(39, 'Can delete Forma de Pagamento', 10, 'delete_formadepagamento'),
	(40, 'Can view Forma de Pagamento', 10, 'view_formadepagamento'),
	(41, 'Can add Status', 11, 'add_status'),
	(42, 'Can change Status', 11, 'change_status'),
	(43, 'Can delete Status', 11, 'delete_status'),
	(44, 'Can view Status', 11, 'view_status'),
	(45, 'Can add Transportadora', 12, 'add_transportadora'),
	(46, 'Can change Transportadora', 12, 'change_transportadora'),
	(47, 'Can delete Transportadora', 12, 'delete_transportadora'),
	(48, 'Can view Transportadora', 12, 'view_transportadora'),
	(49, 'Can add Pedido', 13, 'add_pedido'),
	(50, 'Can change Pedido', 13, 'change_pedido'),
	(51, 'Can delete Pedido', 13, 'delete_pedido'),
	(52, 'Can view Pedido', 13, 'view_pedido'),
	(53, 'Can add Item do pedido', 14, 'add_itempedido'),
	(54, 'Can change Item do pedido', 14, 'change_itempedido'),
	(55, 'Can delete Item do pedido', 14, 'delete_itempedido'),
	(56, 'Can view Item do pedido', 14, 'view_itempedido'),
	(57, 'Can add Cliente', 15, 'add_cliente'),
	(58, 'Can change Cliente', 15, 'change_cliente'),
	(59, 'Can delete Cliente', 15, 'delete_cliente'),
	(60, 'Can view Cliente', 15, 'view_cliente'),
	(61, 'Can add Endereço', 16, 'add_endereco'),
	(62, 'Can change Endereço', 16, 'change_endereco'),
	(63, 'Can delete Endereço', 16, 'delete_endereco'),
	(64, 'Can view Endereço', 16, 'view_endereco'),
	(65, 'Can add Cupom', 17, 'add_cupom'),
	(66, 'Can change Cupom', 17, 'change_cupom'),
	(67, 'Can delete Cupom', 17, 'delete_cupom'),
	(68, 'Can view Cupom', 17, 'view_cupom'),
	(69, 'Can add Cupom', 18, 'add_cupom'),
	(70, 'Can change Cupom', 18, 'change_cupom'),
	(71, 'Can delete Cupom', 18, 'delete_cupom'),
	(72, 'Can view Cupom', 18, 'view_cupom'),
	(73, 'Can add Imagem', 19, 'add_imagens'),
	(74, 'Can change Imagem', 19, 'change_imagens'),
	(75, 'Can delete Imagem', 19, 'delete_imagens'),
	(76, 'Can view Imagem', 19, 'view_imagens');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.auth_user: ~2 rows (aproximadamente)
DELETE FROM `auth_user`;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$260000$oLokZ9p3LMbYCHbPAH3miG$ZLvpBicEvzDlNOrJKJaNCiMCQHqxeyCuEc4SoBKMO1E=', '2021-11-29 23:36:08.518520', 1, 'admin', '', '', '', 1, 1, '2021-09-14 01:12:16.000000'),
	(13, 'pbkdf2_sha256$260000$TV6Tk5wt2IrEWBTOFiJEPh$uaO+HP3hJWbfXVHMmMp8xEUE04ckSI4vrjfHXjbXslo=', NULL, 0, 'add', '', '', 'add@add', 0, 1, '2021-09-27 18:17:05.078076'),
	(15, 'pbkdf2_sha256$260000$hW5qDzTQ84K1fkI2yuBE0a$cGCLVTfTAOKv8y/nrPuUdQOopsI2Qg6YdUCss0eCGZE=', NULL, 0, 'addadddd', 'Gyovane', 'Souza', 'adddd@add.com', 0, 1, '2021-09-27 18:19:36.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.auth_user_groups: ~2 rows (aproximadamente)
DELETE FROM `auth_user_groups`;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
	(1, 1, 1),
	(2, 15, 2);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.auth_user_user_permissions: ~0 rows (aproximadamente)
DELETE FROM `auth_user_user_permissions`;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.cliente_cliente
CREATE TABLE IF NOT EXISTS `cliente_cliente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.cliente_cliente: ~4 rows (aproximadamente)
DELETE FROM `cliente_cliente`;
/*!40000 ALTER TABLE `cliente_cliente` DISABLE KEYS */;
INSERT INTO `cliente_cliente` (`id`, `email`, `nome`, `sobrenome`, `data_nascimento`, `cpf`, `telefone`) VALUES
	(1, 'hheloiseestherassis@mosman.com.br', 'Heloise Esther Assis', '', '2021-11-26', '11690170379', '96992224268'),
	(3, 'hheloiseestherassi@mosman.com.br', 'Heloise Esther Assis', '', '2021-11-26', '60318668386', '96992224268'),
	(4, 'gyaliexpress@gmail.com', 'Renato Alexandre Figueiredo', '', '2021-11-26', '86705929677', '96992224268'),
	(5, 'gyovanesouzza@outlook.com.br', 'Gyovane Pereira de Souza', '', '2021-11-28', '38348605821', '11995305224');
/*!40000 ALTER TABLE `cliente_cliente` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.cliente_endereco
CREATE TABLE IF NOT EXISTS `cliente_endereco` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo` varchar(30) NOT NULL,
  `numero` varchar(6) NOT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `cep` varchar(50) NOT NULL,
  `cliente_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_endereco_cliente_id_0dd74237_fk_cliente_cliente_id` (`cliente_id`),
  CONSTRAINT `cliente_endereco_cliente_id_0dd74237_fk_cliente_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cliente_cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.cliente_endereco: ~1 rows (aproximadamente)
DELETE FROM `cliente_endereco`;
/*!40000 ALTER TABLE `cliente_endereco` DISABLE KEYS */;
INSERT INTO `cliente_endereco` (`id`, `tipo`, `numero`, `complemento`, `cep`, `cliente_id`) VALUES
	(1, 'Casa', '523', '', '35054276', 4),
	(2, 'casa', '22', 'dad', '04943-100', 5);
/*!40000 ALTER TABLE `cliente_endereco` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.django_admin_log: ~41 rows (aproximadamente)
DELETE FROM `django_admin_log`;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2021-09-14 00:59:37.376576', '1', 'Kit 3 Aros Coração Cortador De Bolo', 1, '[{"added": {}}]', 9, 1),
	(2, '2021-09-14 02:04:39.090699', '1', 'Kit 3 Aros Coração', 1, '[{"added": {}}]', 9, 1),
	(3, '2021-09-14 03:03:13.188799', '1', 'systematicos10', 1, '[{"added": {}}]', 17, 1),
	(4, '2021-09-14 03:14:09.991215', '1', 'Kit 3 Aros Coração', 3, '', 9, 1),
	(5, '2021-09-14 03:15:24.514427', '2', 'Kit 3 Aros Coração', 1, '[{"added": {}}]', 9, 1),
	(6, '2021-09-14 03:16:26.061815', '3', 'Forma De Panetone', 1, '[{"added": {}}]', 9, 1),
	(7, '2021-09-14 03:18:40.381887', '4', 'Bailarina Giratória', 1, '[{"added": {}}]', 9, 1),
	(8, '2021-09-14 03:20:49.466190', '5', 'FORMINHAS TORNADO P', 1, '[{"added": {}}]', 9, 1),
	(9, '2021-09-14 03:22:25.238735', '6', 'Kit Confeiteiro', 1, '[{"added": {}}]', 9, 1),
	(10, '2021-09-14 03:23:32.294523', '7', 'Fuet Batedor De Ovo', 1, '[{"added": {}}]', 9, 1),
	(11, '2021-09-14 03:25:52.719767', '5', 'FORMINHAS TORNADO P', 2, '[{"changed": {"fields": ["Imagem"]}}]', 9, 1),
	(12, '2021-09-14 03:26:12.831409', '4', 'Bailarina Giratória', 3, '', 9, 1),
	(13, '2021-09-14 03:41:00.557828', '8', 'Formas Bolo De Vidro 18x8', 1, '[{"added": {}}]', 9, 1),
	(14, '2021-09-14 03:42:14.477726', '9', 'Formas Bolo De Vidro 20x8', 1, '[{"added": {}}]', 9, 1),
	(15, '2021-09-14 03:43:33.451238', '10', 'Formas Bolo De Vidro 22x8', 1, '[{"added": {}}]', 9, 1),
	(16, '2021-09-14 03:44:24.732802', '8', 'Formas Bolo De Vidro 18x8', 2, '[{"changed": {"fields": ["Preco marketing"]}}]', 9, 1),
	(17, '2021-09-14 03:44:40.869753', '5', 'FORMINHAS TORNADO P', 2, '[{"changed": {"fields": ["Preco marketing"]}}]', 9, 1),
	(18, '2021-09-14 03:44:50.356629', '8', 'Formas Bolo De Vidro 18x8', 2, '[{"changed": {"fields": ["Preco marketing"]}}]', 9, 1),
	(19, '2021-09-14 03:44:59.447298', '9', 'Formas Bolo De Vidro 20x8', 2, '[{"changed": {"fields": ["Preco marketing"]}}]', 9, 1),
	(20, '2021-09-14 03:45:10.337463', '10', 'Formas Bolo De Vidro 22x8', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(21, '2021-09-14 03:45:27.909503', '5', 'FORMINHAS TORNADO P', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(22, '2021-09-14 03:47:50.634160', '11', '6 Forminhas suissa decorada', 1, '[{"added": {}}]', 9, 1),
	(23, '2021-09-14 03:48:00.260036', '9', 'Formas Bolo De Vidro 20x8', 2, '[{"changed": {"fields": ["Descricao", "Material"]}}]', 9, 1),
	(24, '2021-09-14 03:48:09.326168', '10', 'Formas Bolo De Vidro 22x8', 2, '[{"changed": {"fields": ["Descricao", "Material"]}}]', 9, 1),
	(25, '2021-09-14 03:48:13.124004', '11', '6 Forminhas suissa decorada', 2, '[]', 9, 1),
	(26, '2021-09-14 03:48:17.617748', '10', 'Formas Bolo De Vidro 22x8', 2, '[]', 9, 1),
	(27, '2021-09-14 03:48:20.965242', '9', 'Formas Bolo De Vidro 20x8', 2, '[]', 9, 1),
	(28, '2021-09-14 03:48:31.477380', '8', 'Formas Bolo De Vidro 18x8', 2, '[{"changed": {"fields": ["Descricao", "Material"]}}]', 9, 1),
	(29, '2021-09-14 03:48:38.423816', '7', 'Fuet Batedor De Ovo', 2, '[]', 9, 1),
	(30, '2021-09-14 03:49:03.937604', '6', 'Kit Confeiteiro', 2, '[{"changed": {"fields": ["Descricao", "Material"]}}]', 9, 1),
	(31, '2021-09-14 03:49:11.526444', '3', 'Forma De Panetone', 2, '[]', 9, 1),
	(32, '2021-09-14 03:49:15.928260', '2', 'Kit 3 Aros Coração', 2, '[]', 9, 1),
	(33, '2021-09-15 01:56:49.935056', '2', 'd', 1, '[{"added": {}}]', 17, 1),
	(34, '2021-09-15 01:57:39.690687', '3', 'systematicosOut', 1, '[{"added": {}}]', 17, 1),
	(35, '2021-09-15 01:59:51.359306', '3', 'systematicosOut', 2, '[]', 17, 1),
	(36, '2021-09-15 02:48:51.130133', '1', 'systematicos10', 1, '[{"added": {}}]', 18, 1),
	(37, '2021-09-15 02:49:56.433733', '1', 'systematicos10', 3, '', 18, 1),
	(38, '2021-09-15 02:50:17.480450', '2', 'systematicos10', 1, '[{"added": {}}]', 18, 1),
	(39, '2021-09-15 02:50:34.967934', '2', 'systematicos10', 2, '[]', 18, 1),
	(40, '2021-09-15 02:51:13.080552', '3', 'systematicos11', 1, '[{"added": {}}]', 18, 1),
	(41, '2021-09-19 02:27:09.634791', '24', 'Tes', 1, '[{"added": {}}]', 9, 1),
	(42, '2021-09-19 02:28:09.949206', '24', 'Tes', 2, '[{"changed": {"fields": ["Imagem"]}}]', 9, 1),
	(43, '2021-09-19 22:06:27.701120', '7', 'Fuet Batedor De Ovo', 2, '[{"changed": {"fields": ["Imagem"]}}]', 9, 1),
	(44, '2021-09-19 22:08:29.030493', '7', 'Fuet Batedor De Ovo', 2, '[{"changed": {"fields": ["Imagem"]}}]', 9, 1),
	(45, '2021-09-22 23:05:39.732243', '7', 'Fuet Batedor De Ovo', 2, '[{"changed": {"fields": ["Imagem"]}}]', 9, 1),
	(46, '2021-09-27 17:05:03.725511', '2', '', 3, '', 4, 1),
	(47, '2021-09-27 18:16:16.350518', '7', 'add', 3, '', 4, 1),
	(48, '2021-09-27 18:16:16.419237', '5', 'admin11', 3, '', 4, 1),
	(49, '2021-09-27 18:16:16.485578', '6', 'admin2', 3, '', 4, 1),
	(50, '2021-09-27 18:17:01.979456', '10', 'add', 3, '', 4, 1),
	(51, '2021-10-02 00:48:54.647400', '23', '12 Forminhas canudo', 2, '[{"added": {"name": "Imagem", "object": "Imagens object (1)"}}, {"added": {"name": "Imagem", "object": "Imagens object (2)"}}, {"added": {"name": "Imagem", "object": "Imagens object (3)"}}]', 9, 1),
	(52, '2021-10-28 01:22:10.706002', '1', 'Gyovane', 2, '[{"added": {"name": "Endere\\u00e7o", "object": " Tipo: Casa, do cliente GyovaneSouza"}}]', 15, 1),
	(53, '2021-11-13 01:51:24.154694', '23', '12 Forminhas canudo', 2, '[{"changed": {"fields": ["Imagem"]}}]', 9, 1),
	(54, '2021-11-13 01:54:45.557635', '23', '12 Forminhas canudo', 2, '[{"changed": {"fields": ["Imagem"]}}]', 9, 1),
	(55, '2021-11-13 01:55:25.610844', '23', '12 Forminhas canudo', 2, '[{"changed": {"fields": ["Imagem"]}}]', 9, 1),
	(56, '2021-11-13 01:55:58.624445', '23', '12 Forminhas canudo', 2, '[{"changed": {"fields": ["Imagem"]}}]', 9, 1),
	(57, '2021-11-17 00:10:46.463023', '23', '12 Forminhas canudo', 2, '[{"changed": {"fields": ["Imagem"]}}]', 9, 1),
	(58, '2021-11-17 00:11:03.276527', '22', 'Conjunto de formas', 2, '[{"changed": {"fields": ["Imagem"]}}]', 9, 1),
	(59, '2021-11-17 00:37:10.104851', '23', '12 Forminhas canudo', 2, '[{"changed": {"fields": ["Descricao"]}}]', 9, 1),
	(60, '2021-11-17 00:42:47.100843', '23', '12 Forminhas canudo', 2, '[{"changed": {"fields": ["Descricao"]}}]', 9, 1),
	(61, '2021-11-24 01:06:49.014227', '24', 'ssds', 1, '[{"added": {}}]', 9, 1),
	(62, '2021-11-29 19:10:01.620033', '1', 'Dono', 1, '[{"added": {}}]', 3, 1),
	(63, '2021-11-29 19:10:33.120750', '2', 'vendedor', 1, '[{"added": {}}]', 3, 1),
	(64, '2021-11-29 19:11:04.413488', '1', 'admin', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1),
	(65, '2021-11-29 19:11:20.485487', '15', 'addadddd', 2, '[{"changed": {"fields": ["Email address", "Groups"]}}]', 4, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.django_content_type: ~17 rows (aproximadamente)
DELETE FROM `django_content_type`;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(15, 'cliente', 'cliente'),
	(16, 'cliente', 'endereco'),
	(5, 'contenttypes', 'contenttype'),
	(18, 'cupom', 'cupom'),
	(17, 'pedido', 'cupom'),
	(10, 'pedido', 'formadepagamento'),
	(14, 'pedido', 'itempedido'),
	(13, 'pedido', 'pedido'),
	(11, 'pedido', 'status'),
	(12, 'pedido', 'transportadora'),
	(7, 'produtos', 'categoria'),
	(19, 'produtos', 'imagens'),
	(8, 'produtos', 'marca'),
	(9, 'produtos', 'produto'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.django_migrations: ~26 rows (aproximadamente)
DELETE FROM `django_migrations`;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2021-09-14 01:07:25.405809'),
	(2, 'auth', '0001_initial', '2021-09-14 01:07:25.714089'),
	(3, 'admin', '0001_initial', '2021-09-14 01:07:25.838202'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-14 01:07:25.844207'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-14 01:07:25.850213'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2021-09-14 01:07:25.910268'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2021-09-14 01:07:25.992342'),
	(8, 'auth', '0003_alter_user_email_max_length', '2021-09-14 01:07:26.012361'),
	(9, 'auth', '0004_alter_user_username_opts', '2021-09-14 01:07:26.019367'),
	(10, 'auth', '0005_alter_user_last_login_null', '2021-09-14 01:07:26.050395'),
	(11, 'auth', '0006_require_contenttypes_0002', '2021-09-14 01:07:26.053397'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-14 01:07:26.059403'),
	(13, 'auth', '0008_alter_user_username_max_length', '2021-09-14 01:07:26.099439'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-14 01:07:26.137474'),
	(15, 'auth', '0010_alter_group_name_max_length', '2021-09-14 01:07:26.152488'),
	(16, 'auth', '0011_update_proxy_permissions', '2021-09-14 01:07:26.158493'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2021-09-14 01:07:26.195940'),
	(19, 'produtos', '0001_initial', '2021-09-14 01:07:26.594302'),
	(20, 'sessions', '0001_initial', '2021-09-14 01:07:26.640344'),
	(21, 'pedido', '0002_auto_20210913_2210', '2021-09-14 01:10:50.556063'),
	(22, 'pedido', '0002_cupom', '2021-09-14 02:29:12.672636'),
	(23, 'pedido', '0002_auto_20210914_2254', '2021-09-15 01:54:14.594763'),
	(24, 'pedido', '0003_auto_20210914_2254', '2021-09-15 01:54:57.146372'),
	(26, 'cupom', '0001_initial', '2021-09-15 02:40:42.873454'),
	(27, 'pedido', '0001_initial', '2021-09-15 02:43:29.116389'),
	(28, 'cupom', '0002_auto_20210914_2347', '2021-09-15 02:47:48.222842'),
	(29, 'cupom', '0003_alter_cupom_data_inicio', '2021-09-15 02:49:45.963501'),
	(30, 'cupom', '0004_alter_cupom_data_final', '2021-09-15 02:50:59.662336'),
	(31, 'produtos', '0002_auto_20211001_2147', '2021-10-02 00:47:27.689199'),
	(32, 'pedido', '0002_auto_20211005_1924', '2021-10-05 22:24:38.100015'),
	(33, 'produtos', '0002_alter_produto_imagem', '2021-10-05 22:24:38.106016');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.django_session: ~30 rows (aproximadamente)
DELETE FROM `django_session`;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('1e238snk484neua8m4086iw2jjn5s18f', 'e30:1moF71:1WsyWn9A4TXZEjOkPNyT9ZA7WYZcIAqr2Zk4oNonFU8', '2021-12-04 01:24:15.644574'),
	('2lbtoucm0xr04g6y15c9axer8uv1q3yo', 'e30:1moF3O:KH44HOUuEfpXCDW4W6AOyMpGNeg2Us_nIxCNexiDtAs', '2021-12-04 01:20:30.694201'),
	('73o7tioh1370m2qqzut8kbjnxtngk0dx', 'e30:1mW6sz:MYlro2p_k_SCUTWru2ClGX_QykzP-w0KkQoKAYpPASE', '2021-10-15 00:58:49.542203'),
	('8ubfjp3hqka8bppypeattsjb8ovpy1xt', 'e30:1moEro:PWfXZQbeLdPEf5do7iUACVjG6aMr5Ai5TTNW1eZWXZA', '2021-12-04 01:08:32.006824'),
	('bi51oerbogmujaos65bojqmyodo187yh', 'e30:1mjrTK:qsPszRVDy7I6So1eU3Zbp2zcPZKrIBXj2DOjnqb7UkM', '2021-11-21 23:21:10.543335'),
	('csqzvhm3dahxh5ua5ctfkplqpxfxl24c', 'e30:1mopRz:eAMbSOOJQH5qU3FLJ_lkbOhWw6lmjCnOntfEGIxfDDE', '2021-12-05 16:12:19.606594'),
	('dvxp3xsr0k69mdzniohdxlik2s9p7liz', 'e30:1moEyU:LJ35Km93bBVojmlutn1JeoJEbPhZKIFHwBpgpEA9myc', '2021-12-04 01:15:26.215344'),
	('e37ysydeah25hp24m3642lensopp3i0p', 'e30:1mopTL:WB31GJEHrC-1JhpLdJlnZPabemuZ189XJYMiAhsioII', '2021-12-05 16:13:43.318901'),
	('elff45imu3d2watfbvyl4ek4bm710vkd', 'e30:1moEw2:rDXd6hrASm4YmXVH-ygzO0PLq8kywyQv3PFeYQfKbIU', '2021-12-04 01:12:54.001333'),
	('evacfq10z2h7yqfywzosf55idjs5eszi', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mPxhQ:dy52V1XeXGTCst56wmUtgqtRYQWsHD9pMhZEzl-kT18', '2021-09-28 01:57:28.035054'),
	('fiot0obv1j7259nto4gpfqgxjeops7y1', 'e30:1moF6n:_qBTzjbf2aOHdcmYQu-Nh2JpG4-L-gaPX_ekf8fuGzY', '2021-12-04 01:24:01.921665'),
	('fphspd16kxsrpd3xdvex3d5l1n3uux7o', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mW52x:VqfS2xqW9RumPIXEgv0Lz16xiWz0zNVfIKWNz8aW-Xc', '2021-10-14 23:00:59.550275'),
	('fttug3nctwr0eqce1j4to3e9ok5xnrny', 'e30:1mW6tI:_W5RU-Y37WvFoDDX-nU-UzI8Ez7hC6bKXNWpBk3QvMU', '2021-10-15 00:59:08.597650'),
	('gyzrheyvfw59kov9r396mffxasewgd49', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mWijm:46mgWlSTsliKVer_7KfYDP6ve0UbWSNF-du_vtStAj0', '2021-10-16 17:23:50.132716'),
	('j3uyabystpicq6s6vu63cwn7wpn53y27', '.eJxVjs0OwiAQhN-FsyEshbZ49O4zNAvsWlQg6c_J-O62SU30Ot_Ml3mJAddlHNaZpiFFcRYgTr-Zx_CgsoN4x3KrMtSyTMnLvSIPOstrjfS8HN0_wYjzuK11A5qx61lpCwFax5oVhd5aROyNZ-3JukapNrDRpjEOO0tsfFTgwPEmzZT99yXGnIp4fwBv9j41:1mW4np:1oOoZiuLoVACh_y8NKh5JiqmYCsl-Xlicd4HWK0e4Ms', '2021-10-14 22:45:21.129199'),
	('jfvvdk4rzgicqy0t1jme6svkz6k9t0s9', 'e30:1mW6tS:YC5mX77AalD6BxLjdLFg8lX5uzPDMntPd6wzsj6QMc0', '2021-10-15 00:59:18.959555'),
	('kdecgae95fdb5cv0pueltq2inol26shd', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mrWMx:h9eCk0FZmFZCOProR7lbdX-FbFvOZPj6c7kQ9PLunss', '2021-12-13 02:26:15.620322'),
	('lxxp54wisnxczgcdz4njhygfwmcr384r', 'e30:1mopQZ:OtE1cjsuHRPRAYhbNMc9mwRcolyCvPUZyr8GurITuxs', '2021-12-05 16:10:51.209291'),
	('m39cn8pnswu8bjxy97m47nz4at2n0ccc', 'e30:1moF3w:YlOCQ4zSdxftakxvVpHeJmU5E9kTuKhROHm0Bch_GI0', '2021-12-04 01:21:04.746437'),
	('m77z20e56n8ygosyxlgfu5o5bruxh32w', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mW574:VMfw2nQvkGSDTuMCskGSYadPXMrNozG8EEq2jXvS5rw', '2021-10-14 23:05:14.648705'),
	('mbbakx0dne4hmvlzkyslzunh0crzqr2h', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1moENo:m-fMREMIsEhHC_GCmQlthcYgco7bfFFpl_1pcjYE0CE', '2021-12-04 00:37:32.078659'),
	('tej4vd3q6xnatcljgift90my9om6aa90', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mapAZ:jWGApg95wFomtPGhWWdykztOHHsMId_MHyGj_oRyyoA', '2021-10-28 01:04:27.252754'),
	('ve6wox2o7utmzx9579x7q0v0sll3sagm', 'e30:1moEtz:M_WB4dcl3X71A3Yvs-TWvCnC69xZEK3vPM3ZIvc17hQ', '2021-12-04 01:10:47.571229'),
	('vm92mwy1wpn6397z6440w280lensk24p', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mn8WI:eAl3N87KkqKJ7JgBbA77MrVAqhafsDI3VmiRXS_UuHg', '2021-12-01 00:09:46.960983'),
	('w9pglsaevckuj2ml2p332d2yj95wjg3g', 'e30:1moEqi:tOGKF2dPbyR_A5lHNiRdAHE5HEnc_1XHvy0lufp7OxI', '2021-12-04 01:07:24.310888'),
	('x1cx6le7tyulkgygrzd7z7x37gi3ef7z', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mXYfw:Gqwnz_T7M5MhQGCHrYH-3PvQ40Du-HyKEjqoqDu615c', '2021-10-19 00:51:20.760841'),
	('x1uanj0g5gaku6a3rnzs8ipysp155jif', 'e30:1mW6sg:7hu7K3-mFpKVqJ11yg48SRoeFlHGhME_0ne0aC-razg', '2021-10-15 00:58:30.695743'),
	('xfultxkrsnt8sxv7i1yibm3w3lsqzglw', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mftoE:kelv1wjVYz3FrcLpi8DDCLae1KkjjdA4_pr4NBAP6no', '2021-11-11 01:02:22.988619'),
	('yrgfj36gk52ic1wkpyg9sag2aed3ci92', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mrqBs:iyCAY2uLJq-3J1-OmOKI1r8dhaJj6Eq7FjCUMydqkFA', '2021-12-13 23:36:08.567518'),
	('z2ebj8fikkfo05dcwt9drw7s3t0ixqbe', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mPwzm:LvxCI-q9KQDVjMOpwZnGllBYpQClw2qY82mnrGWRONU', '2021-09-28 01:12:22.182865');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.pedido_formadepagamento
CREATE TABLE IF NOT EXISTS `pedido_formadepagamento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `forma_de_pagamento` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forma_de_pagamento` (`forma_de_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.pedido_formadepagamento: ~3 rows (aproximadamente)
DELETE FROM `pedido_formadepagamento`;
/*!40000 ALTER TABLE `pedido_formadepagamento` DISABLE KEYS */;
INSERT INTO `pedido_formadepagamento` (`id`, `forma_de_pagamento`) VALUES
	(1, 'Cartão de Credito'),
	(3, 'Mercado Pago'),
	(2, 'PIX');
/*!40000 ALTER TABLE `pedido_formadepagamento` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.pedido_itempedido
CREATE TABLE IF NOT EXISTS `pedido_itempedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedido_id` bigint NOT NULL,
  `produto_id` bigint NOT NULL,
  `preco` double NOT NULL,
  `preco_promocional` double NOT NULL,
  `quantidade` int unsigned NOT NULL,
  `imagem` varchar(250) NOT NULL,
  `cor` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `largura` int DEFAULT NULL,
  `altura` int DEFAULT NULL,
  `comprimento` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_itempedido_pedido_id_15c6b42d_fk_pedido_pedido_id` (`pedido_id`),
  KEY `pedido_itempedido_produto_id_a5d1c607_fk_produtos_produto_id` (`produto_id`),
  CONSTRAINT `pedido_itempedido_pedido_id_15c6b42d_fk_pedido_pedido_id` FOREIGN KEY (`pedido_id`) REFERENCES `pedido_pedido` (`id`),
  CONSTRAINT `pedido_itempedido_produto_id_a5d1c607_fk_produtos_produto_id` FOREIGN KEY (`produto_id`) REFERENCES `produtos_produto` (`id`),
  CONSTRAINT `pedido_itempedido_chk_1` CHECK ((`quantidade` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.pedido_itempedido: ~55 rows (aproximadamente)
DELETE FROM `pedido_itempedido`;
/*!40000 ALTER TABLE `pedido_itempedido` DISABLE KEYS */;
INSERT INTO `pedido_itempedido` (`id`, `pedido_id`, `produto_id`, `preco`, `preco_promocional`, `quantidade`, `imagem`, `cor`, `material`, `largura`, `altura`, `comprimento`) VALUES
	(1, 1, 3, 33, 0, 1, 'http://127.0.0.1:8000/', 'None', 'Aluminio', 0, 0, 0),
	(2, 1, 2, 50, 40, 1, 'http://127.0.0.1:8000/', 'None', 'Aluminio', 0, 0, 0),
	(3, 2, 3, 33, 0, 1, 'http://127.0.0.1:8000/', 'None', 'Aluminio', 0, 0, 0),
	(4, 2, 2, 50, 40, 1, 'http://127.0.0.1:8000/', 'None', 'Aluminio', 0, 0, 0),
	(5, 3, 3, 33, 0, 1, 'http://127.0.0.1:8000/', 'None', 'Aluminio', 0, 0, 0),
	(6, 3, 2, 50, 40, 1, 'http://127.0.0.1:8000/', 'None', 'Aluminio', 0, 0, 0),
	(7, 4, 3, 33, 0, 1, 'http://127.0.0.1:8000/', 'None', 'Aluminio', 0, 0, 0),
	(8, 4, 2, 50, 40, 1, 'http://127.0.0.1:8000/', 'None', 'Aluminio', 0, 0, 0),
	(9, 5, 3, 33, 0, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(10, 5, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(11, 5, 5, 20, 17, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(12, 6, 23, 15.99, 10.2, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_215725_Uhhvrqk.thumbnail.png', 'None', 'Alumínio', 0, 0, 0),
	(13, 7, 3, 33, 0, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(14, 7, 5, 20, 17, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(15, 8, 3, 33, 0, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(16, 8, 5, 20, 17, 2, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(17, 8, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(18, 9, 3, 33, 0, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(19, 9, 5, 20, 17, 2, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(20, 9, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(21, 10, 3, 33, 0, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(22, 10, 5, 20, 17, 2, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(23, 10, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(24, 11, 3, 33, 0, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(25, 11, 5, 20, 17, 2, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(26, 11, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(27, 12, 3, 33, 0, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(28, 12, 5, 20, 17, 2, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(29, 12, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(30, 13, 3, 33, 0, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(31, 13, 5, 20, 17, 2, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(32, 13, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(33, 14, 3, 33, 0, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(34, 14, 5, 20, 17, 2, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(35, 14, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(36, 15, 3, 33, 0, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(37, 15, 5, 20, 17, 2, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(38, 15, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(39, 16, 3, 33, 0, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(40, 16, 5, 20, 17, 2, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(41, 16, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(42, 17, 3, 33, 0, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(43, 17, 5, 20, 17, 2, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(44, 17, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(45, 18, 23, 15.99, 10.2, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_215725_Uhhvrqk.thumbnail.png', 'None', 'Alumínio', 0, 0, 0),
	(46, 19, 5, 20, 17, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(47, 20, 5, 20, 17, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(48, 20, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(49, 21, 5, 20, 17, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(50, 22, 5, 20, 17, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(51, 21, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(52, 22, 2, 50, 40, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.thumbnail.png', 'None', 'Aluminio', 0, 0, 0),
	(53, 23, 5, 20, 17, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.thumbnail.png', 'None', 'None', 0, 0, 0),
	(54, 24, 23, 15.99, 10.2, 1, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_215725_Uhhvrqk.thumbnail.png', 'None', 'Alumínio', 0, 0, 0),
	(55, 24, 12, 5, 0, 2, '/media/produto_imagens/2021/11/Captura_de_tela_2021-09-12_214727.thumbnail.png', 'None', 'None', 0, 0, 0);
/*!40000 ALTER TABLE `pedido_itempedido` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.pedido_pedido
CREATE TABLE IF NOT EXISTS `pedido_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint NOT NULL,
  `forma_pagamento_id` bigint NOT NULL,
  `data` datetime(6) NOT NULL,
  `subtotal` double NOT NULL,
  `desconto` double NOT NULL,
  `total` double NOT NULL,
  `frete` double DEFAULT NULL,
  `codigo_rastreio` varchar(50) DEFAULT NULL,
  `notal_fiscal` varchar(70) DEFAULT NULL,
  `vendedor_id` int NOT NULL,
  `endereco_entrega_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo_rastreio` (`codigo_rastreio`),
  KEY `pedido_pedido_cliente_id_4f20d09c_fk_cliente_cliente_id` (`cliente_id`),
  KEY `pedido_pedido_forma_pagamento_id_ebf3fa94_fk_pedido_fo` (`forma_pagamento_id`),
  KEY `pedido_pedido_vendedor_id_f06206a5_fk_auth_user_id` (`vendedor_id`),
  KEY `pedido_pedido_endereco_entrega_id_a5804c85_fk_cliente_e` (`endereco_entrega_id`),
  CONSTRAINT `pedido_pedido_cliente_id_4f20d09c_fk_cliente_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cliente_cliente` (`id`),
  CONSTRAINT `pedido_pedido_endereco_entrega_id_a5804c85_fk_cliente_e` FOREIGN KEY (`endereco_entrega_id`) REFERENCES `cliente_endereco` (`id`),
  CONSTRAINT `pedido_pedido_forma_pagamento_id_ebf3fa94_fk_pedido_fo` FOREIGN KEY (`forma_pagamento_id`) REFERENCES `pedido_formadepagamento` (`id`),
  CONSTRAINT `pedido_pedido_vendedor_id_f06206a5_fk_auth_user_id` FOREIGN KEY (`vendedor_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.pedido_pedido: ~24 rows (aproximadamente)
DELETE FROM `pedido_pedido`;
/*!40000 ALTER TABLE `pedido_pedido` DISABLE KEYS */;
INSERT INTO `pedido_pedido` (`id`, `cliente_id`, `forma_pagamento_id`, `data`, `subtotal`, `desconto`, `total`, `frete`, `codigo_rastreio`, `notal_fiscal`, `vendedor_id`, `endereco_entrega_id`) VALUES
	(1, 4, 3, '2021-11-26 22:56:01.713230', 83, 43, 40, 0, NULL, NULL, 15, 1),
	(2, 4, 3, '2021-11-26 22:56:36.481756', 83, 43, 40, 0, NULL, NULL, 13, 1),
	(3, 4, 3, '2021-11-26 22:57:56.799561', 83, 43, 40, 0, NULL, NULL, 13, 1),
	(4, 4, 1, '2021-11-26 22:59:14.009242', 83, 43, 40, 0, NULL, NULL, 15, 1),
	(5, 4, 1, '2021-11-26 23:08:28.311573', 103, 46, 57, 0, NULL, NULL, 1, 1),
	(6, 5, 1, '2021-11-28 23:31:40.001201', 15.99, 5.790000000000001, 10.2, 0, NULL, NULL, 1, 2),
	(7, 5, 1, '2021-11-28 23:38:16.592897', 53, 36, 17, 0, NULL, NULL, 1, 2),
	(8, 5, 3, '2021-11-29 14:54:32.764750', 123, 49, 74, 0, NULL, NULL, 1, 2),
	(9, 5, 3, '2021-11-29 14:57:42.751508', 123, 49, 74, 0, NULL, NULL, 1, 2),
	(10, 5, 3, '2021-11-29 15:00:17.633700', 123, 49, 74, 0, NULL, NULL, 1, 2),
	(11, 5, 3, '2021-11-29 15:00:34.126754', 123, 49, 74, 0, NULL, NULL, 1, 2),
	(12, 5, 3, '2021-11-29 15:01:20.243891', 123, 49, 74, 0, NULL, NULL, 1, 2),
	(13, 5, 3, '2021-11-29 15:01:42.865178', 123, 49, 74, 0, NULL, NULL, 1, 2),
	(14, 5, 1, '2021-11-29 15:02:07.228112', 123, 49, 74, 0, NULL, NULL, 1, 2),
	(15, 5, 1, '2021-11-29 15:02:49.686753', 123, 49, 74, 0, NULL, NULL, 1, 2),
	(16, 5, 3, '2021-11-29 15:25:36.876798', 123, 49, 74, 0, NULL, NULL, 1, 2),
	(17, 5, 3, '2021-11-29 15:26:35.810829', 123, 49, 74, 0, NULL, NULL, 1, 2),
	(18, 5, 2, '2021-11-29 15:39:57.181302', 15.99, 5.790000000000001, 10.2, 0, NULL, NULL, 1, 2),
	(19, 5, 3, '2021-11-29 15:40:58.413496', 20, 3, 17, 0, NULL, NULL, 1, 2),
	(20, 5, 3, '2021-11-29 15:42:10.272251', 70, 13, 57, 0, NULL, NULL, 1, 2),
	(21, 5, 1, '2021-11-29 15:43:11.480756', 70, 13, 57, 0, NULL, NULL, 1, 2),
	(22, 5, 2, '2021-11-29 15:43:11.482754', 70, 13, 57, 0, NULL, NULL, 1, 2),
	(23, 5, 1, '2021-11-29 15:43:59.490375', 20, 3, 17, 0, NULL, NULL, 1, 2),
	(24, 5, 3, '2021-11-29 16:05:10.446399', 25.990000000000002, 15.790000000000001, 10.200000000000001, 0, NULL, NULL, 1, 2);
/*!40000 ALTER TABLE `pedido_pedido` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.pedido_transportadora
CREATE TABLE IF NOT EXISTS `pedido_transportadora` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome_transportadora` varchar(50) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_transportadora` (`nome_transportadora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.pedido_transportadora: ~0 rows (aproximadamente)
DELETE FROM `pedido_transportadora`;
/*!40000 ALTER TABLE `pedido_transportadora` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_transportadora` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.produtos_categoria
CREATE TABLE IF NOT EXISTS `produtos_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.produtos_categoria: ~6 rows (aproximadamente)
DELETE FROM `produtos_categoria`;
/*!40000 ALTER TABLE `produtos_categoria` DISABLE KEYS */;
INSERT INTO `produtos_categoria` (`id`, `nome`) VALUES
	(1, 'Acessórios'),
	(2, 'Assadeiras'),
	(3, 'Formas'),
	(5, 'Formas Decorativas'),
	(6, 'Forminhas');
/*!40000 ALTER TABLE `produtos_categoria` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.produtos_produto
CREATE TABLE IF NOT EXISTS `produtos_produto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `descricao` longtext,
  `quantidade` int NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `preco_marketing` double NOT NULL,
  `preco_marketing_promocional` double DEFAULT NULL,
  `cor` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `largura` int DEFAULT NULL,
  `altura` int DEFAULT NULL,
  `comprimento` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `produtos_produto_categoria_id_4444949b_fk_produtos_categoria_id` (`categoria_id`),
  CONSTRAINT `produtos_produto_categoria_id_4444949b_fk_produtos_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `produtos_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.produtos_produto: ~20 rows (aproximadamente)
DELETE FROM `produtos_produto`;
/*!40000 ALTER TABLE `produtos_produto` DISABLE KEYS */;
INSERT INTO `produtos_produto` (`id`, `slug`, `nome`, `descricao`, `quantidade`, `imagem`, `categoria_id`, `preco_marketing`, `preco_marketing_promocional`, `cor`, `material`, `largura`, `altura`, `comprimento`) VALUES
	(2, 'kit-3-aros-coracao', 'Kit 3 Aros Coração - Cortador de bolo em formato de coração', 'Tamanhos:\r\n23x5 cm, 26x5 cm e 28x5 cm', 50, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_214139.png', 3, 50, 40, NULL, 'Aluminio', NULL, NULL, NULL),
	(3, 'forma-de-panetone', 'Forma De Panetone', 'Cone Pra Recheio\r\n14x13,5 Com Tampa', 24, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_214330.png', 3, 33, 0, NULL, 'Aluminio', NULL, NULL, NULL),
	(5, 'forminhas-tornado-p', 'FORMINHAS TORNADO P', 'FORMINHAS TORNADO P\r\n12X6 ALUMINIO', 0, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_214922.png', 6, 20, 17, NULL, NULL, NULL, NULL, NULL),
	(6, 'kit-confeiteiro', 'Kit Confeiteiro', '1 Faca fio ondulado\r\n1 fuet\r\n1 espatula liza \r\n25cm com cabo branco', 25, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_214302.png', 1, 75, 73, NULL, 'Inox', NULL, NULL, NULL),
	(8, 'formas-bolo-de-vidro-18x8', 'Formas Bolo De Vidro 18x8', 'Formas Bolo De Vidro\r\n18x8', 45, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_215403.png', 3, 18, 15, NULL, 'Aluminio', NULL, 8, 18),
	(9, 'formas-bolo-de-vidro-20x8', 'Formas Bolo De Vidro 20x8', 'Formas Bolo De Vidro \r\n20x8', 232, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_215403_aK4C9Qh.png', 3, 17, 0, NULL, 'Aluminio', NULL, NULL, NULL),
	(10, 'formas-bolo-de-vidro-22x8', 'Formas Bolo De Vidro 22x8', 'Formas Bolo De Vidro \r\n22x8', 65, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_215403_zIyp34p.png', 3, 25, 21, NULL, 'Aluminio', NULL, NULL, NULL),
	(11, '6-forminhas-suissa-decorada', '6 Forminhas suissa decorada', '6 Forminhas suissa decorada\r\n9x6x4', 74, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_215528.png', 6, 50, 45, NULL, 'Aluminio', NULL, NULL, NULL),
	(12, 'espatula-plastica', 'Espatula Plastica', 'Espatula Plastica Decorativa\r\nTriangulo\r\nRosa E Branca', 0, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_214727.png', 1, 5, 0, NULL, NULL, NULL, NULL, NULL),
	(13, '12-forminhas-coracao', '12 FORMINHAS CORACAO', '12 FORMINHAS CORACAO\r\nBALAO\r\n7X2,5', 15, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_214448.png', 6, 35, 32, NULL, 'Aluminio', NULL, NULL, NULL),
	(14, 'forma-homenagem-papai', 'FORMA HOMENAGEM PAPAI', 'FORMA HOMENAGEM PAPAI\r\n14,3X4,8', 34, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_215244.png', 3, 23, 0, NULL, 'Aluminio', NULL, NULL, NULL),
	(15, 'forma-de-bolo-pudim', 'Forma De Bolo Pudim', 'Forma De Bolo Pudim\r\nTorta Suissa\r\n13x8', 64, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_215336.png', 3, 12, 0, NULL, 'Aluminio', NULL, NULL, NULL),
	(16, 'balerine-decorada-pequena', 'Balerine Decorada Pequena', 'Balerine Decorada Pequena\r\n16x6', 16, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_215639.png', 3, 40, 35, NULL, 'Aluminio', NULL, NULL, NULL),
	(17, 'forma-decorativa-minnie', 'Forma Decorativa Minnie - 35x5', '', 36, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_215944.png', 3, 70, 65, NULL, 'Aluminio', NULL, 5, 35),
	(18, 'forma-artistica-para-bolos-brasil', 'Forma Artística para Bolos Brasil', 'Forma Artística para Bolos Brasil', 45, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_215910.png', 3, 50, 45, NULL, 'Aluminio', NULL, NULL, NULL),
	(19, 'conjunto-de-assadeiras-retangular', 'Conjunto de Assadeiras Retangular', 'Conjunto de Assadeiras Retangular', 45, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_220013.png', 3, 70, 0, NULL, 'Aluminio', NULL, NULL, NULL),
	(20, '12-forminhas-torta-suissa-ou-pudim-mini', '12 Forminhas torta suissa ou pudim mini', '12 Forminhas torta suissa ou pudim mini\r\n0 4 fundo \r\n2,5 altura\r\n5 boca \r\npara bufes', 36, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_220112.png', 6, 30, 25, NULL, 'Aluminio', NULL, NULL, NULL),
	(21, 'jogo-c-tres-formas-de-bolo-redondas', 'Jogo c/ três formas de bolo redondas', 'Jogo c/ três formas de bolo redondas.\r\n\r\nTamanhos:\r\n10x10\r\n15x10\r\n20x10', 84, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_220229.png', 3, 30, 25, NULL, 'Aluminio', NULL, 10, NULL),
	(22, 'conjunto-de-formas', 'Conjunto de formas', 'Conjunto de formas com 3 peças coração', 49, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_220045.png', 3, 40, 33, NULL, 'Aluminio', NULL, NULL, NULL),
	(23, '12-forminhas-canudo', '12 Forminhas canudo', '12 Forminhas canudo', 1, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_215725_Uhhvrqk.png', 1, 15.99, 10.2, NULL, 'Alumínio', NULL, NULL, NULL),
	(24, 'ssds', 'ssds', '', 999, 'produto_imagens/2021/11/Captura_de_tela_2021-09-12_220229_UIcShKu.png', 1, 3, 0, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `produtos_produto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
