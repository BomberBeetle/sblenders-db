GO
USE dbSblenders
GO
INSERT INTO tbTipoAgente(tipoAgenteID, tipoAgenteNome) VALUES (0,'AgenteTeste')
INSERT INTO tbTipoAgente(tipoAgenteID, tipoAgenteNome) VALUES (1,'ClienteOnline')
INSERT INTO tbTipoAgente(tipoAgenteID, tipoAgenteNome) VALUES (2,'Funcionario')
INSERT INTO tbTipoAgente(tipoAgenteID, tipoAgenteNome) VALUES (3,'Totem')
GO
INSERT INTO tbAgente(tipoAgenteID, agenteLogin, agenteSenha, agenteSalt) VALUES(1, 'online1', '0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239', '0000000000000000000000000000000000000000000000000000000000000000')
INSERT INTO tbAgente(tipoAgenteID, agenteLogin, agenteSenha, agenteSalt) VALUES(1, 'online2', '0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239', '0000000000000000000000000000000000000000000000000000000000000000')
INSERT INTO tbAgente(tipoAgenteID, agenteLogin, agenteSenha, agenteSalt) VALUES(1, 'online3', '0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239', '0000000000000000000000000000000000000000000000000000000000000000')
INSERT INTO tbAgente(tipoAgenteID, agenteLogin, agenteSenha, agenteSalt) VALUES(1, 'online4', '0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239', '0000000000000000000000000000000000000000000000000000000000000000')
INSERT INTO tbAgente(tipoAgenteID, agenteLogin, agenteSenha, agenteSalt) VALUES(2, 'funcionario1', '0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239', '0000000000000000000000000000000000000000000000000000000000000000')
INSERT INTO tbAgente(tipoAgenteID, agenteLogin, agenteSenha, agenteSalt) VALUES(2, 'funcionario2', '0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239', '0000000000000000000000000000000000000000000000000000000000000000')
INSERT INTO tbAgente(tipoAgenteID, agenteLogin, agenteSenha, agenteSalt) VALUES(3, 'totem1', '0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239', '0000000000000000000000000000000000000000000000000000000000000000')
GO
INSERT INTO tbClienteOnline(clienteOnlineNome, clienteOnlineSobrenome, clienteOnlineVerificadoFlag, agenteID) VALUES ('Anakin', 'Skywalker', 1, 1), ('Obi-Wan', 'Kenobi', 1, 2), ('Luke', 'Skywalker', 1, 3), ('Leia', 'Organa', 1, 4)
GO
INSERT INTO tbTipoFuncionario(tipoFuncionarioNome) VALUES ('Cozinheiro'), ('Entregador'), ('Estagiário'), ('Terceiro') -- Nâo tenho certeza se é isso que você queria dizer com tipo de funcionário
GO
INSERT INTO tbRestaurante(restauranteNome, restauranteLat, restauranteLong) VALUES ('R. Alvinópolis', -23.533446, -46.542555), ('Av. Olavo Fontoura', -23.51094057, -46.63993478),
('R. Miquelino Gabriel Fraga', -23.62200102, -46.6548425), ('R. Ipanema', -23.54674172, -46.60619795),
('Av. Tiradentes', -23.530822, -46.632565), ('Av. José Pinheiro Borges', -23.540086, -46.471189),
('R. Engenheiro Camilo Olivetti', -23.488445, -46.548990), ('R. Mal. Maurício Cardoso', -23.580961, -46.656938),
('Av. Carlos Caldeira Filho', -23.659340, -46.768888), ('Av. Adolfo Pinheiro', -23.650001, -46.704369),
('Av. Vital Brasil', -23.571713, -46.708885), ('R. Paulo de Faria', -23.479693, -46.601862),
('R. Ettore Lantieri', -23.603058, -46.604008), ('Av. Paulista, Jardins', -23.563546, -46.655087),
('R. Vergueiro', -23.568796, -46.639941), ('Av. Guilherme Cotching', -23.522107, -46.592830)
GO 
INSERT INTO tbFuncionario(tipoFuncionarioID, agenteID, funcionarioNome, funcionarioRG, restauranteID, funcionarioSituacao) VALUES (1, 5, 'Han Solo', '01234567890', 1, 1), (2, 6, 'Walter Clements', '01234967890', 1, 1)
GO
INSERT INTO tbTotem(agenteID, restauranteID) VALUES (7, 1)
GO
INSERT INTO tbEstadoPedido(estadoPedidoNome) VALUES ('Em andamento'), ('Pronto'), ('À caminho'), ('Entregue'), ('Rejeitado'), ('Cancelado')
GO
INSERT INTO tbPedido(restauranteID, agenteID, estadoPedidoID, instrucoes, pedidoDataHora, enderecoPedido) VALUES (1, 1, 2, 'Entregar acompanhado de sachê de mostarda.', FORMAT(GETDATE(), 'HH:mm'), 'Rua Yavin, 4'),
(1, 1, 3, 'Desenhar um cachorro na embalagem', FORMAT(GETDATE(), 'HH:mm'), 'Rua Tatooine, 77'), (1, 1, 4, 'Jogar pela janela da casa', FORMAT(GETDATE(), 'HH:mm'), 'Rua uaR, 123321'),
(1, 1, 1, 'Beber um gole', FORMAT(GETDATE(), 'HH:mm'), 'Rua Rocky, 2')
GO
INSERT INTO tbCategoriaIngrediente(categoriaIngredienteNome) VALUES ('Pão'), ('Carne'), ('Vegetal'), ('Queijo'), ('Molho'), ('Cobertura')
GO
INSERT INTO tbIngrediente(categoriaIngredienteID, ingredienteNome, ingredienteCusto, ingredienteDescricao) VALUES (1, 'Pão de forma integral (fatia superior)', 1.5, 'Fatia superior de pão de forma integral'),
(1, 'Pão de forma integral (fatia inferior)', 1.5, 'Fatia inferior de pão de forma integral'), (1, 'Pão francês (fatia superior)', 2, 'Fatia superior de pão francês'),
(1, 'Pão francês (fatia inferior)', 2, 'Fatia inferior de pão francês'), (1, 'Pão italiano integral (fatia superior)', 3.5, 'Fatia superior de pão italiano integral'),
(1, 'Pão italiano integral (fatia inferior)', 3.5, 'Fatia inferior de pão italiano integral'), (1, 'Pão de hambúrguer sem gergelim (fatia superior)', 2.5, 'Fatia superior de pão de hambúrguer sem gergelim'),
(1, 'Pão de hambúrguer sem gergelim (fatia inferior)', 2.5, 'Fatia inferior de pão de hambúrguer sem gergelim'), (1, 'Pão de hambúguer com gergelim (fatia superior)', 3, 'Fatia superior de pão de hambúrguer com gergelim'),
(1, 'Pão de hambúrguer com gergelim (fatia inferior)', 3, 'Fatia inferior de pão de hambúrguer com gergelim'), (2, 'Frango', 2.5, 'Frango cozido desfiado'), (2, 'Fígado acebolado', 2.5, 'Filé de fígado acebolado'),
(2, 'Hambúrguer', 3, 'Hambúrguer de carne'), (2, 'Hambúrguer à la Sblenders', 4, 'Hambúrguer à moda da casa'), (2, 'Filé de Peixe', 2.5, 'Filé de tilápia'), (3, 'Pepino', 1, 'Rodelas de pepino'),
(3, 'Tomate', 1, 'Rodela de tomate'), (3, 'Alface', 1, 'Folha de alface'), (3, 'Jiló', 1, 'Cubo de jiló'), (3, 'Coentro', 3, 'Folhas de coentro em pedaço'), (3, 'Pimenta jalapenho', 2, 'Rodelas de pimenta jalapenho'),
(3, 'Picles', 2, 'Rodelas de picles'), (4, 'Cheddar', 3, 'Fatia de queijo cheddar'), (4, 'Parmesão', 2.5, 'Queijo parmesão ralado'), (4, 'Provolone', 3, 'Quejio provolone ralado'),
(4, 'Muçarela', 2, 'Fatia de queijo muçarela'), (4, 'Queijo branco', 3, 'Fatia de queijo branco'), (5, 'Ketchup', 3, 'Molho ketchup'), (5, 'Mostarda', 3, 'Molho de mostarda'), (5, 'Maionese', 3, 'Molho maionese'),
(5, 'Molho especial Sblender', 3, 'Molho secreto...'), (6, 'Chocolate', 3, 'Cauda de chocolate'), (6, 'Morango', 2.5, 'Cauda de morango'), (6, 'Caramelo', 4, 'Cauda de caramelo')
GO
INSERT INTO tbEstoqueIngrediente(ingredienteID, restauranteID, estoqueIngredienteQuantidade) VALUES (1, 1, 75), (2, 1, 100), (3, 1, 65), (4, 1, 30), (5, 1, 35),
(6, 2, 76), (7, 2, 127), (8, 2, 62), (9, 2, 29), (10, 2, 44)
GO
INSERT INTO tbCategoriaProduto(categoriaProdutoNome) VALUES ('Acompanhamento'), ('Bebida'), ('Sobremesa'), ('Molho'), ('Customizavel')
GO
INSERT INTO tbProduto(categoriaProdutoID, produtoNome, produtoCusto, produtoDescricao) VALUES (1,'Nuggets de Frango, 6 unidades, 240 kcal',3.49,'Nuggets de Frango crocantes e temperados'),
(1,'Onion Rings, 14 unidades, 580 kcal',6.65,'Cebolas em formatos de anéis, empanados e fritos, muito croncantes e temperadas'),(1,'Salada Levissíma Sblenders, 110 kcal',4.45,'Salada de alface, tomate e pepino'),
(1,'Frango Frito, 12 unidades, 500 kcal',6.73,'Frangos Fritos temperados com sal, pimenta e o tempero especial Sblenders'),(2,'Lata de Refrigerante Coca-Cola, 350ml',3.98,'Refrigerante Coca-Cola, 350ml'),
(2,'Lata de Refrigerante Fanta Sabor Laranja, 350ml',3.42,'Refrigerante Fanta Sabor Laranja, 350ml'),(2,'Lata de Refrigerante Guaraná, 350ml',3.55,'Refrigerante Guaraná, 350ml'),
(2,'Garrafa de Refrigerante H2OH Limoneto, 500ml',4.50,'Refrigerante H2OH Limoneto, 500ml'), (2, 'Água Fiji', 5, 'Água importada diretamente de Fiji'), (3,'Sundae de Chocolate Sblenders, 500kcal', 6.54, 'Sundae de Chocolate, 500kcal'),
(3,'Milk Shake de Morango, 400ml, 550kcal',6.78,'Milk Shake de Morango, 400ml, 550kcal'),(3,'Casquinha de Creme, 200mg, 300kcal',2.20,'Casquina de Creme, 200mg, 300kcal'),
(3,'Casquinha de Açaí, 200mg, 350kcal',2.20,'Casquina de Açaí, 200mg, 350kcal'),(4,'Molho Barbecue, 100mg, 150kcal',1.70,'Molho Barbecue, 100mg, 150kcal'),
(4,'Molho de Tomate, 100mg, 150kcal',1.70,'Molho de Tomate, 100mg, 150kcal'),(4,'Molho de Queijo, 100mg, 150kcal',1.70,'Molho de Queijo, 100mg, 150kcal'),
(4,'Molho de Mostarda, 100mg, 150kcal',1.70,'Molho de Mostarda, 100mg, 150kcal'),(5,'Sblurger',0.0,'Monte seu Sblurger'),
(2, 'Itubaína©', 5, 'Refrigerante Itubaína em garrafa'), (2, 'Del Vale© Maracujá', 6.5, 'Suco de maracujá em lata'), (2, 'BÆR-MATE®', 7, 'Chá mate')
GO
INSERT INTO tbProdutoIngrediente (ingredienteID, produtoID, quantidadePadrao, novoPreco) VALUES (1,18,1,2.5),(2,18,1,3),(3,18,1,2),(4,18,1,1.5),(5,18,1,2),(6,18,1,3),
(7,18,1,3),(8,18,1,3),(9,18,1,2.5),(10,18,1,2.5)
GO
INSERT INTO tbPedidoProduto(pedidoID, produtoID, pedidoProdutoQtde) VALUES (1, 18, 3), (2, 3, 4), (3, 5, 5), (4, 7, 6)
GO
INSERT INTO tbPedidoProdutoIngrediente(pedidoProdutoID, produtoIngredienteID, quantidadeIngrediente) VALUES (1, 1, 1), (1, 9, 3), (1, 3, 4), (1, 4, 7) -- Fiz só com os dois utilizados no insert da tbProdutoIngrediente
GO
INSERT INTO tbAgente(
	tipoAgenteID,
	agenteLogin,
	agenteSenha,
	agenteSalt
) VALUES(
	2,
	'funcionario3',
	'0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239',
	'0000000000000000000000000000000000000000000000000000000000000000'
),
(
	2,
	'funcionario4',
	'0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239',
	'0000000000000000000000000000000000000000000000000000000000000000'
)
GO
INSERT INTO tbFuncionario (
	tipoFuncionarioID,
	agenteID,
	funcionarioSituacao,
	funcionarioNome,
	funcionarioRG,
	restauranteID,
	funcionarioFoto
)
SELECT
	1,
	8,
	1,
	'Ricardo Afonso',
	'11235467901',
	1,
	BulkColumn
