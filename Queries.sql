-- ---
-- Table 'submissão'
-- 
-- ---

DROP TABLE IF EXISTS submissão;
		
CREATE TABLE submissão (
  id SERIAL PRIMARY KEY,
  id_camposSubmissão INTEGER,
  id_Formulários INTEGER,
  dataCriação TIMESTAMP
);

-- ---
-- Table 'formularios'
-- 
-- ---

DROP TABLE IF EXISTS formularios;
		
CREATE TABLE formularios (
  id SERIAL PRIMARY KEY,
  título VARCHAR
);

-- ---
-- Table 'camposSubmissão'
-- 
-- ---

DROP TABLE IF EXISTS camposSubmissão;
		
CREATE TABLE camposSubmissão (
  id SERIAL PRIMARY KEY,
  id_perguntas INTEGER,
  value VARCHAR
);

-- ---
-- Table 'usuários'
-- 
-- ---

DROP TABLE IF EXISTS usuários;
		
CREATE TABLE usuários (
  id SERIAL PRIMARY KEY,
  usuário VARCHAR,
  email VARCHAR,
  hashSenha VARCHAR,
  saltSenha VARCHAR,
  dataCriação TIMESTAMP,
  dataAtualização TIMESTAMP
);

-- ---
-- Table 'perguntas'
-- 
-- ---

DROP TABLE IF EXISTS perguntas;
		
CREATE TABLE perguntas (
  id SERIAL PRIMARY KEY,
  id_perfil INTEGER,
  pergunta VARCHAR,
  tipoPergunta INTEGER,
  éNecessário INTEGER,
  rótulo VARCHAR
);

-- ---
-- Table 'opçõesPerguntas'
-- 
-- ---

DROP TABLE IF EXISTS opçõesPerguntas;
		
CREATE TABLE opçõesPerguntas (
  id SERIAL PRIMARY KEY,
  id_perguntas INTEGER,
  opção VARCHAR
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE submissão ADD CONSTRAINT fk_camposSubmissão FOREIGN KEY (id_camposSubmissão) REFERENCES camposSubmissão (id);
ALTER TABLE submissão ADD CONSTRAINT fk_Formulários FOREIGN KEY (id_Formulários) REFERENCES formularios (id);
ALTER TABLE camposSubmissão ADD CONSTRAINT fk_perguntas FOREIGN KEY (id_perguntas) REFERENCES perguntas (id);
ALTER TABLE perguntas ADD CONSTRAINT fk_formularios FOREIGN KEY (id_perfil) REFERENCES formularios (id);
ALTER TABLE opçõesPerguntas ADD CONSTRAINT fk_perguntas FOREIGN KEY (id_perguntas) REFERENCES perguntas (id);
