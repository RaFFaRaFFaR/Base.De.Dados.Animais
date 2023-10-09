-- Neste bloco, você está criando uma tabela chamada 'animais'. A tabela possui cinco colunas: 'ID' (um número inteiro único que é a chave primária da tabela), 'NOME' (uma string de até 80 caracteres), 'DATA_DE_NASCIMENTO' (uma data), 'PESO' (um número decimal com até 2 casas decimais) e 'COR' (uma string de até 80 caracteres).

CREATE TABLE animais (
    ID                  INT PRIMARY KEY,
    NOME                VARCHAR(80),
    DATA_DE_NASCIMENTO  DATE,
    PESO                DECIMAL(10,2),
    COR                 VARCHAR(80)
);

-- Aqui, você está criando uma tabela chamada 'especies'. Esta tabela também tem três colunas: 'ID' (um número inteiro único que é a chave primária e é autoincrementado), 'Nome' (uma string de até 255 caracteres e não pode ser nula) e 'Descricao' (uma string de até 255 caracteres).

CREATE TABLE especies (
    ID                 INT PRIMARY KEY AUTO_INCREMENT,
    Nome               VARCHAR(255) NOT NULL,
    Descricao          VARCHAR (255)
    
);

-- Neste trecho, você está inserindo dados na tabela 'especies'. Cada linha representa uma espécie com um ID, um nome e uma descrição associada.

INSERT INTO especies (ID, Nome, Descricao) VALUES (1, 'gato', 'Animal de estimação felino');
INSERT INTO especies (ID, Nome, Descricao) VALUES (2, 'cachorro', 'Animal de estimação canino');
INSERT INTO especies (ID, Nome, Descricao) VALUES (3, 'reptil', 'Animal de estimação réptil');


-- Aqui, você está inserindo dados na tabela 'animais'. Cada linha representa um animal com um ID, um nome, uma data de nascimento, um peso e uma cor associada.

INSERT INTO animais VALUES (1, 'Ágata', '2015-04-09', 13.9, 'branco');
INSERT INTO animais VALUES (2, 'Félix', '2016-06-06', 14.3, 'preto');
INSERT INTO animais VALUES (3, 'Tom', '2013-02-08', 11.2, 'azul');
INSERT INTO animais VALUES (4, 'Garfield', '2015-07-06', 17.1, 'laranja');
INSERT INTO animais VALUES (5, 'Frajola', '2013-08-01', 13.7, 'preto');
INSERT INTO animais VALUES (6, 'Manda-chuva', '2012-02-03', 12.3, 'amarelo');
INSERT INTO animais VALUES (7, 'Snowball', '2014-04-06', 13.2, 'preto');
INSERT INTO animais VALUES (10, 'Agata', '2015-08-03', 11.9, 'azul');
INSERT INTO animais VALUES (11, 'Gato de Botas', '2012-12-10', 11.6, 'amarelo');
INSERT INTO animais VALUES (12, 'Kitty', '2020-04-06', 11.6, 'amarelo');
INSERT INTO animais VALUES (13, 'Milu', '2012-01-03', 12.3, 'amarelo');
INSERT INTO animais VALUES (14, 'Pluto', '2013-02-04', 17.9, 'branco');
INSERT INTO animais VALUES (15, 'Pateta', '2015-05-01', 17.7, 'preto');
INSERT INTO animais VALUES (16, 'Snoopy', '2013-07-02', 18.2, 'branco');
INSERT INTO animais VALUES (17, 'Rex', '2019-11-03', 19.7, 'bege');
INSERT INTO animais VALUES (20, 'Bidu', '2012-09-08', 12.4, 'azul');
INSERT INTO animais VALUES (21, 'Dum Dum', '2015-04-06', 11.2, 'laranja');
INSERT INTO animais VALUES (22, 'Muttley', '2011-02-03', 14.3, 'laranja');
INSERT INTO animais VALUES (23, 'Scooby', '2012-01-02', 19.9, 'marrom');
INSERT INTO animais VALUES (24, 'Rufus', '2014-04-05', 19.7, 'branco');
INSERT INTO animais VALUES (25, 'Rex', '2021-08-19', 19.7, 'branco');


-- Alterar o nome do Pateta para Goofy:

UPDATE animais
SET NOME = 'Goofy'
WHERE NOME = 'Pateta';

select* from animais;

 -- Alterar o peso do Garfield para 10 quilogramas
UPDATE animais
SET PESO = 10
WHERE NOME = 'Garfield';

select* from animais;

-- Alterar a cor de todos os gatos para laranja:

UPDATE animais
SET COR = 'laranja'

select * from animais;

-- Criar um campo altura para os animais:

ALTER TABLE animais
ADD ALTURA DECIMAL(10,2);

select * from animais;

-- Criar um campo observação para os animais

ALTER TABLE animais
ADD OBSERVACAO TEXT;

select * from animais;

--  Remover todos os animais que pesam mais que 200 quilogramas:

DELETE FROM animais
WHERE PESO > 200

select * from animais;

-- Remover todos os animais que o nome inicie com a letra ‘C’:

DELETE FROM animais
WHERE NOME LIKE 'C%';

select * from animais;

--  Remover o campo cor dos animais:

ALTER TABLE animais
DROP COLUMN COR;

select * from animais;

-- Aumentar o tamanho do campo nome dos animais para 80 caracteres

ALTER TABLE animais
MODIFY COLUMN NOME VARCHAR(80);

select * from animais;

-- Remover todos os gatos e cachorros:

DELETE FROM animais
WHERE NOME IN ('gato', 'cachorro');

select * from animais;

-- Remover o campo data de nascimento dos animais

ALTER TABLE animais
DROP COLUMN DATA_DE_NASCIMENTO;

select * from animais;

-- Remover todos os animais

DELETE FROM animais;

select * from animais;

-- Remover a tabela especies:

DROP TABLE especies;

select * from animais;