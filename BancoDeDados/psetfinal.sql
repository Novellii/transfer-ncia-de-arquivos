DROP database IF EXISTS uvv;
DROP USER IF EXISTS Pedro;

CREATE USER Pedro CREATEDB;

CREATE database uvv
    owner Pedro
    TEMPLATE template0
    encoding 'UTF8'
    lc_collate 'pt_BR.UTF-8'
    lc_ctype 'pt_BR.UTF-8'
    allow_connections true;

 \c uvv;

CREATE SCHEMA lojas;

CREATE TABLE    uvv.lojas.produtos (
                produto_id                NUMERIC(38)  NOT NULL,
                nome                      VARCHAR(255) NOT NULL,
                peco_unitario             NUMERIC(10,2),
                detalhes                  BYTEA,
                imagem                    BYTEA,
                imagem_mime_type          VARCHAR(512),
                imagem_arquivo            VARCHAR(512),
                imagem_charset            VARCHAR(512),
                imagem_ultima_atualizacao DATE,
                CONSTRAINT pk_produto_id  PRIMARY KEY (produto_id)
);
COMMENT ON TABLE  uvv.lojas.produtos                           IS 'Esta é a tabela produtos com a Primary Key produto_id, faz uma relação 1:N com pedidos_itens e outra relação 1:N com estoques. Sendo pedidos_itens um relacionamento identificado e estoques um relacionamento não identificado.';
COMMENT ON COLUMN uvv.lojas.produtos.produto_id                IS 'Esta é a PK produto_id que faz relação com a tabela pedidos_itens e a tabela estoques, só aceita números naturais. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.produtos.nome                      IS 'Essa é a coluna nome, ela deverá possuir apenas letras e nenhum número, sendo no máximo 255 caracteres. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.produtos.peco_unitario             IS 'Esta é a coluna preço unitário e só aceita números naturais de no máximo 10 caracteres, sendo que o penúltimo e o último caractere ficarão após a vírgula.';
COMMENT ON COLUMN uvv.lojas.produtos.detalhes                  IS 'Esta é a coluna detalhes, para armazenar a detalhes sobre produtos.';
COMMENT ON COLUMN uvv.lojas.produtos.imagem                    IS 'Esta é a coluna imagem, para armazenar a imagem do produto.';
COMMENT ON COLUMN uvv.lojas.produtos.imagem_mime_type          IS 'Esta é a tabela imagem mime type, especifica o que o corpo do texto descreve, aceitando letras, números e simbolos de no máximo 512 caracteres.';
COMMENT ON COLUMN uvv.lojas.produtos.imagem_arquivo            IS 'Esta é a coluna imagem arquivo, serve para registrar o arquivo da imagem de determinado produto, aceitando números, simbolos e letras de no máximo 512 caracteres.';
COMMENT ON COLUMN uvv.lojas.produtos.imagem_charset            IS 'Esta é o Charset da imagem do produto, um sistema de codificação que faz os computadores reconhecerem um personagem, aceita letras, simbolos e números de no máximo 512 caracteres.';
COMMENT ON COLUMN uvv.lojas.produtos.imagem_ultima_atualizacao IS 'Esta é a coluna contendo a data da última atualização da imagem do produto, aceitando apenas números naturais.';


