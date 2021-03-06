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
INSERT INTO tbAgente(tipoAgenteID,agenteLogin,agenteSenha,agenteSalt) VALUES(2, 'funcionario3',	'0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239',	'0000000000000000000000000000000000000000000000000000000000000000')
INSERT INTO tbAgente(tipoAgenteID,agenteLogin,agenteSenha,agenteSalt) VALUES(2,	'funcionario4',	'0526E0133C4F774C5B9F1A85E9F45FA5CDC5E99BD6C3529C4FF02F62B7855239',	'0000000000000000000000000000000000000000000000000000000000000000')
INSERT INTO tbAgente(tipoAgenteID,agenteLogin,agenteSenha,agenteSalt) VALUES(2, 'gerente1', 'teste', '0000000000000000000000000000000000000000000000000000000000000000')
GO
INSERT INTO tbClienteOnline(clienteOnlineNome, clienteOnlineSobrenome, clienteOnlineVerificadoFlag, agenteID) VALUES ('Anakin', 'Skywalker', 1, 1), ('Obi-Wan', 'Kenobi', 1, 2), ('Luke', 'Skywalker', 1, 3), ('Leia', 'Organa', 1, 4)
GO
INSERT INTO tbTipoFuncionario(tipoFuncionarioNome) VALUES ('Cozinheiro'), ('Entregador'), ('Estagi�rio'), ('Terceiro'), ('Gerente') -- N�o tenho certeza se � isso que voc� queria dizer com tipo de funcion�rio
GO
INSERT INTO tbRestaurante(restauranteNome, restauranteLat, restauranteLong) VALUES ('R. Alvin�polis', -23.533446, -46.542555), ('Av. Olavo Fontoura', -23.51094057, -46.63993478),
('R. Miquelino Gabriel Fraga', -23.62200102, -46.6548425), ('R. Ipanema', -23.54674172, -46.60619795),
('Av. Tiradentes', -23.530822, -46.632565), ('Av. Jos� Pinheiro Borges', -23.540086, -46.471189),
('R. Engenheiro Camilo Olivetti', -23.488445, -46.548990), ('R. Mal. Maur�cio Cardoso', -23.580961, -46.656938),
('Av. Carlos Caldeira Filho', -23.659340, -46.768888), ('Av. Adolfo Pinheiro', -23.650001, -46.704369),
('Av. Vital Brasil', -23.571713, -46.708885), ('R. Paulo de Faria', -23.479693, -46.601862),
('R. Ettore Lantieri', -23.603058, -46.604008), ('Av. Paulista, Jardins', -23.563546, -46.655087),
('R. Vergueiro', -23.568796, -46.639941), ('Av. Guilherme Cotching', -23.522107, -46.592830)
GO 
INSERT INTO tbFuncionario(tipoFuncionarioID, agenteID, funcionarioNome, funcionarioRG, restauranteID, funcionarioSituacao) VALUES (1, 5, 'Han Solo', '01234567890', 1, 1), (2, 6, 'Walter Clements', '01234967890', 1, 1), (5, 10, 'Lucas Macedo', '01254967890', 1, 1)
GO
INSERT INTO tbTotem(agenteID, restauranteID) VALUES (7, 1)
GO
INSERT INTO tbEstadoPedido(estadoPedidoNome) VALUES ('Em andamento'), ('Pronto'), ('� caminho'), ('Entregue'), ('Rejeitado'), ('Cancelado')
GO
INSERT INTO tbPedido(restauranteID, agenteID, estadoPedidoID, instrucoes, pedidoDataHora, enderecoPedido) VALUES (1, 1, 3, 'Entregar acompanhado de sach� de mostarda.', FORMAT(GETDATE(), 'HH:mm'), 'Rua Arnaldo Alvernaz Nunes, 305'),
(1, 1, 3, 'Desenhar um cachorro na embalagem', FORMAT(GETDATE(), 'HH:mm'), 'Rua Perp�tua Vicente, 49'), (1, 1, 4, 'Jogar pela janela da casa', FORMAT(GETDATE(), 'HH:mm'), 'Avenida Paulista, 1765'),
(1, 1, 1, 'Beber um gole', FORMAT(GETDATE(), 'HH:mm'), 'Rua Tr�s Rios, 469')
GO
INSERT INTO tbCategoriaIngrediente(categoriaIngredienteNome) VALUES ('P�o'), ('Carne'), ('Vegetal'), ('Queijo'), ('Molho'), ('Cobertura')
GO
INSERT INTO tbIngrediente(categoriaIngredienteID, ingredienteNome, ingredienteCusto, ingredienteDescricao) VALUES (1, 'P�o de forma integral (fatia superior)', 1.5, 'Fatia superior de p�o de forma integral'),
(1, 'P�o de forma integral (fatia inferior)', 1.5, 'Fatia inferior de p�o de forma integral'), (1, 'P�o franc�s (fatia superior)', 2, 'Fatia superior de p�o franc�s'),
(1, 'P�o franc�s (fatia inferior)', 2, 'Fatia inferior de p�o franc�s'), (1, 'P�o italiano integral (fatia superior)', 3.5, 'Fatia superior de p�o italiano integral'),
(1, 'P�o italiano integral (fatia inferior)', 3.5, 'Fatia inferior de p�o italiano integral'), (1, 'P�o de hamb�rguer sem gergelim (fatia superior)', 2.5, 'Fatia superior de p�o de hamb�rguer sem gergelim'),
(1, 'P�o de hamb�rguer sem gergelim (fatia inferior)', 2.5, 'Fatia inferior de p�o de hamb�rguer sem gergelim'), (1, 'P�o de hamb�guer com gergelim (fatia superior)', 3, 'Fatia superior de p�o de hamb�rguer com gergelim'),
(1, 'P�o de hamb�rguer com gergelim (fatia inferior)', 3, 'Fatia inferior de p�o de hamb�rguer com gergelim'), (2, 'Frango', 2.5, 'Frango cozido desfiado'),
(2, 'Hamb�rguer', 3, 'Hamb�rguer de carne'), (2, 'Hamb�rguer � la Sblenders', 4, 'Hamb�rguer � moda da casa'), (2, 'Fil� de Peixe', 2.5, 'Fil� de til�pia'),
(2, 'F�gado Acebolado', 12.0, 'Fil� de f�gado acebolado feito no �leo de soja.'), (3, 'Pepino', 1, 'Rodelas de pepino'), (3, 'Coentro', 5.0, 'Folhas de coentro fresco.'),
(3, 'Tomate', 1, 'Rodela de tomate'), (3, 'Alface', 1, 'Folha de alface'), (3, 'Jil�', 1, 'Cubo de jil�'), (3, 'Pimenta jalapenho', 2, 'Rodelas de pimenta jalapenho'),
(3, 'Picles', 2, 'Rodelas de picles'), (4, 'Cheddar', 3, 'Fatia de queijo cheddar'), (4, 'Parmes�o', 2.5, 'Queijo parmes�o ralado'), (4, 'Provolone', 3, 'Quejio provolone ralado'),
(4, 'Mu�arela', 2, 'Fatia de queijo mu�arela'), (4, 'Queijo branco', 3, 'Fatia de queijo branco'), (5, 'Ketchup', 3, 'Molho ketchup'), (5, 'Mostarda', 3, 'Molho de mostarda'), (5, 'Maionese', 3, 'Molho maionese'),
(5, 'Molho Especial Sblenders', 3, 'Molho secreto...'), (6, 'Chocolate', 3, 'Cobertura de chocolate'), (6, 'Morango', 2.5, 'Cobertura de morango'), (6, 'Caramelo', 4, 'Cobertura de caramelo')
GO
INSERT INTO tbEstoqueIngrediente(ingredienteID, restauranteID, estoqueIngredienteQuantidade) VALUES (1, 1, 75), (2, 1, 100), (3, 1, 65), (4, 1, 30), (5, 1, 35),
(6, 2, 76), (7, 2, 127), (8, 2, 62), (9, 2, 29), (10, 2, 44)
GO
INSERT INTO tbCategoriaProduto(categoriaProdutoNome) VALUES ('Acompanhamento'), ('Bebida'), ('Sobremesa'), ('Molho'), ('Customizavel')
GO
INSERT INTO tbProduto(categoriaProdutoID, produtoNome, produtoCusto, produtoDescricao) VALUES (1,'Nuggets de Frango, 6 unidades',3.49,'Nuggets de Frango crocantes e temperados'),
(1,'Onion Rings, 14 unidades',6.65,'Cebolas em formatos de an�is, empanados e fritos, muito croncantes e temperadas'),(1,'Salada Lev�ssima Sblenders',4.45,'Salada de alface, tomate e pepino'),
(1,'Frango Frito, 12 unidades',6.73,'Frangos Fritos temperados com sal, pimenta e o tempero especial Sblenders'),
(1, 'Batatas R�sticas com Ketchup, 15 unidades', 8.0, 'Grandes fatias de batatas fritas no �leo de girassol, acompanhadas de ketchup'), (2,'Lata de Refrigerante Coca-Cola, 350ml',3.98,'Refrigerante Coca-Cola, 350ml'),
(2,'Lata de Refrigerante Fanta Sabor Laranja, 350ml',3.42,'Refrigerante Fanta Sabor Laranja, 350ml'),(2,'Lata de Refrigerante Guaran�, 350ml',3.55,'Refrigerante Guaran�, 350ml'),
(2,'Garrafa de Refrigerante H2OH Limoneto, 500ml',4.50,'Refrigerante H2OH Limoneto, 500ml'), (2, '�gua Fiji', 5, '�gua importada diretamente de Fiji'), 
(2, 'Ituba�na�', 5, 'Refrigerante Ituba�na em garrafa'), (2, 'Del Vale� Maracuj�', 6.5, 'Suco de maracuj� em lata'), (2, 'B�R-MATE�', 7, 'Ch� mate'),
(3,'Sundae de Chocolate Sblenders', 6.54, 'Sundae de Chocolate'), (3, 'Paleta Mexicana de Morango', 8.0, 'Picol� feito com extrato de morango, recheado com leite condesado Nestl� Mo�a'),
(3,'Milk Shake de Morango, 400ml',6.78,'Milk Shake de Morango, 400ml'),(3,'Casquinha de Creme, 200mg',2.20,'Casquina de Creme, 200mg'),
(3,'Casquinha de A�a�, 200mg',2.20,'Casquina de A�a�, 200mg'),(4,'Molho Barbecue, 100mg',1.70,'Molho Barbecue, 100mg'),
(4,'Ketchup, 100mg',1.70,'Molho de Tomate, 100mg'),(4,'Molho de Queijo, 100mg',1.70,'Molho de Queijo, 100mg'),
(4,'Mostarda, 100mg',1.70,'Molho de Mostarda, 100mg'),(5,'Sblurger',0.0,'Monte seu Sblurger')
GO
INSERT INTO tbProdutoIngrediente (ingredienteID, produtoID, quantidadePadrao, novoPreco) VALUES (1,23,0,2),(2,23,0,2),(3,23,0,1.5),(4,23,0,1.5),(5,23,0,3),(6,23,0,3),
(7,23,0,3),(8,23,0,3),(9,23,0,3),(10,23,0,3),(11,23,0,3),(12,23,0,3),(13,23,0,4),(14,23,0,2),(15,23,0,2.5),(16,23,0,1),(17,23,0,0.5),(18,23,0,1),(19,23,0,1),(20,23,0,1.5),(21,23,0,1.5),(22,23,0,1),
(23,23,0,2),(24,23,0,1.5),(25,23,0,2),(26,23,0,2),(27,23,0,2),(28,23,0,1),(29,23,0,1),(30,23,0,1),(31,23,0,2)
GO
INSERT INTO tbPedidoProduto(pedidoID, produtoID, pedidoProdutoQtde) VALUES (1, 23, 3), (2, 3, 4), (3, 5, 5), (4, 7, 6)
GO
INSERT INTO tbPedidoProdutoIngrediente(pedidoProdutoID, produtoIngredienteID, quantidadeIngrediente) VALUES (1, 1, 1), (1, 14, 3), (1, 12, 4), (1, 16, 7) -- Fiz s� com os dois utilizados no insert da tbProdutoIngrediente
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
FROM Openrowset(Bulk '<caminho>/funcFoto/Ricardo.jpg', Single_Blob) as Image
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
	'Rafael Magalh�es',
	'12345678910',
	2,
	BulkColumn
