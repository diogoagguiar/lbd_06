-- Populando a tabela TIPO_IMOVEL
INSERT INTO TIPO_IMOVEL (DESCRICAO) VALUES 
('Apartamento'),
('Casa'),
('Sobrado'),
('Kitnet');

-- Populando a tabela CLIENTES (Inquilinos e Proprietários)
INSERT INTO CLIENTES (NOME, CPF, TELEFONE, E_MAIL, DT_NASCIMENTO) VALUES 
('João Silva', '123.456.789-00', '11987654321', 'joao@email.com', '1985-05-10'),
('Maria Oliveira', '987.654.321-00', '21987654321', 'maria@email.com', '1990-11-25'),
('Carlos Santos', '654.321.987-00', '31987654321', 'carlos@email.com', '1978-07-14');

-- Populando a tabela IMOVEIS
INSERT INTO IMOVEIS (ID_PROPRIETARIO, ID_TIPO_IMOVEL, LOGRADOURO, BAIRRO, CEP, METRAGEM, DORMITORIOS, BANHEIROS, SUITES, VAGAS_GARAGEM, VALOR_ALUGUEL_SUGERIDO, OBS)
VALUES 
(1, 1, 'Rua das Flores, 123', 'Centro', '01001-000', 80, 2, 1, 0, 1, 1500.00, 'Apartamento bem localizado'),
(2, 2, 'Av. Paulista, 456', 'Bela Vista', '01310-000', 120, 3, 2, 1, 2, 2500.00, 'Casa ampla com garagem'),
(3, 3, 'Rua dos Pinheiros, 789', 'Pinheiros', '05422-001', 100, 3, 2, 1, 1, 2000.00, 'Sobrado moderno');

-- Populando a tabela LOCACAO
INSERT INTO LOCACAO (ID_IMOVEL, ID_INQUILINO, VALOR_ALUGUEL, PERCENTUAL_MULTA, DIA_VENCIMENTO, DATA_INICIO, DATA_FIM, ATIVO, OBS)
VALUES 
(1, 2, 1500.00, 5.00, 10, '2024-01-01', '2025-01-01', TRUE, 'Contrato anual'),
(2, 3, 2500.00, 4.00, 5, '2024-02-15', '2025-02-15', TRUE, 'Locação mensal'),
(3, 1, 2000.00, 3.50, 8, '2024-03-10', NULL, TRUE, 'Contrato sem data de término');

-- Populando a tabela ALUGUEIS
INSERT INTO ALUGUEIS (ID_LOCACAO, DATA_VENCIMENTO, VALOR_PAGO, DATA_PAGAMENTO, OBS)
VALUES 
(1, '2024-02-10', 1500.00, '2024-02-09', 'Pagamento antecipado'),
(1, '2024-03-10', 1500.00, '2024-03-10', 'Pagamento no vencimento'),
(2, '2024-03-05', 2500.00, '2024-03-04', 'Pago via transferência'),
(3, '2024-03-08', 2000.00, '2024-03-08', 'Depósito bancário');

-- Populando a tabela PROFISSIONAIS
INSERT INTO PROFISSIONAIS (NOME, PROFISSAO, TELEFONE1, TELEFONE2, VALOR_HORA, OBS)
VALUES 
('Roberto Lima', 'Eletricista', '11999998888', '11999997777', 80.00, 'Especialista em circuitos residenciais'),
('Ana Souza', 'Encanadora', '11988887777', '11977776666', 75.00, 'Trabalha com reparos hidráulicos'),
('Fernando Costa', 'Pintor', '11966665555', '11955554444', 50.00, 'Especialista em pintura predial');

-- Populando a tabela SERVICOS_IMOVEL
INSERT INTO SERVICOS_IMOVEL (ID_PROFISSIONAL, ID_IMOVEL, DATA_SERVICO, VALOR_TOTAL, OBS)
VALUES 
(1, 1, '2024-02-01', 300.00, 'Troca de fiação'),
(2, 2, '2024-03-05', 200.00, 'Reparo no encanamento'),
(3, 3, '2024-03-20', 150.00, 'Pintura externa');