CREATE TABLE    uvv.lojas.lojas (
                loja_id                   NUMERIC(38)  NOT NULL,
                nome                      VARCHAR(255) NOT NULL,
                endereco_web              VARCHAR(100),
                endereco_fisico           VARCHAR(512),
                latitude                  NUMERIC,
                longitude                 NUMERIC,
                logo BYTEA,
                logo_mime_type            VARCHAR(512),
                logo_arquivo              VARCHAR(512),
                logo_charset              VARCHAR(512),
                logo_ultima_atualizacao   DATE,
                CONSTRAINT pk_loja_id     PRIMARY KEY (loja_id)
);
COMMENT ON TABLE  uvv.lojas.lojas                         IS 'Esta é a tabela lojas com a Primary Key loja_id, faz uma relação 1:N com pedidos, outra relação 1:N com estoques e outra relação 1:N com envios. Todos esses relacionamentos são não identificados.';
COMMENT ON COLUMN uvv.lojas.lojas.loja_id                 IS 'Essa é a coluna loja_id, que serve de PK para a tabela pedidos, a tabela estoques e a tabela envios, deverá conter apenas números naturais de no máximo 38 caracteres. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.lojas.nome                    IS 'Essa é a coluna nome, ela deverá possuir apenas letras e nenhum número, sendo no máximo 255 caracteres e não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.lojas.endereco_web            IS 'Essa é a coluna endereço web, ela poderá possuir letras, simbolos e números, sendo no máximo 100 caracteres.';
COMMENT ON COLUMN uvv.lojas.lojas.endereco_fisico         IS 'Essa é a coluna endereço físico, ela poderá possuir letras, simbolos e números, sendo no máximo 512 caracteres.';
COMMENT ON COLUMN uvv.lojas.lojas.latitude                IS 'Essa é a coluna latitude, ela deverá possuir apenas números.';
COMMENT ON COLUMN uvv.lojas.lojas.longitude               IS 'Essa é a coluna latitude, ela deverá possuir apenas números.';
COMMENT ON COLUMN uvv.lojas.lojas.logo                    IS 'Esta é a coluna logo, para armazenar a imagem da logo da empresa.';
COMMENT ON COLUMN uvv.lojas.lojas.logo_mime_type          IS 'Esta é a tabela logo mime type, especifica o que o corpo do texto descreve, aceitando letras, números e simbolos de no máximo 512 caracteres.';
COMMENT ON COLUMN uvv.lojas.lojas.logo_arquivo            IS 'Esta é a coluna logo arquivo, serve para registrar o arquivo da logo de determinada loja, aceitando números, simbolos e letras de no máximo 512 caracteres.';
COMMENT ON COLUMN uvv.lojas.lojas.logo_charset            IS 'Esta é o Charset da logo, um sistema de codificação que faz os computadores reconhecerem um personagem, aceita letras, simbolos e números de no máximo 512 caracteres.';
COMMENT ON COLUMN uvv.lojas.lojas.logo_ultima_atualizacao IS 'Esta é a coluna contendo a data da última atualização da logo, aceitando apenas números naturais.';


CREATE TABLE    uvv.lojas.estoque_id (
                estoque_id                NUMERIC(38) NOT NULL,
                loja_id                   NUMERIC(38) NOT NULL,
                produto_id                NUMERIC(38) NOT NULL,
                quantidade                NUMERIC(38) NOT NULL,
                CONSTRAINT pk_estoque_id  PRIMARY KEY (estoque_id)
);
COMMENT ON TABLE  uvv.lojas.estoque_id            IS 'Esta é a tabela estoques com a Primary Key estoque_id, com uma Foreign Key loja_id e outra Foreign Key produto_id faz uma relação N:1 com produtos e outra relação N:1 com lojas.';
COMMENT ON COLUMN uvv.lojas.estoque_id.estoque_id IS 'Esta é a PK estoque_id, deverá conter apenas números naturais de no máximo 38 caracteres Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.estoque_id.loja_id    IS 'Esta é a coluna loja_id e é FK originada da tabela lojas, apenas aceita números naturais de no máximo 38 caracteres. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.estoque_id.produto_id IS 'Esta é a coluna produto_id e é FK da tabela produtos, só aceita números naturais de no máximo 38 caracteres. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.estoque_id.quantidade IS 'Esta é a coluna quantidade, só aceita números naturais de no máximo 38 caracteres. Não pode ser nula.';


CREATE TABLE    uvv.lojas.clientes (
                cliente_id                NUMERIC(38)  NOT NULL,
                email                     VARCHAR(255) NOT NULL,
                nome                      VARCHAR(255) NOT NULL,
                telefone1                 VARCHAR(20),
                telefone2                 VARCHAR(20),
                telefone3                 VARCHAR(20),
                CONSTRAINT pk_cliente_id  PRIMARY KEY (cliente_id)
);
COMMENT ON TABLE  uvv.lojas.clientes            IS 'Esta é a tabela clientes com a Primary Key cliente_id. Faz uma relação 1:N entre as tabelas pedidos e outra relação 1:N com a tabela envios, ambos relacionamentos não identificados.';
COMMENT ON COLUMN uvv.lojas.clientes.cliente_id IS 'Esta coluna representa o ID dos Clientes e é uma PK para a tabela pedidos e a tabela envios, só aceitando valores numéricos naturais de no máximo 38 caracteres. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.clientes.email      IS 'Esta é a coluna Email, ela poderá possuir letras, símbolos e números de no máximo 255 caracteres. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.clientes.nome       IS 'Essa é a coluna nome, ela deverá possuir apenas letras e nenhum número, sendo no máximo 255 caracteres. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.clientes.telefone1  IS 'Essa é a coluna telefone, que deverá conter apenas números naturais de no máximo 20 caracteres.';
COMMENT ON COLUMN uvv.lojas.clientes.telefone2  IS 'Essa é a coluna telefone, que deverá conter apenas números naturais de no máximo 20 caracteres.';
COMMENT ON COLUMN uvv.lojas.clientes.telefone3  IS 'Essa é a coluna telefone, que deverá conter apenas números naturais de no máximo 20 caracteres.';


