USE dbSblenders
GO
SELECT
	tbRest.restauranteID as "ID do Restaurante",
	tbRest.restauranteNome as "Nome do Restaurante",
	COUNT(pedidoID) as "Número de Pedidos"
FROM tbPedido AS tbPed JOIN tbRestaurante AS tbRest
	ON tbPed.restauranteID = tbRest.restauranteID
GROUP BY tbRest.restauranteID, tbRest.restauranteNome
ORDER BY tbRest.restauranteID ASC