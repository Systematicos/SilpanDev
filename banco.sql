-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.22 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando dados para a tabela silpan.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.auth_permission: ~76 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT IGNORE INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
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

-- Copiando dados para a tabela silpan.auth_user: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT IGNORE INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$260000$oLokZ9p3LMbYCHbPAH3miG$ZLvpBicEvzDlNOrJKJaNCiMCQHqxeyCuEc4SoBKMO1E=', '2021-11-04 00:25:49.021615', 1, 'admin', '', '', '', 1, 1, '2021-09-14 01:12:16.734208'),
	(13, 'pbkdf2_sha256$260000$TV6Tk5wt2IrEWBTOFiJEPh$uaO+HP3hJWbfXVHMmMp8xEUE04ckSI4vrjfHXjbXslo=', NULL, 0, 'add', '', '', 'add@add', 0, 1, '2021-09-27 18:17:05.078076'),
	(15, 'pbkdf2_sha256$260000$hW5qDzTQ84K1fkI2yuBE0a$cGCLVTfTAOKv8y/nrPuUdQOopsI2Qg6YdUCss0eCGZE=', NULL, 0, 'addadddd', 'Gyovane', 'Souza', 'adddd@add', 0, 1, '2021-09-27 18:19:36.113764');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.auth_user_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.auth_user_user_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.cliente_cliente: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente_cliente` DISABLE KEYS */;
INSERT IGNORE INTO `cliente_cliente` (`id`, `email`, `nome`, `sobrenome`, `data_nascimento`, `cpf`, `telefone`) VALUES
	(1, 'rafa@gmail.com', 'Rafa', 'Sousa', '2021-10-27', '10958756988', '1265656565'),
	(5, 'rafa@hotmail.com', 'Rafa Oliveira', '', '2021-11-03', '10958756987', '11965875644'),
	(8, 'rafa@outlook.com', 'Rafinha', '', '2021-11-03', '87485688876', '11974586525'),
	(9, 'rafinha@gmail.com', 'Rafa Oliver', '', '2021-11-03', '10958756982', '11965875647');
/*!40000 ALTER TABLE `cliente_cliente` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.cliente_endereco: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente_endereco` DISABLE KEYS */;
INSERT IGNORE INTO `cliente_endereco` (`id`, `tipo`, `numero`, `complemento`, `cep`, `cliente_id`) VALUES
	(1, 'R Emilio Conesa 78', '66', '558 B', '0587569877', 5),
	(2, 'R zero a esquerda ', '58', '85B', '05875030', 8),
	(3, 'oadlvnadlvn', '85', '85B', '0854765988', 9);