CREATE TABLE    uvv.lojas.envios (
                envio_id                  NUMERIC(38)  NOT NULL,
                loja_id                   NUMERIC(38)  NOT NULL,
                cliente_id                NUMERIC(38)  NOT NULL,
                endereco_entrega          VARCHAR(512) NOT NULL,
                status                    VARCHAR(15)  NOT NULL,
                CONSTRAINT pk_envio_id    PRIMARY KEY  (envio_id)
);
COMMENT ON TABLE uvv.lojas.envios                   IS 'Esta é a tabela envios com a Primary Key envio_id, Foreign Key loja_id e outra Foreign Key cliente_id, faz uma relação N:1 com clientes, uma relação N:1 com lojas, além de uma relação 0:N com pedidos_itens. Todos esses relacionamentos são não identificados.';
COMMENT ON COLUMN uvv.lojas.envios.envio_id         IS 'Essa é a coluna envio_id, que serve de PK para a tabela pedidos_itens, deverá conter apenas números naturais de no máximo 38 caracteres. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.envios.loja_id          IS 'Esta é a coluna loja_id que é uma FK da tabela lojas, tendo no máximo 38 caracteres e podendo apenas ser números naturais. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.envios.cliente_id       IS 'Esta é a coluna cliente_id que é uma FK da tabela clientes e só aceita números naturais de no máximo 38 caracteres. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.envios.endereco_entrega IS 'Esta é a coluna endreço de entrega, podendo aceitar números, letras e símbolos sendo no máximo de 512 caracteres. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.envios.status           IS 'Esta é a coluna Status, que deverá aceitar apenas valores como CRIADO, ENVIADO, TRANSITO e ENTREGUE de no máximo 15 caracteres. Não pode ser nula.';


CREATE TABLE    uvv.lojas.pedidos (
                pedido_id                 NUMERIC(38) NOT NULL,
                data_hora                 TIMESTAMP   NOT NULL,
                cliente_id                NUMERIC(38) NOT NULL,
                status                    VARCHAR(15) NOT NULL,
                loja_id                   NUMERIC(38) NOT NULL,
                CONSTRAINT pk_pedido_id   PRIMARY KEY (pedido_id)
);
COMMENT ON TABLE  uvv.lojas.pedidos            IS 'Esta é a tabela pedidos com a Primary Key pedido_id, uma Foreign Key cliente_id e outra Foreign Key loja_id. Faz uma relação N:1 com a tabela clientes, outra relação N:1 com a tabela lojas e 1:N com a tabela pedidos_itens, sendo que os relacionamentos entre clientes e lojas são não identificados e pedidos itens é um relacionamento identificado.';
COMMENT ON COLUMN uvv.lojas.pedidos.pedido_id  IS 'Esta é a coluna pedido_id, é uma PK e faz um relacionamento  com a tabela pedidos_itens, sendo no máximo 38 caracteres. Não pode ser nulo.';
COMMENT ON COLUMN uvv.lojas.pedidos.data_hora  IS 'Esta é a coluna data e hora, serve para registar a data e a hora dos produtos, contendo apenas números naturais. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.pedidos.cliente_id IS 'Esta coluna representa o ID dos Clientes e é uma FK da tabela clientes, só aceitando valores numéricos naturais de no máximo 38 caracteres. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.pedidos.status     IS 'Esta é a coluna status, podendo conter no máximo 15 caracteres e apenas contendo as palavras: CANCELADO, COMPLETO, ABERTO, PAGO, REEMBOLSADO e ENVIADO, não contendo números e simbolos. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.pedidos.loja_id    IS 'Esta é a coluna loja_id e poderá conter apenas números de no máximo 38 caracteres, além de ser FK da tabela lojas. Não pode ser nula.';


