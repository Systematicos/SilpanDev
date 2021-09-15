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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.auth_group: ~0 rows (aproximadamente)
DELETE FROM `auth_group`;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.auth_group_permissions: ~0 rows (aproximadamente)
DELETE FROM `auth_group_permissions`;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.auth_permission: ~72 rows (aproximadamente)
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
	(72, 'Can view Cupom', 18, 'view_cupom');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.auth_user: ~1 rows (aproximadamente)
DELETE FROM `auth_user`;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$260000$oLokZ9p3LMbYCHbPAH3miG$ZLvpBicEvzDlNOrJKJaNCiMCQHqxeyCuEc4SoBKMO1E=', '2021-09-14 01:57:28.027074', 1, 'admin', '', '', '', 1, 1, '2021-09-14 01:12:16.734208');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.auth_user_groups: ~0 rows (aproximadamente)
DELETE FROM `auth_user_groups`;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
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
  `usuario_id` int NOT NULL,
  `data_nascimento` date NOT NULL,
  `cpf` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.cliente_cliente: ~0 rows (aproximadamente)
DELETE FROM `cliente_cliente`;
/*!40000 ALTER TABLE `cliente_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_cliente` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.cliente_endereco
CREATE TABLE IF NOT EXISTS `cliente_endereco` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo` varchar(30) NOT NULL,
  `numero` varchar(6) NOT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `cep` varchar(50) NOT NULL,
  `cliente_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.cliente_endereco: ~0 rows (aproximadamente)
DELETE FROM `cliente_endereco`;
/*!40000 ALTER TABLE `cliente_endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_endereco` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.cupom_cupom
CREATE TABLE IF NOT EXISTS `cupom_cupom` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `valor` double NOT NULL,
  `percentual` int unsigned NOT NULL,
  `data_inicio` datetime(6) NOT NULL,
  `data_final` datetime(6) DEFAULT NULL,
  `quantidade` int unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `cupom_cupom_chk_1` CHECK ((`percentual` >= 0)),
  CONSTRAINT `cupom_cupom_chk_2` CHECK ((`quantidade` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.cupom_cupom: ~2 rows (aproximadamente)
DELETE FROM `cupom_cupom`;
/*!40000 ALTER TABLE `cupom_cupom` DISABLE KEYS */;
INSERT INTO `cupom_cupom` (`id`, `nome`, `valor`, `percentual`, `data_inicio`, `data_final`, `quantidade`, `status`) VALUES
	(2, 'systematicos10', 0, 15, '2021-09-14 23:49:57.000000', '2021-09-16 18:00:00.000000', 1, 'ATIVADO'),
	(3, 'systematicos11', 10, 0, '2021-09-14 23:51:01.000000', NULL, 1, 'ATIVADO');
/*!40000 ALTER TABLE `cupom_cupom` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.django_admin_log: ~40 rows (aproximadamente)
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
	(40, '2021-09-15 02:51:13.080552', '3', 'systematicos11', 1, '[{"added": {}}]', 18, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.django_content_type: ~18 rows (aproximadamente)
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.django_migrations: ~28 rows (aproximadamente)
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
	(30, 'cupom', '0004_alter_cupom_data_final', '2021-09-15 02:50:59.662336');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.django_session: ~2 rows (aproximadamente)
DELETE FROM `django_session`;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('evacfq10z2h7yqfywzosf55idjs5eszi', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mPxhQ:dy52V1XeXGTCst56wmUtgqtRYQWsHD9pMhZEzl-kT18', '2021-09-28 01:57:28.035054'),
	('z2ebj8fikkfo05dcwt9drw7s3t0ixqbe', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mPwzm:LvxCI-q9KQDVjMOpwZnGllBYpQClw2qY82mnrGWRONU', '2021-09-28 01:12:22.182865');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.pedido_formadepagamento
CREATE TABLE IF NOT EXISTS `pedido_formadepagamento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `forma_de_pagamento` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forma_de_pagamento` (`forma_de_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.pedido_formadepagamento: ~4 rows (aproximadamente)
DELETE FROM `pedido_formadepagamento`;
/*!40000 ALTER TABLE `pedido_formadepagamento` DISABLE KEYS */;
INSERT INTO `pedido_formadepagamento` (`id`, `forma_de_pagamento`) VALUES
	(3, 'Boleto'),
	(1, 'Cartão de Credito'),
	(2, 'Cartão de Debito'),
	(4, 'Mercado Pago');
