CREATE TABLE aluno (
  alu_codigo SMALLINT NOT NULL,
  alu_cid_codigo SMALLINT NOT NULL,
  alu_nome VARCHAR(45), 
  alu_sobrenome VARCHAR(45), 
  alu_endereco VARCHAR(100), 
  alu_numero VARCHAR(20),
  alu_bairro VARCHAR(100),  
  alu_cep VARCHAR(8), 
  alu_rg VARCHAR(9), 
  alu_cpf VARCHAR(11), 
  alu_sexo CHAR(1), 
  alu_foto VARCHAR(255), 
  alu_telefone VARCHAR(11), 
  alu_celular VARCHAR(11),
  alu_status CHAR(1),  
  alu_pla_codigo SMALLINT NOT NULL,
  alu_dtvenc SMALLINT,
  alu_cobrar CHAR(1),
  PRIMARY KEY(alu_codigo)
);

CREATE TABLE planos (
  pla_codigo SMALLINT NOT NULL,
  pla_desc VARCHAR(255),
  pla_valor NUMERIC(15,2),
  PRIMARY KEY(pla_codigo)
);

CREATE TABLE cidade (
  cid_codigo SMALLINT NOT NULL,
  cid_uf_codigo SMALLINT NOT NULL,
  cid_nome VARCHAR(255),
  PRIMARY KEY(cid_codigo)
);

CREATE TABLE uf (
  uf_codigo SMALLINT NOT NULL,
  uf_nome VARCHAR(100),
  PRIMARY KEY(uf_codigo)
);

CREATE TABLE mensalidade (
  men_codigo SMALLINT NOT NULL,
  men_alu_codigo SMALLINT NOT NULL,
  men_datapg DATE,
  men_status CHAR (1),
  men_valor NUMERIC(15,2),
  PRIMARY KEY(men_codigo)
);

CREATE TABLE funcionario (
  fun_codigo SMALLINT NOT NULL,
  fun_cid_codigo SMALLINT NOT NULL,
  fun_car_codigo SMALLINT NOT NULL,
  fun_nome VARCHAR(45),
  fun_sobrenome VARCHAR(45),
  fun_endereco VARCHAR(100),
  fun_bairro VARCHAR(100),
  fun_numero VARCHAR(20),
  fun_cep VARCHAR(8),
  fun_rg VARCHAR(9),
  fun_cpf VARCHAR(11),
  fun_sexo CHAR(1),
  fun_telefone VARCHAR(11),
  fun_login VARCHAR(15),
  fun_senha VARCHAR(20),
  fun_status CHAR(1),
  fun_celular VARCHAR(11),
  PRIMARY KEY(fun_codigo)
);

CREATE TABLE CARGO (
  car_codigo SMALLINT NOT NULL,
  car_nome VARCHAR(100),
  PRIMARY KEY(car_codigo)
);

CREATE TABLE acesso (
  ace_fun_codigo SMALLINT NOT NULL,
  ace_for_codigo SMALLINT NOT NULL,
  PRIMARY KEY(ace_fun_codigo, ace_for_codigo)
);

CREATE TABLE formularios (
  for_codigo SMALLINT NOT NULL,
  for_nome VARCHAR(100),
  PRIMARY KEY(for_codigo)
);

alter table CIDADE add constraint FK_CIDADE_UF foreign key (CID_UF_CODIGO) references UF(UF_CODIGO);
alter table ALUNO add constraint FK_CIDADE_ALUNO foreign key (ALU_CID_CODIGO) references CIDADE(CID_CODIGO);
alter table ALUNO add constraint FK_ALUNO_PLANOS foreign key (ALU_PLA_CODIGO) references PLANOS(PLA_CODIGO);
alter table FUNCIONARIO add constraint FK_FUNCIONARIO_CIDADE foreign key (FUN_CID_CODIGO) references CIDADE(CID_CODIGO);
alter table FUNCIONARIO add constraint FK_FUNCIONARIO_CARGO foreign key (FUN_CAR_CODIGO) references CARGO(CAR_CODIGO);
alter table ACESSO add constraint FK_ACESSO_FUNCIONARIO foreign key (ACE_FUN_CODIGO) references FUNCIONARIO(FUN_CODIGO);
alter table ACESSO add constraint FK_ACESSO_FORMULARIO foreign key (ACE_FOR_CODIGO) references FORMULARIOS(FOR_CODIGO);
alter table MENSALIDADE add constraint FK_MENSALIDADE_ALUNO foreign key (MEN_ALU_CODIGO) references ALUNO(ALU_CODIGO);