FROM Openrowset(Bulk '<caminho>\sblenders-db/funcFoto/Ricardo.jpg', Single_Blob) as Image
GO
INSERT INTO tbFuncionario (
	tipoFuncionarioID,
	agenteID,
	funcionarioSituacao,
	funcionarioNome,
	funcionarioRG,
	restauranteID,
	funcionarioFoto
)
SELECT
	1,
	9,
	1,
	'Rafael Magalhães',
	'12345678910',
	2,
	BulkColumn
FROM Openrowset(Bulk '<caminho>\sblenders-db/funcFoto/Rafael.jpg', Single_Blob) as Image
GO -- Inserts para ingrediente
INSERT INTO tbIngrediente (
	categoriaIngredienteID,
	ingredienteNome,
	ingredienteCusto,
	ingredienteDescricao,
	ingredienteFoto
)
SELECT
	1,
	'Pão Italiano Integral',
	10.0,
	'Pão italiano feito com massa integral e com sementes.',
	BulkColumn
FROM Openrowset(Bulk '<caminho>\sblenders-db/ingFoto/italiano.jpeg', Single_Blob) as Image
GO
INSERT INTO tbIngrediente (
	categoriaIngredienteID,
	ingredienteNome,
	ingredienteCusto,
	ingredienteDescricao,
	ingredienteFoto
)
SELECT
	2,
	'Fígado Acebolado',
	12.0,
	'Filé de fígado acebolado feito no óleo de soja.',
	BulkColumn
