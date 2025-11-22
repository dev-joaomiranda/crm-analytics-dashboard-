
-- CLIENTES
INSERT INTO clientes (id_cliente, nome, segmento, cidade, estado, data_cadastro, canal_origem) VALUES
(1, 'Ana Souza',      'Premium',  'Brasília',   'DF', '2024-01-10', 'Instagram'),
(2, 'Carlos Lima',    'Standard', 'Goiânia',    'GO', '2024-02-05', 'Facebook Ads'),
(3, 'Mariana Alves',  'Premium',  'Taguatinga', 'DF', '2024-02-20', 'Indicação'),
(4, 'João Ribeiro',   'Standard', 'Brasília',   'DF', '2024-03-01', 'Google Ads'),
(5, 'Fernanda Costa', 'Premium',  'Anápolis',   'GO', '2024-03-10', 'LinkedIn');

-- CAMPANHAS
INSERT INTO campanhas (id_campanha, nome_campanha, canal, data_inicio, data_fim, orcamento) VALUES
(1, 'Verão 2024 Instagram',      'Instagram',  '2024-01-01', '2024-01-31', 15000.00),
(2, 'Retenção Clientes Premium', 'E-mail',     '2024-02-01', '2024-02-28',  8000.00),
(3, 'Leads Região Centro-Oeste', 'Google Ads', '2024-03-01', '2024-03-31', 20000.00);

-- INTERAÇÕES CRM
INSERT INTO interacoes_crm (id_interacao, id_cliente, id_campanha, tipo_interacao, data_interacao, status_lead) VALUES
(1, 1, 1, 'Email',    '2024-01-05', 'Lead'),
(2, 1, 1, 'WhatsApp', '2024-01-07', 'Oportunidade'),
(3, 2, 2, 'Telefone', '2024-02-10', 'Lead'),
(4, 3, 3, 'Email',    '2024-03-05', 'Cliente'),
(5, 4, 3, 'WhatsApp', '2024-03-08', 'Lead'),
(6, 5, 2, 'Email',    '2024-03-12', 'Oportunidade');

-- VENDAS
INSERT INTO vendas (id_venda, id_cliente, id_campanha, data_venda, valor_venda, produto) VALUES
(1, 1, 1, '2024-01-15', 1200.50, 'Plano CRM Pro'),
(2, 3, 3, '2024-03-10', 2500.00, 'Plano Analytics Enterprise'),
(3, 2, 2, '2024-02-18',  900.00, 'Plano CRM Básico'),
(4, 5, 2, '2024-03-20', 1800.00, 'Plano CRM Pro'),
(5, 4, 3, '2024-03-25', 1500.00, 'Plano Analytics Standard');