/*!40000 ALTER TABLE `pedido_formadepagamento` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.pedido_itempedido
CREATE TABLE IF NOT EXISTS `pedido_itempedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `preco` double NOT NULL,
  `preco_promocional` double NOT NULL,
  `quantidade` int unsigned NOT NULL,
  `imagem` varchar(250) NOT NULL,
  `pedido_id` bigint NOT NULL,
  `produto_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_itempedido_pedido_id_15c6b42d_fk_pedido_pedido_id` (`pedido_id`),
  KEY `pedido_itempedido_produto_id_a5d1c607_fk_produtos_produto_id` (`produto_id`),
  CONSTRAINT `pedido_itempedido_pedido_id_15c6b42d_fk_pedido_pedido_id` FOREIGN KEY (`pedido_id`) REFERENCES `pedido_pedido` (`id`),
  CONSTRAINT `pedido_itempedido_produto_id_a5d1c607_fk_produtos_produto_id` FOREIGN KEY (`produto_id`) REFERENCES `produtos_produto` (`id`),
  CONSTRAINT `pedido_itempedido_chk_1` CHECK ((`quantidade` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.pedido_itempedido: ~0 rows (aproximadamente)
DELETE FROM `pedido_itempedido`;
/*!40000 ALTER TABLE `pedido_itempedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_itempedido` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.pedido_pedido
CREATE TABLE IF NOT EXISTS `pedido_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` datetime(6) NOT NULL,
  `subtotal` double NOT NULL,
  `desconto` double NOT NULL,
  `total` double NOT NULL,
  `frete` double NOT NULL,
  `codigo_rastreio` varchar(50) DEFAULT NULL,
  `notal_fiscal` varchar(70) DEFAULT NULL,
  `cliente_id` bigint NOT NULL,
  `cupom_id` bigint NOT NULL,
  `forma_pagamento_id` bigint NOT NULL,
  `status_id` bigint NOT NULL,
  `transportadora_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo_rastreio` (`codigo_rastreio`),
  KEY `pedido_pedido_cliente_id_4f20d09c_fk_cliente_cliente_id` (`cliente_id`),
  KEY `pedido_pedido_cupom_id_d28c0aa3_fk_cupom_cupom_id` (`cupom_id`),
  KEY `pedido_pedido_forma_pagamento_id_ebf3fa94_fk_pedido_fo` (`forma_pagamento_id`),
  KEY `pedido_pedido_status_id_65de990b_fk_pedido_status_id` (`status_id`),
  KEY `pedido_pedido_transportadora_id_f00e4f7e_fk_pedido_tr` (`transportadora_id`),
  CONSTRAINT `pedido_pedido_cliente_id_4f20d09c_fk_cliente_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cliente_cliente` (`id`),
  CONSTRAINT `pedido_pedido_cupom_id_d28c0aa3_fk_cupom_cupom_id` FOREIGN KEY (`cupom_id`) REFERENCES `cupom_cupom` (`id`),
  CONSTRAINT `pedido_pedido_forma_pagamento_id_ebf3fa94_fk_pedido_fo` FOREIGN KEY (`forma_pagamento_id`) REFERENCES `pedido_formadepagamento` (`id`),
  CONSTRAINT `pedido_pedido_status_id_65de990b_fk_pedido_status_id` FOREIGN KEY (`status_id`) REFERENCES `pedido_status` (`id`),
  CONSTRAINT `pedido_pedido_transportadora_id_f00e4f7e_fk_pedido_tr` FOREIGN KEY (`transportadora_id`) REFERENCES `pedido_transportadora` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.pedido_pedido: ~0 rows (aproximadamente)
DELETE FROM `pedido_pedido`;
/*!40000 ALTER TABLE `pedido_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_pedido` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.pedido_status
CREATE TABLE IF NOT EXISTS `pedido_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.pedido_status: ~7 rows (aproximadamente)
DELETE FROM `pedido_status`;
/*!40000 ALTER TABLE `pedido_status` DISABLE KEYS */;
INSERT INTO `pedido_status` (`id`, `status`) VALUES
	(2, 'Pagamento Aprovado'),
	(4, 'Pagamento Pendente'),
	(3, 'Pagamento Reprovado'),
	(6, 'Pedido Cancelado'),
	(7, 'Pedido Concluido'),
	(5, 'Pedido Enviado'),
	(1, 'Pedido Realizado');
/*!40000 ALTER TABLE `pedido_status` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.pedido_transportadora
CREATE TABLE IF NOT EXISTS `pedido_transportadora` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome_transportadora` varchar(50) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_transportadora` (`nome_transportadora`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.pedido_transportadora: ~3 rows (aproximadamente)
DELETE FROM `pedido_transportadora`;
/*!40000 ALTER TABLE `pedido_transportadora` DISABLE KEYS */;
INSERT INTO `pedido_transportadora` (`id`, `nome_transportadora`, `telefone`) VALUES
	(1, 'Jadlog', '1111111111'),
	(2, 'Correios', '1111111111'),
	(3, 'Loggi', '1111111111');
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
	(4, 'Novidades'),
	(5, 'Formas Decorativas'),
	(6, 'Forminhas');
