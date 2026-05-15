CREATE TABLE tb_filial (
  cd_filial INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  filial CHAR(30) NULL,
  endereco CHAR(30) NULL,
  PRIMARY KEY(cd_filial)
);

CREATE TABLE tb_produto (
  cd_produto INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  produto CHAR(30) NULL,
  valor DECIMAL(8,2) NULL,
  PRIMARY KEY(cd_produto)
);

CREATE TABLE tb_cliente (
  cpf CHAR(11) NOT NULL AUTO_INCREMENT,
  cliente CHAR(30) NULL,
  endereco CHAR(30) NULL,
  PRIMARY KEY(cpf)
);

CREATE TABLE tb_vendedor (
  cd_vendedor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tb_filial_cd_filial INTEGER UNSIGNED NOT NULL,
  vendedor CHAR(30) NULL,
  PRIMARY KEY(cd_vendedor),
  INDEX tb_vendedor_FKIndex1(tb_filial_cd_filial),
  FOREIGN KEY(tb_filial_cd_filial)
    REFERENCES tb_filial(cd_filial)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE tb_venda (
  nota_fiscal INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tb_cliente_cpf CHAR(11) NOT NULL,
  tb_vendedor_cd_vendedor INTEGER UNSIGNED NOT NULL,
  dt_venda DATE NULL,
  vl_total DECIMAL(8,2) NULL,
  PRIMARY KEY(nota_fiscal),
  INDEX tb_venda_FKIndex1(tb_vendedor_cd_vendedor),
  INDEX tb_venda_FKIndex2(tb_cliente_cpf),
  FOREIGN KEY(tb_vendedor_cd_vendedor)
    REFERENCES tb_vendedor(cd_vendedor)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(tb_cliente_cpf)
    REFERENCES tb_cliente(cpf)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE rl_venda_produto (
  tb_venda_nota_fiscal INTEGER UNSIGNED NOT NULL,
  tb_produto_cd_produto INTEGER UNSIGNED NOT NULL,
  qtd INTEGER UNSIGNED NULL,
  vl_parcial DECIMAL(8,2) NULL,
  PRIMARY KEY(tb_venda_nota_fiscal, tb_produto_cd_produto),
  INDEX tb_venda_has_tb_produto_FKIndex1(tb_venda_nota_fiscal),
  INDEX tb_venda_has_tb_produto_FKIndex2(tb_produto_cd_produto),
  FOREIGN KEY(tb_venda_nota_fiscal)
    REFERENCES tb_venda(nota_fiscal)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(tb_produto_cd_produto)
    REFERENCES tb_produto(cd_produto)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);