/*!40000 ALTER TABLE `cliente_endereco` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.cupom_cupom: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cupom_cupom` DISABLE KEYS */;
/*!40000 ALTER TABLE `cupom_cupom` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.django_admin_log: ~51 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT IGNORE INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
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
	(52, '2021-11-03 23:47:15.268068', '23', '12 Forminhas canudo', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(53, '2021-11-03 23:47:17.548973', '23', '12 Forminhas canudo', 2, '[]', 9, 1),
	(54, '2021-11-03 23:57:34.180547', '22', 'Conjunto de formas', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(55, '2021-11-03 23:57:53.201111', '21', 'Jogo c/ três formas de bolo redondas', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(56, '2021-11-03 23:58:19.211012', '20', '12 Forminhas torta suissa ou pudim mini', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(57, '2021-11-03 23:58:49.792534', '19', 'Conjunto de Assadeiras Retangular', 2, '[{"changed": {"fields": ["Preco marketing"]}}]', 9, 1),
	(58, '2021-11-03 23:59:18.003947', '18', 'Forma Artística para Bolos Brasil', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(59, '2021-11-03 23:59:33.530888', '17', 'Forma Decorativa Minnie', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(60, '2021-11-03 23:59:51.392618', '16', 'Balerine Decorada Pequena', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(61, '2021-11-04 00:00:06.600936', '15', 'Forma De Bolo Pudim', 2, '[{"changed": {"fields": ["Preco marketing"]}}]', 9, 1),
	(62, '2021-11-04 00:00:26.466201', '14', 'FORMA HOMENAGEM PAPAI', 2, '[{"changed": {"fields": ["Preco marketing"]}}]', 9, 1),
	(63, '2021-11-04 00:00:53.956598', '13', '12 FORMINHAS CORACAO', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(64, '2021-11-04 00:01:07.242643', '12', 'Espatula Plastica', 2, '[{"changed": {"fields": ["Preco marketing"]}}]', 9, 1),
	(65, '2021-11-04 00:01:25.385331', '11', '6 Forminhas suissa decorada', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(66, '2021-11-04 00:01:55.175664', '10', 'Formas Bolo De Vidro 22x8', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(67, '2021-11-04 00:02:08.723640', '9', 'Formas Bolo De Vidro 20x8', 2, '[{"changed": {"fields": ["Preco marketing"]}}]', 9, 1),
	(68, '2021-11-04 00:02:23.053228', '8', 'Formas Bolo De Vidro 18x8', 2, '[{"changed": {"fields": ["Preco marketing"]}}]', 9, 1),
	(69, '2021-11-04 00:02:40.191126', '7', 'Fuet Batedor De Ovo', 2, '[{"changed": {"fields": ["Preco marketing"]}}]', 9, 1),
	(70, '2021-11-04 00:03:02.727670', '6', 'Kit Confeiteiro', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(71, '2021-11-04 00:03:21.232771', '5', 'FORMINHAS TORNADO P', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(72, '2021-11-04 00:03:36.717939', '3', 'Forma De Panetone', 2, '[{"changed": {"fields": ["Preco marketing"]}}]', 9, 1),
	(73, '2021-11-04 00:04:02.935037', '2', 'Kit 3 Aros Coração', 2, '[{"changed": {"fields": ["Preco marketing", "Preco marketing promocional"]}}]', 9, 1),
	(74, '2021-11-04 00:04:19.752120', '24', 'Tes', 3, '', 9, 1),
	(75, '2021-11-04 00:08:15.341624', '7', 'Fuet Batedor De Ovo', 3, '', 9, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.django_content_type: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT IGNORE INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
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

-- Copiando dados para a tabela silpan.django_migrations: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT IGNORE INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
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

-- Copiando dados para a tabela silpan.django_session: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT IGNORE INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('3tjx7vp4f43s86s9whe9ifz4hjklj9gx', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1miQZh:V5q-CO1c4s3VjghggCNkklOQ0GXmyGmMDyB1Y6F69Vc', '2021-11-18 00:25:49.163208'),
	('73o7tioh1370m2qqzut8kbjnxtngk0dx', 'e30:1mW6sz:MYlro2p_k_SCUTWru2ClGX_QykzP-w0KkQoKAYpPASE', '2021-10-15 00:58:49.542203'),
	('evacfq10z2h7yqfywzosf55idjs5eszi', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mPxhQ:dy52V1XeXGTCst56wmUtgqtRYQWsHD9pMhZEzl-kT18', '2021-09-28 01:57:28.035054'),
	('fphspd16kxsrpd3xdvex3d5l1n3uux7o', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mW52x:VqfS2xqW9RumPIXEgv0Lz16xiWz0zNVfIKWNz8aW-Xc', '2021-10-14 23:00:59.550275'),
	('fttug3nctwr0eqce1j4to3e9ok5xnrny', 'e30:1mW6tI:_W5RU-Y37WvFoDDX-nU-UzI8Ez7hC6bKXNWpBk3QvMU', '2021-10-15 00:59:08.597650'),
	('gyzrheyvfw59kov9r396mffxasewgd49', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mWijm:46mgWlSTsliKVer_7KfYDP6ve0UbWSNF-du_vtStAj0', '2021-10-16 17:23:50.132716'),
	('j3uyabystpicq6s6vu63cwn7wpn53y27', '.eJxVjs0OwiAQhN-FsyEshbZ49O4zNAvsWlQg6c_J-O62SU30Ot_Ml3mJAddlHNaZpiFFcRYgTr-Zx_CgsoN4x3KrMtSyTMnLvSIPOstrjfS8HN0_wYjzuK11A5qx61lpCwFax5oVhd5aROyNZ-3JukapNrDRpjEOO0tsfFTgwPEmzZT99yXGnIp4fwBv9j41:1mW4np:1oOoZiuLoVACh_y8NKh5JiqmYCsl-Xlicd4HWK0e4Ms', '2021-10-14 22:45:21.129199'),
	('jfvvdk4rzgicqy0t1jme6svkz6k9t0s9', 'e30:1mW6tS:YC5mX77AalD6BxLjdLFg8lX5uzPDMntPd6wzsj6QMc0', '2021-10-15 00:59:18.959555'),
	('m77z20e56n8ygosyxlgfu5o5bruxh32w', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mW574:VMfw2nQvkGSDTuMCskGSYadPXMrNozG8EEq2jXvS5rw', '2021-10-14 23:05:14.648705'),
	('tej4vd3q6xnatcljgift90my9om6aa90', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mapAZ:jWGApg95wFomtPGhWWdykztOHHsMId_MHyGj_oRyyoA', '2021-10-28 01:04:27.252754'),
	('x1cx6le7tyulkgygrzd7z7x37gi3ef7z', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mXYfw:Gqwnz_T7M5MhQGCHrYH-3PvQ40Du-HyKEjqoqDu615c', '2021-10-19 00:51:20.760841'),
	('x1uanj0g5gaku6a3rnzs8ipysp155jif', 'e30:1mW6sg:7hu7K3-mFpKVqJ11yg48SRoeFlHGhME_0ne0aC-razg', '2021-10-15 00:58:30.695743'),
	('z2ebj8fikkfo05dcwt9drw7s3t0ixqbe', '.eJxVjEEOwiAQRe_C2hCYQgsu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWWpx-t4jpQXUH-Y711mRqdV3mKHdFHrTLa8v0vBzu30HBXr41DBoYJ8cKrE569AysKDlrEdGZyBDJ-kGpMbEBMxiPkyU2MSvttWfx_gDVozea:1mPwzm:LvxCI-q9KQDVjMOpwZnGllBYpQClw2qY82mnrGWRONU', '2021-09-28 01:12:22.182865');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.pedido_formadepagamento: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido_formadepagamento` DISABLE KEYS */;
