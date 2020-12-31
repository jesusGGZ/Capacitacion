-- Toma 3 tablas (Las que gustes pero que tengan relación entre sí) y genera una consulta con los datos que creas convenientes para mostrar --
select pr.id, pr.folio, pr.digitos as número_telefonico, ipr.imei , rn.nombre as region, pv.tipo, e.nombre as Empresa
from preregistro as pr 
inner join preregistro_imei as ipr on ipr.preregistro_id = pr.id 
inner join regionnumero as rn on pr.regionnumero_id = rn.id
inner join punto_venta as pv on pr.puntoventa_id = pv.id 
inner join empresa as e on pv.empresa_id = e.id;

-- De la tabla número muéstrame solo los registros de R5 --
select n.id, n.folio, n.digitos, n.fecha, n.monto, c.nombre as operador, cl.nombre as cliente, r.nombre as region 
from numero as n inner join regionNumero as r on r.id = n.regionNumero_id 
inner join carrier as c on c.id = n.carrier_id 
inner join cliente as cl on cl.id = n.cliente_id
where r.nombre = 'R5';

-- Muéstrame solo los números activados del 1 dic 2020 (Para esta consulta necesitaras las tablas “numero” y “activado”) 
-- los campos que mostraras en la consulta serán los siguientes: numero_id, digitos, fecha_numero, cliente_id, monto, fecha_activado. 
-- Las fechas se mostraran completas(fecha,hora, minutos y segundos) 
select n.id, n.digitos as número_de_telefono, n.fecha, n.cliente_id, n.monto as monto_de_recarga, act.fecha as fecha_de_activacion 
from numero as n inner join activado as act on act.numero_id = n.id 
where  act.fecha like '%2020-12-01%';
