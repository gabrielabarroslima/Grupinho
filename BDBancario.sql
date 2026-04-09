CREATE TABLE tipoConta (
  codigo INTEGER  NOT NULL   IDENTITY ,
  tipos VARCHAR(20)    ,
  descricao VARCHAR(200)      ,
PRIMARY KEY(codigo));
GO




CREATE TABLE clientes (
  codigo INTEGER  NOT NULL   IDENTITY ,
  nome VARCHAR(25))    ,
  cpf VARCHAR(14)    ,
  telefone VARCHAR(14)    ,
  rua VARCHAR(25)    ,
  cep VARCHAR(9)    ,
  bairro VARCHAR(15)      ,
PRIMARY KEY(codigo));
GO




CREATE TABLE agencia (
  codigo INTEGER  NOT NULL   IDENTITY ,
  nome VARCHAR(15)    ,
  cnpj VARCHAR()18      ,
PRIMARY KEY(codigo));
GO




CREATE TABLE conta (
  codigo INTEGER  NOT NULL   IDENTITY ,
  clientes_codigo INTEGER  NOT NULL  ,
  agencia_codigo INTEGER  NOT NULL  ,
  tipoConta_codigo INTEGER  NOT NULL  ,
  saldo DECIMAL(10,2)      ,
PRIMARY KEY(codigo, clientes_codigo, agencia_codigo, tipoConta_codigo)      ,
  FOREIGN KEY(clientes_codigo)
    REFERENCES clientes(codigo),
  FOREIGN KEY(agencia_codigo)
    REFERENCES agencia(codigo),
  FOREIGN KEY(tipoConta_codigo)
    REFERENCES tipoConta(codigo));
GO


CREATE INDEX conta_FKIndex1 ON conta (clientes_codigo);
GO
CREATE INDEX conta_FKIndex2 ON conta (agencia_codigo);
GO
CREATE INDEX conta_FKIndex3 ON conta (tipoConta_codigo);
GO


CREATE INDEX IFK_Rel_02 ON conta (clientes_codigo);
GO
CREATE INDEX IFK_Rel_03 ON conta (agencia_codigo);
GO
CREATE INDEX IFK_Rel_04 ON conta (tipoConta_codigo);
GO



