-- Criando o Banco de Dados
CREATE DATABASE imobiliaria;
USE imobiliaria;

-- Tabela de Tipos de Imóveis
CREATE TABLE TIPO_IMOVEL (
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    DESCRICAO VARCHAR(256) NOT NULL
);

-- Tabela de Clientes (Inquilinos)
CREATE TABLE CLIENTES (
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(45) NOT NULL,
    CPF VARCHAR(15) UNIQUE NOT NULL,
    TELEFONE VARCHAR(12),
    E_MAIL VARCHAR(100),
    DT_NASCIMENTO DATE
);

-- Tabela de Imóveis
CREATE TABLE IMOVEIS (
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    ID_PROPRIETARIO INTEGER NOT NULL,
    ID_TIPO_IMOVEL INTEGER NOT NULL,
    LOGRADOURO VARCHAR(200) NOT NULL,
    BAIRRO VARCHAR(45),
    CEP VARCHAR(10),
    METRAGEM INTEGER,
    DORMITORIOS TINYINT,
    BANHEIROS TINYINT,
    SUITES TINYINT,
    VAGAS_GARAGEM TINYINT,
    VALOR_ALUGUEL_SUGERIDO DECIMAL(10,2),
    OBS TEXT,
    FOREIGN KEY (ID_PROPRIETARIO) REFERENCES CLIENTES(ID),
    FOREIGN KEY (ID_TIPO_IMOVEL) REFERENCES TIPO_IMOVEL(ID)
);

-- Tabela de Locações
CREATE TABLE LOCACAO (
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    ID_IMOVEL INTEGER NOT NULL,
    ID_INQUILINO INTEGER NOT NULL,
    VALOR_ALUGUEL DECIMAL(10,4),
    PERCENTUAL_MULTA DECIMAL(5,2),
    DIA_VENCIMENTO TINYINT NOT NULL,
    DATA_INICIO DATE NOT NULL,
    DATA_FIM DATE,
    ATIVO BOOLEAN DEFAULT TRUE,
    OBS TEXT,
    FOREIGN KEY (ID_IMOVEL) REFERENCES IMOVEIS(ID),
    FOREIGN KEY (ID_INQUILINO) REFERENCES CLIENTES(ID)
);

-- Tabela de Aluguéis
CREATE TABLE ALUGUEIS (
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    ID_LOCACAO INTEGER NOT NULL,
    DATA_VENCIMENTO DATE NOT NULL,
    VALOR_PAGO DECIMAL(10,2),
    DATA_PAGAMENTO DATE,
    OBS TEXT,
    FOREIGN KEY (ID_LOCACAO) REFERENCES LOCACAO(ID)
);

-- Tabela de Profissionais (Serviços Prestados)
CREATE TABLE PROFISSIONAIS (
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(45) NOT NULL,
    PROFISSAO VARCHAR(45) NOT NULL,
    TELEFONE1 VARCHAR(12),
    TELEFONE2 VARCHAR(12),
    VALOR_HORA DECIMAL(10,2),
    OBS TEXT
);

-- Tabela de Serviços Prestados nos Imóveis
CREATE TABLE SERVICOS_IMOVEL (
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    ID_PROFISSIONAL INTEGER NOT NULL,
    ID_IMOVEL INTEGER NOT NULL,
    DATA_SERVICO DATE NOT NULL,
    VALOR_TOTAL DECIMAL(10,2),
    OBS TEXT,
    FOREIGN KEY (ID_PROFISSIONAL) REFERENCES PROFISSIONAIS(ID),
    FOREIGN KEY (ID_IMOVEL) REFERENCES IMOVEIS(ID)
);
