CREATE DATABASE RPG;

    CREATE TABLE CONTA(
        ID_CONTA INT PRIMARY KEY AUTO_INCREMENT,
        NOME VARCHAR(40) NOT NULL UNIQUE,
        EMAIL VARCHAR(255) NOT NULL UNIQUE,
        SENHA VARCHAR(255) NOT NULL
    );

    CREATE TABLE CLASSE(
        ID_CLASSE INT PRIMARY KEY AUTO_INCREMENT,
        NOME VARCHAR(20) NOT NULL UNIQUE,
        DESCRICAO VARCHAR(255) NOT NULL UNIQUE
    );

    CREATE TABLE RACA(
        ID_RACA INT PRIMARY KEY AUTO_INCREMENT,
        NOME VARCHAR(20) NOT NULL UNIQUE,
        DESCRICAO VARCHAR(255) NOT NULL UNIQUE
    );

    CREATE TABLE SEXO(
        ID_SEXO INT PRIMARY KEY AUTO_INCREMENT,
        NOME VARCHAR(20) NOT NULL UNIQUE
    );

    CREATE TABLE TIPO_EQUIP(
        ID_TIPO_EQUIP INT PRIMARY KEY AUTO_INCREMENT,
        NOME VARCHAR(20) NOT NULL UNIQUE
    );

    CREATE TABLE ESTILO_COMB(
        ID_ESTILO_COMB INT PRIMARY KEY AUTO_INCREMENT,
        NOME VARCHAR(20) NOT NULL UNIQUE
    );

    CREATE TABLE EFEITOS(
        ID_EFEITO INT PRIMARY KEY AUTO_INCREMENT,
        DESCRICAO VARCHAR(255) NOT NULL UNIQUE
        NOME VARCHAR(25) NOT NULL,
    );

    CREATE TABLE EQUIPAMENTOS(
        ID_EQUIPAMENTO INT PRIMARY KEY AUTO_INCREMENT,
        ID_TIPO_EQUIP INT NOT NULL,
        ID_ESTILO_COMB INT NOT NULL,
        DANO_MIN INT NOT NULL,
        DANO_MAX INT NOT NULL,
        VALOR_ARMADURA INT NOT NULL,
        ID_EFEITO INT NOT NULL,
        FOREIGN KEY(ID_TIPO_EQUIP) REFERENCES TIPO_EQUIP(ID_TIPO_EQUIP),
        FOREIGN KEY(ID_ESTILO_COMB) REFERENCES ESTILO_COMB(ID_ESTILO_COMB),
        FOREIGN KEY(ID_EFEITO) REFERENCES EFEITOS(ID_EFEITO)

    );

    CREATE TABLE INVENTARIO(
        ID_INVENTARIO INT PRIMARY KEY AUTO_INCREMENT
    );

    CREATE TABLE ITEM_INVENTARIO(
        ID_ITEM_INVENTARIO INT PRIMARY KEY AUTO_INCREMENT,
        ID_EQUIPAMENTO INT NOT NULL,
        QUANTIDADE INT NOT NULL,
        FOREIGN KEY(ID_EQUIPAMENTO) REFERENCES EQUIPAMENTOS(ID_EQUIPAMENTO)
    );


    CREATE TABLE HABILIDADES(
        ID_HABILIDADE INT PRIMARY KEY AUTO_INCREMENT,
        ID_ESTILO_COMB INT NOT NULL,
        DANO_MIN INT NOT NULL,
        DANO_MAX INT NOT NULL,
        ID_EFEITO INT NOT NULL,
        FOREIGN KEY(ID_ESTILO_COMB) REFERENCES ESTILO_COMB(ID_ESTILO_COMB),
        FOREIGN KEY(ID_EFEITO) REFERENCES EFEITOS(ID_EFEITO)
    );

    CREATE TABLE PERSONAGEM(
        ID_PERSONAGEM INT PRIMARY KEY AUTO_INCREMENT,
        NOME INT NOT NULL UNIQUE,
        ID_CONTA INT NOT NULL,
        ID_CLASSE INT NOT NULL,
        ID_RACA INT NOT NULL,
        ID_SEXO INT NOT NULL,
        ID_INVENTARIO INT NOT NULL,
        FORCA INT NOT NULL,
        DESTREZA INT NOT NULL,
        CONSTITUICAO INT NOT NULL,
        SABEDORIA INT NOT NULL,
        INTELIGENCIA INT NOT NULL,
        CARISMA INT NOT NULL,
        EQUIPAMENTO_CABECA INT NOT NULL,
        EQUIPAMENTO_TRONCO INT NOT NULL,
        EQUIPAMENTO_BRACOS INT NOT NULL,
        EQUIPAMENTO_PERNAS INT NOT NULL,
        EQUIPAMENTO_ACESSORIO INT NOT NULL,
        ITEM_MAO_DIREITA INT NOT NULL,
        ITEM_MAO_ESQUERDA INT NOT NULL,
        HABILIDADE_1 INT NOT NULL,
        HABILIDADE_2 INT NOT NULL,
        HABILIDADE_3 INT NOT NULL,
        FOREIGN KEY(ID_CONTA) REFERENCES CONTA(ID_CONTA),
        FOREIGN KEY(ID_CLASSE) REFERENCES CLASSE(ID_CLASSE),
        FOREIGN KEY(ID_RACA) REFERENCES RACA(ID_RACA),
        FOREIGN KEY(ID_SEXO) REFERENCES SEXO(ID_SEXO),
        FOREIGN KEY(ID_INVENTARIO) REFERENCES INVENTARIO(ID_INVENTARIO),
        FOREIGN KEY(EQUIPAMENTO_CABECA) REFERENCES EQUIPAMENTOS(ID_EQUIPAMENTO),
        FOREIGN KEY(EQUIPAMENTO_TRONCO) REFERENCES EQUIPAMENTOS(ID_EQUIPAMENTO),
        FOREIGN KEY(EQUIPAMENTO_BRACOS) REFERENCES EQUIPAMENTOS(ID_EQUIPAMENTO),
        FOREIGN KEY(EQUIPAMENTO_PERNAS) REFERENCES EQUIPAMENTOS(ID_EQUIPAMENTO),
        FOREIGN KEY(EQUIPAMENTO_ACESSORIO) REFERENCES EQUIPAMENTOS(ID_EQUIPAMENTO),
        FOREIGN KEY(HABILIDADE_1) REFERENCES HABILIDADES(ID_HABILIDADE),
        FOREIGN KEY(HABILIDADE_2) REFERENCES HABILIDADES(ID_HABILIDADE),
        FOREIGN KEY(HABILIDADE_3) REFERENCES HABILIDADES(ID_HABILIDADE),
    );