FROM Openrowset(Bulk '<caminho>/funcFoto/Rafael.jpg', Single_Blob) as Image
GO -- Update Fotos Produtos 
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod1.png', SINGLE_BLOB) as T1) WHERE produtoID = 1
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod2.png', SINGLE_BLOB) as T1) WHERE produtoID = 2
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod3.png', SINGLE_BLOB) as T1) WHERE produtoID = 3
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod4.png', SINGLE_BLOB) as T1) WHERE produtoID = 4
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod5.png', SINGLE_BLOB) as T1) WHERE produtoID = 5
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod6.png', SINGLE_BLOB) as T1) WHERE produtoID = 6
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod6.png', SINGLE_BLOB) as T1) WHERE produtoID = 6
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod7.png', SINGLE_BLOB) as T1) WHERE produtoID = 7
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod8.png', SINGLE_BLOB) as T1) WHERE produtoID = 8
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod9.png', SINGLE_BLOB) as T1) WHERE produtoID = 9
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod10.png', SINGLE_BLOB) as T1) WHERE produtoID = 10
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod11.png', SINGLE_BLOB) as T1) WHERE produtoID = 11
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod12.png', SINGLE_BLOB) as T1) WHERE produtoID = 12
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod13.png', SINGLE_BLOB) as T1) WHERE produtoID = 13
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod14.png', SINGLE_BLOB) as T1) WHERE produtoID = 14
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod15.png', SINGLE_BLOB) as T1) WHERE produtoID = 15
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod16.png', SINGLE_BLOB) as T1) WHERE produtoID = 16
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod17.png', SINGLE_BLOB) as T1) WHERE produtoID = 17
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod18.png', SINGLE_BLOB) as T1) WHERE produtoID = 18
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod19.png', SINGLE_BLOB) as T1) WHERE produtoID = 19
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod20.png', SINGLE_BLOB) as T1) WHERE produtoID = 20
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod21.png', SINGLE_BLOB) as T1) WHERE produtoID = 21
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod22.png', SINGLE_BLOB) as T1) WHERE produtoID = 22
GO
UPDATE tbProduto SET produtoFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/prodFoto/prod23.png', SINGLE_BLOB) as T1) WHERE produtoID = 23
GO
UPDATE tbFuncionario SET funcionarioFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/funcFoto/han.jpg', SINGLE_BLOB) as T1) WHERE funcionarioID = 1
GO
UPDATE tbFuncionario SET funcionarioFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/funcFoto/walter.png', SINGLE_BLOB) as T1) WHERE funcionarioID = 2
GO -- Update Fotos Ingredientes
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/pao_forma_int_sup.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 1
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/pao_forma_int_inf.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 2
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/pao_frances_sup.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 3
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/pao_frances_inf.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 4
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/pao_italiano_int_sup.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 5
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/pao_italiano_int_inf.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 6
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/pao_hamburguer_sup.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 7
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/pao_hamburguer_inf.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 8
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/pao_hamburguer_gerg_sup.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 9
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/pao_hamburguer_gerg_inf.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 10
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/frango.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 11
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/hamburguer.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 12
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/hamburguer_sblenders.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 13
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/peixe.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 14
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/figado.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 15
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/pepino.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 16
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/coentro.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 17
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/tomate.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 18
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/alface.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 19
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/jilo.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 20
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/jalapenho.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 21
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/picles.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 22
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/cheddar.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 23
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/parmesao.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 24
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/provolone.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 25
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/mucarela.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 26
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/queijo_branco.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 27
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/ketchup.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 28
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/mostarda.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 29
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/maionese.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 30
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/especial_sblenders.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 31
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/chocolate.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 32
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/morango.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 33
GO
UPDATE tbIngrediente SET ingredienteFoto = (SELECT * FROM OPENROWSET(BULK '<caminho>/ingFoto/caramelo.png', SINGLE_BLOB) as T1) WHERE ingredienteID = 34
INSERT INTO tbInformacaoNutricionalTipo (
	informacaoNutriTipoDescricao
) VALUES (
	'Valor Energ�tico'
),
(
	'Carboidratos'
),
(
	'Prote�nas'
),
(
	'Gorduras Totais'
),
(
	'Gorduras Saturadas'
),
(
	'Gorduras Trans'
),
(
	'Fibra Alimentar'
),
(
	'S�dio'
)
GO
INSERT INTO tbInformacaoNutricional (
	produtoID,
	informacaoNutriTipoID,
	informacaoNutricionalValor
) VALUES ( -- Nuggets
	1,
	1,
	240
),
(
	1,
	2,
	10.4
),
(
	1,
	3,
	12
),
(
	1,
	4,
	5
),
(
	1,
	5,
	2.3
),
(
	1,
	6,
	3.7
),
(
	1,
	7,
	2.5
),
(
	1,
	8,
	44
),
( -- Onion Rings
	2,
	1,
	580
),
(
	2,
	2,
	14.3
),
(
	2,
	3,
	11
),
(
	2,
	4,
	7
),
(
	2,
	5,
	4.5
),
(
	2,
	6,
	4.6
),
(
	2,
	7,
	3.7
),
(
	2,
	8,
	56
),
( -- Salada Lev�ssima Sblenders
	3,
	1,
	110
),
(
	3,
	2,
	6.8
),
(
	3,
	3,
	23
),
(
	3,
	4,
	9
),
(
	3,
	5,
	6.9
),
(
	3,
	6,
	1.2
),
(
	3,
	7,
	1.6
),
(
	3,
	8,
	22
),
( -- Frango Frito
	4,
	1,
	500
),
(
	4,
	2,
	21
),
(
	4,
	3,
	22
),
(
	4,
	4,
	6
),
(
	4,
	5,
	5.2
),
(
	4,
	6,
	4.1
),
(
	4,
	7,
	1.6
),
(
	4,
	8,
	23
),
( -- Lata de Refrigerante Coca-Cola
	5,
	1,
	43
),
(
	5,
	2,
	11
),
(
	5,
	3,
	12
),
(
	5,
	4,
	5
),
(
	5,
	5,
	2.2
),
(
	5,
	6,
	3.2
),
(
	5,
	7,
	23
),
(
	5,
	8,
	18
),
( -- Lata de Refrigerante Fanta Sabor Laranja
	6,
	1,
	108
),
(
	6,
	2,
	26
),
(
	6,
	3,
	0
),
(
	6,
	4,
	0
),
(
	6,
	5,
	1.5
),
(
	6,
	6,
	2.3
),
(
	6,
	7,
	2.6
),
(
	6,
	8,
	110
),
( -- Lata de Refrigerante Guaran�
	7,
	1,
	240
),
(
	7,
	2,
	146
),
(
	7,
	3,
	36
),
(
	7,
	4,
	0
),
(
	7,
	5,
	0
),
(
	7,
	6,
	3.7
),
(
	7,
	7,
	2.3
),
(
	7,
	8,
	27
),
( -- Garrafa de Refrigerante H20H Limoneto
	8,
	1,
	140
),
(
	8,
	2,
	12
),
(
	8,
	3,
	9
),
(
	8,
	4,
	0
),
(
	8,
	5,
	1.2
),
(
	8,
	6,
	1.27
),
(
	8,
	7,
	2.6
),
(
	8,
	8,
	56
),
( -- �gua Fiji
	9,
	1,
	20
),
(
	9,
	2,
	2.4
),
(
	9,
	3,
	9
),
(
	9,
	4,
	3
),
(
	9,
	5,
	0.3
),
(
	9,
	6,
	2.7
),
(
	9,
	7,
	2.5
),
(
	9,
	8,
	44
),
( -- Sundae de Chocolate Sblenders
	10,
	1,
	500
),
(
	10,
	2,
	12.4
),
(
	10,
	3,
	13
),
(
	10,
	4,
	6
),
(
	10,
	5,
	1.4
),
(
	10,
	6,
	2.9
),
(
	10,
	7,
	2.6
),
(
	10,
	8,
	44
),
( -- Milk Shake de Morango
	11,
	1,
	500
),
(
	11,
	2,
	14
),
(
	11,
	3,
	8
),
(
	11,
	4,
	5
),
(
	11,
	5,
	3.2
),
(
	11,
	6,
	2.2
),
(
	11,
	7,
	3
),
(
	11,
	8,
	56
),
( -- Casquinha de Creme
	12,
	1,
	300
),
(
	12,
	2,
	12
),
(
	12,
	3,
	9.6
),
(
	12,
	4,
	6
),
(
	12,
	5,
	4.2
),
(
	12,
	6,
	2.43
),
(
	12,
	7,
	2
),
(
	12,
	8,
	33
),
( -- Casquinha de A�a�
	13,
	1,
	350
),
(
	13,
	2,
	12.4
),
(
	13,
	3,
	7
),
(
	13,
	4,
	6
),
(
	13,
	5,
	3
),
(
	13,
	6,
	2.5
),
(
	13,
	7,
	1.6
),
(
	13,
	8,
	34
),
( -- Molho Barbecue
	14,
	1,
	150
),
(
	14,
	2,
	12.4
),
(
	14,
	3,
	10
),
(
	14,
	4,
	6
),
(
	14,
	5,
	3
),
(
	14,
	6,
	4
),
(
	14,
	7,
	3.2
),
(
	14,
	8,
	64
),
( -- Molho de Tomate
	15,
	1,
	150
),
(
	15,
	2,
	11
),
(
	15,
	3,
	15
),
(
	15,
	4,
	6
),
(
	15,
	5,
	3.5
),
(
	15,
	6,
	2.6
),
(
	15,
	7,
	4.5
),
(
	15,
	8,
	65
),
( -- Molho de Queijo
	16,
	1,
	150
),
(
	16,
	2,
	9.3
),
(
	16,
	3,
	10
),
(
	16,
	4,
	2
),
(
	16,
	5,
	1.3
),
(
	16,
	6,
	4
),
(
	16,
	7,
	3.2
),
(
	16,
	8,
	64
),
( -- Molho de Mostarda
	17,
	1,
	150
),
(
	17,
	2,
	9.2
),
(
	17,
	3,
	13
),
(
	17,
	4,
	6
),
(
	17,
	5,
	2.2
),
(
	17,
	6,
	2.9
),
(
	17,
	7,
	2.6
),
(
	17,
	8,
	54
),
( -- Sblurger
	23,
	1,
	300
),
(
	23,
	2,
	12.4
),
(
	23,
	3,
	11
),
(
	23,
	4,
	3
),
(
	23,
	5,
	2.4
),
(
	23,
	6,
	3.1
),
(
	23,
	7,
	2.4
),
(
	23,
	8,
	38
),
( -- Ituba�na
	19,
	1,
	120
),
(
	19,
	2,
	10
),
(
	19,
	3,
	11
),
(
	19,
	4,
	5
),
(
	19,
	5,
	2
),
(
	19,
	6,
	3
),
(
	19,
	7,
	3.1
),
(
	19,
	8,
	32
),
( -- Del Vale
	20,
	1,
	130
),
(
	20,
	2,
	12.4
),
(
	20,
	3,
	13
),
(
	20,
	4,
	5.6
),
(
	20,
	5,
	3
),
(
	20,
	6,
	4
),
(
	20,
	7,
	3.3
),
(
	20,
	8,
	55
),
( -- BAER-MATE
	21,
	1,
	160
),
(
	21,
	2,
	9.4
),
(
	21,
	3,
	9
),
(
	21,
	4,
	4.8
),
(
	21,
	5,
	3.2
),
(
	21,
	6,
	2.2
),
(
	21,
	7,
	1.9
),
(
	21,
	8,
	60
)
/*
use master
drop database dbSblenders
*/