INSERT IGNORE INTO `pedido_formadepagamento` (`id`, `forma_de_pagamento`) VALUES
	(1, 'Cartão de Credito'),
	(3, 'Mercado Pago'),
	(2, 'PIX');
/*!40000 ALTER TABLE `pedido_formadepagamento` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.pedido_itempedido: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido_itempedido` DISABLE KEYS */;
INSERT IGNORE INTO `pedido_itempedido` (`id`, `pedido_id`, `produto_id`, `preco`, `preco_promocional`, `quantidade`, `imagem`, `cor`, `material`, `largura`, `altura`, `comprimento`) VALUES
	(1, 1, 2, 49.9, 0, 1, 'http://127.0.0.1:8000/produto/', 'None', 'Aluminio', 0, 0, 0),
	(2, 1, 11, 49.9, 44.9, 5, 'http://127.0.0.1:8000/produto/', 'None', 'Aluminio', 0, 0, 0),
	(3, 1, 10, 24.9, 21.9, 3, 'http://127.0.0.1:8000/produto/', 'None', 'Aluminio', 0, 0, 0),
	(4, 2, 3, 33, 0, 1, 'http://127.0.0.1:8000/produto/', 'None', 'Aluminio', 0, 0, 0),
	(5, 2, 5, 20, 17, 1, 'http://127.0.0.1:8000/produto/', 'None', 'None', 0, 0, 0),
	(6, 2, 6, 75, 73, 1, 'http://127.0.0.1:8000/produto/', 'None', 'Inox', 0, 0, 0);