--INSERTS
INSERT INTO uf (uf_codigo, uf_nome) VALUES (1, 'AL');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (2, 'AC');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (3, 'AP');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (4, 'AM');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (5, 'BA');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (6, 'CE');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (7, 'DF');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (8, 'ES');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (9, 'GO');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (10, 'MA');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (11, 'MG');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (12, 'MS');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (13, 'MG');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (14, 'PA');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (15, 'PB');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (16, 'PR');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (17, 'PE');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (18, 'PI');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (19, 'RJ');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (20, 'RN');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (21, 'RS');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (22, 'RO');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (23, 'RR');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (24, 'SC');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (25, 'SP');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (26, 'SE');
INSERT INTO uf (uf_codigo, uf_nome) VALUES (27, 'TO');

INSERT INTO CIDADE (CID_CODIGO, CID_UF_CODIGO, CID_NOME) VALUES (1, 25, 'Americana');

INSERT INTO FUNCIONARIO (FUN_CODIGO, FUN_CID_CODIGO, FUN_CAR_CODIGO, FUN_NOME, FUN_SOBRENOME, FUN_ENDERECO, FUN_NUMERO, FUN_CEP, FUN_RG, FUN_CPF, FUN_SEXO, FUN_TELEFONE, FUN_LOGIN, FUN_SENHA, FUN_STATUS) VALUES (1, 1, 1, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 'admin', 'A');

INSERT INTO FORMULARIOS (FOR_CODIGO, FOR_NOME) VALUES (1, 'F_Cargo');
INSERT INTO FORMULARIOS (FOR_CODIGO, FOR_NOME) VALUES (2, 'F_Cidade');
INSERT INTO FORMULARIOS (FOR_CODIGO, FOR_NOME) VALUES (3, 'F_ControleAcesso');
INSERT INTO FORMULARIOS (FOR_CODIGO, FOR_NOME) VALUES (4, 'F_Planos');
INSERT INTO FORMULARIOS (FOR_CODIGO, FOR_NOME) VALUES (5, 'F_Mensalidade');
INSERT INTO FORMULARIOS (FOR_CODIGO, FOR_NOME) VALUES (6, 'F_Aluno');
INSERT INTO FORMULARIOS (FOR_CODIGO, FOR_NOME) VALUES (7, 'F_Funcionario');
INSERT INTO FORMULARIOS (FOR_CODIGO, FOR_NOME) VALUES (8, 'F_RelHistoricoAluno');
INSERT INTO FORMULARIOS (FOR_CODIGO, FOR_NOME) VALUES (9, 'F_Monitor');

INSERT INTO ACESSO (ACE_FUN_CODIGO, ACE_FOR_CODIGO) VALUES (1, 1);
INSERT INTO ACESSO (ACE_FUN_CODIGO, ACE_FOR_CODIGO) VALUES (1, 2);
INSERT INTO ACESSO (ACE_FUN_CODIGO, ACE_FOR_CODIGO) VALUES (1, 3);
INSERT INTO ACESSO (ACE_FUN_CODIGO, ACE_FOR_CODIGO) VALUES (1, 4);
INSERT INTO ACESSO (ACE_FUN_CODIGO, ACE_FOR_CODIGO) VALUES (1, 5);
INSERT INTO ACESSO (ACE_FUN_CODIGO, ACE_FOR_CODIGO) VALUES (1, 6);
INSERT INTO ACESSO (ACE_FUN_CODIGO, ACE_FOR_CODIGO) VALUES (1, 7);
INSERT INTO ACESSO (ACE_FUN_CODIGO, ACE_FOR_CODIGO) VALUES (1, 8);
INSERT INTO ACESSO (ACE_FUN_CODIGO, ACE_FOR_CODIGO) VALUES (1, 9);

INSERT INTO ALUNO (ALU_CODIGO, ALU_CID_CODIGO, ALU_NOME, ALU_SOBRENOME, ALU_ENDERECO, ALU_NUMERO, ALU_CEP, ALU_RG, ALU_CPF, ALU_SEXO, ALU_FOTO, ALU_TELEFONE, ALU_CELULAR, ALU_PLA_CODIGO, ALU_STATUS, ALU_DTVENC) VALUES (1, 1, 'Aluno', NULL, NULL, NULL, NULL, NULL, NULL, 'M', NULL, NULL, NULL, 1, 'A', NULL);

CREATE OR ALTER TRIGGER ALUNO_AI0 FOR ALUNO
ACTIVE AFTER INSERT POSITION 0
AS
begin
    INSERT INTO MENSALIDADE
        (MEN_CODIGO, MEN_ALU_CODIGO, MEN_DATAPG, MEN_STATUS, MEN_VALOR)
    VALUES
        ( (SELECT COALESCE(MAX(MEN_CODIGO),0) +1 from MENSALIDADE), new.alu_codigo, current_date, 'A', (select PLA_VALOR from planos where pla_codigo = new.alu_pla_codigo));
end;

CREATE OR ALTER TRIGGER FUNCIONARIO_BD0 FOR FUNCIONARIO
ACTIVE BEFORE DELETE POSITION 0
AS
begin
	delete from acesso where ace_fun_codigo = old.fun_codigo;
end;