CREATE TABLE    uvv.lojas.pedidos_itens (
                pedido_id                      NUMERIC(38)   NOT NULL,
                produto_id                     NUMERIC(38)   NOT NULL,
                numero_da_linha                NUMERIC(38)   NOT NULL,
                preco_unitario                 NUMERIC(10,2) NOT NULL,
                quantidade                     NUMERIC(38)   NOT NULL,
                envio_id                       NUMERIC(38),
                CONSTRAINT pk_pedidoproduto_id PRIMARY KEY   (pedido_id, produto_id)
);
COMMENT ON TABLE  uvv.lojas.pedidos_itens                 IS 'Esta é a tabela pedidos_itens com a Primary Key e Foreign Key pedido_id, derivada da tabela pedidos, outra Primary Key e Foreign Key produto_id, derivada da tabela produtos, uma Foreign Key envio_id. Faz uma relação N:1 com a tabela pedidos, outra relação N:1 com produtos, e uma relação N:0 com a tabela envios, sendo produtos e pedidos relacionamentos identificados enquanto o relacionamento com envios é não identificado.';
COMMENT ON COLUMN uvv.lojas.pedidos_itens.pedido_id       IS 'Essa é a coluna pedido_id que é uma PFK originada de um relacionamento identificado da coluna pedidos, só aceita números naturais e não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.pedidos_itens.produto_id      IS 'Essa é a coluna produto_id que é uma PFK originada de um relacionamento identificado da coluna produtos, só aceita números naturais. Não pode ser nula.';
COMMENT ON COLUMN uvv.lojas.pedidos_itens.numero_da_linha IS 'Esta é a coluna numero da linha e só aceita números naturais de no máximo 38 caracteres. Não pode ser nula';
COMMENT ON COLUMN uvv.lojas.pedidos_itens.preco_unitario  IS 'Esta é a coluna numero do preço unitário e só aceita números naturais de no máximo 10 caracteres, sendo que o penúltimo e o último caractere ficarão após a vírgula. Não pode ser nulo.';
COMMENT ON COLUMN uvv.lojas.pedidos_itens.quantidade      IS 'Esta é a coluna quantidade e aceita números naturais de no máximo 38 caracteres, e não pode ser negativo. Não pode ser nulo.';
COMMENT ON COLUMN uvv.lojas.pedidos_itens.envio_id        IS 'Esta é a coluna envio id e é FK da tabela envios e só aceita números naturais de no máximo 38 caracteres.';


ALTER TABLE uvv.lojas.estoque_id    ADD CONSTRAINT produtos_estoque_id_fk
FOREIGN KEY                      (produto_id)
REFERENCES uvv.lojas.produtos       (produto_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE uvv.lojas.pedidos_itens ADD CONSTRAINT produtos_pedidos_itens_fk
FOREIGN KEY                      (produto_id)
REFERENCES uvv.lojas.produtos       (produto_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE uvv.lojas.pedidos       ADD CONSTRAINT lojas_pedidos_fk
FOREIGN KEY                                     (loja_id)
REFERENCES                       uvv.lojas.lojas   (loja_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE uvv.lojas.estoque_id    ADD CONSTRAINT lojas_estoque_id_fk
FOREIGN KEY                                     (loja_id)
REFERENCES                       uvv.lojas.lojas   (loja_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE uvv.lojas.envios        ADD CONSTRAINT lojas_envios_fk
FOREIGN KEY                                     (loja_id)
REFERENCES                       uvv.lojas.lojas   (loja_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE uvv.lojas.pedidos       ADD CONSTRAINT  clientes_pedidos_fk
FOREIGN KEY                                     (cliente_id)
REFERENCES                       uvv.lojas.clientes (cliente_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE uvv.lojas.envios        ADD CONSTRAINT  clientes_envios_fk
FOREIGN KEY                                     (cliente_id)
REFERENCES                       uvv.lojas.clientes (cliente_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE uvv.lojas.pedidos_itens ADD CONSTRAINT envios_pedidos_itens_fk
FOREIGN KEY                                     (envio_id)
REFERENCES                       uvv.lojas.envios  (envio_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE uvv.lojas.pedidos_itens ADD CONSTRAINT pedidos_pedidos_itens_fk
FOREIGN KEY                                           (pedido_id)
REFERENCES                          uvv.lojas.pedidos (pedido_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