/*!40000 ALTER TABLE `pedido_itempedido` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.pedido_pedido: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido_pedido` DISABLE KEYS */;
INSERT IGNORE INTO `pedido_pedido` (`id`, `cliente_id`, `status_id`, `forma_pagamento_id`, `data`, `subtotal`, `desconto`, `cupom_id`, `total`, `transportadora_id`, `frete`, `codigo_rastreio`, `notal_fiscal`, `vendedor_id`, `endereco_entrega_id`) VALUES
	(1, 8, 1, 1, '2021-11-03 20:44:57.456397', 374.09999999999997, 83.9, NULL, 290.19999999999993, NULL, 0, NULL, NULL, 15, 2),
	(2, 9, 1, 3, '2021-11-03 21:13:46.056808', 128, 38, NULL, 90, NULL, 0, NULL, NULL, 15, 3);
/*!40000 ALTER TABLE `pedido_pedido` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.pedido_status: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido_status` DISABLE KEYS */;
INSERT IGNORE INTO `pedido_status` (`id`, `status`) VALUES
	(2, 'Pagamento Aprovado'),
	(4, 'Pagamento Pendente'),
	(3, 'Pagamento Reprovado'),
	(6, 'Pedido Cancelado'),
	(7, 'Pedido Concluido'),
	(5, 'Pedido Enviado'),
	(1, 'Pedido Realizado');
/*!40000 ALTER TABLE `pedido_status` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.pedido_transportadora: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido_transportadora` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_transportadora` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.produtos_categoria: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `produtos_categoria` DISABLE KEYS */;
INSERT IGNORE INTO `produtos_categoria` (`id`, `nome`) VALUES
	(1, 'Acessórios'),
	(2, 'Assadeiras'),
	(3, 'Formas'),
	(4, 'Novidades'),
	(5, 'Formas Decorativas'),
	(6, 'Forminhas');
/*!40000 ALTER TABLE `produtos_categoria` ENABLE KEYS */;

