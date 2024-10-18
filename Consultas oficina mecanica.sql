-- =========================== --
-- >>> consultas << --
-- =========================== --
use Oficina_mecanica;
--------------------------------------------------------------
-- 1.Recuperações simples com SELECT Statement;
-- Seleção de contatos de clientes
select 
c.Name_client as Cliente
, c.phone as Telefone
from clients c;
 
 --------------------------------------------------------------
-- 2. Utilização de Filtros com WHERE Statement;
-- seleçao de ordens de serviços que estão abertas
select 
*
from orders o
where o.Status_order <> 'Finalizada';

--------------------------------------------------------------
-- 3. Criação de  expressões para gerar atributos derivados;
-- seleçao de ordens de serviços finalizada calculando o tempo de atendimento
select 
o.id_order
,datediff(o.date_deliver,o.date_inssue) tempo_atendimento
from orders o
where o.Status_Order = 'Finalizada';

--------------------------------------------------------------
-- 4.Definição de ordenações dos dados com ORDER BY;
-- seleção de técnicos que mais fizeram ordens de serviços

select 
t.Technitician_Name
,count(ot.Id_Order) qtd_os
 from order_technician ot
 inner join orders o 
	on o.Id_Order = ot.Id_Order
    and o.Status_Order = 'Finalizada'
inner join technician t on t.Id_Technician = ot.Id_Technician
group by 
t.Technitician_Name
order by count(ot.Id_Order) desc
;

--------------------------------------------------------------
-- 5.Condições de filtros aos grupos – HAVING Statement;
-- Seleção de clientes que tem ordem de serviço finalizadas com valor total maior que 5.000

select 
c.Name_Client as cliente
,sum(o.Value_Total) total
from clients c
inner join orders o
	on o.Id_Client = c.Id_client 
where o.Status_Order = 'Finalizada'
group by c.Name_Client
having sum(o.Value_Total) >5000
order by sum(o.Value_Total) desc
;

--------------------------------------------------------------
-- 6.Criação de  junções entre tabelas para fornecer uma perspectiva mais complexa dos dados;
-- seleção de técnico com maior retorno financeiro por ordem de serviço
select 
t.Technitician_Name
,sum(o.Value_Total)/count(distinct o.id_order) valor_medio_os
from orders o
inner join order_technician ot 
	on ot.Id_order = o.Id_Order
inner join technician t 
	on t.Id_Technician = ot.Id_Technician
where o.Status_Order = 'Finalizada'
group by 
t.Technitician_Name
;

