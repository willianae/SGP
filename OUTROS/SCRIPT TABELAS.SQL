﻿/*
SISTEMA DE GESTÃO DE PEDIDOS - CITA

Loja
Fornecedor
Pedido
  - Parcelas
  - Produtos
Baixa

*/

/* -- CRIAÇÃO DA BASE DE DADOS
CREATE DATABASE rwsoft_pedido
  WITH ENCODING='UTF8'
       OWNER=postgres
       CONNECTION LIMIT=-1;
*/	   

CREATE TABLE usuario
(
  codigo bigserial NOT NULL,
  nome varchar(60) NOT NULL,
  login varchar(20) NOT NULL,
  senha varchar(20) NOT NULL,
  nivel integer DEFAULT 0,
  PRIMARY KEY (codigo)
);
	   

create table loja
(
codigo bigserial not null,
descricao varchar(50) not null,
flg_principal char(1),
primary key(codigo),
constraint chk_loja_principal check (flg_principal in ('S','N'))
);

comment on column loja.flg_principal is 'S - SIM, N - NÃO';

create table fornecedor
(
codigo bigserial not null,
razao_social varchar(50),
cpf_cnpj varchar(16),
inscricao_estadual varchar(20),
rua varchar(50),
numero varchar(10),
complemento varchar(20),
bairro varchar(30),
cidade varchar(50),
estado char(2),
cep varchar(9),
fone varchar(12),
email varchar(50),
primary key (codigo)
);

create table pedido 
(
codigo bigserial not null,
cod_fornecedor integer not null,
cod_loja integer not null,
data_pedido date,
data_prev_faturamento date,

status char(1) default 'A', 
qtd_parcelas integer not null, 
parcelas_txt varchar(50), --('30/60/190', '01/14/28', etc)
valor_pedido double precision,
valor_desconto1 double precision,
valor_desconto2 double precision,
primary key(codigo),
foreign key (cod_fornecedor) references fornecedor(codigo),
foreign key (cod_loja) references loja(codigo),
constraint chk_pedido_status check (status in ('A','F'))
);

comment on column pedido.status is  '(A- Aberto (Quando o pedido não teve, ou teve baixas parciais, mas ainda restam produtos a receber), F - Finalizado)';


create table parcela
(
codigo bigserial not null,
cod_pedido integer not null,
data_vencimento date,
valor_parcela double precision,
primary key (codigo)
);

create table produto
(
codigo bigserial not null,
cod_pedido integer not null,
referencia varchar(20),
descricao varchar(100),
valor_unitario double precision,
valor_pdu double precision, --(preço sugerido pela fabrica)
quantidade integer,
valor_total double precision,
flg_recebido char(1) default 'N', 
qtd_recebido integer DEFAULT 0,
primary key(codigo),
foreign key(cod_pedido) references pedido(codigo),
constraint chk_produto_recebido check (flg_recebido in ('S','N'))
);

comment on column produto.flg_recebido is '(N - Não recebido ou recebido parcialmente, S - Recebido. Será alterado para S quando for dada baixa)';

create table baixa(
codigo bigserial not null,
cod_pedido integer not null,
tipo char(1) not null,
data_baixa date,
nota_fiscal VARCHAR(20),
data_emissao_nf DATE,
primary key(codigo),
foreign key(cod_pedido) references pedido(codigo),
constraint chk_baixa_tipo check (tipo in ('T','P'))
);

comment on column baixa.tipo is 'T - TOTAL, P - PARCIAL';

CREATE TABLE empresa
(
CODIGO INTEGER,
razao_social varchar(80),
nome varchar(80),
naturalidade varchar(80),
pai varchar (80),
mae varchar(80),
dataNascimento date,
logradouro varchar(80),
numero varchar(10),
bairro varchar(80),
cidade varchar(80),
rg varchar(20),
cidade_emp varchar(80),
uf_emp varchar(2),
profissao varchar(50),
LOGO VARCHAR(255),
UF VARCHAR(2),
TELEFONE_CELULAR VARCHAR(15),
TELEFONE_FIXO VARCHAR(15)
);