/*!40000 ALTER TABLE `produtos_categoria` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.produtos_marca
CREATE TABLE IF NOT EXISTS `produtos_marca` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.produtos_marca: ~1 rows (aproximadamente)
DELETE FROM `produtos_marca`;
/*!40000 ALTER TABLE `produtos_marca` DISABLE KEYS */;
INSERT INTO `produtos_marca` (`id`, `nome`) VALUES
	(1, 'Genérica');
/*!40000 ALTER TABLE `produtos_marca` ENABLE KEYS */;

-- Copiando estrutura para tabela silpan.produtos_produto
CREATE TABLE IF NOT EXISTS `produtos_produto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `descricao` longtext,
  `quantidade` int NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `preco_marketing` double NOT NULL,
  `preco_marketing_promocional` double DEFAULT NULL,
  `cor` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `largura` int DEFAULT NULL,
  `altura` int DEFAULT NULL,
  `comprimento` int DEFAULT NULL,
  `categoria_id` bigint NOT NULL,
  `marca_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produtos_produto_categoria_id_4444949b_fk_produtos_categoria_id` (`categoria_id`),
  KEY `produtos_produto_marca_id_d6f750e1_fk_produtos_marca_id` (`marca_id`),
  CONSTRAINT `produtos_produto_categoria_id_4444949b_fk_produtos_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `produtos_categoria` (`id`),
  CONSTRAINT `produtos_produto_marca_id_d6f750e1_fk_produtos_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `produtos_marca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela silpan.produtos_produto: ~9 rows (aproximadamente)
DELETE FROM `produtos_produto`;
/*!40000 ALTER TABLE `produtos_produto` DISABLE KEYS */;
INSERT INTO `produtos_produto` (`id`, `nome`, `descricao`, `quantidade`, `imagem`, `preco_marketing`, `preco_marketing_promocional`, `cor`, `material`, `largura`, `altura`, `comprimento`, `categoria_id`, `marca_id`) VALUES
	(2, 'Kit 3 Aros Coração', 'Cortador De Bolo\r\n23cm 26cm 28cm por 5cm altura', 75, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_214139_sw0HNv8.png', 49.9, 0, NULL, 'Aluminio', NULL, NULL, NULL, 3, 1),
	(3, 'Forma De Panetone', 'Cone Pra Recheio\r\n14x13,5 Com Tampa', 68, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_214330.png', 29.9, 0, NULL, 'Aluminio', NULL, NULL, NULL, 3, 1),
	(5, 'FORMINHAS TORNADO P', 'FORMINHAS TORNADO P\r\n12X6 ALUMINIO', 35, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_214922.png', 19.9, 17.9, NULL, NULL, NULL, NULL, NULL, 6, 1),
	(6, 'Kit Confeiteiro', '1 Faca fio ondulado\r\n1 fuet\r\n1 espatula liza \r\n25cm com cabo branco', 25, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_214302.png', 74.9, 0, NULL, 'Inox', NULL, NULL, NULL, 1, 1),
	(7, 'Fuet Batedor De Ovo', 'Fuet Batedor De Ovo Clares Em Neve\r\n25cm e 30cm\r\nvarias cores', 34, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_214746.png', 24.9, 0, NULL, NULL, NULL, NULL, NULL, 1, 1),
	(8, 'Formas Bolo De Vidro 18x8', 'Formas Bolo De Vidro\r\n18x8', 45, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215403.png', 17.9, 0, NULL, 'Aluminio', NULL, NULL, NULL, 3, 1),
	(9, 'Formas Bolo De Vidro 20x8', 'Formas Bolo De Vidro \r\n20x8', 1, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215403_TlLUm2Y.png', 19.9, 0, NULL, 'Aluminio', NULL, NULL, NULL, 3, 1),
	(10, 'Formas Bolo De Vidro 22x8', 'Formas Bolo De Vidro \r\n22x8', 65, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215403_VcSCuZC.png', 24.9, 21.9, NULL, 'Aluminio', NULL, NULL, NULL, 3, 1),
	(11, '6 Forminhas suissa decorada', '6 Forminhas suissa decorada\r\n9x6x4', 74, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215528.png', 49.9, 44.9, NULL, 'Aluminio', NULL, NULL, NULL, 6, 1);
/*!40000 ALTER TABLE `produtos_produto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
