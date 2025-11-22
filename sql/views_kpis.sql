-- Views de KPIs

-- Receita total por período (dia)
CREATE VIEW vw_receita_diaria AS
SELECT
    data_venda,
    SUM(valor_venda) AS receita_total
FROM vendas
GROUP BY data_venda
ORDER BY data_venda;

-- Receita por campanha
CREATE VIEW vw_receita_por_campanha AS
SELECT
    c.id_campanha,
    c.nome_campanha,
    c.canal,
    SUM(v.valor_venda) AS receita_total,
    COUNT(v.id_venda) AS qtde_vendas
FROM campanhas c
LEFT JOIN vendas v
    ON c.id_campanha = v.id_campanha
GROUP BY c.id_campanha, c.nome_campanha, c.canal
ORDER BY receita_total DESC;

-- Funil simples de leads -> oportunidades -> clientes
CREATE VIEW vw_funil_leads AS
SELECT
    c.id_campanha,
    ca.nome_campanha,
    ca.canal,
    COUNT(*) FILTER (WHERE i.status_lead = 'Lead')         AS qtde_leads,
    COUNT(*) FILTER (WHERE i.status_lead = 'Oportunidade') AS qtde_oportunidades,
    COUNT(*) FILTER (WHERE i.status_lead = 'Cliente')      AS qtde_clientes
FROM interacoes_crm i
JOIN campanhas ca
    ON i.id_campanha = ca.id_campanha
JOIN clientes c
    ON i.id_cliente = c.id_cliente
GROUP BY c.id_campanha, ca.nome_campanha, ca.canal
ORDER BY qtde_clientes DESC;

-- Ticket médio por segmento de cliente
CREATE VIEW vw_ticket_medio_por_segmento AS
SELECT
    cl.segmento,
    COUNT(v.id_venda)              AS qtde_vendas,
    SUM(v.valor_venda)             AS receita_total,
    AVG(v.valor_venda)             AS ticket_medio
FROM vendas v
JOIN clientes cl
    ON v.id_cliente = cl.id_cliente
GROUP BY cl.segmento
ORDER BY ticket_medio DESC;