FROM Openrowset(Bulk '<caminho>\sblenders-db/ingFoto/figado.jpg', Single_Blob) as Image
GO
INSERT INTO tbIngrediente (
	categoriaIngredienteID,
	ingredienteNome,
	ingredienteCusto,
	ingredienteDescricao,
	ingredienteFoto
)
SELECT
	3,
	'Coentro',
	5.0,
	'Folhas de coentro fresco.',
	BulkColumn
FROM Openrowset(Bulk '<caminho>\sblenders-db/ingFoto/coentro.jpg', Single_Blob) as Image
GO -- Inserts de produto
INSERT INTO tbProduto (
	categoriaProdutoID,
	produtoNome,
	produtoCusto,
	produtoDescricao,
	produtoFoto
)
SELECT
	1,
	'Batatas Rústicas com Ketchup, 15 unidades, 500 kcal',
	8.0,
	'Grandes fatias de batatas fritas no óleo de girassol, acompanhadas de ketchup',
	BulkColumn
FROM Openrowset(Bulk '<caminho>\sblenders-db/prodFoto/frita.jpg', Single_Blob) as Image
GO
INSERT INTO tbProduto (
	categoriaProdutoID,
	produtoNome,
	produtoCusto,
	produtoDescricao,
	produtoFoto
)
SELECT
	2,
	'Lata de Coca-Cola© Zero, 350 ml',
	8.0,
	'Refrigerante Coca-Cola© Zero Açúcar',
	BulkColumn