-- Copiando dados para a tabela silpan.produtos_produto: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `produtos_produto` DISABLE KEYS */;
INSERT IGNORE INTO `produtos_produto` (`id`, `slug`, `nome`, `descricao`, `quantidade`, `imagem`, `categoria_id`, `preco_marketing`, `preco_marketing_promocional`, `cor`, `material`, `largura`, `altura`, `comprimento`) VALUES
	(2, 'kit-3-aros-coracao', 'Kit 3 Aros Coração', 'Cortador De Bolo\r\n23cm 26cm 28cm por 5cm altura', 75, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_214139_sw0HNv8.png', 3, 50, 47, NULL, 'Aluminio', NULL, NULL, NULL),
	(3, 'forma-de-panetone', 'Forma De Panetone', 'Cone Pra Recheio\r\n14x13,5 Com Tampa', 68, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_214330.png', 3, 33, 0, NULL, 'Aluminio', NULL, NULL, NULL),
	(5, 'forminhas-tornado-p', 'FORMINHAS TORNADO P', 'FORMINHAS TORNADO P\r\n12X6 ALUMINIO', 35, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_214922.png', 6, 20, 17, NULL, NULL, NULL, NULL, NULL),
	(6, 'kit-confeiteiro', 'Kit Confeiteiro', '1 Faca fio ondulado\r\n1 fuet\r\n1 espatula liza \r\n25cm com cabo branco', 25, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_214302.png', 1, 75, 73, NULL, 'Inox', NULL, NULL, NULL),
	(8, 'formas-bolo-de-vidro-18x8', 'Formas Bolo De Vidro 18x8', 'Formas Bolo De Vidro\r\n18x8', 45, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215403.png', 3, 18, 0, NULL, 'Aluminio', NULL, NULL, NULL),
	(9, 'formas-bolo-de-vidro-20x8', 'Formas Bolo De Vidro 20x8', 'Formas Bolo De Vidro \r\n20x8', 1, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215403_TlLUm2Y.png', 3, 17, 0, NULL, 'Aluminio', NULL, NULL, NULL),
	(10, 'formas-bolo-de-vidro-22x8', 'Formas Bolo De Vidro 22x8', 'Formas Bolo De Vidro \r\n22x8', 65, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215403_VcSCuZC.png', 3, 25, 21, NULL, 'Aluminio', NULL, NULL, NULL),
	(11, '6-forminhas-suissa-decorada', '6 Forminhas suissa decorada', '6 Forminhas suissa decorada\r\n9x6x4', 74, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215528.png', 6, 50, 45, NULL, 'Aluminio', NULL, NULL, NULL),
	(12, 'espatula-plastica', 'Espatula Plastica', 'Espatula Plastica Decorativa\r\nTriangulo\r\nRosa E Branca', 65, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_214727.png', 1, 5, 0, NULL, NULL, NULL, NULL, NULL),
	(13, '12-forminhas-coracao', '12 FORMINHAS CORACAO', '12 FORMINHAS CORACAO\r\nBALAO\r\n7X2,5', 15, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_214448.png', 6, 35, 32, NULL, 'Aluminio', NULL, NULL, NULL),
	(14, 'forma-homenagem-papai', 'FORMA HOMENAGEM PAPAI', 'FORMA HOMENAGEM PAPAI\r\n14,3X4,8', 34, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215244.png', 3, 23, 0, NULL, 'Aluminio', NULL, NULL, NULL),
	(15, 'forma-de-bolo-pudim', 'Forma De Bolo Pudim', 'Forma De Bolo Pudim\r\nTorta Suissa\r\n13x8', 64, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215336.png', 3, 12, 0, NULL, 'Aluminio', NULL, NULL, NULL),
	(16, 'balerine-decorada-pequena', 'Balerine Decorada Pequena', 'Balerine Decorada Pequena\r\n16x6', 16, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215639.png', 3, 40, 35, NULL, 'Aluminio', NULL, NULL, NULL),
	(17, 'forma-decorativa-minnie', 'Forma Decorativa Minnie', 'Forma Decorativa Minnie \r\n35x5alt', 36, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215944.png', 3, 70, 65, NULL, 'Aluminio', NULL, NULL, NULL),
	(18, 'forma-artistica-para-bolos-brasil', 'Forma Artística para Bolos Brasil', 'Forma Artística para Bolos Brasil', 45, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215910.png', 3, 50, 45, NULL, 'Aluminio', NULL, NULL, NULL),
	(19, 'conjunto-de-assadeiras-retangular', 'Conjunto de Assadeiras Retangular', 'Conjunto de Assadeiras Retangular', 45, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_220013.png', 3, 70, 0, NULL, 'Aluminio', NULL, NULL, NULL),
	(20, '12-forminhas-torta-suissa-ou-pudim-mini', '12 Forminhas torta suissa ou pudim mini', '12 Forminhas torta suissa ou pudim mini\r\n0 4 fundo \r\n2,5 altura\r\n5 boca \r\npara bufes', 36, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_220112.png', 6, 30, 25, NULL, 'Aluminio', NULL, NULL, NULL),
	(21, 'jogo-c-tres-formas-de-bolo-redondas', 'Jogo c/ três formas de bolo redondas', 'Jogo c/ três formas de bolo redondas\r\n10,15,20x10alt', 84, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_220229.png', 3, 30, 25, NULL, 'Aluminio', NULL, NULL, NULL),
	(22, 'conjunto-de-formas', 'Conjunto de formas', 'Conjunto de formas com 3 peças coração', 49, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_220045.png', 3, 40, 33, NULL, 'Aluminio', NULL, NULL, NULL),
	(23, '12-forminhas-canudo', '12 Forminhas canudo', '12 Forminhas canudo', 87, 'produto_imagens/2021/09/Captura_de_tela_2021-09-12_215725.png', 1, 15, 10, NULL, 'Aluminio', NULL, NULL, NULL);
/*!40000 ALTER TABLE `produtos_produto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
