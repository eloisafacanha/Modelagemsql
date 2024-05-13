-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'submissão'
-- 
-- ---

DROP TABLE IF EXISTS `submissão`;
		
CREATE TABLE `submissão` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_camposSubmissão` INTEGER NULL DEFAULT NULL,
  `id_Formulários` INTEGER NULL DEFAULT NULL,
  `dataCriação` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'formularios'
-- 
-- ---

DROP TABLE IF EXISTS `formularios`;
		
CREATE TABLE `formularios` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `título` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'camposSubmissão'
-- 
-- ---

DROP TABLE IF EXISTS `camposSubmissão`;
		
CREATE TABLE `camposSubmissão` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_perguntas` INTEGER NULL DEFAULT NULL,
  `value` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'usuários'
-- 
-- ---

DROP TABLE IF EXISTS `usuários`;
		
CREATE TABLE `usuários` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `usuário` VARCHAR NULL DEFAULT NULL,
  `email` VARCHAR NULL DEFAULT NULL,
  `hashSenha` VARCHAR NULL DEFAULT NULL,
  `saltSenha` VARCHAR NULL DEFAULT NULL,
  `dataCriação` DATETIME NULL DEFAULT NULL,
  `dataAtualização` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'perguntas'
-- 
-- ---

DROP TABLE IF EXISTS `perguntas`;
		
CREATE TABLE `perguntas` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_perfil` INTEGER NULL DEFAULT NULL,
  `pergunta` VARCHAR NULL DEFAULT NULL,
  `tipoPergunta` INTEGER NULL DEFAULT NULL,
  `éNecessário` INTEGER NULL DEFAULT NULL,
  `rótulo` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'opçõesPerguntas'
-- 
-- ---

DROP TABLE IF EXISTS `opçõesPerguntas`;
		
CREATE TABLE `opçõesPerguntas` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_perguntas` INTEGER NULL DEFAULT NULL,
  `opção` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `submissão` ADD FOREIGN KEY (id_camposSubmissão) REFERENCES `camposSubmissão` (`id`);
ALTER TABLE `submissão` ADD FOREIGN KEY (id_Formulários) REFERENCES `formularios` (`id`);
ALTER TABLE `camposSubmissão` ADD FOREIGN KEY (id_perguntas) REFERENCES `perguntas` (`id`);
ALTER TABLE `perguntas` ADD FOREIGN KEY (id_perfil) REFERENCES `formularios` (`id`);
ALTER TABLE `opçõesPerguntas` ADD FOREIGN KEY (id_perguntas) REFERENCES `perguntas` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `submissão` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `formularios` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `camposSubmissão` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `usuários` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `perguntas` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `opçõesPerguntas` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `submissão` (`id`,`id_camposSubmissão`,`id_Formulários`,`dataCriação`) VALUES
-- ('','','','');
-- INSERT INTO `formularios` (`id`,`título`) VALUES
-- ('','');
-- INSERT INTO `camposSubmissão` (`id`,`id_perguntas`,`value`) VALUES
-- ('','','');
-- INSERT INTO `usuários` (`id`,`usuário`,`email`,`hashSenha`,`saltSenha`,`dataCriação`,`dataAtualização`) VALUES
-- ('','','','','','','');
-- INSERT INTO `perguntas` (`id`,`id_perfil`,`pergunta`,`tipoPergunta`,`éNecessário`,`rótulo`) VALUES
-- ('','','','','','');
-- INSERT INTO `opçõesPerguntas` (`id`,`id_perguntas`,`opção`) VALUES
-- ('','','');