FROM Openrowset(Bulk '<caminho>\sblenders-db/prodFoto/coca.jpg', Single_Blob) as Image
GO
INSERT INTO tbProduto (
	categoriaProdutoID,
	produtoNome,
	produtoCusto,
	produtoDescricao,
	produtoFoto
)
SELECT
	3,
	'Paleta Mexicana de Morango, 500 kcal',
	8.0,
	'Picolé feito com extrato de morango, recheado com leite condesado Nestlé® Moça',
	BulkColumn
FROM Openrowset(Bulk '<caminho>\sblenders-db/prodFoto/morango.png', Single_Blob) as Image
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod1.png', SINGLE_BLOB) as T1) WHERE produtoID = 1
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod2.png', SINGLE_BLOB) as T1) WHERE produtoID = 2
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod3.png', SINGLE_BLOB) as T1) WHERE produtoID = 3
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod4.png', SINGLE_BLOB) as T1) WHERE produtoID = 4
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod5.png', SINGLE_BLOB) as T1) WHERE produtoID = 5
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod6.png', SINGLE_BLOB) as T1) WHERE produtoID = 6
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod7.png', SINGLE_BLOB) as T1) WHERE produtoID = 7
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod8.png', SINGLE_BLOB) as T1) WHERE produtoID = 8
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod9.jpg', SINGLE_BLOB) as T1) WHERE produtoID = 9
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod10.png', SINGLE_BLOB) as T1) WHERE produtoID = 10
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod11.png', SINGLE_BLOB) as T1) WHERE produtoID = 11
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/proD12.png', SINGLE_BLOB) as T1) WHERE produtoID = 12
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod13.png', SINGLE_BLOB) as T1) WHERE produtoID = 13
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod14.png', SINGLE_BLOB) as T1) WHERE produtoID = 14
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod15.png', SINGLE_BLOB) as T1) WHERE produtoID = 15
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod16.png', SINGLE_BLOB) as T1) WHERE produtoID = 16
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod17.png', SINGLE_BLOB) as T1) WHERE produtoID = 17
GO
/*UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod18.png', SINGLE_BLOB) as T1) WHERE produtoID = 18*/
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod19.jpg', SINGLE_BLOB) as T1) WHERE produtoID = 19
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod20.jpg', SINGLE_BLOB) as T1) WHERE produtoID = 20
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/prodFoto2/prod21.jpg', SINGLE_BLOB) as T1) WHERE produtoID = 21
GO
UPDATE tbFuncionario SET funcionarioFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/funcFoto/han.jpg', SINGLE_BLOB) as T1) WHERE funcionarioID = 1
GO
UPDATE tbFuncionario SET funcionarioFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/funcFoto/walter.png', SINGLE_BLOB) as T1) WHERE funcionarioID = 2
/*GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred1.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 1
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred2.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 2
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred3.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 3
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred4.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 4
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred5.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 5
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred6.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 6
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred7.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 7
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred8.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 8
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred9.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 9
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred10.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 10
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred11.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 11
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred12.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 12
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred13.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 13
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred14.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 14
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred15.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 15
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>\sblenders-db/ingFoto/ingred16.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 16*/
/*
use master
drop database dbSblenders
*/
